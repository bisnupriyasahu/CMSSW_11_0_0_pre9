ifeq ($(strip $(RecoParticleFlowPFClusterProducerPlugins)),)
RecoParticleFlowPFClusterProducerPlugins := self/src/RecoParticleFlow/PFClusterProducer/plugins
PLUGINS:=yes
RecoParticleFlowPFClusterProducerPlugins_files := $(patsubst src/RecoParticleFlow/PFClusterProducer/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoParticleFlow/PFClusterProducer/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoParticleFlow/PFClusterProducer/plugins/$(file). Please fix src/RecoParticleFlow/PFClusterProducer/plugins/BuildFile.))))
RecoParticleFlowPFClusterProducerPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoParticleFlow/PFClusterProducer/plugins/BuildFile
RecoParticleFlowPFClusterProducerPlugins_LOC_USE := self  CondFormats/HcalObjects CondFormats/EcalObjects CondFormats/DataRecord DataFormats/CaloTowers DataFormats/DetId DataFormats/EcalDetId DataFormats/EcalRecHit DataFormats/HcalDetId DataFormats/HcalRecHit DataFormats/Math DataFormats/ParticleFlowReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager Geometry/CaloGeometry Geometry/CaloTopology Geometry/EcalAlgo Geometry/Records RecoLocalCalo/HcalRecAlgos RecoParticleFlow/PFClusterProducer
RecoParticleFlowPFClusterProducerPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoParticleFlowPFClusterProducerPlugins,RecoParticleFlowPFClusterProducerPlugins,$(SCRAMSTORENAME_LIB),src/RecoParticleFlow/PFClusterProducer/plugins))
RecoParticleFlowPFClusterProducerPlugins_PACKAGE := self/src/RecoParticleFlow/PFClusterProducer/plugins
ALL_PRODS += RecoParticleFlowPFClusterProducerPlugins
RecoParticleFlow/PFClusterProducer_forbigobj+=RecoParticleFlowPFClusterProducerPlugins
RecoParticleFlowPFClusterProducerPlugins_INIT_FUNC        += $$(eval $$(call Library,RecoParticleFlowPFClusterProducerPlugins,src/RecoParticleFlow/PFClusterProducer/plugins,src_RecoParticleFlow_PFClusterProducer_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
RecoParticleFlowPFClusterProducerPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,RecoParticleFlowPFClusterProducerPlugins,src/RecoParticleFlow/PFClusterProducer/plugins))
endif
ifeq ($(strip $(RecoParticleFlowPFClusterProducerPlugins_simmappers)),)
RecoParticleFlowPFClusterProducerPlugins_simmappers := self/src/RecoParticleFlow/PFClusterProducer/plugins
PLUGINS:=yes
RecoParticleFlowPFClusterProducerPlugins_simmappers_files := $(patsubst src/RecoParticleFlow/PFClusterProducer/plugins/%,%,$(foreach file,SimMappers/*.cc,$(eval xfile:=$(wildcard src/RecoParticleFlow/PFClusterProducer/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoParticleFlow/PFClusterProducer/plugins/$(file). Please fix src/RecoParticleFlow/PFClusterProducer/plugins/BuildFile.))))
RecoParticleFlowPFClusterProducerPlugins_simmappers_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoParticleFlow/PFClusterProducer/plugins/BuildFile
RecoParticleFlowPFClusterProducerPlugins_simmappers_LOC_USE := self  CondFormats/HcalObjects CondFormats/EcalObjects CondFormats/DataRecord DataFormats/CaloTowers DataFormats/DetId DataFormats/EcalDetId DataFormats/EcalRecHit DataFormats/HcalDetId DataFormats/HcalRecHit DataFormats/Math DataFormats/ParticleFlowReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager Geometry/CaloGeometry Geometry/CaloTopology Geometry/EcalAlgo Geometry/Records RecoLocalCalo/HcalRecAlgos RecoParticleFlow/PFClusterProducer
RecoParticleFlowPFClusterProducerPlugins_simmappers_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoParticleFlowPFClusterProducerPlugins_simmappers,RecoParticleFlowPFClusterProducerPlugins_simmappers,$(SCRAMSTORENAME_LIB),src/RecoParticleFlow/PFClusterProducer/plugins))
RecoParticleFlowPFClusterProducerPlugins_simmappers_PACKAGE := self/src/RecoParticleFlow/PFClusterProducer/plugins
ALL_PRODS += RecoParticleFlowPFClusterProducerPlugins_simmappers
RecoParticleFlow/PFClusterProducer_forbigobj+=RecoParticleFlowPFClusterProducerPlugins_simmappers
RecoParticleFlowPFClusterProducerPlugins_simmappers_INIT_FUNC        += $$(eval $$(call Library,RecoParticleFlowPFClusterProducerPlugins_simmappers,src/RecoParticleFlow/PFClusterProducer/plugins,src_RecoParticleFlow_PFClusterProducer_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
RecoParticleFlowPFClusterProducerPlugins_simmappers_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,RecoParticleFlowPFClusterProducerPlugins_simmappers,src/RecoParticleFlow/PFClusterProducer/plugins))
endif
ALL_COMMONRULES += src_RecoParticleFlow_PFClusterProducer_plugins
src_RecoParticleFlow_PFClusterProducer_plugins_parent := RecoParticleFlow/PFClusterProducer
src_RecoParticleFlow_PFClusterProducer_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoParticleFlow_PFClusterProducer_plugins,src/RecoParticleFlow/PFClusterProducer/plugins,PLUGINS))
