pluginManagement {
    repositories {
        maven { url = uri("https://mirrors.tencent.com/nexus/repository/maven-public/") }
        maven { url = uri("https://mirrors.tencent.com/nexus/repository/maven-tencent/") }
        google()
        mavenCentral()
        gradlePluginPortal()
        mavenLocal()
    }
}

dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.PREFER_SETTINGS)
    repositories {
        maven { url = uri("https://mirrors.tencent.com/nexus/repository/maven-public/") }
        maven { url = uri("https://mirrors.tencent.com/nexus/repository/maven-tencent/") }
        google()
        mavenCentral()
        gradlePluginPortal()
        mavenLocal()
    }
}

rootProject.name = "RedBook"
include(":androidApp")
include(":shared")
include(":h5App")



System.setProperty("https.protocols", "TLSv1.2")
System.setProperty("https.protocols", "TLSv1.3")