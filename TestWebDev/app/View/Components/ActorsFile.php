<?php

namespace App\View\Components;

use Illuminate\View\Component;

class ActorsFile extends Component
{
    public $actors;

    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct($actors)
    {
        $this->actors = $actors;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\View\View|string
     */
    public function render()
    {
        return view('components.actors-file');
    }
}
