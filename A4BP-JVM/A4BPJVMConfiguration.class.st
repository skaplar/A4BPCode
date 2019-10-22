Class {
	#name : #A4BPJVMConfiguration,
	#superclass : #Object,
	#instVars : [
		'sp',
		'jsp',
		'basePathDir',
		'libraryFile',
		'autoConfigure'
	],
	#classInstVars : [
		'instance'
	],
	#category : #'A4BP-JVM'
}

{ #category : #'as yet unclassified' }
A4BPJVMConfiguration class >> annotation [
<MSEClass: #A4BPJVMConfiguration  super: #Object >
<package: #'A4BP-JVM' >
]

{ #category : #'as yet unclassified' }
A4BPJVMConfiguration class >> exampleConfig [
	"self exampleConfig"
| jvmSettings |
 "You can set the path to the Java VM library by editing the path as
needed."
JNIPortJNIInterface libraryFile: self libraryFile.
"JNIPortJNIInterface libraryFile:
'C:\Programme\Java\jre7\bin\client\jvm.dll' ."

 jvmSettings := JVMSettings new.
 jvmSettings usesGhosts: true.
 jvmSettings supportsCallbacks: true.
 jvmSettings jniPortSettings  useJNIHelperLibrary: false.
jvmSettings ghostClassSettings retainMethodSource: true.

 "On Mac OS X and Linux, class path entries are separated by colons."
 "On Windows, you have to use semicolons instead. Edit the following line as
needed."
jvmSettings runtimeSettings classpath: ('.;.\JNIPort.jar;.\JNIPort-Tests.jar:' ,  self jbpmsimjavaPath).
" jvmSettings runtimeSettings classpath:
'.;.\JNIPort.jar;.\JNIPort-Tests.jar'."

 "Uncomment the following if you want the Java VM to emit verbose messages.
  How to access these messages depends on your platform.
  On Mac OS X, they are visible in the Console application."
jvmSettings runtimeSettings addOption: '-verbose:jni'; addOption:'-verbose:gc'; addOption: '-verbose:class'.
Cursor execute showWhile: [JVM newWithSettings: jvmSettings].



]

{ #category : #'as yet unclassified' }
A4BPJVMConfiguration class >> exampleConfig2 [
"Then the fun starts:"
| zfClass zipfile entries |
zfClass := JVM current findClass: #'java.util.zip.ZipFile'.
zipfile := zfClass new_String: 'JNIPort.jar'.
zipfile size. "--> answers an Integer"
entries := zipfile entries.
entries asAnEnumeration do: [:each | Transcript cr; print: each].
]

{ #category : #'as yet unclassified' }
A4BPJVMConfiguration class >> instance [
	instance ifNil:[ instance := self new].
	^ instance
]

{ #category : #'as yet unclassified' }
A4BPJVMConfiguration class >> reset [
	"self reset"
	instance := nil
]

{ #category : #'as yet unclassified' }
A4BPJVMConfiguration >> addPath: path stream: stremPath [.
	stremPath nextPutAll: path.
	stremPath nextPutAll: jsp.

]

{ #category : #accessing }
A4BPJVMConfiguration >> autoConfigure [
	^ autoConfigure 
]

{ #category : #accessing }
A4BPJVMConfiguration >> autoConfigure: anObject [
	autoConfigure := anObject
]

{ #category : #'as yet unclassified' }
A4BPJVMConfiguration >> basePathDir [
	^ basePathDir
	


]

{ #category : #accessing }
A4BPJVMConfiguration >> basePathDir: anObject [
	basePathDir := anObject
]

{ #category : #'as yet unclassified' }
A4BPJVMConfiguration >> configureLibPath: alibraryFile jarPathDir: abasePathDir [
	self basePathDir: abasePathDir;
		libraryFile: alibraryFile;
		autoConfigure: false
]

{ #category : #'as yet unclassified' }
A4BPJVMConfiguration >> currentJVM [
	JVM current
		ifNil: [ 
			self autoConfigure
				ifTrue: [ self doAutoConfigure ].
			self startJava ].
	^ JVM current
]

{ #category : #accessing }
A4BPJVMConfiguration >> doAutoConfigure [
	"Use this method to download all bin .jar packages necesaries to execute the software"
	BPSimResourceDownload downloadAndUnzipA4BP_LIB.
	self basePathDir: ( FileSystem disk workingDirectory fullName , FileSeparator separator ,'A4BP_LIB').
	self autoConfigure: true.

]

{ #category : #'as yet unclassified' }
A4BPJVMConfiguration >> initialize [
	super initialize.
	autoConfigure := true.
	sp := FileSeparator separator.
	
	(((Smalltalk os isMacOS) or:(Smalltalk os isMacOSX))or:(Smalltalk os isUnix))
	ifTrue:[
		jsp := ':'.
		libraryFile := './System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Libraries/libclient.dylib'.
		].
	(Smalltalk os isWindows)
	ifTrue:[
		jsp := ';'.
		].
	

]

{ #category : #accessing }
A4BPJVMConfiguration >> jsp [
	^ jsp
]

{ #category : #'as yet unclassified' }
A4BPJVMConfiguration >> libraryFile [
	^ libraryFile 
]

{ #category : #accessing }
A4BPJVMConfiguration >> libraryFile: anObject [
	libraryFile := anObject
]

{ #category : #'as yet unclassified' }
A4BPJVMConfiguration >> loadClassPath [
	|stremPath files|
   stremPath := WriteStream on: (String new).
	self addPath: '.' stream: stremPath.
	files := self basePathDir asFileReference allFiles select: [ :each | each basename endsWith: '.jar' ].
	files do:[ :file |
		self addPath: file fullName stream: stremPath.	
	].
   ^ stremPath contents

]

{ #category : #accessing }
A4BPJVMConfiguration >> sp [
	^ sp
]

{ #category : #'as yet unclassified' }
A4BPJVMConfiguration >> startJava [
	"self startJava"
	| settings jconfig |
	JVM current ifNotNil:[^ JVM current].
	jconfig := self.
	settings := JVMSettings new.
	settings usesGhosts: true.
	(settings jniPortSettings)
    	jvmClass: JVMWithCallbacks;
    	jniLibraryFilename: jconfig libraryFile.
	settings runtimeSettings classpath: jconfig loadClassPath. 
	settings runtimeSettings 
	addOption: '-verbose:jni'; 
	addOption:'-verbose:gc'; 
	addOption: '-verbose:class';
	addOption: '-Xdebug';
	addOption: '-Xrunjdwp:server=y,transport=dt_socket,address=4000,suspend=n'.
	JVM shutDown.
	Cursor execute showWhile: [JVM newWithSettings: settings].
	^ JVM current
 

]
