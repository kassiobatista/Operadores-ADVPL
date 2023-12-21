#INCLUDE "Protheus.ch"

/*/(Protheus.doc) Operadores da Linguagem
Fun��o : Analista de Sistemas
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


    // Matem�ticos
    nResp   := nNum1 + nNum2 //Soma
    nResp   := nNum1 - nNum2 //Subtra��o
    nResp   := nNum1 / nNum2 //Divis�o
    nResp   := nNum1 * nNum2 //Multiplica��o
    nResp   := nNum1 ^ nNum2 //Exponencia��o (** tamb�m serve)
    nResp   := nNum1 % nNum2 //Resto da divis�o

    // Operadores de String
    cResposta       := "K�ssio " + "Dev" //Concatenar
    cResposta       := "K�ssio " - " Dev" //Concatena��o de sting com elimina��o dos brancos finais nas strings intermedi�rias

    cTexto1         := "K�ssio"
    cTexto2         := "K�ssio,Batista,Souza" 
    lResposta       := cTexto1 $ cTexto2 //Compara��o de Strings (est� contido)

    // Operadores de compara��o
    lResposta   := nNum1 > nNum2 //Maior
    lResposta   := nNum1 < nNum2 //Menor
    lResposta   := nNum1 == nNum2 //Igualdade
    lResposta   := nNum1 >= nNum2 //Maior ou igual
    lResposta   := nNum1 <= nNum2 //Menor ou igual

    lResposta   := cTexto1 == cTexto2 //Exatamente igual (comparar strings)
    lResposta   := cTexto1 = cTexto2 // Nesse caso, igual d� verdadeiro
    lResposta   := cTexto1 != cTexto2 // Isso d� falso (est� errado)
    lResposta   := !(cTexto1 != cTexto2) //D� verdadeiro, pois o ! no inicio for�a a mudan�a de valor l�gico

    // Operadores de Atribui��o
    // Atribui��o simples
    nNum1 = 2

    // Atribui��o em linha
    nNum2 := nNum1 := 5
    nNum1 := 5
    nNum2 := 5
    cTexto1 := "Kassio"

    // Adi��o e atribui��o em linha
    nNum1 += nNum2

    // Subtra��o e atribui��o em linha
    nNum1 -= nNum2

    // Multiplica��o e atribui��o em linha
    nNum1 *= nNum2

    // Divis�o e atribui��o em linha
    nNum1 /= nNum2

    // Operadores de incremento
    // ++ Incremento p�s ou pr� fixado
    nNum1 ++
    nNum1 ++

    // -- Decremento p�s ou pr� fixado
    nNum1 --
    nNum1 --

    // () Agrupamento ou fun��o
    // TKassio ()
    nResp ((nNum1 - nNum2) / nNum3) * nNum4
    
    // [] Elementos de matriz
    cResposta   := aNomes[1]

    // Defini��o de matriz constante ou bloco de codigo
    aNomes  := {"K", "A", "S"}

    // -> Identificador de apelido
    //SA1->A1_COD
    //cAliasTop := SA1
    //(cAliasTop)-> A1_COD

    // & Macrosubstitui��o
    cTexto1 := "7 + 7"
    nResp   := &cTexto1

    // @ Passagem de parametro por referencia
    U_Kassio(@nNum1)
    
Return
