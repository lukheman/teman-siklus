<div>
    <x-nav-link
        icon="bi-speedometer2"
        :active="request()->routeIs('admin.dashboard')" :href="route('dashboard')">
        Dashboard
    </x-nav-link>

    <li class="sidebar-title">Menu</li>
    <x-nav-link
        icon="bi-virus"
        :active="request()->routeIs('penyakit-table')"
        :href="route('penyakit-table')">
        Penyakit
    </x-nav-link>
    <x-nav-link
        icon="bi-journal-medical"
        :active="request()->routeIs('gejala-table')"
        :href="route('gejala-table')">
        Gejala
    </x-nav-link>
    <x-nav-link
        icon="bi-activity"
        :active="request()->routeIs('rule-table')"
        :href="route('rule-table')">
        Gejala Penyakit
    </x-nav-link>
    <x-nav-link
        icon="bi-heart-pulse"
        :active="request()->routeIs('diagnosis')"
        :href="route('diagnosis')">
        Diagnosis
    </x-nav-link>

    <li class="sidebar-title">Laporan</li>
    <x-nav-link
        icon="bi-file-medical"
        :active="request()->routeIs('admin.laporan-diagnosis-pasien')"
        :href="route('admin.laporan-diagnosis-pasien')">
        Laporan Diagnosis Pasien
    </x-nav-link>
</div>
