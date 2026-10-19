import gleam/list
import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

fn section(title: String, intro: String, features: List(String)) -> Element(msg) {
     html.div([attribute.styles([
          #("padding", "1rem 0"),
          #("border-bottom", "1px solid #cccccc"),
     ])], [
          html.h2([], [html.text(title)]),
          html.p([], [html.text(intro)]),
          html.h4([], [html.text("what's included:")]),
          html.ul([], list.map(features, fn(f) { html.li([], [html.text(f)]) })),
     ])
}
pub fn add(){
     html.div([],[
          html.h1([],[html.text("services")]),

          section(
               "Web Development",
               "we make website",
               [
                    "custom design and frontend development",
                    "performance and accessibility built in from the start",
                    "clean, documented code to speed up future additions",
               ],
          ),

          section(
               "Server, Infrastructure, and Hosting",
               "we host ur stuff",
               [
                    "End-to-end cloud hosting for websites, software, and infrastructure",
                    "Resource management, uptime monitoring, and defense against cyber threats",
                    "NixOS-based servers for full system reproducibility, enabling clean rollback and confident migrations",
                    "Choosing the right provider and region for the job, across Hetzner, AWS, etc.",
               ],
          ),

          section(
               "Legacy Maintenance and Modernization",
               "We keep older codebases running and bring them forward when it makes sense.",
               [
                    "Ongoing support and maintenance for existing systems",
                    "Migration to modern tools and frameworks when you're ready",
                    "Security updates and quality-of-life improvements that speed up future development",
                    "Taking over maintenance of abandoned open-source dependencies your legacy system relies on",
               ],
          ),
     ])
}