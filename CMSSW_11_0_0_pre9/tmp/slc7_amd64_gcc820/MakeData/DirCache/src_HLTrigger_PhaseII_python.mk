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
