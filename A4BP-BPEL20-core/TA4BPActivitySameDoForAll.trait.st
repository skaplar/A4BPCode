Trait {
	#name : #TA4BPActivitySameDoForAll,
	#category : #'A4BP-BPEL20-core-Trait'
}

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBBPWait: aBPWait [
	^ self visitBPActivity: aBPWait
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPActivityBasic: aBPActivityBasic [
	^ self visitBPActivity: aBPActivityBasic
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPActivityComposite: aBPActivityComposite [
	^ self visitBPActivity: aBPActivityComposite 
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPAssign: aBPAssign [
	^ self visitBPActivity: aBPAssign 
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPCatch: aBPCatch [
	^ self visitBPActivity: aBPCatch
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPCatchAll: aBPCatchAll [
	^ self visitBPActivity: aBPCatchAll 
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPElseIf: aBPElseIf [
	^ self visitBPActivity: aBPElseIf
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPEmpty: aBPEmpty [
	^ self visitBPActivity: aBPEmpty 
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPExit: aBPExit [
	^ self visitBPActivity: aBPExit 
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPExtensionActitity: aBPExtensionActitity [
	^ self visitBPActivity: aBPExtensionActitity 
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPFlow: aBPInvoke [
	^ self visitBPActivity: aBPInvoke 
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPForEach: aBPForEach [
	^ self visitBPActivity: aBPForEach 
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPIf: aBPIf [
	^ self visitBPActivity: aBPIf 
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPInvoke: aBPInvoke [
	^ self visitBPActivity: aBPInvoke 
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPPick: aBPPick [
	^ self visitBPActivity: aBPPick 
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPReceive: aBPReceive [
	^ self visitBPActivity: aBPReceive 
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPRepeatUntil: aBPRepeatUntil [
	^ self visitBPActivity: aBPRepeatUntil 
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPReply: aBPReply [
	^ self visitBPActivity: aBPReply 
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPRethrow: aBPRethrow [
	^ self visitBPActivity: aBPRethrow 
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPScope: aBPScope [
 	^ self visitBPActivity: aBPScope 
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPSequence: aBPSequence [
	^ self visitBPActivity: aBPSequence 
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPSwitch: aBPSwitch [
	^ self visitBPActivity: aBPSwitch 
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPThrow: aBPThrow [
	^ self visitBPActivity: aBPThrow 
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPValidate: aBPValidate [
	^ self visitBPActivity: aBPValidate 
]

{ #category : #visitor }
TA4BPActivitySameDoForAll >> visitBPWhile: aBPWhile [
	^ self visitBPActivity: aBPWhile 
]
