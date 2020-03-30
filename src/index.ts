import express from "express";

const app = express();

// define a route handler for the default home page
app.get("/", (req: express.Request, res: express.Response) => {
    res.send("Hello world!");
});

// start the Express server
app.listen(process.env.PORT, () => {
    console.log(`Server started at http://localhost:${process.env.PORT}`);
});