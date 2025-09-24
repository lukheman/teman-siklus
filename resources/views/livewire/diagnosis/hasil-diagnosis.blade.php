<div class="d-flex align-items-center justify-content-center py-5 mt-5">

    <div class="card shadow-lg border-0 w-100" style="max-width: 800px;">
        <div class="card-header text-center" style="background-color: #c36b84; color: #fff;">
            <h4 class="mb-0"><b>Hasil Diagnosis</b></h4>
        </div>

        <div class="card-body">
            <!-- Data Pasien -->
            <div class="mb-4">
                <p><b>Nama:</b> {{ $nama }}</p>
                <p><b>Umur:</b> {{ $umur }} tahun</p>
            </div>

            <!-- Ringkasan Hasil -->
            <p class="mb-3">
                Berdasarkan gejala yang Anda alami dan hasil analisis sistem pakar,
                kemungkinan besar Anda menderita:
            </p>

            <ul class="list-group mb-4">
                @foreach ($penyakit as $item)
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        <span><b>{{ $item->nama }}</b></span>
                        <span class="badge bg-success rounded-pill">{{ $item->belief }}%</span>
                    </li>
                @endforeach
            </ul>

            <!-- Tabel Persentase -->
            <table class="table table-bordered mb-4">
                <thead style="background-color: #f8f1f4; color: #c36b84;">
                    <tr>
                        <th>No</th>
                        <th>Keterangan</th>
                        <th>Nilai Persentase</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Kemungkinan kecil</td>
                        <td>0% - 50%</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Kemungkinan</td>
                        <td>51% - 79%</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Kemungkinan besar</td>
                        <td>80% - 99%</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Sangat berkemungkinan / Sangat yakin</td>
                        <td>100%</td>
                    </tr>
                </tbody>
            </table>

            <!-- Detail Penyakit -->
            @foreach ($penyakit as $item)
                <div class="mb-5">
                    <h5 class="text-danger">Penjelasan: {{ $item->nama }}</h5>
                    <p>{{ $item->deskripsi }}</p>

                    <h6 class="text-danger">Solusi / Saran Pengobatan:</h6>
                    <p>{{ $item->solusi }}</p>
                    <hr>
                </div>
            @endforeach

            <!-- Tombol Ulangi -->
            <div class="text-center">
                <button wire:click="restartDiagnosisFlow"
                        class="btn btn-lg"
                        style="background-color: #c36b84; color: #fff;">
                    <i class="fa-solid fa-repeat"></i> Ulangi Diagnosis
                </button>
            </div>
        </div>
    </div>
</div>
