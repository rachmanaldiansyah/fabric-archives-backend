import PizZip from "pizzip";
import Docxtemplater from "docxtemplater";
import { readFileSync, writeFileSync } from "fs";
import { fileURLToPath } from "url";
import { resolve, dirname } from "path";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const content = readFileSync(
  resolve(__dirname, "../archives/ijazah/template/Format Ijazah SMK.docx"),
  "binary"
);

const zip = new PizZip(content);
const doc = new Docxtemplater(zip, {
  paragraphLoop: true,
  linebreaks: true,
});

doc.render({
  nama: "Rachman Aldiansyah",
  ttl: "15 Agustus 2001",
  nama_orangtua: "Dedi Supriadi",
  nis: "10101243",
  nisn: "32425346",
  smk: "Ma'arif Terpadu Cicalengka",
  npkn: "12303435",
  tgl_lulus: "05 Agustus 2023",
  kepala_sekolah: "Yuni Sri Wulandari",
  nip_kepsek: "123244353466",
  no_ijazah: "SMK/1230435435",
});

const buf = doc.getZip().generate({
  type: "nodebuffer",
  compression: "DEFLATE",
});

writeFileSync(resolve(__dirname, `../archives/ijazah/Output Ijazah.docx`), buf);
