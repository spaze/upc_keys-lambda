API Gateway Resources GET method
================================

Method Request
--------------
Add `ssid` to *URL Query String Params*, or create new Resource with *Resource Path* containing `{ssid}` path parameter.

**Do not** forget to set *API Key Required* to `true`.

Integration Request
-------------------
Add following *Mapping Template* for `application/json`:
```
{
    "ssid": "$input.params('ssid')"
}
```

Integration Response
--------------------
Add new *Method response status* `500`, use *Lambda Error Regex* `Task timed out.*`.
