#!/usr/bin/env bash
# Builds the Rust core for Android and puts the .so into the app.
# Needs: rustup, Android NDK (set ANDROID_NDK_HOME), cargo-ndk.
set -e
rustup target add aarch64-linux-android
cargo install cargo-ndk
cd "$(dirname "$0")/rust"
cargo ndk -t arm64-v8a -o ../app/src/main/jniLibs build --release
echo "Done. Now build the APK in Android Studio (or ./gradlew assembleDebug)."
