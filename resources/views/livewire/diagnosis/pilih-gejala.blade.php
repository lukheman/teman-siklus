<div class="d-flex align-items-center justify-content-center vh-100" >

    <div class="card shadow-lg border-0" style="max-width: 600px; width: 100%;">
        <div class="card-header text-center" style="background-color: #c36b84; color: #fff;">
            <h5 class="mb-0"><b>Pilih Gejala</b></h5>
        </div>

        <div class="card-body">
            <form>
                <div class="mb-3">
                    @foreach ($gejala as $item)
                        <div class="form-check mb-2">
                            <input
                                wire:model="id_gejala_terpilih"
                                type="checkbox"
                                id="gejala-{{ $item->id }}"
                                value="{{ $item->id }}"
                                class="form-check-input"
                            >
                            <label for="gejala-{{ $item->id }}" class="form-check-label">
                                {{ $loop->index+1 . '. ' . $item->nama }}
                            </label>
                        </div>
                    @endforeach
                </div>

                <div class="d-flex justify-content-between">
                    <button wire:click="backToInfoPasien" type="button" class="btn btn-secondary">
                        Kembali
                    </button>
                    <button wire:click="start" type="button" class="btn"
                            style="background-color: #c36b84; color: #fff;">
                        Diagnosis
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
