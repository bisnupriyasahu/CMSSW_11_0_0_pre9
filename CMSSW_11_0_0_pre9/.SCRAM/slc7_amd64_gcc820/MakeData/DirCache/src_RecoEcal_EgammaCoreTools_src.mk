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
