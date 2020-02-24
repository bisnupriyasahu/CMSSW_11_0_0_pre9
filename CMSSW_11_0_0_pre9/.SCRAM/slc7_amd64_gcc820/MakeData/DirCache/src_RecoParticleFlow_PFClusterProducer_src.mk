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
