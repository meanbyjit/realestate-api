<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\RealEstate;
use App\Http\Requests\StoreRealEstateRequest;

class RealEstateController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $limit = (int) $request->query('limit', 10);
        $limit = max(1, min($limit, 100));

        $page = (int) $request->query('page', 1);
        $page = max(1, $page);

        $query = RealEstate::query()->orderByDesc('updated_at');
        $total = (clone $query)->count();

        $items = (clone $query)
            ->select('id', 'name', 'real_state_type', 'city', 'country')
            ->skip(($page - 1) * $limit)
            ->take($limit)
            ->get();

        return response()->json([
            'data' => $items,
            'meta' => [
                'total' => $total,
                'page' => $page,
                'limit' => $limit,
                'total_pages' => (int) ceil($total / $limit),
            ]
        ]);

        /* return response()
            ->json($items)
            ->header('X-Total-Count', $total)
            ->header('X-Page', $page)
            ->header('X-Limit', $limit)
            ->header('X-Total-Pages', (int) ceil($total / $limit)); */
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreRealEstateRequest $request)
    {
        $data = $request->validated();

        $real = RealEstate::create($data);

        return response()->json($real,201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        return RealEstate::findOrFail($id);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(StoreRealEstateRequest $request,$id)
    {
        $real = RealEstate::findOrFail($id);

        $data = $request->validated();

        $real->update($data);

        return response()->json($real);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $real = RealEstate::findOrFail($id);
        $real->delete();
        return response()->json($real);
    }

    /**
     * Return the recently deleted items
     */
    public function recentDeleted(Request $request)
    {
        $limit = (int) $request->query('limit', 10);
        $limit = max(1, min($limit, 100));

        $page = (int) $request->query('page', 1);
        $page = max(1, $page);

        $query = RealEstate::onlyTrashed()->orderByDesc('deleted_at');
        $total = (clone $query)->count();

        $items = (clone $query)
            ->select('id', 'name', 'real_state_type', 'city', 'country', 'deleted_at')
            ->skip(($page - 1) * $limit)
            ->take($limit)
            ->get();

        return response()->json([
            'data' => $items,
            'meta' => [
                'total' => $total,
                'page' => $page,
                'limit' => $limit,
                'total_pages' => (int) ceil($total / $limit),
            ]
        ]);
    }
}
