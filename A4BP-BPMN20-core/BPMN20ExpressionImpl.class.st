Class {
	#name : #BPMN20ExpressionImpl,
	#superclass : #BPMN20BaseElementImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl class >> annotation [
<MSEClass: #BPMN20ExpressionImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> BODY_EDEFAULT [
	^ BODY_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> BODY_EDEFAULT: aBODY_EDEFAULT [
	^ BODY_EDEFAULT := aBODY_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> LANGUAGE_EDEFAULT [
	^ LANGUAGE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> LANGUAGE_EDEFAULT: aLANGUAGE_EDEFAULT [
	^ LANGUAGE_EDEFAULT := aLANGUAGE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ExpressionImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> evaluatesToTypeRef [
	^ evaluatesToTypeRef
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> evaluatesToTypeRef: aevaluatesToTypeRef [
	^ evaluatesToTypeRef := aevaluatesToTypeRef
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> language [
	^ language
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> language: alanguage [
	^ language := alanguage
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> mixed [
	^ mixed
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> mixed: amixed [
	^ mixed := amixed
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ExpressionImpl >> text: atext [
	^ text := atext
]
