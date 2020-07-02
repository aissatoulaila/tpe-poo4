Class {
	#name : #Comptes,
	#superclass : #Object,
	#instVars : [
		'etat',
		'montant',
		'numero'
	],
	#category : #tpepoo4
}

{ #category : #accessing }
Comptes >> etat [
"permet de savoir si un compte est fermer ou pas "
	^ etat
]

{ #category : #accessing }
Comptes >> etat: aBoolean [
"Lorque l etat est à false, le compte est bloqué et à true , il est ouvert"
	etat := aBoolean
]

{ #category : #initialization }
Comptes >> initialize [
	  montant:= 0.
	  numero:= 0.
	  etat:= true
]

{ #category : #accessing }
Comptes >> montant [
	^ montant
]

{ #category : #accessing }
Comptes >> montant: aNumber [
	montant := aNumber
]

{ #category : #accessing }
Comptes >> numero [
	^ numero
]

{ #category : #accessing }
Comptes >> numero: aNumber [
	numero:= aNumber 
]
