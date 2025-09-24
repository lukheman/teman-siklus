<div class="d-flex align-items-center justify-content-center vh-100" >

    <div class="card shadow-lg p-4" style="max-width: 400px; width: 100%;">
        <h3 class="text-center mb-4" style="color: #c36b84;">Login</h3>


        <x-flash-message />
        <form wire:submit.prevent="submit">
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" wire:model="email" id="email" class="form-control" required>
                @error('email') <span class="text-danger">{{ $message }}</span> @enderror
            </div>

            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" wire:model="password" id="password" class="form-control" required>
                @error('password') <span class="text-danger">{{ $message }}</span> @enderror
            </div>

            <button type="submit" class="btn w-100" style="background-color: #c36b84; color: white;">
                Login
            </button>
        </form>
    </div>
</div>
