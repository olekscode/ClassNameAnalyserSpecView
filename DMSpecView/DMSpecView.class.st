Class {
	#name : #DMSpecView,
	#superclass : #ComposablePresenter,
	#instVars : [
		'packagesList',
		'preprocessingLabel',
		'tokenizationCheckbox',
		'stemmingCheckbox',
		'filterNumbersCheckbox',
		'filterOperatorsCheckbox',
		'lowercaseCheckbox',
		'conceptSelectionLabel',
		'firstSymbolRadioButton',
		'middleSymbolRadioButton',
		'lastSymbolRadioButton',
		'roassalView',
		'savePngButton'
	],
	#category : #DMSpecView
}

{ #category : #specs }
DMSpecView class >> defaultSpec [
	^ SpecLayout composed
		newColumn: [ :mainColumn |
			mainColumn
				newRow: [ :controlRow |
					controlRow 
						newColumn: #packagesList width: 200;
						newColumn: [ :settingsAndViewColumn |
							settingsAndViewColumn
								newRow: [ :settingsRow |
									settingsRow
										newColumn: [ :preprocessingColumn |
											preprocessingColumn
												newRow: #preprocessingLabel;
												newRow: #tokenizationCheckbox;
												newRow: #stemmingCheckbox;
												newRow: #filterNumbersCheckbox;
												newRow: #filterOperatorsCheckbox;
												newRow: #lowercaseCheckbox ];
										newColumn: [ :conceptSelectionColumn |
											conceptSelectionColumn 
												newRow: #conceptSelectionLabel;
												newRow: #firstSymbolRadioButton;
												newRow: #middleSymbolRadioButton;
												newRow: #lastSymbolRadioButton ] ];
								newRow: #roassalView ] ];
				newRow: #savePngButton height: self buttonHeight ];
		yourself.
]

{ #category : #accessing }
DMSpecView >> conceptSelectionLabel [
	^ conceptSelectionLabel
]

{ #category : #accessing }
DMSpecView >> filterNumbersCheckbox [
	^ filterNumbersCheckbox
]

{ #category : #accessing }
DMSpecView >> filterOperatorsCheckbox [
	^ filterOperatorsCheckbox
]

{ #category : #accessing }
DMSpecView >> firstSymbolRadioButton [
	^ firstSymbolRadioButton
]

{ #category : #initialization }
DMSpecView >> initializeWidgets [
	packagesList := self newList.
	packagesList items: (Smalltalk packages collect: #name).
	
	preprocessingLabel := self newLabel.
	preprocessingLabel label: 'Preprocessing'.
	
	tokenizationCheckbox := self newCheckBox.
	tokenizationCheckbox label: 'Tokenization'.
	
	stemmingCheckbox := self newCheckBox.
	stemmingCheckbox label: 'Stemming'.
	
	filterNumbersCheckbox := self newCheckBox.
	filterNumbersCheckbox label: 'Filter numbers'.
	
	filterOperatorsCheckbox := self newCheckBox.
	filterOperatorsCheckbox label: 'Filter operators'.
	
	lowercaseCheckbox := self newCheckBox.
	lowercaseCheckbox label: 'Lowercase'.
	
	conceptSelectionLabel := self newLabel.
	conceptSelectionLabel label: 'Concept selection'.
	
	firstSymbolRadioButton := self newRadioButton.
	firstSymbolRadioButton label: 'First symbol'.
	
	middleSymbolRadioButton := self newRadioButton.
	middleSymbolRadioButton label: 'Middle symbol'.
	
	lastSymbolRadioButton := self newRadioButton.
	lastSymbolRadioButton label: 'Last symbol'.
	
	roassalView := self newText.
	
	savePngButton := self newButton.
	savePngButton label: 'Save PNG'.
]

{ #category : #accessing }
DMSpecView >> lastSymbolRadioButton [
	^ lastSymbolRadioButton
]

{ #category : #accessing }
DMSpecView >> lowercaseCheckbox [
	^ lowercaseCheckbox
]

{ #category : #accessing }
DMSpecView >> middleSymbolRadioButton [
	^ middleSymbolRadioButton
]

{ #category : #accessing }
DMSpecView >> packagesList [
	^ packagesList
]

{ #category : #accessing }
DMSpecView >> preprocessingLabel [
	^ preprocessingLabel
]

{ #category : #accessing }
DMSpecView >> roassalView [
	^ roassalView
]

{ #category : #accessing }
DMSpecView >> savePngButton [
	^ savePngButton
]

{ #category : #accessing }
DMSpecView >> stemmingCheckbox [
	^ stemmingCheckbox
]

{ #category : #api }
DMSpecView >> title [ 
	^ 'Class Name Analyser'
]

{ #category : #accessing }
DMSpecView >> tokenizationCheckbox [
	^ tokenizationCheckbox
]
