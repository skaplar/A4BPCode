Class {
	#name : #BPMN20EventDefinitionImpl,
	#superclass : #BPMN20RootElementImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl class >> annotation [
<MSEClass: #BPMN20EventDefinitionImpl  super: #BPMN20RootElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> NAME_EDEFAULT [
	^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
	^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> WAIT_FOR_COMPLETION_EDEFAULT [
	^ WAIT_FOR_COMPLETION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> WAIT_FOR_COMPLETION_EDEFAULT: aWAIT_FOR_COMPLETION_EDEFAULT [
	^ WAIT_FOR_COMPLETION_EDEFAULT := aWAIT_FOR_COMPLETION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20EventDefinitionImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> activityRef [
	^ activityRef
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> activityRef: aactivityRef [
	^ activityRef := aactivityRef
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> condition [
	^ condition
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> condition: acondition [
	^ condition := acondition
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> errorRef [
	^ errorRef
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> errorRef: aerrorRef [
	^ errorRef := aerrorRef
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> escalationRef [
	^ escalationRef
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> escalationRef: aescalationRef [
	^ escalationRef := aescalationRef
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> messageRef [
	^ messageRef
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> messageRef: amessageRef [
	^ messageRef := amessageRef
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> operationRef [
	^ operationRef
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> operationRef: aoperationRef [
	^ operationRef := aoperationRef
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> signalRef [
	^ signalRef
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> signalRef: asignalRef [
	^ signalRef := asignalRef
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> source [
	^ source
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> source: asource [
	^ source := asource
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> target [
	^ target
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> target: atarget [
	^ target := atarget
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> timeCycle [
	^ timeCycle
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> timeCycle: atimeCycle [
	^ timeCycle := atimeCycle
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> timeDate [
	^ timeDate
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> timeDate: atimeDate [
	^ timeDate := atimeDate
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> timeDuration [
	^ timeDuration
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> timeDuration: atimeDuration [
	^ timeDuration := atimeDuration
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> waitForCompletion [
	^ waitForCompletion
]

{ #category : #'as yet unclassified' }
BPMN20EventDefinitionImpl >> waitForCompletion: awaitForCompletion [
	^ waitForCompletion := awaitForCompletion
]
