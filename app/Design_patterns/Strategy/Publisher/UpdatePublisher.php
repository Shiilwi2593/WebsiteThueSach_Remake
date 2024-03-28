<?php
namespace App\Design_patterns\Strategy\Publisher;

use App\Models\Publisher;
use Illuminate\Http\Request;
use App\Design_patterns\Strategy\IUpdateStrategy;

class UpdatePublisher implements IUpdateStrategy
{
    public function update(Request $request,$publisher)
    {
        $request->validate([
            'name' => 'required|unique:publishers,name,'.$publisher->id,
            'slug' => 'required|unique:publishers,slug,'.$publisher->id,
        ]);

        $update_publisher = $publisher->update([
            'name' => $request->name,
            'slug' => $request->slug,
            'status' => $request->status,
            'updated_at' => now(),
        ]);

        return $update_publisher;
    }
}
