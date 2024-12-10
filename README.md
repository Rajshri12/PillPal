
# 💊 PillPal: AI-Powered WhatsApp Medicine Reminder & Health Insight Bot

PillPal is an intelligent health companion that reminds patients to take their medicines, logs intake times, performs health assessments, and generates personalized insights — all delivered seamlessly via **WhatsApp**. Powered by **GenAI**, PillPal even answers user queries, generates health reports, and reminds users of upcoming **doctor follow-ups**.

---

## 🚀 Features

- 🕒 **Smart Medicine Reminders**: Sends scheduled medicine reminders via WhatsApp
- 🧾 **Medicine Intake Logs**: Tracks whether medicine was taken on time
- 🩺 **Daily Health Check-ins**: Collects user feedback on symptoms & wellness
- 📊 **Health Report Generator**: Summarizes daily activity into digestible insights
- 🤖 **GenAI Assistant**:
  - Interprets health logs
  - Answers questions like *"Why do I need to take this?"*
  - Suggests trends and concerns
- 📈 **Personalized Insights**: Reports if medicine is skipped often or symptoms persist
- 📅 **Doctor Follow-Up Reminders**: Notifies patients before scheduled consultations
- 🧠 **WhatsApp-First UI**: No app needed — everything happens in chat

---

## 🛠️ Tech Stack

| Tech/Tool       | Purpose                                      |
|------------------|----------------------------------------------|
| 🐍 Python         | Core backend scripting                        |
| 💬 WhatsApp API   | Two-way patient interaction & notifications  |
| 🧠 GenAI (OpenAI) | Health insight generation & chatbot replies  |
| 🗄️ MySQL / SQLite | Log user data and daily records              |
| 🧪 FastAPI        | Optional API for dashboard or admin panel    |
| 🔐 dotenv         | Secure environment variable handling         |
| 📦 Twilio / Meta | WhatsApp messaging platform                  |

---

## 📦 Installation

```bash
git clone https://github.com/YOUR_USERNAME/PillPal.git
cd PillPal
pip install -r requirements.txt
```

---

## ⚙️ Setup

1. Create `.env` file with your credentials:

```env
OPENAI_API_KEY=your_openai_key
TWILIO_ACCOUNT_SID=your_twilio_sid
TWILIO_AUTH_TOKEN=your_twilio_token
TWILIO_PHONE_NUMBER=whatsapp:+14155238886
RECEIVER_PHONE_NUMBER=whatsapp:+91XXXXXXXXXX
```

2. Add patient profiles, medicine schedules, and doctor follow-up dates
3. Run the main script:

```bash
python app.py
```

---

## 📊 Sample Interaction

```
🕒 Reminder: It's time to take your 5mg Ramipril.
Did you take it? (Yes / No)

✅ User: Yes

🧠 GenAI Insight:
"Great! Consistent intake of Ramipril helps maintain blood pressure stability. Keep it up!"

📅 Doctor Follow-Up Reminder:
"📌 You have a follow-up appointment with Dr. Mehta on 2024-03-29 at 11:30 AM. Please confirm availability."

📈 PillPal Daily Report:
- Medicines Taken: 2/2
- Symptoms Reported: Mild headache
- Recommendation: Hydrate more + continue tracking
```

---

## 🧠 GenAI Capabilities

- 🔍 Explains medicine purpose and side effects
- 📘 Educates users on chronic conditions
- 🧠 Suggests when to consult a doctor (based on patterns)
- 🤖 Answers custom health-related queries (non-diagnostic)

---

## 📅 Future Enhancements

- 📅 Multi-patient & family mode
- 🌐 Admin dashboard to view logs & analytics
- ⏱️ Smart scheduler based on patient timezone
- 🗣️ Multilingual support for wider accessibility
- 🔗 Doctor API integration for escalations
- 📤 Email / PDF version of health reports

---

## 🤝 Contributing

Contributions are welcome! Open issues, suggest features, or fork and build on it. Let's make healthcare more accessible via AI.

---

## 👤 Author

**Rajshree Guru**  
📧 [rajshreeguru0@gmail.com](mailto:rajshreeguru0@gmail.com)  
💻 [GitHub](https://github.com/Rajshri12)

---

## ⭐ Show Some Love

If you like the project, don’t forget to give it a ⭐ on GitHub and share it with your peers in health tech!  
Let’s make AI health assistants more real and accessible 💙