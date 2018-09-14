<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>

<#if !(hasDependency('com.nl.mvp:mvp'))>
    <dependency mavenUrl="com.nl.mvp:mvp:0.0.1"/>
</#if>

<instantiate from="root/src/app_package/Contract.java.ftl"
                   to="${TempTo}/Contract.java" />
<open file="${TempTo}/Contract.java" />

<instantiate from="root/src/app_package/TemplateModelImp.java.ftl"
                   to="${TempTo}/${TempModelName}.java" />
<open file="${TempTo}/${TempModelName}.java" />

<instantiate from="root/src/app_package/TemplatePresenterImp.java.ftl"
                   to="${TempTo}/${TempPresenterName}.java" />
<open file="${TempTo}/${TempPresenterName}.java" />

<#if isFragment>
    <instantiate from="root/src/app_package/TemplateFragment.java.ftl"
                       to="${TempTo}/${TempViewName}.java" />

<#else>
    <instantiate from="root/src/app_package/TemplateActivity.java.ftl"
                       to="${TempTo}/${TempViewName}.java" />
    <merge from="root/AndroidManifest.xml.ftl"
                                  to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
</#if>

  <open file="${TempTo}/${TempViewName}.java" />

    <#if generateLayout>
        <#if !(hasDependency('com.android.support.constraint:constraint-layout'))>
            <dependency mavenUrl="com.android.support.constraint:constraint-layout:+" />
        </#if>
            <instantiate from="root/res/layout/simple.xml.ftl"
                         to="${escapeXmlAttribute(resOut)}/layout/${TempLayoutName}.xml" />
            <open file="${escapeXmlAttribute(resOut)}/layout/${TempLayoutName}.xml" />
    </#if>

</recipe>
