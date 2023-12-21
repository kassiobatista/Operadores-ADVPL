#INCLUDE "Protheus.ch"

/*/(Protheus.doc) Operadores da Linguagem
Função : Analista de Sistemas
@author Kassio B.
Since 21/12/2023
@version 12 superior
/*/

User Function Operadores()

    Local nNum1         := 7
    Local nNum2         := 10
    Local nNum3         := 9
    Local nNum4         := 5
    Local nResp         := 0
    Local cTexto1       := ""
    Local cTexto2       := ""
    Local cResposta     := ""
    Local cAliasTop     := ""
    Local lResposta     := .T.
    Local aNomes        := {"Kassio", "Batista", "Souza"}


    // Matemáticos
    nResp   := nNum1 + nNum2 //Soma
    nResp   := nNum1 - nNum2 //Subtração
    nResp   := nNum1 / nNum2 //Divisão
    nResp   := nNum1 * nNum2 //Multiplicação
    nResp   := nNum1 ^ nNum2 //Exponenciação (** também serve)
    nResp   := nNum1 % nNum2 //Resto da divisão

    // Operadores de String
    cResposta       := "Kássio " + "Dev" //Concatenar
    cResposta       := "Kássio " - " Dev" //Concatenação de sting com eliminação dos brancos finais nas strings intermediárias

    cTexto1         := "Kássio"
    cTexto2         := "Kássio,Batista,Souza" 
    lResposta       := cTexto1 $ cTexto2 //Comparação de Strings (está contido)

    // Operadores de comparação
    lResposta   := nNum1 > nNum2 //Maior
    lResposta   := nNum1 < nNum2 //Menor
    lResposta   := nNum1 == nNum2 //Igualdade
    lResposta   := nNum1 >= nNum2 //Maior ou igual
    lResposta   := nNum1 <= nNum2 //Menor ou igual

    lResposta   := cTexto1 == cTexto2 //Exatamente igual (comparar strings)
    lResposta   := cTexto1 = cTexto2 // Nesse caso, igual dá verdadeiro
    lResposta   := cTexto1 != cTexto2 // Isso dá falso (está errado)
    lResposta   := !(cTexto1 != cTexto2) //Dá verdadeiro, pois o ! no inicio força a mudança de valor lógico

    // Operadores de Atribuição
    // Atribuição simples
    nNum1 = 2

    // Atribuição em linha
    nNum2 := nNum1 := 5
    nNum1 := 5
    nNum2 := 5
    cTexto1 := "Kassio"

    // Adição e atribuição em linha
    nNum1 += nNum2

    // Subtração e atribuição em linha
    nNum1 -= nNum2

    // Multiplicação e atribuição em linha
    nNum1 *= nNum2

    // Divisão e atribuição em linha
    nNum1 /= nNum2

    // Operadores de incremento
    // ++ Incremento pós ou pré fixado
    nNum1 ++
    nNum1 ++

    // -- Decremento pós ou pré fixado
    nNum1 --
    nNum1 --

    // () Agrupamento ou função
    // TKassio ()
    nResp ((nNum1 - nNum2) / nNum3) * nNum4
    
    // [] Elementos de matriz
    cResposta   := aNomes[1]

    // Definição de matriz constante ou bloco de codigo
    aNomes  := {"K", "A", "S"}

    // -> Identificador de apelido
    //SA1->A1_COD
    //cAliasTop := SA1
    //(cAliasTop)-> A1_COD

    // & Macrosubstituição
    cTexto1 := "7 + 7"
    nResp   := &cTexto1

    // @ Passagem de parametro por referencia
    U_Kassio(@nNum1)
    
Return
