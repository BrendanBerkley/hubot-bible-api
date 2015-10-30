# hubot-bible-api

Use Hubot to access Tim Morgan's [bible-api.com](http://bible-api.com/) to display Bible passages

See [`src/bible-api.coffee`](src/bible-api.coffee) for documentation. Also, visit [bible-api.com](http://bible-api.com/) to get a more complete sense of how you can query passages.

## Installation

In hubot project repo, run:

`npm install hubot-bible-api --save`

Then add **hubot-bible-api** to your `external-scripts.json`:

```json
[
  "hubot-bible-api"
]
```

## Sample Interaction

```
user1> hubot bible romans 12:2
hubot>
Romans 12:2 (web)
2 Don’t be conformed to this world, but be transformed by the renewing of your mind, so that you may prove what is the good, well-pleasing, and perfect will of God.

hubot> hubot bible /kjv romans 10:9
hubot> 
Romans 10:9 (kjv)
9 That if thou shalt confess with thy mouth the Lord Jesus, and shalt believe in thine heart that God hath raised him from the dead, thou shalt be saved.

hubot> hubot bible /clementine phil 4:23
hubot> 
Philippians 4:23 (clementine)
23 Gratia Domini nostri Jesu Christi cum spiritu vestro. Amen.
```
