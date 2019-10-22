Extension { #name : #A4BPObject }

{ #category : #'*A4BP-View' }
A4BPObject >> color [
	^ self accept: A4BPUIBVFactory colorVisitor.
]
