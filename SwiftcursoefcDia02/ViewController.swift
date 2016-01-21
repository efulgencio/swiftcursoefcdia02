//
//  ViewController.swift
//  SwiftcursoefcDia02
//
//  Created by eduardo fulgencio on 20/1/16.
//  Copyright © 2016 eduardo fulgencio. All rights reserved.
//

import UIKit

/*
Objetivos día 02

- Tuples
-

*/

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func tuplesInfo(){
        
        // Tuples
        let http404Error = (404, "Not Found")
        // http404Error es de tipo (Int, String), igual a (404, "Not Found")”
        
        let (statusCode, statusMessage) = http404Error
        print("The status code is \(statusCode)")
        // prints "The status code is 404"
        print("The status message is \(statusMessage)")
        // prints "The status message is Not Found”
        let (justTheStatusCode, _) = http404Error
        print("The status code is \(justTheStatusCode)")
        // prints "The status code is 404”
        // Se puede acceder a un elemento mediante el índice
        print("The status code is \(http404Error.0)")
        // prints "The status code is 404"
        print("The status message is \(http404Error.1)")
        // prints "The status message is Not Found”
        // Se puede asignar nombre a los elementos cuando se define
        let http200Status = (statusCode: 200, description: "OK")
        print("The status code is \(http200Status.statusCode)")
        // prints "The status code is 200"
        print("The status message is \(http200Status.description)")
        // prints "The status message is OK”
        
        // Tuples es útil en el caos de retornar valores de una función
       
    }
    
    func optional(){

        // El tipo Int en Swift intenta convertir la cade en un valor tipo Int.
        // pero no todo puede ser convertido en Int. La cadena "123" puede ser convertido en un valor numérico 123.
        let possibleNumber = "123"
        let convertedNumber = Int(possibleNumber)
        // La inicialización puede fallar, devuelve un optional Int, en lugar de Int.
        // Un optional Int se escribe Int?, en lugar de Int.
        // El símbolo interrogante indica que el valor que contendrá es optional.
        // signifaca que puede contener un valor Int o no contener ninguno.
        
        // Nota
        // nil en Swift no es lo mismo que nil en Objective-C. En Objective-C nil es un puntero a objeto que no existe.
        // En Swift nil no es un puntero, es la ausencia de una valor de cierto tipo. 
        // Optionals de cualquier tipo puede ser establecido a nil, no otros objetos tipo.
        
        // nil
        // Para establecer a una variable opcional sin valor asignar el valor nil
        
        var serverResponseCode: Int? = 404
        // serverResponseCode contains an actual Int value of 404
        serverResponseCode = nil
        // serverResponseCode now contains no value”
       
        // Si defines una variable opcional sin asignar un valor por defecto, la variable es automáticamente
        // establecida a nil
        
        var surveyAnswer: String?
        // surveyAnswer is automatically set to nil”
        
        // Se puede utilizar en un condicional if si un optional contiene un valor comparando con nil.
        // Esta comparación se puede realizar con (==) o con (!=)
        
        if convertedNumber != nil {
            print("convertedNumber contains some integer value.")
        }
        // prints "convertedNumber contains some integer value.”
     
        
        // Cuando estas seguro de que el optional contiene un valor, puede acceder añadiendo un símbolo de exclamación (!)
        // al final del optional.
        // El símbolo de exclamación significa: Ya sé que el optional contiene un valor, se puede utilizar. Esto es
        // conocido como forced unwrapping del valor del optional.
        
        
        if convertedNumber != nil {
                print("convertedNumber has an integer value of \(convertedNumber!).")
        }
        // prints "convertedNumber has an integer value of 123."
        
        // Optional Binding
        // Se utiliza optional binding para comprobar que un optional contiene un valor, si es así utilizarlo en una
        // constante o varialbe temporal. Optional binding puede utilizarse en un if y while Control Flow.
        
        if let constantName = surveyAnswer {
             print(" constantName has an integer value of \(constantName)")
        }
        
        // Si el optional Int que retornoa Int(possibleNumber) contiene un valor
        // asigna a una nueva constante llamada actualNumber el valor que contiene possibleNumber.
        
        if let actualNumber = Int(possibleNumber) {
            print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
        } else {
            print("\'\(possibleNumber)\' could not be converted to an integer")
        }
        // prints "'123' has an integer value of 123”
        
 
        // Se puede incluir varios optional bindings en un if y utilizar where para comprobar un condición de comparación.
        
        if let firstNumber = Int("4"), secondNumber = Int("42") where firstNumber < secondNumber {
            print("\(firstNumber) < \(secondNumber)")
        }
        // prints "4 < 42”
        

        // Implicito Unwrapped Optionals
        // Como se ha descrito una constante o variable se permite contener un nalor nil "no valor". 
        // En el caso de que un optional siempre contendrá un valor. En este caso eliminar la necesidad
        // de comprobar si contiene valor.
        
        // Utilizar (String!) en lugar de (String?) despues del tiop que se quiere hacer optional.
        
        let possibleString: String? = "An optional string."
        let forcedString: String = possibleString! // requires an exclamation mark
        
        let assumedString: String! = "An implicitly unwrapped optional string."
        let implicitString: String = assumedString // no need for an exclamation mark”
        
        
        if assumedString != nil {
            print(assumedString)
        }
        // prints "An implicitly unwrapped optional string.”
       

        // Se puede utilizar un implicito unwrapped optional con optional binding
        if let definiteString = assumedString {
            print(definiteString)
        }
        // prints "An implicitly unwrapped optional string."
        
        
    }
    
    func errorHandler() {
        
        // Se utiliza error handling para responder a errores que se pueden producir en el programa.
        // Cuando se produce un error en una funcion, esta lanza un error. Quien ha llamado a la funcion
        // captura el error y responde apropiadamente
        

        // Swift propaga el error hasta encontra una clausula catch.
        // do crea un ámbito el cual permite al error ser capturado en uno o más clausulas catch.
        
        do {
            try canThrowAnError()
            // no error was thrown
        } catch {
            // an error was thrown
        }
        
        // En este caso con más clausulas catch
        /*
        do {
            try makeASandwich()
            eatASandwich()
        } catch Error.OutOfCleanDishes {
            washDishes()
        } catch Error.MissingIngredients(let ingredients) {
            buyGroceries(ingredients)
        }
        */
        
    }
    
    func makeASandwich() throws {
        // ...
    }
    
    // Añadiendo throws en la declaración indica que puede lanzar un error
    func canThrowAnError() throws {
        // this function may or may not throw an error
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
}

