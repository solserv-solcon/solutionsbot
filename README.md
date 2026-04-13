# 🗂️ Solutions Services Knowledge Base

A smart, searchable chatbot that helps solutions consultant, and account directors find answers about HR policies, payroll, and solutions.

---

## 🌐 Live Chatbot

Access the chatbot here:
**[https://yourusername.github.io/solutions-chatbot](https://yourusername.github.io/solutions-chatbot)**

---

## 💡 What It Does

- Answers questions about **HR policies** and **Payroll** based on your Google Sheet data
- Reads live from Google Sheets — no re-uploading needed when data changes
- Works for any number of users — just share the link
- No API key, no backend, no cost — **100% free**
- If an answer is not found, it directs users to **Solutions Services**

---

## 📊 Data Source

The chatbot reads from this Google Sheet:

**Sheet:** [Solutions Services Knowledge Base](https://docs.google.com/spreadsheets/d/1zaePGt75NGCiP4-wcUz3_i2P3om1Xrmz0SC1a2EyjyM)

It has two tabs:

| Tab | Requirement Column | Resolution Column |
|---|---|---|
| **HR** | Module + Item | Recommendation |
| **Payroll** | Item | Recommendation |

---

## ✏️ How to Update the Knowledge Base

1. Open the **Google Sheet** linked above
2. Go to the **HR** or **Payroll** tab
3. Add, edit, or delete rows as needed
4. Save — that's it!
5. Click **🔄 Refresh** in the chatbot to load the latest data

> No need to touch GitHub or the HTML file when updating data.

---

## 🛠️ How to Update the Chatbot Itself

If you need to change the chatbot design, suggestion chips, or settings:

1. Edit `index.html` on your computer
2. Go to your **GitHub repository**
3. Click on `index.html` → click the **pencil ✏️ edit icon** → paste the new content
4. Click **Commit changes**
5. Wait **1–2 minutes** then do a **hard refresh** (Ctrl+Shift+R) on the chatbot link

---

## 🔧 Files in This Repository

| File | Purpose |
|---|---|
| `index.html` | The chatbot — this is the entire app in one file |
| `README.md` | This documentation file |

---

## ❓ Frequently Asked Questions

**Q: Do users need to log in?**
A: No. Anyone with the link can open and use the chatbot immediately.

**Q: Is there a limit on how many people can use it?**
A: No. GitHub Pages has no user limits for a simple HTML file.

**Q: What if the chatbot can't find an answer?**
A: It will say *"Hmm, I couldn't find that one! For more help, please contact Solutions Services directly."*

**Q: How do I make the chatbot find new entries I added to the sheet?**
A: Click the **🔄 Refresh** button in the chatbot header.

**Q: The chatbot is showing old data even after I updated the sheet.**
A: Click **🔄 Refresh** in the chatbot. If still old, do a hard refresh: **Ctrl+Shift+R** (Windows) or **Cmd+Shift+R** (Mac).

---

## 📬 Support

For questions or issues with the chatbot, contact **Solutions Services**.# solutionsbot
