<div class="d-flex align-items-center justify-content-center vh-100">

    <div class="card shadow-lg border-0" style="max-width: 500px; width: 100%;">
        <div class="card-header text-center" style="background-color: #c36b84; color: #fff;">
            <h5 class="mb-0"><b>Masukkan Data Diri Anda</b></h5>
        </div>

        <div class="card-body">
            <div class="mb-3">
                <label for="nama" class="form-label">Nama</label>
                <input wire:model="nama" type="text" class="form-control" id="nama" placeholder="Nama lengkap Anda">
                @error('nama')
                    <small class="text-danger">{{ $message }}</small>
                @enderror
            </div>

            <div class="mb-3">
                <label for="umur" class="form-label">Umur (Tahun)</label>
                <input wire:model="umur" type="number" class="form-control" id="umur" min="1" placeholder="Contoh: 21">
                @error('umur')
                    <small class="text-danger">{{ $message }}</small>
                @enderror
            </div>

            <button wire:click="nextStep" type="button" class="btn w-100"
                    style="background-color: #c36b84; color: #fff;">
                Lanjut
            </button>
        </div>
    </div>
</div>
