// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.inbloom.content.domain;

import java.util.List;
import java.util.Set;
import org.inbloom.content.domain.Pathway;
import org.inbloom.content.domain.PathwayNode;
import org.inbloom.content.domain.Standard;

privileged aspect PathwayNode_Roo_JavaBean {
    
    public Standard PathwayNode.getStandard() {
        return this.standard;
    }
    
    public void PathwayNode.setStandard(Standard standard) {
        this.standard = standard;
    }
    
    public Pathway PathwayNode.getPathway() {
        return this.pathway;
    }
    
    public void PathwayNode.setPathway(Pathway pathway) {
        this.pathway = pathway;
    }
    
    public List<PathwayNode> PathwayNode.getPriorStep() {
        return this.priorStep;
    }
    
    public void PathwayNode.setPriorStep(List<PathwayNode> priorStep) {
        this.priorStep = priorStep;
    }
    
    public Set<PathwayNode> PathwayNode.getNextStep() {
        return this.nextStep;
    }
    
    public void PathwayNode.setNextStep(Set<PathwayNode> nextStep) {
        this.nextStep = nextStep;
    }
    
}
