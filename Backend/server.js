const express = require("express");
const { Pool } = require("pg");
const router = express();
const cors = require("cors"); // Cors ข้าม Ports
const port = 3000;

const users = require("./users");

const Client = new Pool({
  user: "takigawa",
  host: "localhost",
  database: "webblog",
  password: "1521241za",
  port: 5432,
});

Client.connect()
  .then(() => console.log("เชื่อมต่อฐานข้อมูล Postgres สำเร็จ"))
  .catch((err) => console.error("เกิดเชื่อมต่อเกิดข้อผิดพลาด : ", err.stack));

  

// ใช้ CORS เพื่อให้สามารถใช้ API ข้าม Ports ได้
router.use(cors({ origin: "*" }));
router.use(express.json());

router.get("/", async (req, res) => {
  try {
    res.json("Hello, world");
  } catch (error) {
    res.json("เกิดข้อผิดพลาดในการเชื่อมต่อ DATABASE");
  }
});

router.use("/users", users);

router.listen(port, () => {
  console.log(`API is running on http://localhost:${port}`);
});

process.on("SIGINT", () => {
  console.log("Shutting down gracefully...");
  pool.end(() => {
    console.log("Database pool closed.");
    process.exit(0);
  });
});
