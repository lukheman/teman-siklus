<div class="row">

    <div class="col-12">
        <div class="card">
            <div class="card-header">


                <h4 class="card-title">Laporan Diagnosis Pasien</h4>


            </div>

            <div class="card-body">

                <div class="row">
                    <div class="col">

                        <a href="{{ route('laporan-diagnosis-pasien')}}" class="btn btn-outline-danger">Cetak Semua Diagnosis Pasien</a>
                    </div>
                    <div class="col">

                    </div>
                </div>

            </div>

        </div>
    </div>

    <div class="col-12">

        <div class="card">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-stripped">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Nama</th>
                                <th>Umur</th>
                                <th class="text-end">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>

                            @foreach ($log_diagnosis as $item)
                            <tr>
                                <td>{{ $loop->index + $log_diagnosis->firstItem()}}</td>
                                <td>{{ $item->nama}}</td>
                                <td>{{ $item->umur}}</td>
                                <td class="text-end">
                                    <button wire:click="delete({{ $item->id }})" class="btn btn-sm btn-outline-danger"><i class="fa fa-trash"></i> Hapus</button>
                                    <form class="d-inline" action="{{ route('laporan-diagnosis-satu-pasien')}}" method="post">
                                        @csrf

                                        <input type="hidden" name="id_log_diagnosis" value="{{ $item->id }}">

                                        <button class="btn btn-sm btn-outline-danger"><i class="fa fa-print"></i> Cetak</button>
                                    </form>
                                </td>
                            </tr>
                            @endforeach

                        </tbody>

                    </table>

                    <x-pagination :items="$log_diagnosis"></x-pagination>
                </div>
            </div>
        </div>


    </div>

</div>
