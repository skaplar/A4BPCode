"
A BPSimParserTagsXMLRef is xxxxxxxxx.

"
Class {
	#name : #BPSimParserTagsXMLRef,
	#superclass : #A4BPParserTagsXMLRef,
	#category : #'A4BP-SimEngine-core-parser'
}

{ #category : #'as yet unclassified' }
BPSimParserTagsXMLRef class >> annotation [
<MSEClass: #BPSimParserTagsXMLRef  super: #A4BPParserTagsXMLRef >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #getset }
BPSimParserTagsXMLRef class >> lstOfRefTagClass [
	"self reset"

	| items |
	items := Dictionary new.	"
	using 
	self fillItems: items tag: tag class: objClass
	to add items to parse the object
	"
	self fillItems: items tag: 'BPSimData' class: BPSimData.
	self fillItems: items tag: 'Calendar' class: BPSimCalendar.
	self fillItems: items tag: 'ControlParameters' class: BPSimControlParameters.
	self fillItems: items tag: 'CostParameters' class: BPSimCostParameters.
	self fillItems: items tag: 'Data' class: BPSimData.
	self fillItems: items tag: 'ElementParameters' class: BPSimElementParameters.
	self fillItems: items tag: 'ObjectFactory' class: BPSimObjectFactory.
	self fillItems: items tag: 'Parameter' class: BPSimParameter.
	self fillItems: items tag: 'Property' class: BPSimProperty.
	self fillItems: items tag: 'ParameterValue' class: BPSimParameterValue.
	self fillItems: items tag: 'ConstantParameter' class: BPSimConstantParameter.
	self fillItems: items tag: 'BooleanParameter' class: BPSimBooleanParameter.
	self fillItems: items tag: 'DateTimeParameter' class: BPSimDateTimeParameter.
	self fillItems: items tag: 'DurationParameter' class: BPSimDurationParameter.
	self fillItems: items tag: 'FloatingParameter' class: BPSimFloatingParameter.
	self fillItems: items tag: 'NumericParameter' class: BPSimNumericParameter.
	self fillItems: items tag: 'StringParameter' class: BPSimStringParameter.
	self fillItems: items tag: 'DistributionParameter' class: BPSimDistributionParameter.
	self fillItems: items tag: 'TriangularDistribution' class: BPSimTriangularDistribution.
	self fillItems: items tag: 'TruncatedNormalDistribution' class: BPSimTruncatedNormalDistribution.
	self fillItems: items tag: 'BetaDistribution' class: BPSimBetaDistribution.
	self fillItems: items tag: 'BinomialDistribution' class: BPSimBinomialDistribution.
	self fillItems: items tag: 'ErlangDistribution' class: BPSimErlangDistribution.
	self fillItems: items tag: 'GammaDistribution' class: BPSimGammaDistribution.
	self fillItems: items tag: 'LogNormalDistribution' class: BPSimLogNormalDistribution.
	self fillItems: items tag: 'NegativeExponentialDistribution' class: BPSimNegativeExponentialDistribution.
	self fillItems: items tag: 'NormalDistribution' class: BPSimNormalDistribution.
	self fillItems: items tag: 'PoissonDistribution' class: BPSimPoissonDistribution.
	self fillItems: items tag: 'UniformDistribution' class: BPSimUniformDistribution.
	self fillItems: items tag: 'UserDistribution' class: BPSimUserDistribution.
	self fillItems: items tag: 'WeibullDistribution' class: BPSimWeibullDistribution.
	self fillItems: items tag: 'EnumParameter' class: BPSimEnumParameter.
	self fillItems: items tag: 'ExpressionParameter' class: BPSimExpressionParameter.
	self fillItems: items tag: 'PriorityParameters' class: BPSimPriorityParameters.
	self fillItems: items tag: 'PropertyParameters' class: BPSimPropertyParameters.
	self fillItems: items tag: 'ResourceParameters' class: BPSimResourceParameters.
	self fillItems: items tag: 'Scenario' class: BPSimScenario.
	self fillItems: items tag: 'ScenarioParameters' class: BPSimScenarioParameters.
	self fillItems: items tag: 'TimeParameters' class: BPSimTimeParameters.
	self fillItems: items tag: 'UserDistributionDataPoint' class: BPSimUserDistributionDataPoint.
	self fillItems: items tag: 'VendorExtension' class: BPSimVendorExtension.
	self fillItems: items tag: 'Duration' class: BPSimDuration.
	self fillItems: items tag: 'ResultType' class: BPSimResultType.
	
	self copyList: items with: 'bpsim:'.
	^ items
]
