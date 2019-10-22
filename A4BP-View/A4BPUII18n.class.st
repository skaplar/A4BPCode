Class {
	#name : #A4BPUII18n,
	#superclass : #Object,
	#classInstVars : [
		'instance'
	],
	#category : #'A4BP-View-I18n'
}

{ #category : #singleton }
A4BPUII18n class >> instance [
	"Mark as a default the english language"
	instance ifNil: [ instance := A4BPUII18n_en new ].
	^ instance
]

{ #category : #singleton }
A4BPUII18n class >> msg [
	^ self instance
]

{ #category : #singleton }
A4BPUII18n class >> reset [
	"self reset"
	instance := nil
]

{ #category : #msg }
A4BPUII18n >> defaultmsg [
	^ ''
]

{ #category : #msg }
A4BPUII18n >> msgBPCopyName [
	^ self defaultmsg
]

{ #category : #msg }
A4BPUII18n >> msgBPFromName [
	^ self defaultmsg
]

{ #category : #msg }
A4BPUII18n >> msgBPSequenceName [
	^ self defaultmsg
]

{ #category : #msg }
A4BPUII18n >> msgBPToName [
	^ self defaultmsg
]

{ #category : #msg }
A4BPUII18n >> msgBrowser [
	^ self defaultmsg
]

{ #category : #msg }
A4BPUII18n >> msgDelete [
	^ self defaultmsg
]

{ #category : #msgBPMN20 }
A4BPUII18n >> msgEndEvent [
	^ self defaultmsg
]

{ #category : #msg }
A4BPUII18n >> msgInRoassal2Easel [
	^ self defaultmsg
]

{ #category : #msg }
A4BPUII18n >> msgInRoassalEasel [
	^ self defaultmsg
]

{ #category : #msg }
A4BPUII18n >> msgInspect [
	^ self defaultmsg
]

{ #category : #msg }
A4BPUII18n >> msgInstrumentate [
	^ self defaultmsg
]

{ #category : #msg }
A4BPUII18n >> msgInstrumentations [
	^ self defaultmsg
]

{ #category : #msg }
A4BPUII18n >> msgModels [
	^ self defaultmsg
]

{ #category : #msg }
A4BPUII18n >> msgOpenNewSOAContext [
	^ self defaultmsg
]

{ #category : #msg }
A4BPUII18n >> msgOpenView [
	^ self defaultmsg
]

{ #category : #msg }
A4BPUII18n >> msgProcess [
	^ self defaultmsg
]

{ #category : #msg }
A4BPUII18n >> msgRelations [
	^ self defaultmsg
]

{ #category : #msg }
A4BPUII18n >> msgSOAAnalyzerPanel [
	^ self defaultmsg
]

{ #category : #msg }
A4BPUII18n >> msgSOAModel [
	^ self defaultmsg
]

{ #category : #msg }
A4BPUII18n >> msgSOAModels [
	^ self defaultmsg
]

{ #category : #msg }
A4BPUII18n >> msgSource [
	^ self defaultmsg
]

{ #category : #msg }
A4BPUII18n >> msgSpy [
	^ self defaultmsg
]

{ #category : #msgBPMN20 }
A4BPUII18n >> msgStartEvent [
	^ self defaultmsg
]

{ #category : #msg }
A4BPUII18n >> msgStartInstrumentationListener [
	^ self defaultmsg
]

{ #category : #msg }
A4BPUII18n >> msgVisualization [
	^ self defaultmsg
]
