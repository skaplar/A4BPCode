"
A TBPActivitySameDoForAll is list of method to call the same metod, is util for visitor pattern.

"
Trait {
	#name : #TBPActivitySameDoForAll,
	#category : #'A4BP-BpelAnalyzer-core-Trait'
}

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBBPWait: aBPWait [
	^ self visitBPActivity: aBPWait
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPActivityBasic: aBPActivityBasic [
	^ self visitBPActivity: aBPActivityBasic
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPActivityComposite: aBPActivityComposite [
	^ self visitBPActivity: aBPActivityComposite 
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPAssign: aBPAssign [
	^ self visitBPActivity: aBPAssign 
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPCatch: aBPCatch [
	^ self visitBPActivity: aBPCatch
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPCatchAll: aBPCatchAll [
	^ self visitBPActivity: aBPCatchAll 
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPElseIf: aBPElseIf [
	^ self visitBPActivity: aBPElseIf
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPEmpty: aBPEmpty [
	^ self visitBPActivity: aBPEmpty 
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPExit: aBPExit [
	^ self visitBPActivity: aBPExit 
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPExtensionActitity: aBPExtensionActitity [
	^ self visitBPActivity: aBPExtensionActitity 
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPFlow: aBPInvoke [
	^ self visitBPActivity: aBPInvoke 
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPForEach: aBPForEach [
	^ self visitBPActivity: aBPForEach 
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPIf: aBPIf [
	^ self visitBPActivity: aBPIf 
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPInvoke: aBPInvoke [
	^ self visitBPActivity: aBPInvoke 
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPPick: aBPPick [
	^ self visitBPActivity: aBPPick 
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPReceive: aBPReceive [
	^ self visitBPActivity: aBPReceive 
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPRepeatUntil: aBPRepeatUntil [
	^ self visitBPActivity: aBPRepeatUntil 
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPReply: aBPReply [
	^ self visitBPActivity: aBPReply 
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPRethrow: aBPRethrow [
	^ self visitBPActivity: aBPRethrow 
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPScope: aBPScope [
 	^ self visitBPActivity: aBPScope 
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPSequence: aBPSequence [
	^ self visitBPActivity: aBPSequence 
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPSwitch: aBPSwitch [
	^ self visitBPActivity: aBPSwitch 
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPThrow: aBPThrow [
	^ self visitBPActivity: aBPThrow 
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPValidate: aBPValidate [
	^ self visitBPActivity: aBPValidate 
]

{ #category : #visitor }
TBPActivitySameDoForAll >> visitBPWhile: aBPWhile [
	^ self visitBPActivity: aBPWhile 
]
