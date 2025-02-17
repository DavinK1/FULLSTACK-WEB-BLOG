const express = require("express");
const { Pool } = require("pg");
const router = express();
const cors = require("cors");
const port = 3000;

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

router.get("/getUsersAll", async (req, res) => {
  try {
    const result = await Client.query(`SELECT * FROM users`);
    res.json(result.rows);
  } catch (err) {
    console.error(err);
    res.status(500).send("เซิร์ฟเวอร์เกิดข้อผิดพลาด!");
  }
});

module.exports = router;
