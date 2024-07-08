<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\ChoiceOfTemplate\BulkDestroyChoiceOfTemplate;
use App\Http\Requests\Admin\ChoiceOfTemplate\DestroyChoiceOfTemplate;
use App\Http\Requests\Admin\ChoiceOfTemplate\IndexChoiceOfTemplate;
use App\Http\Requests\Admin\ChoiceOfTemplate\StoreChoiceOfTemplate;
use App\Http\Requests\Admin\ChoiceOfTemplate\UpdateChoiceOfTemplate;
use App\Models\ChoiceOfTemplate;
use App\Models\Template;
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

class ChoiceOfTemplateController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @param IndexChoiceOfTemplate $request
     * @return array|Factory|View
     */
    public function index(IndexChoiceOfTemplate $request)
    {
        // create and AdminListing instance for a specific model and
        $data = AdminListing::create(ChoiceOfTemplate::class)->processRequestAndGet(
            // pass the request with params
            $request,

            // set columns to query
            ['id', 'template_id'],

            // set columns to searchIn
            ['id'],

            function ($query) use ($request) {
                $query->with(['template']);
    
                // add this line if you want to search by templete attributes
                $query->join('templates', 'templates.id', '=', 'choice_of_template.template_id');
    
                if($request->has('templates')){
                    $query->whereIn('template_id', $request->get('templates'));
                }
            }
        );

        if ($request->ajax()) {
            /*
            if ($request->has('bulk')) {
                return [
                    'bulkItems' => $data->pluck('id')
                ];
            }
            */
            return ['data' => $data];
        }

        return view('admin.choice-of-template.index', [
            'data' => $data,
            'templates' => Template::all()
        
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
        $this->authorize('admin.choice-of-template.create');

        return view('admin.choice-of-template.create', [
            'templates' => Template::all(),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param StoreChoiceOfTemplate $request
     * @return array|RedirectResponse|Redirector
     */
    public function store(StoreChoiceOfTemplate $request)
    {
        // Sanitize input
        $sanitized = $request->validated();
        $sanitized['template_id'] = $request->getTemplateId();

        // Store the ChoiceOfTemplate
        $choiceOfTemplate = ChoiceOfTemplate::create($sanitized);

        if ($request->ajax()) {
            return ['redirect' => url('admin/choice-of-templates'), 'message' => trans('brackets/admin-ui::admin.operation.succeeded')];
        }

        return redirect('admin/choice-of-templates');
    }

    /**
     * Display the specified resource.
     *
     * @param ChoiceOfTemplate $choiceOfTemplate
     * @throws AuthorizationException
     * @return void
     */
    public function show(ChoiceOfTemplate $choiceOfTemplate)
    {
        $this->authorize('admin.choice-of-template.show', $choiceOfTemplate);

        // TODO your code goes here
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param ChoiceOfTemplate $choiceOfTemplate
     * @throws AuthorizationException
     * @return Factory|View
     */
    public function edit(ChoiceOfTemplate $choiceOfTemplate)
    {
        $this->authorize('admin.choice-of-template.edit', $choiceOfTemplate);
        $choiceOfTemplate->load('template');

        return view('admin.choice-of-template.edit', [
            'choiceOfTemplate' => $choiceOfTemplate,
            'templates' => Template::all(),
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param UpdateChoiceOfTemplate $request
     * @param ChoiceOfTemplate $choiceOfTemplate
     * @return array|RedirectResponse|Redirector
     */
    public function update(UpdateChoiceOfTemplate $request, ChoiceOfTemplate $choiceOfTemplate)
    {
        // Sanitize input
        $sanitized = $request->validated();
        $sanitized['template_id'] = $request->getTemplateId();

        // Update changed values ChoiceOfTemplate
        $choiceOfTemplate->update($sanitized);

        if ($request->ajax()) {
            return [
                'redirect' => url('admin/choice-of-templates'),
                'message' => trans('brackets/admin-ui::admin.operation.succeeded'),
            ];
        }

        return redirect('admin/choice-of-templates');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param DestroyChoiceOfTemplate $request
     * @param ChoiceOfTemplate $choiceOfTemplate
     * @throws Exception
     * @return ResponseFactory|RedirectResponse|Response
     */
    public function destroy(DestroyChoiceOfTemplate $request, ChoiceOfTemplate $choiceOfTemplate)
    {
        $choiceOfTemplate->delete();

        if ($request->ajax()) {
            return response(['message' => trans('brackets/admin-ui::admin.operation.succeeded')]);
        }

        return redirect()->back();
    }

    /**
     * Remove the specified resources from storage.
     *
     * @param BulkDestroyChoiceOfTemplate $request
     * @throws Exception
     * @return Response|bool
     */
    public function bulkDestroy(BulkDestroyChoiceOfTemplate $request) : Response
    {
        DB::transaction(static function () use ($request) {
            collect($request->data['ids'])
                ->chunk(1000)
                ->each(static function ($bulkChunk) {
                    ChoiceOfTemplate::whereIn('id', $bulkChunk)->delete();

                    // TODO your code goes here
                });
        });

        return response(['message' => trans('brackets/admin-ui::admin.operation.succeeded')]);
    }
}
