import express from "express";
import cors from "cors";
import session from "express-session";
import dotenv from "dotenv";
import db from "./config/Database.js";
import SequelizeStore from "connect-session-sequelize";
import UsersRoute from "./routes/UsersRoute.js";
import IjazahRoute from "./routes/IjazahRoute.js";
import SertifikatRoute from "./routes/SertifikatRoute.js";
import AuthRoute from "./routes/AuthRoute.js";
import SiswaRoute from "./routes/SiswaRoute.js";

dotenv.config();

const app = express();
const sessionStorage = SequelizeStore(session.Store);
const store = new sessionStorage({
  db: db,
});

// meng-sinkronasi dengan database
// (async () => {
//   await db.sync();
// })();

app.use(
  session({
    secret: process.env.SESS_SECRET,
    resave: false,
    saveUninitialized: true,
    store: store,
    cookie: {
      secure: "auto",
    },
  })
);

app.use(
  cors({
    credentials: true,
    origin: "http://localhost:3000",
  })
);

app.use(express.json());
app.use(UsersRoute);
app.use(IjazahRoute);
app.use(SertifikatRoute);
app.use(AuthRoute);
app.use(SiswaRoute);

app.use((req, res, next) => {
  res.header("Access-Control-Allow-Credentials", "true");
  next();
});

// membuat session-sequelize
// store.sync();

app.listen(process.env.APP_PORT_DB, () => {
  console.log(
    "Server is running on http://localhost:" + process.env.APP_PORT_DB
  );
});
