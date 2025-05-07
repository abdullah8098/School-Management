<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
</head>
<body>
    <form method="POST" action="{{ route('password.email') }}">
        @csrf

        <div>
            <label for="email">Email</label>
            <input id="email" type="email" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
            @error('email')
                <span>{{ $message }}</span>
            @enderror
        </div>

        <button type="submit">Send Password Reset Link</button>
    </form>
</body>
</html>
