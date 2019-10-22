"
Show options to download examples into the root file system to enable the load charge  of multiple example for utilization in A4BP
"
Class {
	#name : #A4BPSourceWorldMenuLoad,
	#superclass : #Object,
	#category : #'A4BP-Tests-core'
}

{ #category : #'as yet unclassified' }
A4BPSourceWorldMenuLoad class >> loadAllExamples [
	self loadBobSoa
]

{ #category : #'as yet unclassified' }
A4BPSourceWorldMenuLoad class >> loadBobSoa [
	A4BPSourceRemoteRepository pathBobSoa
	
]

{ #category : #'as yet unclassified' }
A4BPSourceWorldMenuLoad class >> loadEBPMCodeBPELExamples [
	A4BPSourceRemoteRepository pathEBPMCode
	
]

{ #category : #'as yet unclassified' }
A4BPSourceWorldMenuLoad class >> loadUmmisco [
	A4BPSourceRemoteRepository pathUmmisco
	
]

{ #category : #'as yet unclassified' }
A4BPSourceWorldMenuLoad class >> menuCommandOn: aBuilder [
	<worldMenu> 
	(aBuilder item: #'LoadSOAExamples')
			action:[self loadUmmisco];
			parent: #Extras;
			label:'Load UMMISCO BPMN Examples';
			help: ''.
	(aBuilder item: #'LoadSOAExamples')
			action:[self loadBobSoa];
			parent: #Extras;
			label:'Load Lucasian - SOA Examples';
			help: ''.
	(aBuilder item: #'LoadEBPMCodeBPELExamples')
			action:[self loadEBPMCodeBPELExamples];
			parent: #Extras;
			label:'Load EBPM-BPEL Examples';
			help: ''.
	(aBuilder item: #'LoadExamples')
			action:[self loadAllExamples];
			parent: #Extras;
			label:'Load All Examples';
			help: ''.
]
