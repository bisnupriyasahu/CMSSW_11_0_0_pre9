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
