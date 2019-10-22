Class {
	#name : #BPUIMetricFindMetricMessageNames,
	#superclass : #Object,
	#category : #'A4BP-View-UI-metric'
}

{ #category : #'as yet unclassified' }
BPUIMetricFindMetricMessageNames class >> findMetrics: aClass [
  ^ aClass allSelectors
		select: [ :k | 
			(k endsWith: ':') not and: [ 
				((k beginsWith: #number) 
				or: [ k beginsWith: #calculate ]) 
				or: [ k beginsWith: #metric ] 
				] 
			].
]
