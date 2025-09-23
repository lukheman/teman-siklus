<div>
    <x-nav-link :active="request()->routeIs('admin.dashboard')" :href="route('admin.dashboard')">Dashboard</x-nav-link>

    <li class="sidebar-title">Menu</li>
    <x-nav-link
        icon="fa-virus"
        :active="request()->routeIs('admin.penyakit.index')"
        :href="route('admin.penyakit.index')">
        Penyakit
    </x-nav-link>
    <x-nav-link
        icon="fa-notes-medical"
        :active="request()->routeIs('admin.gejala.index')"
        :href="route('admin.gejala.index')">
        Gejala
    </x-nav-link>
    <x-nav-link
        icon="fa-stethoscope"
        :active="request()->routeIs('admin.gejala-penyakit.*')"
        :href="route('admin.gejala-penyakit.index')">
        Gejala Penyakit (<i>Rule</i>)
    </x-nav-link>
    <x-nav-link
        icon="fa-heartbeat"
        :active="request()->routeIs('admin.diagnosis')"
        :href="route('diagnosis')">
        Diagnosis
    </x-nav-link>

    <li class="sidebar-title">Laporan</li>
    <x-nav-link
        icon="fa-file-medical"
        :active="request()->routeIs('admin.laporan-diagnosis-pasien')"
        :href="route('admin.laporan-diagnosis-pasien')">
        Laporan Diagnosis Pasien
    </x-nav-link>

</div>
