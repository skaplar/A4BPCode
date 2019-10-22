"
A BPSimAbstractVisitor is xxxxxxxxx.

"
Class {
	#name : #BPSimAbstractVisitor,
	#superclass : #Object,
	#category : #'A4BP-SimEngine-core-visitors'
}

{ #category : #'visitor-Basic' }
BPSimAbstractVisitor >> visitA4BPUnParserObj: aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPDuration: aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimBetaDistribution: aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimBinomialDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimBooleanParameter:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimCalendar:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimConstantParameter:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimControlParameters:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimCostParameters:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimData:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimDateTimeParameter:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimDistributionParameter:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimDurationParameter:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimElementParameters:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimEnumParameter:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimErlangDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimExpressionParameter:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimFloatingParameter:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimGammaDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimLogNormalDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimNegativeExponentialDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimNormalDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimNumericParameter:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #'visitor-Basic' }
BPSimAbstractVisitor >> visitBPSimObject: aModel [
	"do nothing"
	^ nil
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimObjectFactory:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimParameter:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimParameterValue:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimPoissonDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimPriorityParameters:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimProperty:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimPropertyParameters:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimResourceParameters:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimScenario:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimScenarioParameters:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimStringParameter:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimTimeParameters:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimTriangularDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimTruncatedNormalDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimUniformDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimUserDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimUserDistributionDataPoint:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimVendorExtension:aModel [ 
	^ self visitBPSimObject: aModel
]

{ #category : #visitor }
BPSimAbstractVisitor >> visitBPSimWeibullDistribution:aModel [ 
	^ self visitBPSimObject: aModel
]
