ALL_PACKAGES += HLTrigger/PhaseII
subdirs_src_HLTrigger_PhaseII := src_HLTrigger_PhaseII_python
ALL_PACKAGES += sourceFiles/RelValElectronGunPt2To100_CMSSW_10_6_0_patch2-106X_upgrade2023_realistic_v3_2023D41noPU-v1_GEN-SIM-RECO
subdirs_src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0_patch2-106X_upgrade2023_realistic_v3_2023D41noPU-v1_GEN-SIM-RECO := 
ALL_PACKAGES += sourceFiles/RelValElectronGunPt2To100_CMSSW_10_6_0-106X_upgrade2023_realistic_v2_2023D41noPU-v1_GEN-SIM-DIGI-RAW
subdirs_src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0-106X_upgrade2023_realistic_v2_2023D41noPU-v1_GEN-SIM-DIGI-RAW := 
ifeq ($(strip $(PyRecoEcalEgammaCoreTools)),)
PyRecoEcalEgammaCoreTools := self/src/RecoEcal/EgammaCoreTools/python
src_RecoEcal_EgammaCoreTools_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoEcal/EgammaCoreTools/python)
PyRecoEcalEgammaCoreTools_files := $(patsubst src/RecoEcal/EgammaCoreTools/python/%,%,$(wildcard $(foreach dir,src/RecoEcal/EgammaCoreTools/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoEcalEgammaCoreTools_LOC_USE := self  
PyRecoEcalEgammaCoreTools_PACKAGE := self/src/RecoEcal/EgammaCoreTools/python
ALL_PRODS += PyRecoEcalEgammaCoreTools
PyRecoEcalEgammaCoreTools_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoEcalEgammaCoreTools,src/RecoEcal/EgammaCoreTools/python,src_RecoEcal_EgammaCoreTools_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoEcalEgammaCoreTools,src/RecoEcal/EgammaCoreTools/python))
endif
ALL_COMMONRULES += src_RecoEcal_EgammaCoreTools_python
src_RecoEcal_EgammaCoreTools_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoEcal_EgammaCoreTools_python,src/RecoEcal/EgammaCoreTools/python,PYTHON))
ALL_PACKAGES += EGamma_Analyzer/EGammaanalyzer
subdirs_src_EGamma_Analyzer_EGammaanalyzer := src_EGamma_Analyzer_EGammaanalyzer_test src_EGamma_Analyzer_EGammaanalyzer_python src_EGamma_Analyzer_EGammaanalyzer_plugins
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
ALL_PACKAGES += sourceFiles/RelValZEE_14_CMSSW_10_6_0_patch2-106X_upgrade2023_realistic_v3_2023D41noPU-v1_GEN-SIM-DIGI-RAW
subdirs_src_sourceFiles_RelValZEE_14_CMSSW_10_6_0_patch2-106X_upgrade2023_realistic_v3_2023D41noPU-v1_GEN-SIM-DIGI-RAW := 
ALL_SUBSYSTEMS+=HLTrigger
subdirs_src_HLTrigger = src_HLTrigger_PhaseII
ALL_PACKAGES += sourceFiles/RelValElectronGunPt2To100_CMSSW_10_6_0_pre4-106X_upgrade2023_realistic_v2_2023D41noPU-v1_GEN-SIM-DIGI-RAW
subdirs_src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0_pre4-106X_upgrade2023_realistic_v2_2023D41noPU-v1_GEN-SIM-DIGI-RAW := 
ALL_PACKAGES += sourceFiles/RelValZEE_14_CMSSW_10_6_0-PU25ns_106X_upgrade2023_realistic_v2_2023D41PU200-v1_GEN-SIM-DIGI-RAW
subdirs_src_sourceFiles_RelValZEE_14_CMSSW_10_6_0-PU25ns_106X_upgrade2023_realistic_v2_2023D41PU200-v1_GEN-SIM-DIGI-RAW := 
ifeq ($(strip $(PyRecoParticleFlowPFClusterProducer)),)
PyRecoParticleFlowPFClusterProducer := self/src/RecoParticleFlow/PFClusterProducer/python
src_RecoParticleFlow_PFClusterProducer_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/RecoParticleFlow/PFClusterProducer/python)
PyRecoParticleFlowPFClusterProducer_files := $(patsubst src/RecoParticleFlow/PFClusterProducer/python/%,%,$(wildcard $(foreach dir,src/RecoParticleFlow/PFClusterProducer/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyRecoParticleFlowPFClusterProducer_LOC_USE := self  
PyRecoParticleFlowPFClusterProducer_PACKAGE := self/src/RecoParticleFlow/PFClusterProducer/python
ALL_PRODS += PyRecoParticleFlowPFClusterProducer
PyRecoParticleFlowPFClusterProducer_INIT_FUNC        += $$(eval $$(call PythonProduct,PyRecoParticleFlowPFClusterProducer,src/RecoParticleFlow/PFClusterProducer/python,src_RecoParticleFlow_PFClusterProducer_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyRecoParticleFlowPFClusterProducer,src/RecoParticleFlow/PFClusterProducer/python))
endif
ALL_COMMONRULES += src_RecoParticleFlow_PFClusterProducer_python
src_RecoParticleFlow_PFClusterProducer_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_RecoParticleFlow_PFClusterProducer_python,src/RecoParticleFlow/PFClusterProducer/python,PYTHON))
ALL_PACKAGES += sourceFiles/RelValElectronGunPt2To100_CMSSW_10_6_0-106X_upgrade2023_realistic_v2_2023D41noPU-v1_GEN-SIM-RECO
subdirs_src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0-106X_upgrade2023_realistic_v2_2023D41noPU-v1_GEN-SIM-RECO := 
ALL_SUBSYSTEMS+=EGamma_Analyzer
subdirs_src_EGamma_Analyzer = src_EGamma_Analyzer_EGammaanalyzer
ALL_PACKAGES += sourceFiles/RelValElectronGunPt2To100_CMSSW_10_6_0_patch2-PU25ns_106X_upgrade2023_realistic_v3_2023D41PU200-v1_GEN-SIM-DIGI-RAW
subdirs_src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0_patch2-PU25ns_106X_upgrade2023_realistic_v3_2023D41PU200-v1_GEN-SIM-DIGI-RAW := 
ALL_SUBSYSTEMS+=RecoEgamma
subdirs_src_RecoEgamma = src_RecoEgamma_EgammaHLTProducers
ALL_PACKAGES += sourceFiles/RelValElectronGunPt2To100_CMSSW_10_6_0_pre4-106X_upgrade2023_realistic_v2_2023D41noPU-v1_GEN-SIM-RECO
subdirs_src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0_pre4-106X_upgrade2023_realistic_v2_2023D41noPU-v1_GEN-SIM-RECO := 
ifeq ($(strip $(testMyModulesTestTP)),)
testMyModulesTestTP := self/src/MyModules/Test/test
testMyModulesTestTP_files := $(patsubst src/MyModules/Test/test/%,%,$(foreach file,test_catch2_*.cc,$(eval xfile:=$(wildcard src/MyModules/Test/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/MyModules/Test/test/$(file). Please fix src/MyModules/Test/test/BuildFile.))))
testMyModulesTestTP_TEST_RUNNER_CMD :=  testMyModulesTestTP 
testMyModulesTestTP_BuildFile    := $(WORKINGDIR)/cache/bf/src/MyModules/Test/test/BuildFile
testMyModulesTestTP_LOC_USE := self  FWCore/TestProcessor catch2
testMyModulesTestTP_PACKAGE := self/src/MyModules/Test/test
ALL_PRODS += testMyModulesTestTP
testMyModulesTestTP_INIT_FUNC        += $$(eval $$(call Binary,testMyModulesTestTP,src/MyModules/Test/test,src_MyModules_Test_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
testMyModulesTestTP_CLASS := TEST
else
$(eval $(call MultipleWarningMsg,testMyModulesTestTP,src/MyModules/Test/test))
endif
ALL_COMMONRULES += src_MyModules_Test_test
src_MyModules_Test_test_parent := MyModules/Test
src_MyModules_Test_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_MyModules_Test_test,src/MyModules/Test/test,TEST))
ifeq ($(strip $(testEGamma_AnalyzerEGammaanalyzerTP)),)
testEGamma_AnalyzerEGammaanalyzerTP := self/src/EGamma_Analyzer/EGammaanalyzer/test
testEGamma_AnalyzerEGammaanalyzerTP_files := $(patsubst src/EGamma_Analyzer/EGammaanalyzer/test/%,%,$(foreach file,test_catch2_*.cc,$(eval xfile:=$(wildcard src/EGamma_Analyzer/EGammaanalyzer/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/EGamma_Analyzer/EGammaanalyzer/test/$(file). Please fix src/EGamma_Analyzer/EGammaanalyzer/test/BuildFile.))))
testEGamma_AnalyzerEGammaanalyzerTP_TEST_RUNNER_CMD :=  testEGamma_AnalyzerEGammaanalyzerTP 
testEGamma_AnalyzerEGammaanalyzerTP_BuildFile    := $(WORKINGDIR)/cache/bf/src/EGamma_Analyzer/EGammaanalyzer/test/BuildFile
testEGamma_AnalyzerEGammaanalyzerTP_LOC_USE := self  FWCore/TestProcessor catch2
testEGamma_AnalyzerEGammaanalyzerTP_PACKAGE := self/src/EGamma_Analyzer/EGammaanalyzer/test
ALL_PRODS += testEGamma_AnalyzerEGammaanalyzerTP
testEGamma_AnalyzerEGammaanalyzerTP_INIT_FUNC        += $$(eval $$(call Binary,testEGamma_AnalyzerEGammaanalyzerTP,src/EGamma_Analyzer/EGammaanalyzer/test,src_EGamma_Analyzer_EGammaanalyzer_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
testEGamma_AnalyzerEGammaanalyzerTP_CLASS := TEST
else
$(eval $(call MultipleWarningMsg,testEGamma_AnalyzerEGammaanalyzerTP,src/EGamma_Analyzer/EGammaanalyzer/test))
endif
ALL_COMMONRULES += src_EGamma_Analyzer_EGammaanalyzer_test
src_EGamma_Analyzer_EGammaanalyzer_test_parent := EGamma_Analyzer/EGammaanalyzer
src_EGamma_Analyzer_EGammaanalyzer_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EGamma_Analyzer_EGammaanalyzer_test,src/EGamma_Analyzer/EGammaanalyzer/test,TEST))
ALL_PACKAGES += sourceFiles/RelValElectronGunPt2To100_CMSSW_10_6_0-PU25ns_106X_upgrade2023_realistic_v2_2023D41PU200-v1_GEN-SIM-RECO
subdirs_src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0-PU25ns_106X_upgrade2023_realistic_v2_2023D41PU200-v1_GEN-SIM-RECO := 
ALL_PACKAGES += sourceFiles/RelValElectronGunPt2To100_CMSSW_10_6_0_pre4-PU25ns_106X_upgrade2023_realistic_v2_2023D41PU200-v1_GEN-SIM-DIGI-RAW
subdirs_src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0_pre4-PU25ns_106X_upgrade2023_realistic_v2_2023D41PU200-v1_GEN-SIM-DIGI-RAW := 
ALL_PACKAGES += RecoEcal/EgammaCoreTools
subdirs_src_RecoEcal_EgammaCoreTools := src_RecoEcal_EgammaCoreTools_test src_RecoEcal_EgammaCoreTools_python src_RecoEcal_EgammaCoreTools_plugins src_RecoEcal_EgammaCoreTools_src
ALL_PACKAGES += sourceFiles/RelValElectronGunPt2To100_CMSSW_10_6_0-PU25ns_106X_upgrade2023_realistic_v2_2023D41PU200-v1_GEN-SIM-DIGI-RAW
subdirs_src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0-PU25ns_106X_upgrade2023_realistic_v2_2023D41PU200-v1_GEN-SIM-DIGI-RAW := 
ALL_PACKAGES += sourceFiles/SingleElectronFlatPtGun_pT-0-200_sobhatta-crab_SingleElectronFlatPtGun_pT-0-200_GEN-SIM-RECO-ffc2278112c688bef3890fc698a39794_USER
subdirs_src_sourceFiles_SingleElectronFlatPtGun_pT-0-200_sobhatta-crab_SingleElectronFlatPtGun_pT-0-200_GEN-SIM-RECO-ffc2278112c688bef3890fc698a39794_USER := 
ALL_PACKAGES += MyModules/Test
subdirs_src_MyModules_Test := src_MyModules_Test_test src_MyModules_Test_python src_MyModules_Test_plugins
ALL_SUBSYSTEMS+=MyModules
subdirs_src_MyModules = src_MyModules_Test
ALL_SUBSYSTEMS+=RecoParticleFlow
subdirs_src_RecoParticleFlow = src_RecoParticleFlow_PFClusterProducer
ifeq ($(strip $(PyEGamma_AnalyzerEGammaanalyzer)),)
PyEGamma_AnalyzerEGammaanalyzer := self/src/EGamma_Analyzer/EGammaanalyzer/python
src_EGamma_Analyzer_EGammaanalyzer_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/EGamma_Analyzer/EGammaanalyzer/python)
PyEGamma_AnalyzerEGammaanalyzer_files := $(patsubst src/EGamma_Analyzer/EGammaanalyzer/python/%,%,$(wildcard $(foreach dir,src/EGamma_Analyzer/EGammaanalyzer/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyEGamma_AnalyzerEGammaanalyzer_LOC_USE := self  
PyEGamma_AnalyzerEGammaanalyzer_PACKAGE := self/src/EGamma_Analyzer/EGammaanalyzer/python
ALL_PRODS += PyEGamma_AnalyzerEGammaanalyzer
PyEGamma_AnalyzerEGammaanalyzer_INIT_FUNC        += $$(eval $$(call PythonProduct,PyEGamma_AnalyzerEGammaanalyzer,src/EGamma_Analyzer/EGammaanalyzer/python,src_EGamma_Analyzer_EGammaanalyzer_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyEGamma_AnalyzerEGammaanalyzer,src/EGamma_Analyzer/EGammaanalyzer/python))
endif
ALL_COMMONRULES += src_EGamma_Analyzer_EGammaanalyzer_python
src_EGamma_Analyzer_EGammaanalyzer_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EGamma_Analyzer_EGammaanalyzer_python,src/EGamma_Analyzer/EGammaanalyzer/python,PYTHON))
ALL_PACKAGES += sourceFiles/RelValElectronGunPt2To100_CMSSW_10_6_0_patch2-106X_upgrade2023_realistic_v3_2023D41noPU-v1_GEN-SIM-DIGI-RAW
subdirs_src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0_patch2-106X_upgrade2023_realistic_v3_2023D41noPU-v1_GEN-SIM-DIGI-RAW := 
ALL_PACKAGES += RecoEcal/EgammaClusterAlgos
subdirs_src_RecoEcal_EgammaClusterAlgos := src_RecoEcal_EgammaClusterAlgos_interface src_RecoEcal_EgammaClusterAlgos_src
ifeq ($(strip $(PyMyModulesTest)),)
PyMyModulesTest := self/src/MyModules/Test/python
src_MyModules_Test_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/MyModules/Test/python)
PyMyModulesTest_files := $(patsubst src/MyModules/Test/python/%,%,$(wildcard $(foreach dir,src/MyModules/Test/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyMyModulesTest_LOC_USE := self  
PyMyModulesTest_PACKAGE := self/src/MyModules/Test/python
ALL_PRODS += PyMyModulesTest
PyMyModulesTest_INIT_FUNC        += $$(eval $$(call PythonProduct,PyMyModulesTest,src/MyModules/Test/python,src_MyModules_Test_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyMyModulesTest,src/MyModules/Test/python))
endif
ALL_COMMONRULES += src_MyModules_Test_python
src_MyModules_Test_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_MyModules_Test_python,src/MyModules/Test/python,PYTHON))
ALL_PACKAGES += sourceFiles/RelValZEE_14_CMSSW_10_6_0_pre4-PU25ns_106X_upgrade2023_realistic_v2_2023D41PU200-v1_GEN-SIM-DIGI-RAW
subdirs_src_sourceFiles_RelValZEE_14_CMSSW_10_6_0_pre4-PU25ns_106X_upgrade2023_realistic_v2_2023D41PU200-v1_GEN-SIM-DIGI-RAW := 
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
ALL_PACKAGES += sourceFiles/SingleElectronFlatPtGun_pT-15_eta-1p5-3p0_sobhatta-crab_SingleElectronFlatPtGun_pT-15_eta-1p5-3p0_GEN-SIM-DIGI-RAW-284165e958c955242461cd9651f5a03c_USER
subdirs_src_sourceFiles_SingleElectronFlatPtGun_pT-15_eta-1p5-3p0_sobhatta-crab_SingleElectronFlatPtGun_pT-15_eta-1p5-3p0_GEN-SIM-DIGI-RAW-284165e958c955242461cd9651f5a03c_USER := 
ALL_PACKAGES += sourceFiles/RelValElectronGunPt2To100_CMSSW_10_6_0_pre4-PU25ns_106X_upgrade2023_realistic_v2_2023D41PU200-v1_GEN-SIM-RECO
subdirs_src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0_pre4-PU25ns_106X_upgrade2023_realistic_v2_2023D41PU200-v1_GEN-SIM-RECO := 
ALL_PACKAGES += RecoParticleFlow/PFClusterProducer
subdirs_src_RecoParticleFlow_PFClusterProducer := src_RecoParticleFlow_PFClusterProducer_test src_RecoParticleFlow_PFClusterProducer_python src_RecoParticleFlow_PFClusterProducer_plugins src_RecoParticleFlow_PFClusterProducer_src
ALL_SUBSYSTEMS+=sourceFiles
subdirs_src_sourceFiles = src_sourceFiles_RelValZEE_14_CMSSW_10_6_0_pre4-106X_upgrade2023_realistic_v2_2023D41noPU-v1_GEN-SIM-DIGI-RAW src_sourceFiles_SingleElectronFlatPtGun_pT-15_eta-1p5-3p0_sobhatta-crab_SingleElectronFlatPtGun_pT-15_eta-1p5-3p0_GEN-SIM-DIGI-RAW-284165e958c955242461cd9651f5a03c_USER src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0_pre4-PU25ns_106X_upgrade2023_realistic_v2_2023D41PU200-v1_GEN-SIM-DIGI-RAW src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0-106X_upgrade2023_realistic_v2_2023D41noPU-v1_GEN-SIM-DIGI-RAW src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0-PU25ns_106X_upgrade2023_realistic_v2_2023D41PU200-v1_GEN-SIM-RECO src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0_patch2-PU25ns_106X_upgrade2023_realistic_v3_2023D41PU200-v1_GEN-SIM-RECO src_sourceFiles_RelValZEE_14_CMSSW_10_6_0_patch2-PU25ns_106X_upgrade2023_realistic_v3_2023D41PU200-v1_GEN-SIM-DIGI-RAW src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0_patch2-106X_upgrade2023_realistic_v3_2023D41noPU-v1_GEN-SIM-RECO src_sourceFiles_RelValZEE_14_CMSSW_10_6_0_pre4-PU25ns_106X_upgrade2023_realistic_v2_2023D41PU200-v1_GEN-SIM-DIGI-RAW src_sourceFiles_RelValZEE_14_CMSSW_10_6_0_patch2-106X_upgrade2023_realistic_v3_2023D41noPU-v1_GEN-SIM-DIGI-RAW src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0_patch2-PU25ns_106X_upgrade2023_realistic_v3_2023D41PU200-v1_GEN-SIM-DIGI-RAW src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0_pre4-PU25ns_106X_upgrade2023_realistic_v2_2023D41PU200-v1_GEN-SIM-RECO src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0_patch2-106X_upgrade2023_realistic_v3_2023D41noPU-v1_GEN-SIM-DIGI-RAW src_sourceFiles_SingleElectronFlatPtGun_pT-0-200_sobhatta-crab_SingleElectronFlatPtGun_pT-0-200_GEN-SIM-RECO-ffc2278112c688bef3890fc698a39794_USER src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0_pre4-106X_upgrade2023_realistic_v2_2023D41noPU-v1_GEN-SIM-DIGI-RAW src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0-106X_upgrade2023_realistic_v2_2023D41noPU-v1_GEN-SIM-RECO src_sourceFiles_RelValZEE_14_CMSSW_10_6_0-PU25ns_106X_upgrade2023_realistic_v2_2023D41PU200-v1_GEN-SIM-DIGI-RAW src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0_pre4-106X_upgrade2023_realistic_v2_2023D41noPU-v1_GEN-SIM-RECO src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0-PU25ns_106X_upgrade2023_realistic_v2_2023D41PU200-v1_GEN-SIM-DIGI-RAW
ifeq ($(strip $(PyHLTriggerPhaseII)),)
PyHLTriggerPhaseII := self/src/HLTrigger/PhaseII/python
src_HLTrigger_PhaseII_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/HLTrigger/PhaseII/python)
PyHLTriggerPhaseII_files := $(patsubst src/HLTrigger/PhaseII/python/%,%,$(wildcard $(foreach dir,src/HLTrigger/PhaseII/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyHLTriggerPhaseII_LOC_USE := self  
PyHLTriggerPhaseII_PACKAGE := self/src/HLTrigger/PhaseII/python
ALL_PRODS += PyHLTriggerPhaseII
PyHLTriggerPhaseII_INIT_FUNC        += $$(eval $$(call PythonProduct,PyHLTriggerPhaseII,src/HLTrigger/PhaseII/python,src_HLTrigger_PhaseII_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyHLTriggerPhaseII,src/HLTrigger/PhaseII/python))
endif
ALL_COMMONRULES += src_HLTrigger_PhaseII_python
src_HLTrigger_PhaseII_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_HLTrigger_PhaseII_python,src/HLTrigger/PhaseII/python,PYTHON))
ALL_PACKAGES += sourceFiles/RelValZEE_14_CMSSW_10_6_0_patch2-PU25ns_106X_upgrade2023_realistic_v3_2023D41PU200-v1_GEN-SIM-DIGI-RAW
subdirs_src_sourceFiles_RelValZEE_14_CMSSW_10_6_0_patch2-PU25ns_106X_upgrade2023_realistic_v3_2023D41PU200-v1_GEN-SIM-DIGI-RAW := 
ALL_PACKAGES += RecoEgamma/EgammaHLTProducers
subdirs_src_RecoEgamma_EgammaHLTProducers := src_RecoEgamma_EgammaHLTProducers_plugins
ALL_PACKAGES += sourceFiles/RelValZEE_14_CMSSW_10_6_0_pre4-106X_upgrade2023_realistic_v2_2023D41noPU-v1_GEN-SIM-DIGI-RAW
subdirs_src_sourceFiles_RelValZEE_14_CMSSW_10_6_0_pre4-106X_upgrade2023_realistic_v2_2023D41noPU-v1_GEN-SIM-DIGI-RAW := 
ALL_PACKAGES += sourceFiles/RelValElectronGunPt2To100_CMSSW_10_6_0_patch2-PU25ns_106X_upgrade2023_realistic_v3_2023D41PU200-v1_GEN-SIM-RECO
subdirs_src_sourceFiles_RelValElectronGunPt2To100_CMSSW_10_6_0_patch2-PU25ns_106X_upgrade2023_realistic_v3_2023D41PU200-v1_GEN-SIM-RECO := 
ALL_SUBSYSTEMS+=RecoEcal
subdirs_src_RecoEcal = src_RecoEcal_EgammaCoreTools src_RecoEcal_EgammaClusterAlgos
