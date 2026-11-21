# MC Launcher (Rust core + Android UI)

## Get the APK without a PC (GitHub Actions)
1. Create a GitHub repo and upload everything in this folder (keep the .github folder).
2. Open the repo -> Actions -> "Build APK" -> Run workflow.
3. When it finishes, download the artifact "MCLauncher-apk" -> unzip -> install app-debug.apk.

## Or build locally
Android Studio + NDK + Rust, then: export ANDROID_NDK_HOME=...; ./build_rust.sh; run from Android Studio.

## Features
Version list, install (jar, libraries, assets), Fabric + Fabric API installer,
Modrinth mod search/installer (armor HUD, potion/status effects HUD, shield status, anything else),
launch command generation.

## Not included yet
Java runtime for ARM Android, native LWJGL libs, OpenGL translation (what Zalith/Pojav ship).
Without them the game cannot actually start on the phone.
