json.extract! data_file,
  :id,
  :team_id,
  # 🚅 super scaffolding will insert new fields above this line.
  :created_at,
  :updated_at

json.document url_for(data_file.document) if data_file.document.attached?
# 🚅 super scaffolding will insert file-related logic above this line.
