<?php
namespace App\Design_patterns\Strategy\Origin;

use App\Models\Origin;
use Illuminate\Http\Request;
use App\Design_patterns\Strategy\IUpdateStrategy;

class UpdateOrigin implements IUpdateStrategy
{
    public function update(Request $request, $origin)
    {
        $request->validate([
            'name' => 'required|unique:origins,name,'.$origin->id,
            'slug' => 'required|unique:origins,slug,'.$origin->id,
        ]);

        $update_origin = $origin->update([
            'name' => $request->name,
            'slug' => $request->slug,
            'status' => $request->status,
            'updated_at' => now(),
        ]);

        return $update_origin;
    }
}