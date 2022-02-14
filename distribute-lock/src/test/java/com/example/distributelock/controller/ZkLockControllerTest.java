package com.example.distributelock.controller;

import com.example.distributelock.lock.ZkLock;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.IOException;

import static org.junit.Assert.*;

@Slf4j
@SpringBootTest
public class ZkLockControllerTest {

    @Test
    public void zkLock() throws Exception {
        ZkLock zkLock = new ZkLock();
        boolean order = zkLock.getLock("order");
        log.info(String.valueOf(order));
        zkLock.close();
    }
}