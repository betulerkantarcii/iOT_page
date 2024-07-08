<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\MenuContent\BulkDestroyMenuContent;
use App\Http\Requests\Admin\MenuContent\DestroyMenuContent;
use App\Http\Requests\Admin\MenuContent\IndexMenuContent;
use App\Http\Requests\Admin\MenuContent\StoreMenuContent;
use App\Http\Requests\Admin\MenuContent\UpdateMenuContent;
use App\Models\MenuContent;
use App\Models\Menu;
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

class MenuContentController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @param IndexMenuContent $request
     * @return array|Factory|View
     */
    public function index(IndexMenuContent $request)
    {
        // create and AdminListing instance for a specific model and
        $data = AdminListing::create(MenuContent::class)->processRequestAndGet(
            // pass the request with params
            $request,

            // set columns to query
            ['id', 'title', 'description', 'enabled', 'menu_id'],

            // set columns to searchIn
            ['id', 'title', 'description'],

            function ($query) use ($request) {
                $query->with(['menu']);
    
                // add this line if you want to search by author attributes
                $query->join('menus', 'menus.id', '=', 'menu_content.menu_id');
    
                if($request->has('menus')){
                    $query->whereIn('menu_id', $request->get('menus'));
                }
            }
        );

        if ($request->ajax()) {
            if ($request->has('bulk')) {
                return [
                    'bulkItems' => $data->pluck('id')
                ];
            }
            return ['data' => $data];
        }

        return view('admin.menu-content.index', [
            'data' => $data,
            'menus' => Menu::all()
        
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @throws AuthorizationException
     * @return Factory|View
     */
    public function create()
    {
        $this->authorize('admin.menu-content.create');

        return view('admin.menu-content.create', [
            'menus' => Menu::all(),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param StoreMenuContent $request
     * @return array|RedirectResponse|Redirector
     */
    public function store(StoreMenuContent $request)
    {
        // Sanitize input
        $sanitized = $request->validated();
        $sanitized['menu_id'] = $request->getMenuId();

        // Store the MenuContent
        $menuContent = MenuContent::create($sanitized);

        if ($request->ajax()) {
            return ['redirect' => url('admin/menu-contents'), 'message' => trans('brackets/admin-ui::admin.operation.succeeded')];
        }

        return redirect('admin/menu-contents');
    }

    /**
     * Display the specified resource.
     *
     * @param MenuContent $menuContent
     * @throws AuthorizationException
     * @return void
     */
    public function show(MenuContent $menuContent)
    {
        $this->authorize('admin.menu-content.show', $menuContent);

        // TODO your code goes here
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param MenuContent $menuContent
     * @throws AuthorizationException
     * @return Factory|View
     */
    public function edit(MenuContent $menuContent)
    {
        $this->authorize('admin.menu-content.edit', $menuContent);

        $menuContent->load('menu');

        return view('admin.menu-content.edit', [
            'menuContent' => $menuContent,
            'menus' => Menu::all(),
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param UpdateMenuContent $request
     * @param MenuContent $menuContent
     * @return array|RedirectResponse|Redirector
     */
    public function update(UpdateMenuContent $request, MenuContent $menuContent)
    {
        // Sanitize input
        $sanitized = $request->validated();
        $sanitized['menu_id'] = $request->getMenuId();

        // Update changed values MenuContent
        $menuContent->update($sanitized);

        if ($request->ajax()) {
            return [
                'redirect' => url('admin/menu-contents'),
                'message' => trans('brackets/admin-ui::admin.operation.succeeded'),
            ];
        }

        return redirect('admin/menu-contents');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param DestroyMenuContent $request
     * @param MenuContent $menuContent
     * @throws Exception
     * @return ResponseFactory|RedirectResponse|Response
     */
    public function destroy(DestroyMenuContent $request, MenuContent $menuContent)
    {
        $menuContent->delete();

        if ($request->ajax()) {
            return response(['message' => trans('brackets/admin-ui::admin.operation.succeeded')]);
        }

        return redirect()->back();
    }

    /**
     * Remove the specified resources from storage.
     *
     * @param BulkDestroyMenuContent $request
     * @throws Exception
     * @return Response|bool
     */
    public function bulkDestroy(BulkDestroyMenuContent $request) : Response
    {
        DB::transaction(static function () use ($request) {
            collect($request->data['ids'])
                ->chunk(1000)
                ->each(static function ($bulkChunk) {
                    MenuContent::whereIn('id', $bulkChunk)->delete();

                    // TODO your code goes here
                });
        });

        return response(['message' => trans('brackets/admin-ui::admin.operation.succeeded')]);
    }
}
