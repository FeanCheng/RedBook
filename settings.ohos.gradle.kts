pluginManagement {
    repositories {
        google()
        gradlePluginPortal()
        mavenCentral()
        maven { url = uri("https://mirrors.tencent.com/nexus/repository/maven-public/") }
        mavenLocal()
        maven { url = uri("https://mirrors.tencent.com/nexus/repository/maven-tencent/") }
    }
}

dependencyResolutionManagement {
    repositories {
        google()
        mavenCentral()
        maven { url = uri("https://mirrors.tencent.com/nexus/repository/maven-public/") }
        gradlePluginPortal()
        mavenLocal()
        maven { url = uri("https://mirrors.tencent.com/nexus/repository/maven-tencent/") }
    }
}

val ohosBuildfFileName = "build.ohos.gradle.kts"
rootProject.buildFileName = ohosBuildfFileName
rootProject.name = "RedBook"

include(":shared")
project(":shared").buildFileName = ohosBuildfFileName

System.setProperty("https.protocols", "TLSv1.2")
System.setProperty("https.protocols", "TLSv1.3")