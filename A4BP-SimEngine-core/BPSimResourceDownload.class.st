Class {
	#name : #BPSimResourceDownload,
	#superclass : #A4BPResourceDownload,
	#category : #'A4BP-SimEngine-core-resources-download'
}

{ #category : #'as yet unclassified' }
BPSimResourceDownload class >> annotation [
<MSEClass: #BPSimResourceDownload  super: #A4BPResourceDownload >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimResourceDownload class >> downloadAndUnzipA4BP_LIB [
	"self downloadTesis001zipExample"
	| working contents a4bpJDirectory|
	working := self baseDirectory.
	a4bpJDirectory := (working fullName,FileSeparator separator,'A4BP_LIB') asFileReference.
	a4bpJDirectory exists ifTrue:[ ^ self].
	ZnConstants maximumEntitySize:50000000.
	contents := self getContentsFromURL: 	'https://github.com/ajperalt/A4BP-BPSimJbpmSimulator/blob/master/bin/A4BP_LIB.zip?raw=true'.
	self unzipContentIn: working with: contents
		
]
