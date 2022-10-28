<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\Template\BulkDestroyTemplate;
use App\Http\Requests\Admin\Template\DestroyTemplate;
use App\Http\Requests\Admin\Template\IndexTemplate;
use App\Http\Requests\Admin\Template\StoreTemplate;
use App\Http\Requests\Admin\Template\UpdateTemplate;
use App\Models\Template;
use App\Models\ChoiceOfTemplate;
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

class TemplatesController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @param IndexTemplate $request
     * @return array|Factory|View
     */
    public function index(IndexTemplate $request)
    {
        // create and AdminListing instance for a specific model and
        $data = AdminListing::create(Template::class)->processRequestAndGet(
            // pass the request with params
            $request,

            // set columns to query
            ['id', 'name'],

            // set columns to searchIn
            ['id', 'name']
        );

        if ($request->ajax()) {
            if ($request->has('bulk')) {
                return [
                    'bulkItems' => $data->pluck('id')
                ];
            }
            return ['data' => $data];
        }

        return view('admin.template.index', ['data' => $data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @throws AuthorizationException
     * @return Factory|View
     */
    public function create()
    {
        $this->authorize('admin.template.create');

        return view('admin.template.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param StoreTemplate $request
     * @return array|RedirectResponse|Redirector
     */
    public function store(StoreTemplate $request)
    {
        // Sanitize input
        $sanitized = $request->getSanitized();

        // Store the Template
        $template = Template::create($sanitized);

        if ($request->ajax()) {
            return ['redirect' => url('admin/templates'), 'message' => trans('brackets/admin-ui::admin.operation.succeeded')];
        }

        return redirect('admin/templates');
    }

    /**
     * Display the specified resource.
     *
     * @param Template $template
     * @throws AuthorizationException
     * @return void
     */
    public function show(Template $template)
    {
        $this->authorize('admin.template.show', $template);

        // TODO your code goes here
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param Template $template
     * @throws AuthorizationException
     * @return Factory|View
     */
    public function edit(Template $template)
    {
        $this->authorize('admin.template.edit', $template);


        return view('admin.template.edit', [
            'template' => $template,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param UpdateTemplate $request
     * @param Template $template
     * @return array|RedirectResponse|Redirector
     */
    public function update(UpdateTemplate $request, Template $template)
    {
        // Sanitize input
        $sanitized = $request->getSanitized();

        // Update changed values Template
        $template->update($sanitized);

        if ($request->ajax()) {
            return [
                'redirect' => url('admin/templates'),
                'message' => trans('brackets/admin-ui::admin.operation.succeeded'),
            ];
        }

        return redirect('admin/templates');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param DestroyTemplate $request
     * @param Template $template
     * @throws Exception
     * @return ResponseFactory|RedirectResponse|Response
     */
    public function destroy(DestroyTemplate $request, Template $template)
    {
        $template->delete();

        if ($request->ajax()) {
            return response(['message' => trans('brackets/admin-ui::admin.operation.succeeded')]);
        }

        return redirect()->back();
    }

    /**
     * Remove the specified resources from storage.
     *
     * @param BulkDestroyTemplate $request
     * @throws Exception
     * @return Response|bool
     */
    public function bulkDestroy(BulkDestroyTemplate $request) : Response
    {
        DB::transaction(static function () use ($request) {
            collect($request->data['ids'])
                ->chunk(1000)
                ->each(static function ($bulkChunk) {
                    Template::whereIn('id', $bulkChunk)->delete();

                    // TODO your code goes here
                });
        });

        return response(['message' => trans('brackets/admin-ui::admin.operation.succeeded')]);
    }
}
