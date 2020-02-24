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
