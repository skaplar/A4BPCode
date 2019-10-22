Class {
	#name : #A4BPResourceDownload,
	#superclass : #Object,
	#category : #'A4BP-core-resources-download'
}

{ #category : #'as yet unclassified' }
A4BPResourceDownload class >> baseDirectory [
	^ FileSystem disk workingDirectory
]

{ #category : #'as yet unclassified' }
A4BPResourceDownload class >> getContentsFromURL: url [
	| response |
	response := ZnClient new
		url: url;
		get;
		response.
	^ response contents
]

{ #category : #'as yet unclassified' }
A4BPResourceDownload class >> unzipContentIn: aDirectory with: contents [
	| archive |
	archive := ZipArchive new.
	archive readFrom: contents readStream.
	archive extractAllTo: aDirectory
]
