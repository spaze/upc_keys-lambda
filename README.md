API Gateway Resources GET method
================================

Method Request
--------------
Add `ssid` and `prefixes` to *URL Query String Params*, or create new Resource with *Resource Path* containing both `{ssid}` and `{prefixes}` path parameter.

**Do not** forget to set *API Key Required* to `true`.

Integration Request
-------------------
Add following *Mapping Template* for `application/json`:
```
{
    "ssid": "$input.params('ssid')",
    "prefixes": "$input.params('prefixes')"
}
```

Integration Response
--------------------
Add new *Method response status* `500`, use *Lambda Error Regex* `Task timed out.*`.
