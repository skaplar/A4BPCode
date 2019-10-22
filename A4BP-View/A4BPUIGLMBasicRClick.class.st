Class {
	#name : #A4BPUIGLMBasicRClick,
	#superclass : #A4BPUIGLMActionTreeBuilderVisitor,
	#category : #'A4BP-View-UI-Rclick'
}

{ #category : #'as yet unclassified' }
A4BPUIGLMBasicRClick class >> annotation [
<MSEClass: #A4BPUIGLMBasicRClick  super: #A4BPUIGLMActionTreeBuilderVisitor >
<package: #'A4BP-View' >
]

{ #category : #'model-a4bp' }
A4BPUIGLMBasicRClick >> actionBasicBrowser: aModel [
	|actions act|
	actions:= OrderedCollection new.

	"Roassal2 Easel"
	act:=GLMGenericAction new 
	action:[ A4BPGLMRoassal2Easel openOn:{#model->aModel}];
	"Display Browser in several language"
	category:A4BPUII18n msg msgBrowser;
	title:A4BPUII18n msg msgInRoassal2Easel.
	actions add:act.
	
	"Inspect Element"
	act:=GLMGenericAction new 
	action:[aModel inspect];
	"category:'Inspect';"
	title:A4BPUII18n msg msgInspect.
	actions add:act.

	"Browse Class Object"
	act:=GLMGenericAction new 
	action:[aModel browse];
	"category:'Inspect';"
	title:A4BPUII18n msg msgSource.
	actions add:act.
	

	^ actions.
	
]

{ #category : #'model-a4bp' }
A4BPUIGLMBasicRClick >> visitA4BPSOAContext: aModel [
	| actions act|
	actions := self actionBasicBrowser: aModel.	
		
	"Delete"
	act:=GLMGenericAction new 
	action:[ :b | 
		aModel parent deleteSOAContext: aModel.
		b update.
		mainBrowser update.
		];
	"category: A4BPUII18n msg msgBPSim;"
	title: A4BPUII18n msg msgDelete.
	actions add:act.	
		
		
	^ actions
]
