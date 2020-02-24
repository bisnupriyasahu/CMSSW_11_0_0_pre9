ifeq ($(strip $(testEcalClusterSeverityAlgo)),)
testEcalClusterSeverityAlgo := self/src/RecoEcal/EgammaCoreTools/test
testEcalClusterSeverityAlgo_files := $(patsubst src/RecoEcal/EgammaCoreTools/test/%,%,$(foreach file,testEcalClusterSeverityAlgo.cc,$(eval xfile:=$(wildcard src/RecoEcal/EgammaCoreTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEcal/EgammaCoreTools/test/$(file). Please fix src/RecoEcal/EgammaCoreTools/test/BuildFile.))))
testEcalClusterSeverityAlgo_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaCoreTools/test/BuildFile
testEcalClusterSeverityAlgo_LOC_USE := self  RecoEcal/EgammaCoreTools DataFormats/EcalRecHit Geometry/CaloGeometry Geometry/CaloTopology CondFormats/EcalObjects CondFormats/DataRecord hepmc clhep SimDataFormats/GeneratorProducts
testEcalClusterSeverityAlgo_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testEcalClusterSeverityAlgo,testEcalClusterSeverityAlgo,$(SCRAMSTORENAME_LIB),src/RecoEcal/EgammaCoreTools/test))
testEcalClusterSeverityAlgo_PACKAGE := self/src/RecoEcal/EgammaCoreTools/test
ALL_PRODS += testEcalClusterSeverityAlgo
testEcalClusterSeverityAlgo_INIT_FUNC        += $$(eval $$(call Library,testEcalClusterSeverityAlgo,src/RecoEcal/EgammaCoreTools/test,src_RecoEcal_EgammaCoreTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
testEcalClusterSeverityAlgo_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,testEcalClusterSeverityAlgo,src/RecoEcal/EgammaCoreTools/test))
endif
ifeq ($(strip $(filterProbClusters)),)
filterProbClusters := self/src/RecoEcal/EgammaCoreTools/test
filterProbClusters_files := $(patsubst src/RecoEcal/EgammaCoreTools/test/%,%,$(foreach file,filterProbClusters.cc,$(eval xfile:=$(wildcard src/RecoEcal/EgammaCoreTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEcal/EgammaCoreTools/test/$(file). Please fix src/RecoEcal/EgammaCoreTools/test/BuildFile.))))
filterProbClusters_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaCoreTools/test/BuildFile
filterProbClusters_LOC_USE := self  RecoEcal/EgammaCoreTools DataFormats/EcalRecHit Geometry/CaloGeometry Geometry/CaloTopology CondFormats/EcalObjects CondFormats/DataRecord hepmc clhep SimDataFormats/GeneratorProducts
filterProbClusters_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,filterProbClusters,filterProbClusters,$(SCRAMSTORENAME_LIB),src/RecoEcal/EgammaCoreTools/test))
filterProbClusters_PACKAGE := self/src/RecoEcal/EgammaCoreTools/test
ALL_PRODS += filterProbClusters
filterProbClusters_INIT_FUNC        += $$(eval $$(call Library,filterProbClusters,src/RecoEcal/EgammaCoreTools/test,src_RecoEcal_EgammaCoreTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
filterProbClusters_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,filterProbClusters,src/RecoEcal/EgammaCoreTools/test))
endif
ifeq ($(strip $(testEcalClusterTools)),)
testEcalClusterTools := self/src/RecoEcal/EgammaCoreTools/test
testEcalClusterTools_files := $(patsubst src/RecoEcal/EgammaCoreTools/test/%,%,$(foreach file,testEcalClusterTools.cc,$(eval xfile:=$(wildcard src/RecoEcal/EgammaCoreTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEcal/EgammaCoreTools/test/$(file). Please fix src/RecoEcal/EgammaCoreTools/test/BuildFile.))))
testEcalClusterTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaCoreTools/test/BuildFile
testEcalClusterTools_LOC_USE := self  RecoEcal/EgammaCoreTools DataFormats/EcalRecHit Geometry/CaloGeometry Geometry/CaloTopology CondFormats/EcalObjects CondFormats/DataRecord hepmc clhep SimDataFormats/GeneratorProducts
testEcalClusterTools_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testEcalClusterTools,testEcalClusterTools,$(SCRAMSTORENAME_LIB),src/RecoEcal/EgammaCoreTools/test))
testEcalClusterTools_PACKAGE := self/src/RecoEcal/EgammaCoreTools/test
ALL_PRODS += testEcalClusterTools
testEcalClusterTools_INIT_FUNC        += $$(eval $$(call Library,testEcalClusterTools,src/RecoEcal/EgammaCoreTools/test,src_RecoEcal_EgammaCoreTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
testEcalClusterTools_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,testEcalClusterTools,src/RecoEcal/EgammaCoreTools/test))
endif
ifeq ($(strip $(testEcalClusterFunctions)),)
testEcalClusterFunctions := self/src/RecoEcal/EgammaCoreTools/test
testEcalClusterFunctions_files := $(patsubst src/RecoEcal/EgammaCoreTools/test/%,%,$(foreach file,testEcalClusterFunctions.cc,$(eval xfile:=$(wildcard src/RecoEcal/EgammaCoreTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEcal/EgammaCoreTools/test/$(file). Please fix src/RecoEcal/EgammaCoreTools/test/BuildFile.))))
testEcalClusterFunctions_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaCoreTools/test/BuildFile
testEcalClusterFunctions_LOC_USE := self  RecoEcal/EgammaCoreTools DataFormats/EcalRecHit Geometry/CaloGeometry Geometry/CaloTopology CondFormats/EcalObjects CondFormats/DataRecord hepmc clhep SimDataFormats/GeneratorProducts
testEcalClusterFunctions_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testEcalClusterFunctions,testEcalClusterFunctions,$(SCRAMSTORENAME_LIB),src/RecoEcal/EgammaCoreTools/test))
testEcalClusterFunctions_PACKAGE := self/src/RecoEcal/EgammaCoreTools/test
ALL_PRODS += testEcalClusterFunctions
testEcalClusterFunctions_INIT_FUNC        += $$(eval $$(call Library,testEcalClusterFunctions,src/RecoEcal/EgammaCoreTools/test,src_RecoEcal_EgammaCoreTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
testEcalClusterFunctions_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,testEcalClusterFunctions,src/RecoEcal/EgammaCoreTools/test))
endif
ifeq ($(strip $(testEcalClusterLazyTools)),)
testEcalClusterLazyTools := self/src/RecoEcal/EgammaCoreTools/test
testEcalClusterLazyTools_files := $(patsubst src/RecoEcal/EgammaCoreTools/test/%,%,$(foreach file,testEcalClusterLazyTools.cc,$(eval xfile:=$(wildcard src/RecoEcal/EgammaCoreTools/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEcal/EgammaCoreTools/test/$(file). Please fix src/RecoEcal/EgammaCoreTools/test/BuildFile.))))
testEcalClusterLazyTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaCoreTools/test/BuildFile
testEcalClusterLazyTools_LOC_USE := self  RecoEcal/EgammaCoreTools DataFormats/EcalRecHit Geometry/CaloGeometry Geometry/CaloTopology CondFormats/EcalObjects CondFormats/DataRecord hepmc clhep SimDataFormats/GeneratorProducts
testEcalClusterLazyTools_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,testEcalClusterLazyTools,testEcalClusterLazyTools,$(SCRAMSTORENAME_LIB),src/RecoEcal/EgammaCoreTools/test))
testEcalClusterLazyTools_PACKAGE := self/src/RecoEcal/EgammaCoreTools/test
ALL_PRODS += testEcalClusterLazyTools
testEcalClusterLazyTools_INIT_FUNC        += $$(eval $$(call Library,testEcalClusterLazyTools,src/RecoEcal/EgammaCoreTools/test,src_RecoEcal_EgammaCoreTools_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
testEcalClusterLazyTools_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,testEcalClusterLazyTools,src/RecoEcal/EgammaCoreTools/test))
endif
ALL_COMMONRULES += src_RecoEcal_EgammaCoreTools_test
src_RecoEcal_EgammaCoreTools_test_parent := RecoEcal/EgammaCoreTools
src_RecoEcal_EgammaCoreTools_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEcal_EgammaCoreTools_test,src/RecoEcal/EgammaCoreTools/test,TEST))
