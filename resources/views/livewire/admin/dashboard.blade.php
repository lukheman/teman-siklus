<div>

    <div class="row">

        <div class="page-heading">
            <h3>Dashboard</h3>
        </div>

        <div class="col-12 col-md-6">
            <div class="card">
                <div class="card-body px-4 py-4-5">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="stats-icon green mb-2">
                                <i class="iconly-boldShow"></i>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <h6 class="text-muted font-semibold">Penyakit</h6>
                            <h6 class="font-extrabold mb-0">{{ $penyakit }}</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12 col-md-6">
            <div class="card">
                <div class="card-body px-4 py-4-5">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="stats-icon green mb-2">
                                <i class="iconly-boldShow"></i>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <h6 class="text-muted font-semibold">Gejala</h6>
                            <h6 class="font-extrabold mb-0">{{ $gejala }}</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div class="row">
        <div class="col-12">
            <livewire:chart.kurva-hasil-diagnosis />
        </div>
    </div>
</div>
