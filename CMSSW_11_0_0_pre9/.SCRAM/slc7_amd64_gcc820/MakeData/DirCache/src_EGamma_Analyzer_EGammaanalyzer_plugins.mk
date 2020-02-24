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
