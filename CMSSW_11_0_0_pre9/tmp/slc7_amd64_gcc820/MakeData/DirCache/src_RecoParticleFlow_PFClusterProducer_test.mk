ifeq ($(strip $(PFClusterAnalyzer)),)
PFClusterAnalyzer := self/src/RecoParticleFlow/PFClusterProducer/test
PFClusterAnalyzer_files := $(patsubst src/RecoParticleFlow/PFClusterProducer/test/%,%,$(foreach file,PFClusterAnalyzer.cc,$(eval xfile:=$(wildcard src/RecoParticleFlow/PFClusterProducer/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoParticleFlow/PFClusterProducer/test/$(file). Please fix src/RecoParticleFlow/PFClusterProducer/test/BuildFile.))))
PFClusterAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoParticleFlow/PFClusterProducer/test/BuildFile
PFClusterAnalyzer_LOC_USE := self  DataFormats/ParticleFlowReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities
PFClusterAnalyzer_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PFClusterAnalyzer,PFClusterAnalyzer,$(SCRAMSTORENAME_LIB),src/RecoParticleFlow/PFClusterProducer/test))
PFClusterAnalyzer_PACKAGE := self/src/RecoParticleFlow/PFClusterProducer/test
ALL_PRODS += PFClusterAnalyzer
PFClusterAnalyzer_INIT_FUNC        += $$(eval $$(call Library,PFClusterAnalyzer,src/RecoParticleFlow/PFClusterProducer/test,src_RecoParticleFlow_PFClusterProducer_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
PFClusterAnalyzer_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,PFClusterAnalyzer,src/RecoParticleFlow/PFClusterProducer/test))
endif
ifeq ($(strip $(PFClusterComparator)),)
PFClusterComparator := self/src/RecoParticleFlow/PFClusterProducer/test
PFClusterComparator_files := $(patsubst src/RecoParticleFlow/PFClusterProducer/test/%,%,$(foreach file,PFClusterComparator.cc,$(eval xfile:=$(wildcard src/RecoParticleFlow/PFClusterProducer/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoParticleFlow/PFClusterProducer/test/$(file). Please fix src/RecoParticleFlow/PFClusterProducer/test/BuildFile.))))
PFClusterComparator_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoParticleFlow/PFClusterProducer/test/BuildFile
PFClusterComparator_LOC_USE := self  DataFormats/ParticleFlowReco CommonTools/UtilAlgos FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities root
PFClusterComparator_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PFClusterComparator,PFClusterComparator,$(SCRAMSTORENAME_LIB),src/RecoParticleFlow/PFClusterProducer/test))
PFClusterComparator_PACKAGE := self/src/RecoParticleFlow/PFClusterProducer/test
ALL_PRODS += PFClusterComparator
PFClusterComparator_INIT_FUNC        += $$(eval $$(call Library,PFClusterComparator,src/RecoParticleFlow/PFClusterProducer/test,src_RecoParticleFlow_PFClusterProducer_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
PFClusterComparator_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,PFClusterComparator,src/RecoParticleFlow/PFClusterProducer/test))
endif
ALL_COMMONRULES += src_RecoParticleFlow_PFClusterProducer_test
src_RecoParticleFlow_PFClusterProducer_test_parent := RecoParticleFlow/PFClusterProducer
src_RecoParticleFlow_PFClusterProducer_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoParticleFlow_PFClusterProducer_test,src/RecoParticleFlow/PFClusterProducer/test,TEST))
