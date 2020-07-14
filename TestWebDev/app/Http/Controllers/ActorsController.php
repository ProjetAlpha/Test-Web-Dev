<?php

namespace App\Http\Controllers;

use App\Actors;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class ActorsController extends Controller
{
    public function publicFetch()
    {
        $actors = Actors::all();

        return view('home', ['actors' => $actors]);
    }

    public function adminFetch()
    {
        $actors = Actors::all();

        return view('admin.panel', ['actors' => $actors]);
    }

    public function updateView(Request $request)
    {
        $actor = Actors::find($request->route('id'));

        return view('admin.update', ['actor' => $actor]);
    }

    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'lastname' => 'required|max:255',
            'firstname' => 'required|max:255',
            'description' => 'required|max:10000',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        if ($validator->fails()) {
            $error = $validator->errors()->first();
            Session::flash('alert-danger', $error);

            return back();
        }

        $fullName = $request->firstname.'-'.$request->lastname;
        $validator = Validator::make(['fullName' => $fullName], [
            'fullName' => 'unique:actors,fullName',
        ]);

        if ($validator->fails()) {
            return redirect('/')
                        ->withErrors($validator)
                        ->withInput();
        }

        if ($request->file('image')) {
            $imagePath = $request->file('image');
            $imageName = bin2hex(random_bytes(4)).'-'.$imagePath->getClientOriginalName();

            $imageName = str_replace(' ', '-', $imageName);
            $request->file('image')->storeAs('public/uploads', $imageName);
            $path = 'storage/uploads/'.$imageName;
        }

        $actors = new actors();
        $actors->firstname = $request->firstname;
        $actors->lastname = $request->lastname;
        $actors->description = $request->description;
        $actors->path = $path;
        $actors->fullName = $fullName;

        $actors->save();

        Session::flash('alert-success', 'Create actor profil success');

        return back();
    }

    public function update(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'lastname' => 'max:255',
            'firstname' => 'max:255',
            'description' => 'max:10000',
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        if ($validator->fails()) {
            $error = $validator->errors()->first();
            Session::flash('alert-danger', $error);

            return back();
        }

        $params = $request->all();
        $actor = Actors::find($request->route('id'));

        $whiteListKeys = [
            'lastname',
            'firstname',
            'description',
            'image',
        ];

        if (isset($params['_token'])) {
            unset($params['_token']);
        }

        $matchCol = 0;
        foreach ($params as $k => $v) {
            if (!in_array($k, $whiteListKeys)) {
                Session::flash('alert-danger', 'Update failed : bad input.');

                return back();
            }

            if (isset($actor->{$k}) && $actor->{$k} == $v) {
                ++$matchCol;
            }
        }

        if ($matchCol == count($params)) {
            Session::flash('alert-danger', 'Actor file is already up to date.');

            return back();
        }

        $columnsUpdate = array_filter($request->all(), function ($value) { return !is_null($value) && '' !== $value; });

        if ($request->file('image')) {
            $imagePath = $request->file('image');
            $imageName = bin2hex(random_bytes(16)).'-'.$imagePath->getClientOriginalName();

            // Delete old image.
            Storage::delete($actor->path);

            $path = $request->file('image')->storeAs('uploads', $imageName, 'public');
            $columnsUpdate['path'] = $path;
            unset($columnsUpdate['image']);
        }

        $actor->update($columnsUpdate);

        Session::flash('alert-success', 'Update success.');

        return back();
    }

    public function delete(Request $request)
    {
        $validator = Validator::make(['id' => $request->route('id')], [
            'id' => 'min:1',
        ]);

        if ($validator->fails()) {
            $error = $validator->errors()->first();
            Session::flash('alert-danger', $error);

            return back();
        }

        $actor = Actors::find($request->route('id'));
        Storage::delete($actor->path);
        $actor->delete();

        Session::flash('alert-success', 'Delete success.');

        return back();
    }
}
