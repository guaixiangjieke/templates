package ${TempPackageName};

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

/**
 * ${templateDescribe} mvp view实现类
 */

public class ${TempViewName} extends BasicMvpFragment<Contract.IPresenter> implements Contract.IView {

    public ${TempViewName}() {
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, Bundle savedInstanceState) {
        <#if generateLayout>
                final View contentView = inflater.inflate(R.layout.${TempLayoutName}, container, false);
                return contentView;
        <#else>
                TextView textView = new TextView(getActivity());
                textView.setText("${templateDescribe}");
                return textView;
        </#if>
    }

    @Override
    public Contract.IPresenter getPresenter() {
        return null;
    }
}
