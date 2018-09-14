<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
<#if !(hasDependency('com.android.support:appcompat-v7'))>
    <dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+"/>
</#if>
<instantiate from="root/src/app_package/BasicMvpActivity.java.ftl"
                                      to="${TempTo}/BasicMvpActivity.java" />
                   <instantiate from="root/src/app_package/BasicMvpFragment.java.ftl"
                                      to="${TempTo}/BasicMvpFragment.java" />

                   <instantiate from="root/src/app_package/BasicMvpModel.java.ftl"
                                      to="${TempTo}/BasicMvpModel.java" />

                   <instantiate from="root/src/app_package/BasicMvpPresenter.java.ftl"
                                      to="${TempTo}/BasicMvpPresenter.java" />
</recipe>
