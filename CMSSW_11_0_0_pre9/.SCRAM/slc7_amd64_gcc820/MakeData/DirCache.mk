ifeq ($(strip $(RecoEcalEcalClusterFunctions)),)
RecoEcalEcalClusterFunctions := self/src/RecoEcal/EgammaCoreTools/plugins
PLUGINS:=yes
RecoEcalEcalClusterFunctions_files := $(patsubst src/RecoEcal/EgammaCoreTools/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoEcal/EgammaCoreTools/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEcal/EgammaCoreTools/plugins/$(file). Please fix src/RecoEcal/EgammaCoreTools/plugins/BuildFile.))))
RecoEcalEcalClusterFunctions_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaCoreTools/plugins/BuildFile
RecoEcalEcalClusterFunctions_LOC_USE := self  RecoEcal/EgammaCoreTools CondFormats/DataRecord CondFormats/EcalObjects
RecoEcalEcalClusterFunctions_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoEcalEcalClusterFunctions,RecoEcalEcalClusterFunctions,$(SCRAMSTORENAME_LIB),src/RecoEcal/EgammaCoreTools/plugins))
RecoEcalEcalClusterFunctions_PACKAGE := self/src/RecoEcal/EgammaCoreTools/plugins
ALL_PRODS += RecoEcalEcalClusterFunctions
RecoEcal/EgammaCoreTools_forbigobj+=RecoEcalEcalClusterFunctions
RecoEcalEcalClusterFunctions_INIT_FUNC        += $$(eval $$(call Library,RecoEcalEcalClusterFunctions,src/RecoEcal/EgammaCoreTools/plugins,src_RecoEcal_EgammaCoreTools_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
RecoEcalEcalClusterFunctions_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,RecoEcalEcalClusterFunctions,src/RecoEcal/EgammaCoreTools/plugins))
endif
ALL_COMMONRULES += src_RecoEcal_EgammaCoreTools_plugins
src_RecoEcal_EgammaCoreTools_plugins_parent := RecoEcal/EgammaCoreTools
src_RecoEcal_EgammaCoreTools_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEcal_EgammaCoreTools_plugins,src/RecoEcal/EgammaCoreTools/plugins,PLUGINS))
ifeq ($(strip $(EGamma_AnalyzerEGammaanalyzerAuto)),)
EGamma_AnalyzerEGammaanalyzerAuto := self/src/EGamma_Analyzer/EGammaanalyzer/plugins
PLUGINS:=yes
EGamma_AnalyzerEGammaanalyzerAuto_files := $(patsubst src/EGamma_Analyzer/EGammaanalyzer/plugins/%,%,$(wildcard $(foreach dir,src/EGamma_Analyzer/EGammaanalyzer/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
EGamma_AnalyzerEGammaanalyzerAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/EGamma_Analyzer/EGammaanalyzer/plugins/BuildFile
EGamma_AnalyzerEGammaanalyzerAuto_LOC_USE := self  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/TrackReco DataFormats/Common DataFormats/HepMCCandidate HLTrigger/HLTcore DataFormats/PatCandidates DataFormats/HLTReco
EGamma_AnalyzerEGammaanalyzerAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,EGamma_AnalyzerEGammaanalyzerAuto,EGamma_AnalyzerEGammaanalyzerAuto,$(SCRAMSTORENAME_LIB),src/EGamma_Analyzer/EGammaanalyzer/plugins))
EGamma_AnalyzerEGammaanalyzerAuto_PACKAGE := self/src/EGamma_Analyzer/EGammaanalyzer/plugins
ALL_PRODS += EGamma_AnalyzerEGammaanalyzerAuto
EGamma_Analyzer/EGammaanalyzer_forbigobj+=EGamma_AnalyzerEGammaanalyzerAuto
EGamma_AnalyzerEGammaanalyzerAuto_INIT_FUNC        += $$(eval $$(call Library,EGamma_AnalyzerEGammaanalyzerAuto,src/EGamma_Analyzer/EGammaanalyzer/plugins,src_EGamma_Analyzer_EGammaanalyzer_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
EGamma_AnalyzerEGammaanalyzerAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,EGamma_AnalyzerEGammaanalyzerAuto,src/EGamma_Analyzer/EGammaanalyzer/plugins))
endif
ALL_COMMONRULES += src_EGamma_Analyzer_EGammaanalyzer_plugins
src_EGamma_Analyzer_EGammaanalyzer_plugins_parent := EGamma_Analyzer/EGammaanalyzer
src_EGamma_Analyzer_EGammaanalyzer_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EGamma_Analyzer_EGammaanalyzer_plugins,src/EGamma_Analyzer/EGammaanalyzer/plugins,PLUGINS))
ifeq ($(strip $(RecoParticleFlow/PFClusterProducer)),)
ALL_COMMONRULES += src_RecoParticleFlow_PFClusterProducer_src
src_RecoParticleFlow_PFClusterProducer_src_parent := RecoParticleFlow/PFClusterProducer
src_RecoParticleFlow_PFClusterProducer_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoParticleFlow_PFClusterProducer_src,src/RecoParticleFlow/PFClusterProducer/src,LIBRARY))
RecoParticleFlowPFClusterProducer := self/RecoParticleFlow/PFClusterProducer
RecoParticleFlow/PFClusterProducer := RecoParticleFlowPFClusterProducer
RecoParticleFlowPFClusterProducer_files := $(patsubst src/RecoParticleFlow/PFClusterProducer/src/%,%,$(wildcard $(foreach dir,src/RecoParticleFlow/PFClusterProducer/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoParticleFlowPFClusterProducer_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoParticleFlow/PFClusterProducer/BuildFile
RecoParticleFlowPFClusterProducer_LOC_USE := self  CondFormats/HcalObjects CondFormats/EcalObjects CondFormats/EgammaObjects CondFormats/DataRecord DataFormats/Common DataFormats/ParticleFlowReco Geometry/HGCalGeometry RecoLocalCalo/HcalRecAlgos DataFormats/DetId DataFormats/HcalDetId DataFormats/ForwardDetId RecoEcal/EgammaCoreTools RecoParticleFlow/PFClusterTools Calibration/Tools CalibCalorimetry/EcalTPGTools DataFormats/HGCRecHit RecoLocalCalo/HGCalRecAlgos vdt_headers rootmath root
RecoParticleFlowPFClusterProducer_EX_LIB   := RecoParticleFlowPFClusterProducer
RecoParticleFlowPFClusterProducer_EX_USE   := $(foreach d,$(RecoParticleFlowPFClusterProducer_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoParticleFlowPFClusterProducer_PACKAGE := self/src/RecoParticleFlow/PFClusterProducer/src
ALL_PRODS += RecoParticleFlowPFClusterProducer
RecoParticleFlowPFClusterProducer_CLASS := LIBRARY
RecoParticleFlow/PFClusterProducer_forbigobj+=RecoParticleFlowPFClusterProducer
RecoParticleFlowPFClusterProducer_INIT_FUNC        += $$(eval $$(call Library,RecoParticleFlowPFClusterProducer,src/RecoParticleFlow/PFClusterProducer/src,src_RecoParticleFlow_PFClusterProducer_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
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
ifeq ($(strip $(RecoEcal/EgammaCoreTools)),)
ALL_COMMONRULES += src_RecoEcal_EgammaCoreTools_src
src_RecoEcal_EgammaCoreTools_src_parent := RecoEcal/EgammaCoreTools
src_RecoEcal_EgammaCoreTools_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoEcal_EgammaCoreTools_src,src/RecoEcal/EgammaCoreTools/src,LIBRARY))
RecoEcalEgammaCoreTools := self/RecoEcal/EgammaCoreTools
RecoEcal/EgammaCoreTools := RecoEcalEgammaCoreTools
RecoEcalEgammaCoreTools_files := $(patsubst src/RecoEcal/EgammaCoreTools/src/%,%,$(wildcard $(foreach dir,src/RecoEcal/EgammaCoreTools/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoEcalEgammaCoreTools_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaCoreTools/BuildFile
RecoEcalEgammaCoreTools_LOC_USE := self  DataFormats/EcalRecHit DataFormats/EgammaReco DataFormats/Math FWCore/Framework FWCore/Utilities FWCore/MessageLogger Geometry/CaloGeometry Geometry/CaloTopology Geometry/EcalAlgo RecoLocalCalo/EcalRecAlgos Geometry/Records CalibCalorimetry/EcalLaserCorrection clhep
RecoEcalEgammaCoreTools_EX_LIB   := RecoEcalEgammaCoreTools
RecoEcalEgammaCoreTools_EX_USE   := $(foreach d,$(RecoEcalEgammaCoreTools_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEcalEgammaCoreTools_PACKAGE := self/src/RecoEcal/EgammaCoreTools/src
ALL_PRODS += RecoEcalEgammaCoreTools
RecoEcalEgammaCoreTools_CLASS := LIBRARY
RecoEcal/EgammaCoreTools_forbigobj+=RecoEcalEgammaCoreTools
RecoEcalEgammaCoreTools_INIT_FUNC        += $$(eval $$(call Library,RecoEcalEgammaCoreTools,src/RecoEcal/EgammaCoreTools/src,src_RecoEcal_EgammaCoreTools_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(MyModulesTestAuto)),)
MyModulesTestAuto := self/src/MyModules/Test/plugins
PLUGINS:=yes
MyModulesTestAuto_files := $(patsubst src/MyModules/Test/plugins/%,%,$(wildcard $(foreach dir,src/MyModules/Test/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
MyModulesTestAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/MyModules/Test/plugins/BuildFile
MyModulesTestAuto_LOC_USE := self  FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/TrackReco
MyModulesTestAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,MyModulesTestAuto,MyModulesTestAuto,$(SCRAMSTORENAME_LIB),src/MyModules/Test/plugins))
MyModulesTestAuto_PACKAGE := self/src/MyModules/Test/plugins
ALL_PRODS += MyModulesTestAuto
MyModules/Test_forbigobj+=MyModulesTestAuto
MyModulesTestAuto_INIT_FUNC        += $$(eval $$(call Library,MyModulesTestAuto,src/MyModules/Test/plugins,src_MyModules_Test_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
MyModulesTestAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,MyModulesTestAuto,src/MyModules/Test/plugins))
endif
ALL_COMMONRULES += src_MyModules_Test_plugins
src_MyModules_Test_plugins_parent := MyModules/Test
src_MyModules_Test_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_MyModules_Test_plugins,src/MyModules/Test/plugins,PLUGINS))
ifeq ($(strip $(RecoEcal/EgammaClusterAlgos)),)
ALL_COMMONRULES += src_RecoEcal_EgammaClusterAlgos_src
src_RecoEcal_EgammaClusterAlgos_src_parent := RecoEcal/EgammaClusterAlgos
src_RecoEcal_EgammaClusterAlgos_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RecoEcal_EgammaClusterAlgos_src,src/RecoEcal/EgammaClusterAlgos/src,LIBRARY))
RecoEcalEgammaClusterAlgos := self/RecoEcal/EgammaClusterAlgos
RecoEcal/EgammaClusterAlgos := RecoEcalEgammaClusterAlgos
RecoEcalEgammaClusterAlgos_files := $(patsubst src/RecoEcal/EgammaClusterAlgos/src/%,%,$(wildcard $(foreach dir,src/RecoEcal/EgammaClusterAlgos/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RecoEcalEgammaClusterAlgos_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEcal/EgammaClusterAlgos/BuildFile
RecoEcalEgammaClusterAlgos_LOC_USE := self  FWCore/Framework FWCore/ParameterSet DataFormats/EcalRecHit DataFormats/EgammaReco DataFormats/Math CondFormats/ESObjects CondFormats/DataRecord RecoEcal/EgammaCoreTools Geometry/CaloGeometry Geometry/CaloTopology RecoParticleFlow/PFClusterTools RecoEgamma/EgammaTools clhep
RecoEcalEgammaClusterAlgos_EX_LIB   := RecoEcalEgammaClusterAlgos
RecoEcalEgammaClusterAlgos_EX_USE   := $(foreach d,$(RecoEcalEgammaClusterAlgos_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEcalEgammaClusterAlgos_PACKAGE := self/src/RecoEcal/EgammaClusterAlgos/src
ALL_PRODS += RecoEcalEgammaClusterAlgos
RecoEcalEgammaClusterAlgos_CLASS := LIBRARY
RecoEcal/EgammaClusterAlgos_forbigobj+=RecoEcalEgammaClusterAlgos
RecoEcalEgammaClusterAlgos_INIT_FUNC        += $$(eval $$(call Library,RecoEcalEgammaClusterAlgos,src/RecoEcal/EgammaClusterAlgos/src,src_RecoEcal_EgammaClusterAlgos_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(RecoEgammaEgammaHLTProducersPlugins)),)
RecoEgammaEgammaHLTProducersPlugins := self/src/RecoEgamma/EgammaHLTProducers/plugins
PLUGINS:=yes
RecoEgammaEgammaHLTProducersPlugins_files := $(patsubst src/RecoEgamma/EgammaHLTProducers/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/RecoEgamma/EgammaHLTProducers/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/RecoEgamma/EgammaHLTProducers/plugins/$(file). Please fix src/RecoEgamma/EgammaHLTProducers/plugins/BuildFile.))))
RecoEgammaEgammaHLTProducersPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/RecoEgamma/EgammaHLTProducers/plugins/BuildFile
RecoEgammaEgammaHLTProducersPlugins_LOC_USE := self  FWCore/Framework FWCore/ParameterSet DataFormats/EgammaCandidates Geometry/CaloGeometry RecoEcal/EgammaCoreTools RecoEgamma/EgammaElectronAlgos RecoEgamma/EgammaIsolationAlgos MagneticField/Engine MagneticField/Records DataFormats/DetId DataFormats/TrackingRecHit CondFormats/L1TObjects CondFormats/DataRecord Geometry/TrackerGeometryBuilder DataFormats/L1Trigger
RecoEgammaEgammaHLTProducersPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,RecoEgammaEgammaHLTProducersPlugins,RecoEgammaEgammaHLTProducersPlugins,$(SCRAMSTORENAME_LIB),src/RecoEgamma/EgammaHLTProducers/plugins))
RecoEgammaEgammaHLTProducersPlugins_PACKAGE := self/src/RecoEgamma/EgammaHLTProducers/plugins
ALL_PRODS += RecoEgammaEgammaHLTProducersPlugins
RecoEgamma/EgammaHLTProducers_forbigobj+=RecoEgammaEgammaHLTProducersPlugins
RecoEgammaEgammaHLTProducersPlugins_INIT_FUNC        += $$(eval $$(call Library,RecoEgammaEgammaHLTProducersPlugins,src/RecoEgamma/EgammaHLTProducers/plugins,src_RecoEgamma_EgammaHLTProducers_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
RecoEgammaEgammaHLTProducersPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,RecoEgammaEgammaHLTProducersPlugins,src/RecoEgamma/EgammaHLTProducers/plugins))
endif
ALL_COMMONRULES += src_RecoEgamma_EgammaHLTProducers_plugins
src_RecoEgamma_EgammaHLTProducers_plugins_parent := RecoEgamma/EgammaHLTProducers
src_RecoEgamma_EgammaHLTProducers_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEgamma_EgammaHLTProducers_plugins,src/RecoEgamma/EgammaHLTProducers/plugins,PLUGINS))
