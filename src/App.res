module Test = {
  @react.component
  let make = (~children) => {
    children
  }
}

@react.component
let make = () => {
  <div> <Test> <div> {React.string("ola")} </div> </Test> </div>
}
