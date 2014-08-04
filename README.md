[![Build Status](https://travis-ci.org/chatgris/event_source_encoder.png?branch=master)](https://travis-ci.org/chatgris/event_source_encoder)
# EventSourceEncoder

EventSourceEncoder is a Elixir library to encode data into EventSource
compliant data.

## Examples

``` elixir
iex> EventSourceEncoder.encode(1, "This is data")
"id: 1\\ndata: This is data\\n\\n"

iex> EventSourceEncoder.encode(1, "This is new data", :login)
"id: 1\\nevent: login\\ndata: This is new data\\n\\n"
```
