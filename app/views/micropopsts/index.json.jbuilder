json.array!(@micropopsts) do |micropopst|
  json.extract! micropopst, :id, :content, :user_id
  json.url micropopst_url(micropopst, format: :json)
end
