# Optimization and obfuscation options
-optimizationpasses 5
-overloadaggressively
-repackageclasses ''
-allowaccessmodification

# Keep all classes and methods in AndroidX Core library
-keep class androidx.core.** { *; }

# Keep all classes and methods in AndroidX AppCompat library
-keep class androidx.appcompat.** { *; }

# Keep all classes and methods in Material Components library
-keep class com.google.android.material.** { *; }

# Keep all classes and methods in JUnit library
-keep class org.junit.** { *; }

# Keep all classes and methods in AndroidX JUnit Extension library
-keep class androidx.test.ext.junit.** { *; }

# Keep all classes and methods in Espresso Core library
-keep class androidx.test.espresso.core.** { *; }

# Keep Gson-related classes and methods if you use Gson
-keep class com.google.gson.** { *; }

# Keep any other specific classes or methods your app requires
 -keep class rblp4nnna.com.rblpannel2.** { *; }

# Keep classes annotated with @Keep (if you use androidx.annotation.Keep)
-keep @interface androidx.annotation.Keep

# Keep classes and methods with specific annotations (adjust as per your usage)
-keepclassmembers class * {
    @androidx.annotation.Keep *;
}

# Keep entry points (like Activity classes)
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
