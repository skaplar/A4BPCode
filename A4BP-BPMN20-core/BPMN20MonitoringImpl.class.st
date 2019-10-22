Class {
	#name : #BPMN20MonitoringImpl,
	#superclass : #BPMN20BaseElementImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20MonitoringImpl class >> annotation [
<MSEClass: #BPMN20MonitoringImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20MonitoringImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20MonitoringImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20MonitoringImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20MonitoringImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20MonitoringImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20MonitoringImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20MonitoringImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20MonitoringImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20MonitoringImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20MonitoringImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20MonitoringImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20MonitoringImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20MonitoringImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20MonitoringImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20MonitoringImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20MonitoringImpl >> text: atext [
	^ text := atext
]
