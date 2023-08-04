import express from "express";
import cors from "cors";
import { config } from "dotenv";
import axios from "axios";
config();

const app = express();
app.use(express.json());

let token;

// Enable CORS for all routes
app.use(
  cors({
    credentials: true,
    origin: ["http://localhost:3000", "http://localhost:5001"],
  })
);

// Set up CORS headers for preflight requests
app.options(
  "*",
  cors({
    credentials: true,
    origin: ["http://localhost:3000", "http://localhost:5001"],
  })
);

// Handle the /user/enroll route manually
app.post("/user/enroll", async (req, res) => {
  try {
    const enrollResponse = await axios.post(
      "http://144.126.209.213:8803/user/enroll",
      {
        id: "admin",
        secret: "adminpw",
      },
      {
        withCredentials: true,
        headers: {
          "Access-Control-Allow-Origin": "http://localhost:3000",
          "Access-Control-Allow-Credentials": "true",
        },
      }
    );
    token = enrollResponse.data.token;
    console.log("Fetched token:", token);
    res.send(enrollResponse.data);
  } catch (error) {
    console.error("Failed to fetch token:", error);
    res.status(500).send("Failed to fetch token");
  }
});

// Handle the /invoke/ijazah/chaincode-ijazah route manually
app.post("/invoke/ijazah/chaincode-ijazah", async (req, res) => {
  try {
    const createAssetResponse = await axios.post(
      "http://144.126.209.213:8803/invoke/ijazah/chaincode-ijazah",
      req.body,
      {
        withCredentials: true,
        headers: {
          Authorization: `Bearer ${token}`,
          "Access-Control-Allow-Origin": "http://localhost:3000",
          "Access-Control-Allow-Credentials": "true",
        },
      }
    );
    res.send(createAssetResponse.data);
  } catch (error) {
    console.error("Failed to invoke chaincode:", error);
    res.status(500).send("Failed to invoke chaincode");
  }
});

// Handle the /invoke/sertifikat/chaincode-sertifikat route manually
app.post("/invoke/sertifikat/chaincode-sertifikat", async (req, res) => {
  try {
    const createAssetResponse = await axios.post(
      "http://144.126.209.213:8803/invoke/sertifikat/chaincode-sertifikat",
      req.body,
      {
        withCredentials: true,
        headers: {
          Authorization: `Bearer ${token}`,
          "Access-Control-Allow-Origin": "http://localhost:3000",
          "Access-Control-Allow-Credentials": "true",
        },
      }
    );
    res.send(createAssetResponse.data);
  } catch (error) {
    console.error("Failed to invoke chaincode:", error);
    res.status(500).send("Failed to invoke chaincode");
  }
});

app.listen(process.env.APP_PORT_BC, () => {
  console.log(`Proxy server is running on http://localhost:` + process.env.APP_PORT_BC);
});
