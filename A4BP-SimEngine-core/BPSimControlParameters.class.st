"
A BPSimControlParameters groups all parameters that specify the control flow of a business process element
Parameters from the control perspective only apply to certain types of business process elements.

Instance Variables
	condition:		BPSimParameter
	interTriggerTimer:		BPSimParameter
	probability:		BPSimParameter
	triggerCount:		BPSimParameter

condition
	- xxxxx
A condition for passing the control being passed to this element.
This parameter must resolve to a BooleanParameter.
The default value of this parameter is false.
Only one of probability or condition can be defined for a given business process model element.

interTriggerTimer
	- xxxxx
The time interval between occurrences. After the specified time interval, the event occurs and will keep occurring every time interval until the triggerCount is reached.
Modeler should be careful when putting an inter trigger time to a boundary event that can be triggered otherwise (e.g. signal or timer).
This parameter must resolve to either: a NumericParameter, a FloatingParameter or a DurationParameter.
The default value of this parameter is that the event never occurs. Setting a duration of 0 seconds would mean that the event occurs instantly.

probability
	- xxxxx
The probability of the control being passed to this element.
This parameter must resolve to either a NumericParameter or a FloatingParameter.
The default value of this parameter varies depending on the element being referenced.
For sequence flow, the default probability is distributed evenly between outgoing sequence flow that does not have a probability defined.
e.g. : 4 outgoing sequence flows, none with defined probability, they each have a probability of 0.25
e.g. : 3 outgoing sequence flows, one with a probability of 0.4 defined, the other two that don't have a probability defined will receive the probability of 0.3.
For events, the default probability is 0.
Only one of probability or condition can be defined for a given business process model element.

triggerCount
	- xxxxx
The maximum number of times to trigger this event.
This parameter must resolve to a NumericParameter.
The default value of this parameter is considered to be infinity so not defining it means that the event will not stop occurring after a maximum number of times.
"
Class {
	#name : #BPSimControlParameters,
	#superclass : #BPSimAbstractParameters,
	#instVars : [
		'condition',
		'triggerCount',
		'interTriggerTimer',
		'probability'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimControlParameters class >> annotation [
<MSEClass: #BPSimControlParameters  super: #BPSimAbstractParameters >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #visitor }
BPSimControlParameters >> accept: aVisitor [
	^ aVisitor visitBPSimControlParameters: self
]

{ #category : #accessing }
BPSimControlParameters >> condition [
	^ condition
]

{ #category : #accessing }
BPSimControlParameters >> condition: acondition [
^ condition := acondition
]

{ #category : #accessing }
BPSimControlParameters >> interTriggerTimer [
^ interTriggerTimer
]

{ #category : #accessing }
BPSimControlParameters >> interTriggerTimer: ainterTriggerTimer [
^ interTriggerTimer := ainterTriggerTimer
]

{ #category : #accessing }
BPSimControlParameters >> probability [
	^ probability
]

{ #category : #accessing }
BPSimControlParameters >> probability: aprobability [
	^ probability := aprobability
]

{ #category : #accessing }
BPSimControlParameters >> triggerCount [
^ triggerCount
]

{ #category : #accessing }
BPSimControlParameters >> triggerCount: atriggerCount [
^ triggerCount := atriggerCount
]
