Class {
	#name : #BPVCBPProcessNormalLayoutTest,
	#superclass : #BPObjectTest,
	#category : #'A4BP-Tests-Visualization'
}

{ #category : #'as yet unclassified' }
BPVCBPProcessNormalLayoutTest >> testexecuteVisualization [
	|view visual ctx processes|
	visual:=BPVCBPProcessNormalLayout new.
	processes:= SOAContextTest soaWorldBase process.
	processes do:[:p| ctx:= p].
	visual bpObj: ctx.
	
	view:= RTView new.
	visual executeVisualization: view. 	
	"view open"
]
