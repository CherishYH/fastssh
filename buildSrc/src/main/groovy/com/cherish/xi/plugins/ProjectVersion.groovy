package com.cherish.xi.plugins

/**
 * author YangHan
 * data 15/12/30
 */
class ProjectVersion{
    Integer major
    Integer minor
    Boolean release

    ProjectVersion(Integer major, Integer minor) {
        this.major = major
        this.minor = minor
        this.release = Boolean.FALSE
    }

    ProjectVersion(Integer major, Integer minor, Boolean release) {
        this(major,minor)
        this.release = release
    }

    @Override
    String toString() {
        "$major.$minor${release ? '' : "-SNAPSHOT"}"
    }
}
