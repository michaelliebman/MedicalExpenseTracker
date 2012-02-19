// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.github.msl521.met.domain;

import com.github.msl521.met.domain.InsurerDataOnDemand;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect InsurerIntegrationTest_Roo_IntegrationTest {
    
    declare @type: InsurerIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: InsurerIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: InsurerIntegrationTest: @Transactional;
    
    @Autowired
    private InsurerDataOnDemand InsurerIntegrationTest.dod;
    
    @Test
    public void InsurerIntegrationTest.testCountInsurers() {
        org.junit.Assert.assertNotNull("Data on demand for 'Insurer' failed to initialize correctly", dod.getRandomInsurer());
        long count = com.github.msl521.met.domain.Insurer.countInsurers();
        org.junit.Assert.assertTrue("Counter for 'Insurer' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void InsurerIntegrationTest.testFindInsurer() {
        com.github.msl521.met.domain.Insurer obj = dod.getRandomInsurer();
        org.junit.Assert.assertNotNull("Data on demand for 'Insurer' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Insurer' failed to provide an identifier", id);
        obj = com.github.msl521.met.domain.Insurer.findInsurer(id);
        org.junit.Assert.assertNotNull("Find method for 'Insurer' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'Insurer' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void InsurerIntegrationTest.testFindAllInsurers() {
        org.junit.Assert.assertNotNull("Data on demand for 'Insurer' failed to initialize correctly", dod.getRandomInsurer());
        long count = com.github.msl521.met.domain.Insurer.countInsurers();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'Insurer', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<com.github.msl521.met.domain.Insurer> result = com.github.msl521.met.domain.Insurer.findAllInsurers();
        org.junit.Assert.assertNotNull("Find all method for 'Insurer' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'Insurer' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void InsurerIntegrationTest.testFindInsurerEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'Insurer' failed to initialize correctly", dod.getRandomInsurer());
        long count = com.github.msl521.met.domain.Insurer.countInsurers();
        if (count > 20) count = 20;
        java.util.List<com.github.msl521.met.domain.Insurer> result = com.github.msl521.met.domain.Insurer.findInsurerEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'Insurer' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'Insurer' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void InsurerIntegrationTest.testFlush() {
        com.github.msl521.met.domain.Insurer obj = dod.getRandomInsurer();
        org.junit.Assert.assertNotNull("Data on demand for 'Insurer' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Insurer' failed to provide an identifier", id);
        obj = com.github.msl521.met.domain.Insurer.findInsurer(id);
        org.junit.Assert.assertNotNull("Find method for 'Insurer' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyInsurer(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'Insurer' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void InsurerIntegrationTest.testMerge() {
        com.github.msl521.met.domain.Insurer obj = dod.getRandomInsurer();
        org.junit.Assert.assertNotNull("Data on demand for 'Insurer' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Insurer' failed to provide an identifier", id);
        obj = com.github.msl521.met.domain.Insurer.findInsurer(id);
        boolean modified =  dod.modifyInsurer(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        com.github.msl521.met.domain.Insurer merged = (com.github.msl521.met.domain.Insurer) obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'Insurer' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void InsurerIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'Insurer' failed to initialize correctly", dod.getRandomInsurer());
        com.github.msl521.met.domain.Insurer obj = dod.getNewTransientInsurer(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'Insurer' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'Insurer' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'Insurer' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void InsurerIntegrationTest.testRemove() {
        com.github.msl521.met.domain.Insurer obj = dod.getRandomInsurer();
        org.junit.Assert.assertNotNull("Data on demand for 'Insurer' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'Insurer' failed to provide an identifier", id);
        obj = com.github.msl521.met.domain.Insurer.findInsurer(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'Insurer' with identifier '" + id + "'", com.github.msl521.met.domain.Insurer.findInsurer(id));
    }
    
}