package com.sirass.service;

import com.sirass.util.FormReflection;
import java.util.Map;

/**
 *
 * @author gomezhyuuga
 */
public class ProcessRequest {

    public ProcessRequest() {
    }

    public Object getObject(Map<String, String[]> map) {
        FormReflection myReflection = new FormReflection(map);
        return myReflection.process();
    }
}