// Immutability by default =====================================================
// let a = 1
// a = 2

// let a = ref(1)
// a := a.contents + 1

// except in arrays ------------------------------------------------------------
// let a = [1]
// a[0] = 2
// Js.log(a)

// shadowing -------------------------------------------------------------------
// let a = 1
// let a = 2
// Js.log(a)

// Auto-currying ===============================================================
// let add = (a, b) => a + b
// let a = add(10, 32)
// Js.log(a)

// let add10 = add(10)
// let b = add10(32)
// Js.log(b)

// in javascript you have to either make a function like this,
// or make a function to curry other functions ---------------------------------

// %%raw(`
//     let add = a => b => a + b;
//     let a = add(10)(32);
//     console.log(a);

//     let add10 = add(10);
//     let b = add10(32);
//     console.log(b);
// `)

// uncurried function in rescript ----------------------------------------------
// let add = (. a, b) => a + b
// let a = add(. 10, 32)
// Js.log(a)

// let add10 = add(. 10)

// Pipe operator ===============================================================
// let add5 = x => x + 5
// let mult2 = x => x * 2
// let minus1 = x => x - 1

// without pipe operator -------------------------------------------------------
// let a = minus1(mult2(add5(1)))
// Js.log(a)

// with pipe operator ----------------------------------------------------------
// let b = 1->add5->mult2->minus1
// b->Js.log

// let a = [1, 2, 3]

// let b = Js.Array2.map(a, x => x + 1)

// let c = a->Js.Array2.map(x => x + 1)

// You still can do imperative programming (if needed) =========================
// let sum = ref(0)
// for i in 1 to 10 {
//   sum := sum.contents + i
// }
// Js.log(sum)

// Expressions (implicit return of last value) =================================
// let addOneThenDoubleIt = x => {
//   let a = x + 1
//   let b = a * 2
//   b
// }

// 0->addOneThenDoubleIt->Js.log

// is not an IF STATEMENT, it's an IF EXPRESSION, almost the same as "?" -------
// -----------------------------------------------------------------------------

// let isEven = n =>
//   if mod(n, 2) == 0 {
//     true
//   } else {
//     false
//   }

// let isOdd = n => isEven(n) ? false : true

// unit type is implicitly ignored ---------------------------------------------
// 1

// 1->ignore

// Js.log("hello world")

// you can use "if" without "else", if the expression returns the unit type ----
// -----------------------------------------------------------------------------

// if true {
//   Js.log(true)
// }

