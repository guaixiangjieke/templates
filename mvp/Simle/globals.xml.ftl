<?xml version="1.0"?>
<globals>
    <#assign lower_templateName=templateName?lower_case>
    <#assign cap_first_templateName=templateName?cap_first>
    <global id="TempPackageName" value="${packageName}.${lower_templateName}" />

    <#if isFragment>
        <global id="TempLayoutName" value="fragment_${lower_templateName}" />
        <global id="TempViewName" value="${cap_first_templateName}Fragment" />
    <#else>
        <global id="TempLayoutName" value="activity_${lower_templateName}" />
        <global id="TempViewName" value="${cap_first_templateName}Activity" />
    </#if>

    <global id="TempModelName" value="${cap_first_templateName}ModelImp" />
    <global id="TempPresenterName" value="${cap_first_templateName}PresenterImp" />
    <global id="TempTo" value="${escapeXmlAttribute(srcOut)}/${lower_templateName}" />

</globals>
