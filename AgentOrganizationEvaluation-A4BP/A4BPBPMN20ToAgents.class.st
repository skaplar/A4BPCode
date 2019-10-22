"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State the name of the class with one line description: For example, I'm xxx the root of the hierarchy of visitor objects.

For the Responsibility part: Three sentences about my main responsibility, what I'm doing, what services do I offer.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- what is the way to create instances is a plus.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.


    Implementation Points

Insert the repository on A4BP
"
Class {
	#name : #A4BPBPMN20ToAgents,
	#superclass : #Object,
	#category : #'AgentOrganizationEvaluation-A4BP-biz'
}

{ #category : #'as yet unclassified' }
A4BPBPMN20ToAgents class >> bpmn20ToAgent: model [
	^ self new bpmn20ToAgent: model
]

{ #category : #'as yet unclassified' }
A4BPBPMN20ToAgents >> bpmn20ToAgent: aModel [
	"exemple of tsunami reponse given by People Committee of Ho Chi Minh City in Vietnam, 2012
	"
	| org processModel lstRoles lstGroups |
	org := AOEOrganization new.
	processModel := aModel.
	lstGroups := processModel process.
	lstRoles := OrderedCollection new.
	lstGroups do: [ :p | lstRoles addAll: p lanes ].
	lstRoles
		do: [ :r | 
			| rol |
			rol := AOERole new
				addRoleName: r aName;
				yourself.
			org roles add: rol ].
	lstRoles
		do: [ :r | 
			| lane lrel lrel2 |
			lrel2 := org roles select: [ :r2 | r2 roleName = r aName ].
			r parent
				ifNotNil: [ 
					r messageFlows
						do: [ :mf | 
							lane := mf targetRef myLane.
							lane ifNotNil:[
								lrel := org roles select: [ :r2 | r2 roleName = lane aName ].
								lrel do: [ :ro | lrel2 do: [ :ro2 | ro addPowerRelations: ro2 ] ] 
							]
						] 
					] 
				].
				
	org roles first addCoordinationRelations: (org roles second).
	org roles first addControlRelations: (org roles second).

	^ org
]
