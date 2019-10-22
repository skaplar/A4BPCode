Class {
	#name : #BPVCSOAContextRelationsBetweenProcessTest,
	#superclass : #BPObjectTest,
	#category : #'A4BP-Tests-Visualization'
}

{ #category : #'as yet unclassified' }
BPVCSOAContextRelationsBetweenProcessTest >> testexecuteVisualization [
	|view visual ctx |
	visual:=BPVCSOAContextRelationsBetweenProcess new.
	ctx:= SOAContextTest soaWorldBase.
	visual bpObj: ctx.
	
	view:= RTView new.
	visual executeVisualization: view. 	
	"view open"
]
