# Climate Change Substitutions Analytics

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

Analytic service for https://github.com/buren/climate-change-substitutions.

* Rails 5.1
* Ruby 2.4
* PostgreSQL > 9

## Documentation

`POST /`

__Payload__:

```json
{
  "replacements": [{
    "url": "http://example.com",
    "original": "some phrase",
    "replacement": "my phrase"
  }]
}
```

## Deploy

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)
