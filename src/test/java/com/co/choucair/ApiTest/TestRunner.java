package com.co.choucair.ApiTest;

import com.intuit.karate.junit5.Karate;

class TestRunner {
    
    @Karate.Test
    Karate testApi() {
        return Karate.run("api-test-karate").relativeTo(getClass());
    }    

}
