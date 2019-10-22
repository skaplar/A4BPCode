Class {
	#name : #BPMN20ImportImpl,
	#superclass : #BPMN20Object,
	#instVars : [
		'LOCATION_EDEFAULT',
		'IMPORT_TYPE_EDEFAULT',
		'NAMESPACE_EDEFAULT',
		'location',
		'namespace',
		'importType'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ImportImpl class >> annotation [
<MSEClass: #BPMN20ImportImpl  super: #BPMN20Object >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ImportImpl >> IMPORT_TYPE_EDEFAULT [
^ IMPORT_TYPE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ImportImpl >> IMPORT_TYPE_EDEFAULT: aIMPORT_TYPE_EDEFAULT [
^ IMPORT_TYPE_EDEFAULT := aIMPORT_TYPE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ImportImpl >> LOCATION_EDEFAULT [
^ LOCATION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ImportImpl >> LOCATION_EDEFAULT: aLOCATION_EDEFAULT [
^ LOCATION_EDEFAULT := aLOCATION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ImportImpl >> NAMESPACE_EDEFAULT [
^ NAMESPACE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ImportImpl >> NAMESPACE_EDEFAULT: aNAMESPACE_EDEFAULT [
^ NAMESPACE_EDEFAULT := aNAMESPACE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ImportImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ImportImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ImportImpl >> importType [
^ importType
]

{ #category : #'as yet unclassified' }
BPMN20ImportImpl >> importType: aimportType [
^ importType := aimportType
]

{ #category : #'as yet unclassified' }
BPMN20ImportImpl >> location [
^ location
]

{ #category : #'as yet unclassified' }
BPMN20ImportImpl >> location: alocation [
^ location := alocation
]

{ #category : #'as yet unclassified' }
BPMN20ImportImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ImportImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ImportImpl >> namespace [
^ namespace
]

{ #category : #'as yet unclassified' }
BPMN20ImportImpl >> namespace: anamespace [
^ namespace := anamespace
]

{ #category : #'as yet unclassified' }
BPMN20ImportImpl >> parent [
	^ parent
]

{ #category : #'as yet unclassified' }
BPMN20ImportImpl >> parent: aparent [
	^ parent := aparent
]

{ #category : #'as yet unclassified' }
BPMN20ImportImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ImportImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ImportImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ImportImpl >> text: atext [
	^ text := atext
]
