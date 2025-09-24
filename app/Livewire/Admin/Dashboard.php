<?php

namespace App\Livewire\Admin;

use App\Models\Gejala;
use App\Models\Penyakit;
use Livewire\Attributes\Title;
use Livewire\Component;

#[Title('Dashboard')]
class Dashboard extends Component
{
    public function render()
    {
        $penyakit = Penyakit::count();
        $gejala = Gejala::count();

        return view('livewire.admin.dashboard', [
            'page' => 'Dashboard',
            'penyakit' => $penyakit,
            'gejala' => $gejala,
        ]);
    }
}
