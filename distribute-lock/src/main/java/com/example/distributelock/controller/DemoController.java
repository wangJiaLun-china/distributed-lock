package com.example.distributelock.controller;

import com.example.distributelock.dao.DistributeLockMapper;
import com.example.distributelock.model.DistributeLock;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/**
 * @author wangJiaLun
 * @date 2022-02-11
 **/
@Slf4j
@RestController
public class DemoController {

    private Lock lock = new ReentrantLock();

    @Resource
    private DistributeLockMapper distributeLockMapper;

    @RequestMapping("singleLock")
    public String singleLock(){
        log.info("我进入了方法");
        lock.lock();
        log.info("我进入了锁");
        try {
            Thread.sleep(60000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }finally {
            lock.unlock();
        }
        return "执行完毕";
    }

    @RequestMapping("sqlLock")
    @Transactional(rollbackOn = Exception.class)
    public String sqlLock() throws Exception {
        log.info("我进入了方法");
        DistributeLock distributeLock = distributeLockMapper.selectDistributeLock("demo");
        if (null == distributeLock) {
            throw new Exception("分布式锁找不到");
        }
        log.info("我进入了锁");
        try {
            Thread.sleep(60000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }finally {
            lock.unlock();
        }
        return "执行完毕";
    }
}
