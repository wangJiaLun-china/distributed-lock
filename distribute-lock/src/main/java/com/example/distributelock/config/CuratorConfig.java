package com.example.distributelock.config;

import org.apache.curator.RetryPolicy;
import org.apache.curator.framework.CuratorFramework;
import org.apache.curator.framework.CuratorFrameworkFactory;
import org.apache.curator.retry.ExponentialBackoffRetry;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

/**
 * @author wangJiaLun
 * @date 2022-02-14
 **/
@Component
public class CuratorConfig {

    @Bean(initMethod = "start", destroyMethod = "close")
    public CuratorFramework getCuratorFramework(){
        RetryPolicy retryPolicy = new ExponentialBackoffRetry(1000, 3);
        CuratorFramework client = CuratorFrameworkFactory.newClient("124.222.101.146:2181", retryPolicy);
        return client;
    }
}
