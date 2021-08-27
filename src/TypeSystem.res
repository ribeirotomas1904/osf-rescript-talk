// Strongly typed ==============================================================
// let a = 1 + 1.0

// Algebraic data types=========================================================

// Sum types

// type variant = Primary | Secondary | Custom(string)

// let getColor = variant =>
//   switch variant {
//   | Primary => "red"
//   | Secondary => "blue"
//   | Custom(color) => color
//   }

// type input_state = Default | Loading | Disabled | Error(string)

// let getClassName = inputState => {
//   switch inputState {
//   | Default => "default"
//   | Loading => "loading"
//   | Disabled => "disabled"
//   | Error(_) => "error"
//   }
// }

// let a = Js.Array2.map([1, 2, 3], string_of_int)

// type option<'a> = None | Some('a)

// type paymentMethod =
//   | Boleto
//   | CreditCard({name: string, flag: string, code: string, expirationDate: Js.Date.t})

// type user = {name: string, age: int, paymentMethod: option<paymentMethod>}

// let buyItem = ({name, paymentMethod}) =>
//   switch paymentMethod {
//   | None => "sem metodo de pagamento registrado"
//   | Some(Boleto) => `emitir boleto para ${name}`
//   | Some(CreditCard({name: nameOnCreditCard})) =>
//     if nameOnCreditCard == name {
//       "aprovada compra no cartão de credito"
//     } else {
//       "cartão de credito invalido"
//     }
//   }

// let rec sum = list =>
//   switch list {
//   | list{} => 0
//   | list{head, ...tail} => head + sum(tail)
//   }

// let sumTCR = list => {
//   let rec aux = (list, acc) =>
//     switch list {
//     | list{} => acc
//     | list{head, ...tail} => aux(tail, acc + head)
//     }
//   aux(list, 0)
// }

// let rec loop = () => loop()

// Structural equality VS Referential equality =================================

// type person = {name: string}

// let nathan1 = {name: "n"}
// let nathan2 = {name: "n"}

// Js.log(nathan1 == nathan2)

// Sound type system

// open Belt

// let a = [1]
// let b = a[1]

// Modeling async data

// type user = {name: string}
// type async_data<'a> = Idle | Loading | Done(result<'a, string>)

// let (user: async_data<user>, setUser) = React.useState(_ => Idle)

// let message = switch user {
// | Idle => "aperte o botão para carregar"
// | Loading => "carregando"
// | Done(Error(errorMessage)) => errorMessage
// | Done(Ok({name})) => "bem vindo " ++ name
// }

// let isButtonDisabled = switch user {
// | Loading => true
// | Idle | Done(_) => false
// }

// @module("./interop.js") external myHelloFunction: string => string = "hello"
// @module("./interop.js") external myHelloFunction2: string => string = "default"

// myHelloFunction2("nathan")->Js.log

