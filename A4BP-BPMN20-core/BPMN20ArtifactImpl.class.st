Class {
	#name : #BPMN20ArtifactImpl,
	#superclass : #BPMN20BaseElementImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl class >> annotation [
<MSEClass: #BPMN20ArtifactImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ArtifactImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> associationDirection [
	^ associationDirection
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> associationDirection: aassociationDirection [
	^ associationDirection := aassociationDirection
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> sourceRef [
	^ sourceRef
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> sourceRef: asourceRef [
	^ sourceRef := asourceRef
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> targetRef [
	^ targetRef
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> targetRef: atargetRef [
	^ targetRef := atargetRef
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> textFormat [
	^ textFormat
]

{ #category : #'as yet unclassified' }
BPMN20ArtifactImpl >> textFormat: atextFormat [
	^ textFormat := atextFormat
]
