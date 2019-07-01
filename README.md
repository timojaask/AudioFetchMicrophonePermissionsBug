# AudioFetchMicrophonePermissionsBug
Project that reproduces AudioFetchSDK bug where the SDK unnecessarily requires microphone access

Steps to reproduce

1. Build and run the sample project on a physical iOS device
2. Tap the "Play channel 0" button

Result: the app with crash with `NSMicrophoneUsageDescription` error.

Expected: the app should not require microphone access, because AudioFetch SDK should not be accessing microphone.
