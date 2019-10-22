Class {
	#name : #BPBPELVCBuilder,
	#superclass : #A4BPVCBuilder,
	#category : #'A4BP-BpelAnalyzer-view-Visualization'
}

{ #category : #'as yet unclassified' }
BPBPELVCBuilder class >> annotation [
<MSEClass: #BPBPELVCBuilder  super: #A4BPVCBuilder >
<package: #'A4BP-BpelAnalyze-View' >
]

{ #category : #'as yet unclassified' }
BPBPELVCBuilder >> visitBPProcess: aModel [
	| visualizations bpvc|
	visualizations := OrderedCollection new.
	
	bpvc := BPVCBPProcessDashBoard new bpObj: aModel.
	visualizations add: bpvc.
	
	bpvc := BPVCBPProcessNormalLayout new bpObj: aModel.
	visualizations add: bpvc.
	
	bpvc := A4BPVCBPProcessSimple new bpObj: aModel.
	visualizations add: bpvc.
	
	bpvc := A4BPVCBasicRelations new bpObj: aModel.
	visualizations add: bpvc.

	^ visualizations
]
