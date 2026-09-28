import footer
import navbar
import lustre
import lustre/attribute
import lustre/element/html


pub fn main() -> Nil {
  let app = lustre.element(page())
  let assert Ok(_) = lustre.start(app, "#app", Nil)
  Nil
}

fn page() {
  html.div([], [
    navbar.add(),
    html.div([], [
        html.h1([], [html.text("amphiseum is cool")])
      ],
    ),
    footer.add()
  ])
}