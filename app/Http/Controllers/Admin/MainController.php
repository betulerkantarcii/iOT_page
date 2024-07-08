<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Main\BulkDestroyMain;
use App\Http\Requests\Admin\Main\DestroyMain;
use App\Http\Requests\Admin\Main\IndexMain;
use App\Http\Requests\Admin\Main\StoreMain;
use App\Http\Requests\Admin\Main\UpdateMain;
use App\Models\Main;
use Brackets\AdminListing\Facades\AdminListing;
use Exception;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Contracts\Routing\ResponseFactory;
use Illuminate\Contracts\View\Factory;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Response;
use Illuminate\Routing\Redirector;
use Illuminate\Support\Facades\DB;
use Illuminate\View\View;

class MainController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @param IndexMain $request
     * @return array|Factory|View
     */
    public function index(IndexMain $request)
    {
        // create and AdminListing instance for a specific model and
        $data = AdminListing::create(Main::class)->processRequestAndGet(
            // pass the request with params
            $request,

            // set columns to query
            ['id', 'title', 'description', 'link', 'enabled'],

            // set columns to searchIn
            ['id', 'title', 'description', 'link']
        );

        if ($request->ajax()) {
            if ($request->has('bulk')) {
                return [
                    'bulkItems' => $data->pluck('id')
                ];
            }
            return ['data' => $data];
        }

        return view('admin.main.index', ['data' => $data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @throws AuthorizationException
     * @return Factory|View
     */
    public function create()
    {
        $this->authorize('admin.main.create');

        return view('admin.main.create',[
            'mode' => 'create'
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param StoreMain $request
     * @return array|RedirectResponse|Redirector
     */
    public function store(StoreMain $request)
    {
        // Sanitize input
        $sanitized = $request->getSanitized();

        // Store the Main
        $main = Main::create($request->validated());

        if ($request->ajax()) {
            return ['redirect' => url('admin/mains'), 'message' => trans('brackets/admin-ui::admin.operation.succeeded')];
        }

        return redirect('admin/mains');
    }

    /**
     * Display the specified resource.
     *
     * @param Main $main
     * @throws AuthorizationException
     * @return void
     */
    public function show(Main $main)
    {
        $this->authorize('admin.main.show', $main);

        // TODO your code goes here
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param Main $main
     * @throws AuthorizationException
     * @return Factory|View
     */
    public function edit(Main $main)
    {
        $this->authorize('admin.main.edit', $main);


        return view('admin.main.edit', [
            'main' => $main,
            'mode' => 'edit',
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param UpdateMain $request
     * @param Main $main
     * @return array|RedirectResponse|Redirector
     */
    public function update(UpdateMain $request, Main $main)
    {
        // Sanitize input
        $sanitized = $request->getSanitized();

        // Update changed values Main
        $main->update($sanitized);

        if ($request->ajax()) {
            return [
                'redirect' => url('admin/mains'),
                'message' => trans('brackets/admin-ui::admin.operation.succeeded'),
            ];
        }

        return redirect('admin/mains');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param DestroyMain $request
     * @param Main $main
     * @throws Exception
     * @return ResponseFactory|RedirectResponse|Response
     */
    public function destroy(DestroyMain $request, Main $main)
    {
        $main->delete();

        if ($request->ajax()) {
            return response(['message' => trans('brackets/admin-ui::admin.operation.succeeded')]);
        }

        return redirect()->back();
    }

    /**
     * Remove the specified resources from storage.
     *
     * @param BulkDestroyMain $request
     * @throws Exception
     * @return Response|bool
     */
    public function bulkDestroy(BulkDestroyMain $request) : Response
    {
        DB::transaction(static function () use ($request) {
            collect($request->data['ids'])
                ->chunk(1000)
                ->each(static function ($bulkChunk) {
                    Main::whereIn('id', $bulkChunk)->delete();

                    // TODO your code goes here
                });
        });

        return response(['message' => trans('brackets/admin-ui::admin.operation.succeeded')]);
    }
}
