import express, { ErrorRequestHandler, NextFunction, Request, Response } from "express"

const app = express()

app.use(express.json())
app.use((req, res, next) => {
    res.header("Access-Control-Allow-Origin", "*")
    res.header("Access-Control-Allow-Methods", "*")
    res.header("Access-Control-Allow-Headers", "*")
    next()
})

const port = process.env.PORT || 3000
app.listen(port, () => console.log("Listening on http://localhost:", port))

app.use((req, res, next) => {
    console.log("Path: ", req.originalUrl)
    console.log("Headers:", req.headers)
    console.log("Body:", req.body)
    next()
})

app.get("/", (req, res) => res.send("blue"))

app.use((err: ErrorRequestHandler, req: Request, res: Response, next: NextFunction) => {
    console.error(err)
    res.status(500).send({ error: err.toString() })
})
