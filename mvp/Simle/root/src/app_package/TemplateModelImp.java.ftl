package ${TempPackageName};

<#if applicationPackage??>
import ${applicationPackage}.basic.BasicMvpModel;
</#if>

/**
 * ${templateDescribe} mvp model实现类
 */

public class ${TempModelName} extends BasicMvpModel implements Contract.IModel {

}
