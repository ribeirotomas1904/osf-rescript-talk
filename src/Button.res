type button_state = Default | Loading | Disabled | Error(string)

@react.component
let make = (~state) => {
  let isDisabled = switch state {
  | Disabled => true
  | _ => false
  }

  let className = switch state {
  | Default => ""
  | Loading => "is-loading"
  | Disabled => "is-disabled"
  | Error(_) => "has-error"
  }

  <button className disabled=isDisabled> {React.string("my button")} </button>
}

type async_data<'a> = Idle | Loading | Done('a)

type user = {name: string}

module Spinner = {
  @react.component
  let make = () => {
    <div />
  }
}

module HelloUser = {
  @react.component
  let make = (~user: async_data<result<user, string>>) => {
    switch user {
    | Idle => React.null
    | Loading => <Spinner />
    | Done(Ok(user)) => React.string(user.name)
    | Done(Error(errorMessage)) => React.string(errorMessage)
    }
  }
}
