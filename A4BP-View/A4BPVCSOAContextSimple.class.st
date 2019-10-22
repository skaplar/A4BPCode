Class {
	#name : #A4BPVCSOAContextSimple,
	#superclass : #A4BPVCSOAContext,
	#category : #'A4BP-View-Visualization'
}

{ #category : #visualization }
A4BPVCSOAContextSimple >> executeVisualization: view [
	| v soa lst1 lst2 i size |
	v := RTMondrian new.
	v view: view.
	self addInspect: v.
	soa := bpObj.
	lst1 := OrderedCollection new.
	lst2 := OrderedCollection new.
	i := 0.
	size := soa wsdls size.
	lst1 := soa wsdls values copyFrom: 1 to: size // 2.
	lst2 := soa wsdls values copyFrom: size // 2 to: size - 1.
	self viewWSDLBuilder: v onlst: lst1.
	self viewProcessBuilder: v onlst: soa process.
	self viewWSDLBuilder: v onlst: lst2.
	v layout verticalLine.
	v build.
	soa process
		do: [ :p | 
			v shape line color: Color gray.
			v edges objects: p allActivities; connectFrom: #yourself toAll: [ :object | object relations ] ].
	self addLegendBuilderView: view values: soa allNodes
]

{ #category : #visualization }
A4BPVCSOAContextSimple >> name [
	^ 'Complete view'
]

{ #category : #view }
A4BPVCSOAContextSimple >> viewProcessBuilder: v onlst: nodes [
	| cv |
	cv := A4BPUIBVFactory colorVisitor.
	v shape rectangle fillColor: (Color lightGray alpha:0.1).	
	v node: 'process' forIt: [
			v shape rectangle fillColor:[ :n | (n accept: cv) alpha:0.2 ].
			"add the nodes to paint, int this case the node represent the process"
			v nodes: nodes forEach: [ :p | 
					v shape label text: ( p aName ).
					v node:p aName.
					v shape rectangle fillColor: (Color white alpha:0.6).	
					v node: 'variables' forIt: [ 
							v shape rectangle size: [ :var | var numberOfInvokes ];
							fillColor: (Color green alpha:0.2).
							v nodes: p allVariables.
							v layout grid ].
					v shape rectangle fillColor: (Color lightGray alpha:0.6).	
					v node: 'activities' forIt: [ 
							v shape circle 
								size: 10;
								color: [ :n | n accept: cv ].
							v nodes: p allActivities.
							"v edgesFrom: #parent."
							v layout grid ].
				 v layout grid.
			].
		v layout grid
	].

]

{ #category : #view }
A4BPVCSOAContextSimple >> viewWSDLBuilder: v onlst: nodes [
	| cv |
	self addInspect: v.
	cv := A4BPUIBVFactory colorVisitor.
	nodes size < 1
		ifTrue: [ ^ self ].	"start visualization"
	v shape rectangle fillColor: (Color lightGray alpha: 0.1).
	v
		node: 'interfaces'
		forIt: [ 
			v shape rectangle size:10; fillColor: [ :wsdl | wsdl accept: cv ].
			v nodes: nodes ]
]
