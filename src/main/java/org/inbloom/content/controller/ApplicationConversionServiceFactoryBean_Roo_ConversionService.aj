// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.inbloom.content.controller;

import org.inbloom.content.controller.ApplicationConversionServiceFactoryBean;
import org.inbloom.content.domain.Activity;
import org.inbloom.content.domain.AgeRange;
import org.inbloom.content.domain.Alignment;
import org.inbloom.content.domain.AlignmentType;
import org.inbloom.content.domain.Audience;
import org.inbloom.content.domain.Interactivity;
import org.inbloom.content.domain.Lang;
import org.inbloom.content.domain.LearningMap;
import org.inbloom.content.domain.LearningResource;
import org.inbloom.content.domain.Party;
import org.inbloom.content.domain.PartyType;
import org.inbloom.content.domain.Pathway;
import org.inbloom.content.domain.PathwayNode;
import org.inbloom.content.domain.Resource;
import org.inbloom.content.domain.ResourcePartyPartyType;
import org.inbloom.content.domain.Standard;
import org.inbloom.content.domain.Tag;
import org.inbloom.content.domain.Use;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Activity, String> ApplicationConversionServiceFactoryBean.getActivityToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.inbloom.content.domain.Activity, java.lang.String>() {
            public String convert(Activity activity) {
                return new StringBuilder().append(activity.getActor()).append(' ').append(activity.getVerb()).append(' ').append(activity.getVal()).toString();
            }
        };
    }
    
    public Converter<Long, Activity> ApplicationConversionServiceFactoryBean.getIdToActivityConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.inbloom.content.domain.Activity>() {
            public org.inbloom.content.domain.Activity convert(java.lang.Long id) {
                return Activity.findActivity(id);
            }
        };
    }
    
    public Converter<String, Activity> ApplicationConversionServiceFactoryBean.getStringToActivityConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.inbloom.content.domain.Activity>() {
            public org.inbloom.content.domain.Activity convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Activity.class);
            }
        };
    }
    
    public Converter<AgeRange, String> ApplicationConversionServiceFactoryBean.getAgeRangeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.inbloom.content.domain.AgeRange, java.lang.String>() {
            public String convert(AgeRange ageRange) {
                return new StringBuilder().append(ageRange.getName()).toString();
            }
        };
    }
    
    public Converter<Long, AgeRange> ApplicationConversionServiceFactoryBean.getIdToAgeRangeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.inbloom.content.domain.AgeRange>() {
            public org.inbloom.content.domain.AgeRange convert(java.lang.Long id) {
                return AgeRange.findAgeRange(id);
            }
        };
    }
    
    public Converter<String, AgeRange> ApplicationConversionServiceFactoryBean.getStringToAgeRangeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.inbloom.content.domain.AgeRange>() {
            public org.inbloom.content.domain.AgeRange convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), AgeRange.class);
            }
        };
    }
    
    public Converter<Alignment, String> ApplicationConversionServiceFactoryBean.getAlignmentToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.inbloom.content.domain.Alignment, java.lang.String>() {
            public String convert(Alignment alignment) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, Alignment> ApplicationConversionServiceFactoryBean.getIdToAlignmentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.inbloom.content.domain.Alignment>() {
            public org.inbloom.content.domain.Alignment convert(java.lang.Long id) {
                return Alignment.findAlignment(id);
            }
        };
    }
    
    public Converter<String, Alignment> ApplicationConversionServiceFactoryBean.getStringToAlignmentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.inbloom.content.domain.Alignment>() {
            public org.inbloom.content.domain.Alignment convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Alignment.class);
            }
        };
    }
    
    public Converter<AlignmentType, String> ApplicationConversionServiceFactoryBean.getAlignmentTypeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.inbloom.content.domain.AlignmentType, java.lang.String>() {
            public String convert(AlignmentType alignmentType) {
                return new StringBuilder().append(alignmentType.getName()).toString();
            }
        };
    }
    
    public Converter<Long, AlignmentType> ApplicationConversionServiceFactoryBean.getIdToAlignmentTypeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.inbloom.content.domain.AlignmentType>() {
            public org.inbloom.content.domain.AlignmentType convert(java.lang.Long id) {
                return AlignmentType.findAlignmentType(id);
            }
        };
    }
    
    public Converter<String, AlignmentType> ApplicationConversionServiceFactoryBean.getStringToAlignmentTypeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.inbloom.content.domain.AlignmentType>() {
            public org.inbloom.content.domain.AlignmentType convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), AlignmentType.class);
            }
        };
    }
    
    public Converter<Audience, String> ApplicationConversionServiceFactoryBean.getAudienceToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.inbloom.content.domain.Audience, java.lang.String>() {
            public String convert(Audience audience) {
                return new StringBuilder().append(audience.getName()).toString();
            }
        };
    }
    
    public Converter<Long, Audience> ApplicationConversionServiceFactoryBean.getIdToAudienceConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.inbloom.content.domain.Audience>() {
            public org.inbloom.content.domain.Audience convert(java.lang.Long id) {
                return Audience.findAudience(id);
            }
        };
    }
    
    public Converter<String, Audience> ApplicationConversionServiceFactoryBean.getStringToAudienceConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.inbloom.content.domain.Audience>() {
            public org.inbloom.content.domain.Audience convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Audience.class);
            }
        };
    }
    
    public Converter<Interactivity, String> ApplicationConversionServiceFactoryBean.getInteractivityToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.inbloom.content.domain.Interactivity, java.lang.String>() {
            public String convert(Interactivity interactivity) {
                return new StringBuilder().append(interactivity.getName()).toString();
            }
        };
    }
    
    public Converter<Long, Interactivity> ApplicationConversionServiceFactoryBean.getIdToInteractivityConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.inbloom.content.domain.Interactivity>() {
            public org.inbloom.content.domain.Interactivity convert(java.lang.Long id) {
                return Interactivity.findInteractivity(id);
            }
        };
    }
    
    public Converter<String, Interactivity> ApplicationConversionServiceFactoryBean.getStringToInteractivityConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.inbloom.content.domain.Interactivity>() {
            public org.inbloom.content.domain.Interactivity convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Interactivity.class);
            }
        };
    }
    
    public Converter<Lang, String> ApplicationConversionServiceFactoryBean.getLangToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.inbloom.content.domain.Lang, java.lang.String>() {
            public String convert(Lang lang) {
                return new StringBuilder().append(lang.getName()).append(' ').append(lang.getCode()).toString();
            }
        };
    }
    
    public Converter<Long, Lang> ApplicationConversionServiceFactoryBean.getIdToLangConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.inbloom.content.domain.Lang>() {
            public org.inbloom.content.domain.Lang convert(java.lang.Long id) {
                return Lang.findLang(id);
            }
        };
    }
    
    public Converter<String, Lang> ApplicationConversionServiceFactoryBean.getStringToLangConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.inbloom.content.domain.Lang>() {
            public org.inbloom.content.domain.Lang convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Lang.class);
            }
        };
    }
    
    public Converter<LearningMap, String> ApplicationConversionServiceFactoryBean.getLearningMapToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.inbloom.content.domain.LearningMap, java.lang.String>() {
            public String convert(LearningMap learningMap) {
                return new StringBuilder().append(learningMap.getName()).append(' ').append(learningMap.getPayload()).toString();
            }
        };
    }
    
    public Converter<Long, LearningMap> ApplicationConversionServiceFactoryBean.getIdToLearningMapConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.inbloom.content.domain.LearningMap>() {
            public org.inbloom.content.domain.LearningMap convert(java.lang.Long id) {
                return LearningMap.findLearningMap(id);
            }
        };
    }
    
    public Converter<String, LearningMap> ApplicationConversionServiceFactoryBean.getStringToLearningMapConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.inbloom.content.domain.LearningMap>() {
            public org.inbloom.content.domain.LearningMap convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), LearningMap.class);
            }
        };
    }
    
    public Converter<LearningResource, String> ApplicationConversionServiceFactoryBean.getLearningResourceToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.inbloom.content.domain.LearningResource, java.lang.String>() {
            public String convert(LearningResource learningResource) {
                return new StringBuilder().append(learningResource.getName()).toString();
            }
        };
    }
    
    public Converter<Long, LearningResource> ApplicationConversionServiceFactoryBean.getIdToLearningResourceConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.inbloom.content.domain.LearningResource>() {
            public org.inbloom.content.domain.LearningResource convert(java.lang.Long id) {
                return LearningResource.findLearningResource(id);
            }
        };
    }
    
    public Converter<String, LearningResource> ApplicationConversionServiceFactoryBean.getStringToLearningResourceConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.inbloom.content.domain.LearningResource>() {
            public org.inbloom.content.domain.LearningResource convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), LearningResource.class);
            }
        };
    }
    
    public Converter<Party, String> ApplicationConversionServiceFactoryBean.getPartyToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.inbloom.content.domain.Party, java.lang.String>() {
            public String convert(Party party) {
                return new StringBuilder().append(party.getName()).toString();
            }
        };
    }
    
    public Converter<Long, Party> ApplicationConversionServiceFactoryBean.getIdToPartyConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.inbloom.content.domain.Party>() {
            public org.inbloom.content.domain.Party convert(java.lang.Long id) {
                return Party.findParty(id);
            }
        };
    }
    
    public Converter<String, Party> ApplicationConversionServiceFactoryBean.getStringToPartyConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.inbloom.content.domain.Party>() {
            public org.inbloom.content.domain.Party convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Party.class);
            }
        };
    }
    
    public Converter<PartyType, String> ApplicationConversionServiceFactoryBean.getPartyTypeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.inbloom.content.domain.PartyType, java.lang.String>() {
            public String convert(PartyType partyType) {
                return new StringBuilder().append(partyType.getName()).toString();
            }
        };
    }
    
    public Converter<Long, PartyType> ApplicationConversionServiceFactoryBean.getIdToPartyTypeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.inbloom.content.domain.PartyType>() {
            public org.inbloom.content.domain.PartyType convert(java.lang.Long id) {
                return PartyType.findPartyType(id);
            }
        };
    }
    
    public Converter<String, PartyType> ApplicationConversionServiceFactoryBean.getStringToPartyTypeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.inbloom.content.domain.PartyType>() {
            public org.inbloom.content.domain.PartyType convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), PartyType.class);
            }
        };
    }
    
    public Converter<Pathway, String> ApplicationConversionServiceFactoryBean.getPathwayToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.inbloom.content.domain.Pathway, java.lang.String>() {
            public String convert(Pathway pathway) {
                return new StringBuilder().append(pathway.getName()).toString();
            }
        };
    }
    
    public Converter<Long, Pathway> ApplicationConversionServiceFactoryBean.getIdToPathwayConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.inbloom.content.domain.Pathway>() {
            public org.inbloom.content.domain.Pathway convert(java.lang.Long id) {
                return Pathway.findPathway(id);
            }
        };
    }
    
    public Converter<String, Pathway> ApplicationConversionServiceFactoryBean.getStringToPathwayConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.inbloom.content.domain.Pathway>() {
            public org.inbloom.content.domain.Pathway convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Pathway.class);
            }
        };
    }
    
    public Converter<PathwayNode, String> ApplicationConversionServiceFactoryBean.getPathwayNodeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.inbloom.content.domain.PathwayNode, java.lang.String>() {
            public String convert(PathwayNode pathwayNode) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, PathwayNode> ApplicationConversionServiceFactoryBean.getIdToPathwayNodeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.inbloom.content.domain.PathwayNode>() {
            public org.inbloom.content.domain.PathwayNode convert(java.lang.Long id) {
                return PathwayNode.findPathwayNode(id);
            }
        };
    }
    
    public Converter<String, PathwayNode> ApplicationConversionServiceFactoryBean.getStringToPathwayNodeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.inbloom.content.domain.PathwayNode>() {
            public org.inbloom.content.domain.PathwayNode convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), PathwayNode.class);
            }
        };
    }
    
    public Converter<Resource, String> ApplicationConversionServiceFactoryBean.getResourceToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.inbloom.content.domain.Resource, java.lang.String>() {
            public String convert(Resource resource) {
                return new StringBuilder().append(resource.getName()).append(' ').append(resource.getExternalGUID()).append(' ').append(resource.getURL()).append(' ').append(resource.getDescription()).toString();
            }
        };
    }
    
    public Converter<Long, Resource> ApplicationConversionServiceFactoryBean.getIdToResourceConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.inbloom.content.domain.Resource>() {
            public org.inbloom.content.domain.Resource convert(java.lang.Long id) {
                return Resource.findResource(id);
            }
        };
    }
    
    public Converter<String, Resource> ApplicationConversionServiceFactoryBean.getStringToResourceConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.inbloom.content.domain.Resource>() {
            public org.inbloom.content.domain.Resource convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Resource.class);
            }
        };
    }
    
    public Converter<ResourcePartyPartyType, String> ApplicationConversionServiceFactoryBean.getResourcePartyPartyTypeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.inbloom.content.domain.ResourcePartyPartyType, java.lang.String>() {
            public String convert(ResourcePartyPartyType resourcePartyPartyType) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<Long, ResourcePartyPartyType> ApplicationConversionServiceFactoryBean.getIdToResourcePartyPartyTypeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.inbloom.content.domain.ResourcePartyPartyType>() {
            public org.inbloom.content.domain.ResourcePartyPartyType convert(java.lang.Long id) {
                return ResourcePartyPartyType.findResourcePartyPartyType(id);
            }
        };
    }
    
    public Converter<String, ResourcePartyPartyType> ApplicationConversionServiceFactoryBean.getStringToResourcePartyPartyTypeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.inbloom.content.domain.ResourcePartyPartyType>() {
            public org.inbloom.content.domain.ResourcePartyPartyType convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), ResourcePartyPartyType.class);
            }
        };
    }
    
    public Converter<Standard, String> ApplicationConversionServiceFactoryBean.getStandardToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.inbloom.content.domain.Standard, java.lang.String>() {
            public String convert(Standard standard) {
                return new StringBuilder().append(standard.getName()).append(' ').append(standard.getUrl()).append(' ').append(standard.getExternalId()).append(' ').append(standard.getHeading()).toString();
            }
        };
    }
    
    public Converter<Long, Standard> ApplicationConversionServiceFactoryBean.getIdToStandardConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.inbloom.content.domain.Standard>() {
            public org.inbloom.content.domain.Standard convert(java.lang.Long id) {
                return Standard.findStandard(id);
            }
        };
    }
    
    public Converter<String, Standard> ApplicationConversionServiceFactoryBean.getStringToStandardConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.inbloom.content.domain.Standard>() {
            public org.inbloom.content.domain.Standard convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Standard.class);
            }
        };
    }
    
    public Converter<Tag, String> ApplicationConversionServiceFactoryBean.getTagToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.inbloom.content.domain.Tag, java.lang.String>() {
            public String convert(Tag tag) {
                return new StringBuilder().append(tag.getName()).toString();
            }
        };
    }
    
    public Converter<Long, Tag> ApplicationConversionServiceFactoryBean.getIdToTagConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.inbloom.content.domain.Tag>() {
            public org.inbloom.content.domain.Tag convert(java.lang.Long id) {
                return Tag.findTag(id);
            }
        };
    }
    
    public Converter<String, Tag> ApplicationConversionServiceFactoryBean.getStringToTagConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.inbloom.content.domain.Tag>() {
            public org.inbloom.content.domain.Tag convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Tag.class);
            }
        };
    }
    
    public Converter<Use, String> ApplicationConversionServiceFactoryBean.getUseToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.inbloom.content.domain.Use, java.lang.String>() {
            public String convert(Use use) {
                return new StringBuilder().append(use.getName()).toString();
            }
        };
    }
    
    public Converter<Long, Use> ApplicationConversionServiceFactoryBean.getIdToUseConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.inbloom.content.domain.Use>() {
            public org.inbloom.content.domain.Use convert(java.lang.Long id) {
                return Use.findUse(id);
            }
        };
    }
    
    public Converter<String, Use> ApplicationConversionServiceFactoryBean.getStringToUseConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.inbloom.content.domain.Use>() {
            public org.inbloom.content.domain.Use convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Use.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getActivityToStringConverter());
        registry.addConverter(getIdToActivityConverter());
        registry.addConverter(getStringToActivityConverter());
        registry.addConverter(getAgeRangeToStringConverter());
        registry.addConverter(getIdToAgeRangeConverter());
        registry.addConverter(getStringToAgeRangeConverter());
        registry.addConverter(getAlignmentToStringConverter());
        registry.addConverter(getIdToAlignmentConverter());
        registry.addConverter(getStringToAlignmentConverter());
        registry.addConverter(getAlignmentTypeToStringConverter());
        registry.addConverter(getIdToAlignmentTypeConverter());
        registry.addConverter(getStringToAlignmentTypeConverter());
        registry.addConverter(getAudienceToStringConverter());
        registry.addConverter(getIdToAudienceConverter());
        registry.addConverter(getStringToAudienceConverter());
        registry.addConverter(getInteractivityToStringConverter());
        registry.addConverter(getIdToInteractivityConverter());
        registry.addConverter(getStringToInteractivityConverter());
        registry.addConverter(getLangToStringConverter());
        registry.addConverter(getIdToLangConverter());
        registry.addConverter(getStringToLangConverter());
        registry.addConverter(getLearningMapToStringConverter());
        registry.addConverter(getIdToLearningMapConverter());
        registry.addConverter(getStringToLearningMapConverter());
        registry.addConverter(getLearningResourceToStringConverter());
        registry.addConverter(getIdToLearningResourceConverter());
        registry.addConverter(getStringToLearningResourceConverter());
        registry.addConverter(getPartyToStringConverter());
        registry.addConverter(getIdToPartyConverter());
        registry.addConverter(getStringToPartyConverter());
        registry.addConverter(getPartyTypeToStringConverter());
        registry.addConverter(getIdToPartyTypeConverter());
        registry.addConverter(getStringToPartyTypeConverter());
        registry.addConverter(getPathwayToStringConverter());
        registry.addConverter(getIdToPathwayConverter());
        registry.addConverter(getStringToPathwayConverter());
        registry.addConverter(getPathwayNodeToStringConverter());
        registry.addConverter(getIdToPathwayNodeConverter());
        registry.addConverter(getStringToPathwayNodeConverter());
        registry.addConverter(getResourceToStringConverter());
        registry.addConverter(getIdToResourceConverter());
        registry.addConverter(getStringToResourceConverter());
        registry.addConverter(getResourcePartyPartyTypeToStringConverter());
        registry.addConverter(getIdToResourcePartyPartyTypeConverter());
        registry.addConverter(getStringToResourcePartyPartyTypeConverter());
        registry.addConverter(getStandardToStringConverter());
        registry.addConverter(getIdToStandardConverter());
        registry.addConverter(getStringToStandardConverter());
        registry.addConverter(getTagToStringConverter());
        registry.addConverter(getIdToTagConverter());
        registry.addConverter(getStringToTagConverter());
        registry.addConverter(getUseToStringConverter());
        registry.addConverter(getIdToUseConverter());
        registry.addConverter(getStringToUseConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}