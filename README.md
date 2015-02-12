# UniformString
Make Swift String type more powerful.

## Installation

Copy all files in src to your project.

## How to use

### length

string.length()

### Match by string

string.match(str)

### Match by regex

let regex = "/matchPattern/".regex()
string.match(regex)

### Substring by range

string[1..<3]

### split

string.splitBy(",")

### sub by string

string.sub(" ", ",")

### sub by range

string.sub(1..<3, "hi")

### trim

string.trim()

### html escape

string.escape()

### html unescape

string.unescape()
