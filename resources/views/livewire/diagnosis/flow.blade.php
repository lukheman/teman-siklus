<div class="row justify-content-center">


        @if ($step === 1)
            <livewire:diagnosis.info-pasien />
        @elseif($step === 2)
            <livewire:diagnosis.pilih-gejala />
        @elseif($step === 3)
            <livewire:diagnosis.hasil-diagnosis />
        @endif


</div>
