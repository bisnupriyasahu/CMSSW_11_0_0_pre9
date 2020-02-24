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
