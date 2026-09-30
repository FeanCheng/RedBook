plugins {
    kotlin("multiplatform")
}

repositories {
    maven { url = uri("https://mirrors.tencent.com/nexus/repository/maven-public/") }
    maven { url = uri("https://mirrors.tencent.com/nexus/repository/maven-tencent/") }
    google()
    mavenCentral()
    mavenLocal()
}

kotlin {
    js(IR) {
        browser {
            webpackTask {
                mainOutputFileName = "h5App.js"
            }
            commonWebpackConfig {
                output?.library = null
                devtool = "source-map"
            }
        }
        binaries.executable()
    }
    sourceSets {
        val jsMain by getting {
            dependencies {
                implementation(project(":shared"))
            }
        }
    }
}
