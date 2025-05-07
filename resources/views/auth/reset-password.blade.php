<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
</head>
<body>
    <div id="app">
        <div>
            <form method="POST" action="{{ route('password.update') }}">
                @csrf

                {{-- <input type="hidden" name="token" value="{{ $token }}"> --}}

                <div>
                    <label for="email">{{ __('Email') }}</label>
                    <input id="email" type="email" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                    @error('email')
                        <span>{{ $message }}</span>
                    @enderror
                </div>

                <div>
                    <label for="otp">{{ __('OTP') }}</label>
                    <input id="otp" type="text" name="otp" required>
                    @error('otp')
                        <span>{{ $message }}</span>
                    @enderror
                </div>

                <div>
                    <label for="password">{{ __('Password') }}</label>
                    <input id="password" type="password" name="password" required autocomplete="new-password">
                    @error('password')
                        <span>{{ $message }}</span>
                    @enderror
                </div>

                <div>
                    <label for="password-confirm">{{ __('Confirm Password') }}</label>
                    <input id="password-confirm" type="password" name="password_confirmation" required autocomplete="new-password">
                </div>

                <button type="submit">{{ __('Reset Password') }}</button>
            </form>
        </div>
    </div>
</body>
</html>
