package ${moduleName};

import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView

import ${packageName}.R;
import com.madreain.libhulk.base.BaseListFragment;
import ${packageName}.databinding.Fragment${fragmentClass}Binding
import com.scwang.smartrefresh.layout.SmartRefreshLayout

import kotlinx.android.synthetic.main.${layoutName}.*

/**
 * @author madreain
 * @date 
 * module：
 * description：
 */

public class ${fragmentClass}Fragment : BaseListFragment<${fragmentClass}ViewModel, Fragment${fragmentClass}Binding,${fragmentClass}Adapter,${ktBeanName}>(){


    override fun getLayoutId(): Int {
        return R.layout.${layoutName};
    }

   override fun getReplaceView(): View {
        return ${layoutName}
    }

    override fun init(savedInstanceState: Bundle?) {


    }

    /**
     * list相关方法
     */
    override fun loadPageListData(pageNo: Int) {

    }

    override fun getSmartRefreshLayout(): SmartRefreshLayout {
        return smartRefreshLayout
    }

    override fun getRecyclerView(): RecyclerView {
        return recyclerView
    }

    override fun getLayoutManager(): RecyclerView.LayoutManager {
        return LinearLayoutManager(this)
    }

    override fun getAdapter() {
        adapter = ${fragmentClass}Adapter()
    }
}
