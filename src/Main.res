let rootOpt = ReactDOM.querySelector("#root")

switch rootOpt {
| Some(root) => ReactDOM.render(<React.StrictMode> <App /> </React.StrictMode>, root)
| None => ()
}
