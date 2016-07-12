# insert our captured sample.json into a new template.
# Lets us test json data generated from an already built rakudo using our new template.

sub MAIN($template, $json) {
    for $template.IO.lines -> $line {
        if $line ~~ /'{{{PROFILER_OUTPUT}}}'/ {
            say $json.IO.slurp;
        } else {
            say $line;
        }
    }
}
