<div class="row">

    <div class="col-md-8">

        <div class="card">

            <div class="card-header">
                <div class="row">
                    <div class="col-6">

                <h4 class="card-title">Penyakit</h4>
                    </div>
                    <div class="col-6 d-flex justify-content-end">

                        <button wire:click="create" class="btn btn-primary me-3">Tambah Penyakit</button>

                    </div>
                </div>


            </div>

            <div class="card-body">

                <div class="table-responsive">
                    <table class="table table-stripped">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Kode Penyakit</th>
                                <th>Nama</th>
                                <th>Deskripsi</th>
                                <th>Solusi</th>
                                <th class="text-end">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($penyakit as $item)

                            <tr wire:key="{{ $item->id }}">
                                <td scope="row">{{ $loop->index + $penyakit->firstItem() }}</td>
                                <td>{{ $item->kode }}</td>
                                <td>{{ $item->nama }}</td>
                                <td>{{ \Illuminate\Support\Str::limit($item->deskripsi, 50) }}</td>
                                <td>{{ \Illuminate\Support\Str::limit($item->solusi, 50) }}</td>
                                <td class="text-end">
                            <div class="btn-group">

                                        <button wire:click="edit({{ $item->id }})"   class="btn btn-sm btn-warning" type="button">Edit</button>
                                        <button wire:click="delete({{ $item->id }})" class="btn btn-sm btn-danger" type="button">Hapus</button>
                            </div>
                                </td>
                            </tr>

                            @endforeach
                        </tbody>
                    </table>

                </div>

                <x-pagination :items="$penyakit"/>


            </div>

        </div>


    </div>

    <div class="col-md-4">
        <livewire:penyakit.form></livewire:penyakit>
    </div>

</div>
