# lion_trade

## Development Setup

### Installing Dart & Flutter

Follow instructions to
install [Dart](https://dart.dev/get-dart) & [Flutter](https://flutter.dev/docs/get-started/install)

### Install Dependencies

To install dev dependencies run `flutter pub get`.

--------------------

### Keys

We have sensitive keys that are hashed and that needs to be decrypted on your machine in order for you to be able to
build an application or even deploy to production. To decrypt the keys, run where you replace `SECURE_PASSWORD` with our
secure password.

> NOTE: add `-md md5` to all the OpenSSL commands.

```bash
openssl enc -aes-256-cbc -in lib/services/api_key.dart.enc -out lib/services/api_key.dart -k SECURE_PASSWORD -d -a -md md5
```

In the event you will have to encrypt a file, again replacing `SECURE_PASSWORD` with our secure password:

```bash
openssl enc -aes-256-cbc -salt -in INPUT_FILE -out OUTPUT_FILE -k SECURE_PASSWORD -a
```