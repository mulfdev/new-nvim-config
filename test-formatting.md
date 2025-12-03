# Test Markdown File

This is a test file to verify that prettier formatting works when saving.

## Unformatted List
-Item 1
-Item 2
-Item 3

## Unformatted Table
|Column 1|Column 2|Column 3|
|---|---|---|
|Data 1|Data 2|Data 3|
|More data|Even more|Last column|

## Long Line
This is a very long line that should potentially be wrapped by prettier if it exceeds the configured line length limit which is typically around 80 or 120 characters depending on the prettier configuration that is being used in this project.

## Code Block
```javascript
function test(){
console.log("This code should not be reformatted")
}
```

**Bold text** and *italic text* and ***bold italic text***