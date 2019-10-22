"
A BPSimParserAbstractVisitor is xxxxxxxxx.

Instance Variables
	element:		<Object>

element
	- xxxxx

"
Class {
	#name : #BPSimParserAbstractVisitor,
	#superclass : #BPSimAbstractVisitor,
	#instVars : [
		'element'
	],
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserAbstractVisitor class >> annotation [
<MSEClass: #BPSimParserAbstractVisitor  super: #BPSimAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #add }
BPSimParserAbstractVisitor >> addElement: aModel [
	element addChildren: aModel
]

{ #category : #add }
BPSimParserAbstractVisitor >> addmyRoot: aModel [
	"add definitions as a root implements"
	| root |
	root := element myRoot.
	root addElementInDictionary: aModel .
	aModel myRoot: root.
]

{ #category : #getset }
BPSimParserAbstractVisitor >> element: aElement [
	element := aElement
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPDuration: aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimBetaDistribution: aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimBinomialDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimBooleanParameter:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimCalendar:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimConstantParameter:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimControlParameters:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimCostParameters:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimData:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimDateTimeParameter:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimDistributionParameter:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimDurationParameter: aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimElementParameters:aModel [ 
	element elementParameters add: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimEnumParameter:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimErlangDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimExpressionParameter:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimFloatingParameter:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimGammaDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimLogNormalDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimNegativeExponentialDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimNormalDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimNumericParameter:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #'visitor-Basic' }
BPSimParserAbstractVisitor >> visitBPSimObject: aModel [
	"do nothing"
	^ nil
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimObjectFactory:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimParameter:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimParameterValue:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimPoissonDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimPriorityParameters:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimProperty:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimPropertyParameters:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimResourceParameters:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimScenario:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimScenarioParameters:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimStringParameter:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimTimeParameters: aModel [ 
	element timeParameters: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimTriangularDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimTruncatedNormalDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimUniformDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimUserDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimUserDistributionDataPoint:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimVendorExtension:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimParserAbstractVisitor >> visitBPSimWeibullDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]
