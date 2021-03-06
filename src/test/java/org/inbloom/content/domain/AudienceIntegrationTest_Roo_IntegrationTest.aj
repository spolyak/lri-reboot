// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.inbloom.content.domain;

import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.inbloom.content.domain.Audience;
import org.inbloom.content.domain.AudienceDataOnDemand;
import org.inbloom.content.domain.AudienceIntegrationTest;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AudienceIntegrationTest_Roo_IntegrationTest {
    
    declare @type: AudienceIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: AudienceIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: AudienceIntegrationTest: @Transactional;
    
    @Autowired
    AudienceDataOnDemand AudienceIntegrationTest.dod;
    
    @Test
    public void AudienceIntegrationTest.testCountAudiences() {
        Assert.assertNotNull("Data on demand for 'Audience' failed to initialize correctly", dod.getRandomAudience());
        long count = Audience.countAudiences();
        Assert.assertTrue("Counter for 'Audience' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void AudienceIntegrationTest.testFindAudience() {
        Audience obj = dod.getRandomAudience();
        Assert.assertNotNull("Data on demand for 'Audience' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Audience' failed to provide an identifier", id);
        obj = Audience.findAudience(id);
        Assert.assertNotNull("Find method for 'Audience' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Audience' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void AudienceIntegrationTest.testFindAllAudiences() {
        Assert.assertNotNull("Data on demand for 'Audience' failed to initialize correctly", dod.getRandomAudience());
        long count = Audience.countAudiences();
        Assert.assertTrue("Too expensive to perform a find all test for 'Audience', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Audience> result = Audience.findAllAudiences();
        Assert.assertNotNull("Find all method for 'Audience' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Audience' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void AudienceIntegrationTest.testFindAudienceEntries() {
        Assert.assertNotNull("Data on demand for 'Audience' failed to initialize correctly", dod.getRandomAudience());
        long count = Audience.countAudiences();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Audience> result = Audience.findAudienceEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Audience' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Audience' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void AudienceIntegrationTest.testFlush() {
        Audience obj = dod.getRandomAudience();
        Assert.assertNotNull("Data on demand for 'Audience' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Audience' failed to provide an identifier", id);
        obj = Audience.findAudience(id);
        Assert.assertNotNull("Find method for 'Audience' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyAudience(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'Audience' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void AudienceIntegrationTest.testMergeUpdate() {
        Audience obj = dod.getRandomAudience();
        Assert.assertNotNull("Data on demand for 'Audience' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Audience' failed to provide an identifier", id);
        obj = Audience.findAudience(id);
        boolean modified =  dod.modifyAudience(obj);
        Integer currentVersion = obj.getVersion();
        Audience merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'Audience' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void AudienceIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'Audience' failed to initialize correctly", dod.getRandomAudience());
        Audience obj = dod.getNewTransientAudience(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Audience' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Audience' identifier to be null", obj.getId());
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
        Assert.assertNotNull("Expected 'Audience' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void AudienceIntegrationTest.testRemove() {
        Audience obj = dod.getRandomAudience();
        Assert.assertNotNull("Data on demand for 'Audience' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Audience' failed to provide an identifier", id);
        obj = Audience.findAudience(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'Audience' with identifier '" + id + "'", Audience.findAudience(id));
    }
    
}
