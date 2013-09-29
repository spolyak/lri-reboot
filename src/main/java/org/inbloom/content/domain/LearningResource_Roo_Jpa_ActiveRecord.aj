// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.inbloom.content.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.inbloom.content.domain.LearningResource;
import org.springframework.transaction.annotation.Transactional;

privileged aspect LearningResource_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager LearningResource.entityManager;
    
    public static final EntityManager LearningResource.entityManager() {
        EntityManager em = new LearningResource().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long LearningResource.countLearningResources() {
        return entityManager().createQuery("SELECT COUNT(o) FROM LearningResource o", Long.class).getSingleResult();
    }
    
    public static List<LearningResource> LearningResource.findAllLearningResources() {
        return entityManager().createQuery("SELECT o FROM LearningResource o", LearningResource.class).getResultList();
    }
    
    public static LearningResource LearningResource.findLearningResource(Long id) {
        if (id == null) return null;
        return entityManager().find(LearningResource.class, id);
    }
    
    public static List<LearningResource> LearningResource.findLearningResourceEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM LearningResource o", LearningResource.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void LearningResource.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void LearningResource.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            LearningResource attached = LearningResource.findLearningResource(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void LearningResource.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void LearningResource.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public LearningResource LearningResource.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        LearningResource merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}