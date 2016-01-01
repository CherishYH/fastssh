package com.cherish.xi.plugins

import org.gradle.api.DefaultTask
import org.gradle.api.tasks.Input
import org.gradle.api.tasks.OutputFile
import org.gradle.api.tasks.TaskAction

/**
 * author YangHan
 * data 15/12/30
 */
class ReleaseVersionTask extends DefaultTask{
    @Input Boolean release
    @OutputFile File destFile

    ReleaseVersionTask(){
        group = 'versioning'
        description = 'Makes project a release version.'
    }
    @TaskAction
    void start(){
        project.version.release = release
        ant.propertyfile(file: destFile){
            entry(key: 'release',type: 'string',operation: '=',value: release)
        }
    }
}