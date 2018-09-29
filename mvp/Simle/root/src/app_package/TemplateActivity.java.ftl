package ${TempPackageName};

import android.os.Bundle;
import android.support.annotation.Nullable;

<#if applicationPackage??>
import ${applicationPackage}.R;
import ${applicationPackage}.basic.BasicMvpActivity;
</#if>

/**
 * ${templateDescribe} mvp view实现类
 */

public class ${TempViewName} extends BasicMvpActivity<Contract.IPresenter> implements Contract.IView {

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        <#if generateLayout>
                setContentView(R.layout.${TempLayoutName});
        </#if>
    }

    @Override
    public Contract.IPresenter getPresenter() {
        final Contract.IModel model = new ${TempModelName}();
        final Contract.IView view = this;
        final Contract.IPresenter presenter = new ${TempPresenterName}(model, view);
        return presenter;
    }
}
