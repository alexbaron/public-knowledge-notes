
# function preg_match

```js
function preg_match(regex, str) {
    if (new RegExp(regex).test(str)) {
        return regex.exec(str);
    }
    return false;
}
```

## ex:

```js

var regex = /products\/polyworks-inspector\/faq/gim;

if (preg_match(regex, url)) {
    console.log("execution du code");
} else {
    return false;
}

```
