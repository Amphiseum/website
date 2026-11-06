import footer
import gleam/result
import gleam/uri.{type Uri}
import lustre
import lustre/attribute
import lustre/effect.{type Effect}
import lustre/element.{type Element}
import lustre/element/html
import modem
import navbar
import pages/about
import pages/contact
import pages/home
import pages/services

pub fn main() {
  let app = lustre.application(init, update, view)
  let assert Ok(_) = lustre.start(app, "#app", Nil)
}

pub type Route {
  Home
  About
  Services
  Contact
}

pub fn init(_) -> #(Route, Effect(Msg)) {
  let route =
    modem.initial_uri()
    |> result.map(fn(uri) { uri.path_segments(uri.path) })
    |> fn(path) {
      case path {
        Ok(["about"]) -> About
        Ok(["contact"]) -> Contact
        Ok(["services"]) -> Services
        _ -> Home
      }
    }

  #(route, modem.init(on_url_change))
}

fn on_url_change(uri: Uri) -> Msg {
  case uri.path_segments(uri.path) {
    ["about"] -> OnRouteChange(About)
    ["contact"] -> OnRouteChange(Contact)
    ["services"] -> OnRouteChange(Services)
    _ -> OnRouteChange(Home)
  }
}

pub type Msg {
  OnRouteChange(Route)
}

fn update(_, msg: Msg) -> #(Route, Effect(Msg)) {
  case msg {
    OnRouteChange(route) -> #(route, effect.none())
  }
}

fn view(route: Route) -> Element(Msg) {
  html.div(
    [attribute.styles([#("font-family", "sans-serif"), #("color", "#393e6a")])],
    [
      navbar.add(),
      case route {
        Home -> home.add()
        About -> about.add()
        Contact -> contact.add()
        Services -> services.add()
      },
      footer.add(),
    ],
  )
}
