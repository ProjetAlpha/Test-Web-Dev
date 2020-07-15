<?php

namespace App\Http\Controllers;

use App\Actors;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class ActorsController extends Controller
{
    /**
     * Display a public view or an admin view with a collection of actors sorted by name.
     *
     * @return \Illuminate\View\View|\Illuminate\Contracts\View\Factory
     */
    public function index()
    {
        $actors = Actors::orderBy('firstname')->get();

        return view('home', ['actors' => $actors]);
    }

    /**
     * Display an admin view with an actor profil.
     *
     * @param   Illuminate\Http\Request
     *
     * @return \Illuminate\View\View|\Illuminate\Contracts\View\Factory
     */
    public function updateView(Request $request)
    {
        $actor = Actors::find($request->route('id'));

        return view('admin.update', ['actor' => $actor]);
    }

    /**
     * Store a newly created actor profil.
     *
     * @param   \Illuminate\Http\Request
     *
     * @return \Illuminate\View\View|\Illuminate\Contracts\View\Factory
     */
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

            $sep = DIRECTORY_SEPARATOR;
            $imageName = str_replace(' ', '-', $imageName);
            $request->file('image')->storeAs('public'.$sep.'uploads', $imageName);
            $path = 'storage'.$sep.'uploads'.$sep.$imageName;
        }

        $actors = new actors();
        $actors->firstname = $request->firstname;
        $actors->lastname = $request->lastname;
        $actors->description = $request->description;
        $actors->path = $path;
        $actors->fullName = $fullName;

        $actors->save();

        Session::flash('alert-success', 'Successfully create an actor profil.');

        return back();
    }

    /**
     * Update an actor file.
     *
     * @param  \Illuminate\Http\Request
     *
     * @return \Illuminate\View\View|\Illuminate\Contracts\View\Factory
     */
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

        $columnsUpdate = array_filter($params, function ($value) { return !is_null($value) && '' !== $value; });

        if ($request->file('image')) {
            $imagePath = $request->file('image');
            $imageName = bin2hex(random_bytes(6)).'-'.$imagePath->getClientOriginalName();

            // Delete old image.
            $sep = DIRECTORY_SEPARATOR;
            $name = pathinfo($actor->path, PATHINFO_BASENAME);

            $oldImagePath = storage_path('app/public/uploads').$sep.$name;
            if (file_exists($oldImagePath)) {
                unlink($oldImagePath);
            }

            $imageName = str_replace(' ', '-', $imageName);
            $request->file('image')->storeAs('public'.$sep.'uploads', $imageName);
            $path = 'storage'.$sep.'uploads'.$sep.$imageName;
            $columnsUpdate['path'] = $path;
            unset($columnsUpdate['image']);
        }

        $actor->update($columnsUpdate);

        Session::flash('alert-success', 'Update success.');

        return back();
    }

    /**
     * Delete an actor file.
     *
     * @param  \Illuminate\Http\Request
     *
     * @return \Illuminate\View\View|\Illuminate\Contracts\View\Factory
     */
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

        // Delete old image.
        $name = pathinfo($actor->path, PATHINFO_BASENAME);
        $oldImagePath = storage_path('app/public/uploads').DIRECTORY_SEPARATOR.$name;
        if (file_exists($oldImagePath)) {
            unlink($oldImagePath);
        }

        $actor->delete();

        Session::flash('alert-success', 'Delete success.');

        return back();
    }
}
