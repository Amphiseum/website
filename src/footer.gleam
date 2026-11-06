import lustre/attribute
import lustre/element/html

pub fn add() {
  html.footer(
    [
      attribute.styles([
        #("display", "flex"),
        #("align-items", "center"),
        #("justify-content", "center"),
        #("gap", "1.5rem"),
        #("padding", "1.5rem"),
        #("border-top", "1px solid #000000"),
      ]),
    ],
    [
      html.a([attribute.href("")], [html.text("GitHub")]),
      html.a([attribute.href("")], [html.text("GitLab")]),
      html.a([attribute.href("")], [html.text("Mastodon")]),
      html.a([attribute.href("")], [html.text("Instagram")]),
      html.a([attribute.href("")], [html.text("Bluesky")]),
      html.a([attribute.href("")], [html.text("LinkedIn")]),
    ],
  )
}
