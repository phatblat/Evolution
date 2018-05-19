/*
 * build.gradle.kts
 * Evolution
 */

import at.phatbl.shellexec.ShellExec

plugins {
    id("at.phatbl.clamp") version "1.1.0"
    id("at.phatbl.shellexec") version "1.1.3"
}

val crashlyticsSubmitPath: String by project
val crashlyticsApiKey: String by project
val crashlyticsBuildSecret: String by project
val crashlyticsGroup: String by project
val ipaPath: String by project

tasks {
    val deploy by tasks.creating(ShellExec::class.java) {
        description = "Deploys the app to Crashlytics"
        group = "Evolution"
        command = "echo $crashlyticsSubmitPath $crashlyticsApiKey $crashlyticsBuildSecret -ipaPath $ipaPath -groupAliases $crashlyticsGroup -notesPath RELEASENOTES.md -notifications YES"
    }
}
