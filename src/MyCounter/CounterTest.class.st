Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'tests' }
CounterTest >> testAlternateCreationMethod [
	self assert: ((Counter startingAt: 19) increment; count) equals: 20.
]

{ #category : 'tests' }
CounterTest >> testCountIsSetAndRead [
	| c |
	c := Counter new.
	c count: 42.
	self assert: (c count) equals: 42.
]

{ #category : 'tests' }
CounterTest >> testCountStartingAt5 [
	self assert: (Counter startingAt: 5) count equals: 5
]

{ #category : 'tests' }
CounterTest >> testDecrement [
	| c |
	c := Counter new.
	c count: 0; decrement; decrement.
	self assert: c count equals: -2.
]

{ #category : 'tests' }
CounterTest >> testIncrement [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	| c |
	c := Counter new.
	c count: 0; increment; increment.
	self assert: c count equals: 2.
]

{ #category : 'tests' }
CounterTest >> testInitialize [
	self assert: Counter new count equals: 0.
]

{ #category : 'tests' }
CounterTest >> testPrintString [
	self assert: Counter new printString equals: 'a Counter with value: 0'
]
