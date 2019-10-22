Class {
	#name : #BPVCSOAContextRelationsTest,
	#superclass : #BPObjectTest,
	#category : #'A4BP-Tests-Visualization'
}

{ #category : #'as yet unclassified' }
BPVCSOAContextRelationsTest >> testexecuteVisualization [
	|view visual ctx |
	visual:=BPVCSOAContextRelations new.
	ctx:= SOAContextTest soaWorldBase.
	visual bpObj: ctx.
	
	view:= RTView new.
	visual executeVisualization: view. 	
	"view open"
]
