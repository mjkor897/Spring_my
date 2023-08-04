package com.example.spring_my.util;

import org.springframework.jdbc.support.JdbcUtils;

import java.util.HashMap;

public class LowerKeyMap extends HashMap {

    @Override
    public Object put(Object key, Object value) {
        return super.put(JdbcUtils.convertUnderscoreNameToPropertyName((String) key), value);
    }
}
