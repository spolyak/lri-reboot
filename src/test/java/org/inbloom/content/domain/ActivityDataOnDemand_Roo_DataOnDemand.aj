// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.inbloom.content.domain;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.inbloom.content.domain.Activity;
import org.inbloom.content.domain.ActivityDataOnDemand;
import org.inbloom.content.domain.ResourceDataOnDemand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect ActivityDataOnDemand_Roo_DataOnDemand {
    
    declare @type: ActivityDataOnDemand: @Component;
    
    private Random ActivityDataOnDemand.rnd = new SecureRandom();
    
    private List<Activity> ActivityDataOnDemand.data;
    
    @Autowired
    ResourceDataOnDemand ActivityDataOnDemand.resourceDataOnDemand;
    
    public Activity ActivityDataOnDemand.getNewTransientActivity(int index) {
        Activity obj = new Activity();
        setActor(obj, index);
        setVal(obj, index);
        setVerb(obj, index);
        return obj;
    }
    
    public void ActivityDataOnDemand.setActor(Activity obj, int index) {
        String actor = "actor_" + index;
        obj.setActor(actor);
    }
    
    public void ActivityDataOnDemand.setVal(Activity obj, int index) {
        String val = "val_" + index;
        obj.setVal(val);
    }
    
    public void ActivityDataOnDemand.setVerb(Activity obj, int index) {
        String verb = "verb_" + index;
        obj.setVerb(verb);
    }
    
    public Activity ActivityDataOnDemand.getSpecificActivity(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Activity obj = data.get(index);
        Long id = obj.getId();
        return Activity.findActivity(id);
    }
    
    public Activity ActivityDataOnDemand.getRandomActivity() {
        init();
        Activity obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Activity.findActivity(id);
    }
    
    public boolean ActivityDataOnDemand.modifyActivity(Activity obj) {
        return false;
    }
    
    public void ActivityDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Activity.findActivityEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Activity' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Activity>();
        for (int i = 0; i < 10; i++) {
            Activity obj = getNewTransientActivity(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
