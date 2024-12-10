#!/bin/bash

# === CONFIG ===
BRANCH="main"
START_DATE="2024-12-10"
END_DATE="2025-03-15"
TOTAL_COMMITS=30

# Set your Git identity
git config user.name "Rajshri12"
git config user.email "rajshreeguru0@gmail.com"

# Generate commit messages relevant to PillPal
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
)

# Helper: generate random time (between 9:00 and 19:00)
generate_random_time() {
    hour=$((RANDOM % 10 + 9))
    min=$((RANDOM % 60))
    printf "%02d:%02d:00" $hour $min
}

# Create dummy files if needed
mkdir -p db templates logs
touch app.py scheduler.py genai_helper.py whatsapp_bot.py .env requirements.txt README.md

# Loop over dates between start and end
current_date="$START_DATE"
commit_index=0

while [[ "$current_date" < "$END_DATE" && $commit_index -lt $TOTAL_COMMITS ]]; do
    # Randomly skip some days
    if (( RANDOM % 10 < 3 )); then
        current_date=$(date -I -d "$current_date + 1 day")
        continue
    fi

    # Modify a dummy file
    echo "${messages[$commit_index]}" >> logs/chat_log.txt

    # Random time for the day
    rand_time=$(generate_random_time)
    full_datetime="${current_date}T$rand_time"

    # Stage and commit
    git add .
    GIT_AUTHOR_DATE="$full_datetime" GIT_COMMITTER_DATE="$full_datetime" \
    git commit -m "${messages[$commit_index]}"

    echo "✅ Commit $((commit_index+1)) on $full_datetime: ${messages[$commit_index]}"

    # Move to next day
    current_date=$(date -I -d "$current_date + 1 day")
    ((commit_index++))
done

echo "🎯 All $commit_index commits created locally. You can now review with: git log --date=iso"
