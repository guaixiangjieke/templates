<?xml version="1.0"?>
<globals>
    <#assign lower_templateName="basic">
    <global id="TempPackageName" value="${packageName}.${lower_templateName}" />
    <global id="TempTo" value="${escapeXmlAttribute(srcOut)}/${lower_templateName}" />
</globals>
