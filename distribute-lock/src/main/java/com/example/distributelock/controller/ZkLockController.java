package com.example.distributelock.controller;

import com.example.distributelock.lock.ZkLock;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author wangJiaLun
 * @date 2022-02-14
 **/
@Slf4j
@RestController
public class ZkLockController {


    @RequestMapping("zkLock")
    public String zkLock(){
        log.info("我进入了方法！");
        try (ZkLock zkLock = new ZkLock()){
            if (zkLock.getLock("order")) {
                log.info("我获得了锁！！");
                Thread.sleep(15000);
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        log.info("方法执行完成");
        return "方法执行完成";
    }
}
