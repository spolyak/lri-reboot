// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.inbloom.content.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.inbloom.content.domain.LearningMap;
import org.springframework.transaction.annotation.Transactional;

privileged aspect LearningMap_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager LearningMap.entityManager;
    
    public static final EntityManager LearningMap.entityManager() {
        EntityManager em = new LearningMap().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long LearningMap.countLearningMaps() {
        return entityManager().createQuery("SELECT COUNT(o) FROM LearningMap o", Long.class).getSingleResult();
    }
    
    public static List<LearningMap> LearningMap.findAllLearningMaps() {
        return entityManager().createQuery("SELECT o FROM LearningMap o", LearningMap.class).getResultList();
    }
    
    public static LearningMap LearningMap.findLearningMap(Long id) {
        if (id == null) return null;
        return entityManager().find(LearningMap.class, id);
    }
    
    public static List<LearningMap> LearningMap.findLearningMapEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM LearningMap o", LearningMap.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void LearningMap.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void LearningMap.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            LearningMap attached = LearningMap.findLearningMap(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void LearningMap.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void LearningMap.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public LearningMap LearningMap.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        LearningMap merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
