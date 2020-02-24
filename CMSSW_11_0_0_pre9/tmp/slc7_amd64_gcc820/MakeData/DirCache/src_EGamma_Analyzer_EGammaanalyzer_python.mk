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
