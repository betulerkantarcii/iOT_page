<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\EventCalendar\BulkDestroyEventCalendar;
use App\Http\Requests\Admin\EventCalendar\DestroyEventCalendar;
use App\Http\Requests\Admin\EventCalendar\IndexEventCalendar;
use App\Http\Requests\Admin\EventCalendar\StoreEventCalendar;
use App\Http\Requests\Admin\EventCalendar\UpdateEventCalendar;
use App\Models\EventCalendar;
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

class EventCalendarController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @param IndexEventCalendar $request
     * @return array|Factory|View
     */
    public function index(IndexEventCalendar $request)
    {
        // create and AdminListing instance for a specific model and
        $data = AdminListing::create(EventCalendar::class)->processRequestAndGet(
            // pass the request with params
            $request,

            // set columns to query
            ['id', 'title', 'link', 'event_time', 'event_location', 'published_at', 'enabled'],

            // set columns to searchIn
            ['id', 'title', 'link', 'event_location']
        );

        if ($request->ajax()) {
            if ($request->has('bulk')) {
                return [
                    'bulkItems' => $data->pluck('id')
                ];
            }
            return ['data' => $data];
        }

        return view('admin.event-calendar.index', ['data' => $data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @throws AuthorizationException
     * @return Factory|View
     */
    public function create()
    {
        $this->authorize('admin.event-calendar.create');

        return view('admin.event-calendar.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param StoreEventCalendar $request
     * @return array|RedirectResponse|Redirector
     */
    public function store(StoreEventCalendar $request)
    {
        // Sanitize input
        $sanitized = $request->getSanitized();

        // Store the EventCalendar
        $eventCalendar = EventCalendar::create($sanitized);

        if ($request->ajax()) {
            return ['redirect' => url('admin/event-calendars'), 'message' => trans('brackets/admin-ui::admin.operation.succeeded')];
        }

        return redirect('admin/event-calendars');
    }

    /**
     * Display the specified resource.
     *
     * @param EventCalendar $eventCalendar
     * @throws AuthorizationException
     * @return void
     */
    public function show(EventCalendar $eventCalendar)
    {
        $this->authorize('admin.event-calendar.show', $eventCalendar);

        // TODO your code goes here
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param EventCalendar $eventCalendar
     * @throws AuthorizationException
     * @return Factory|View
     */
    public function edit(EventCalendar $eventCalendar)
    {
        $this->authorize('admin.event-calendar.edit', $eventCalendar);


        return view('admin.event-calendar.edit', [
            'eventCalendar' => $eventCalendar,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param UpdateEventCalendar $request
     * @param EventCalendar $eventCalendar
     * @return array|RedirectResponse|Redirector
     */
    public function update(UpdateEventCalendar $request, EventCalendar $eventCalendar)
    {
        // Sanitize input
        $sanitized = $request->getSanitized();

        // Update changed values EventCalendar
        $eventCalendar->update($sanitized);

        if ($request->ajax()) {
            return [
                'redirect' => url('admin/event-calendars'),
                'message' => trans('brackets/admin-ui::admin.operation.succeeded'),
                'object' => $eventCalendar
            ];
        }

        return redirect('admin/event-calendars');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param DestroyEventCalendar $request
     * @param EventCalendar $eventCalendar
     * @throws Exception
     * @return ResponseFactory|RedirectResponse|Response
     */
    public function destroy(DestroyEventCalendar $request, EventCalendar $eventCalendar)
    {
        $eventCalendar->delete();

        if ($request->ajax()) {
            return response(['message' => trans('brackets/admin-ui::admin.operation.succeeded')]);
        }

        return redirect()->back();
    }

    /**
     * Remove the specified resources from storage.
     *
     * @param BulkDestroyEventCalendar $request
     * @throws Exception
     * @return Response|bool
     */
    public function bulkDestroy(BulkDestroyEventCalendar $request) : Response
    {
        DB::transaction(static function () use ($request) {
            collect($request->data['ids'])
                ->chunk(1000)
                ->each(static function ($bulkChunk) {
                    EventCalendar::whereIn('id', $bulkChunk)->delete();

                    // TODO your code goes here
                });
        });

        return response(['message' => trans('brackets/admin-ui::admin.operation.succeeded')]);
    }
}
