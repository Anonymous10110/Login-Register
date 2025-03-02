plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")

    // Google services for Firebase
    id("com.google.gms.google-services")
}

android {
    namespace = "com.example.dictojtt"
    compileSdk = 34 // Change this if necessary

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.dictojtt"
        minSdk = 21  // Ensure it's at least 21
        targetSdk = 34  // Match your compileSdk version
        versionCode = 1
        versionName = "1.0"

        ndkVersion = "25.1.8937393" // Add this if needed
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    // Import the Firebase BoM
    implementation(platform("com.google.firebase:firebase-bom:33.9.0"))

    // Firebase dependencies (Add only once)
    implementation("com.google.firebase:firebase-analytics")
    implementation("com.google.firebase:firebase-auth")
    implementation("com.google.firebase:firebase-firestore")

    // Optional: Add other Firebase products (e.g., Storage, Messaging)
    // implementation("com.google.firebase:firebase-storage")
}
