package com.ruoyi.web.tools;

import com.ruoyi.framework.manager.AsyncManager;
import org.springframework.stereotype.Component;

/**
 * 缩略图后台任务
 */
@Component("thumbTask")
public class ThumbTask {

    private boolean isRunning = false;

    public void initThumbTask(){
        if (isRunning) {
            return;
        } else {
            AsyncManager.me().execute(TaskUtils.saveThumbImage());
            isRunning = true;
        }
    }

}
