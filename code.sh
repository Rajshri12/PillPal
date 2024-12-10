#!/bin/bash

# === CONFIG ===
BRANCH="main"
START_DATE="2024-12-10"
END_DATE="2025-03-15"
MAX_COMMITS=90

# Git identity
git config user.name "Rajshri12"
git config user.email "rajshreeguru0@gmail.com"

# Commit message pool
messages=(
  "Initial folder structure"
  "Add WhatsApp reminder script"
  "Set up GenAI query function"
  "Create DB model for medicine logs"
  "Implement daily reminder system"
  "Add intake logging logic"
  "Send report as daily message"
  "Add GenAI-based health insight generator"
  "Fix timezone issues in reminders"
  "Add symptom logging CLI"
  "Store user replies in DB"
  "Add health report template"
  "Add follow-up reminder logic"
  "Improve message formatting"
  "Fix bug in scheduler"
  "Add test cases for reminder module"
  "Auto-generate health summary"
  "Update README with features"
  "Fix .env loading"
  "Improve GenAI response prompt"
  "Set up cron scheduler"
  "Handle missed medicines alert"
  "Style WhatsApp message layout"
  "Add WhatsApp confirmation button handler"
  "Generate chart from intake logs"
  "Improve AI response for symptom queries"
  "Cleanup old logs automatically"
  "Add user health score generation"
  "Final tweaks before demo"
  "Polish UX for reminders"
  "Update daily symptom schema"
  "Refactor report formatting"
  "Add log exporter tool"
  "Write AI prompt library"
  "Split WhatsApp logic module"
  "Optimize DB queries"
  "Document GenAI features"
  "Add timezone config support"
  "Secure API token handling"
  "Add feedback response handler"
  "Write README section: features"
  "Write README section: setup"
  "Write README section: roadmap"
  "Fix reminder overlap bug"
  "Add PDF report generation"
  "Refactor CLI args for patients"
  "Schedule doctor reminders"
  "Bugfix: date conversion issue"
  "Refactor config loader"
  "Improve NLP prompt precision"
  "Reduce duplicate messages"
  "Compress health logs"
)

# Create file structure
mkdir -p db templates logs
touch app.py scheduler.py genai_helper.py whatsapp_bot.py .env requirements.txt README.md logs/chat_log.txt

# Helper: generate random time
generate_random_time() {
    hour=$((RANDOM % 10 + 9))
    min=$((RANDOM % 60))
    printf "%02d:%02d:00" $hour $min
}

# Commit loop
current_date="$START_DATE"
commit_index=0

while [[ "$current_date" < "$END_DATE" && $commit_index -lt $MAX_COMMITS ]]; do
    # 70% chance to commit today
    if (( RANDOM % 100 < 70 )); then
        # Random message
        msg="${messages[$((RANDOM % ${#messages[@]}))]}"

        # Random time
        time=$(generate_random_time)
        full_datetime="${current_date}T$time"

        # Simulate work
        echo "$msg at $full_datetime" >> logs/chat_log.txt

        # Git commit
        git add .
        GIT_AUTHOR_DATE="$full_datetime" GIT_COMMITTER_DATE="$full_datetime" \
        git commit -m "$msg"

        echo "✅ Commit #$((commit_index+1)) on $full_datetime — $msg"

        ((commit_index++))
    fi

    # Move to next day
    current_date=$(date -I -d "$current_date + 1 day")
done

echo "🎯 Total commits made: $commit_index"
echo "📝 You can now run: git log --pretty=format:'%ad - %s' --date=iso"