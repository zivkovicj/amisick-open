
base_date = Date.today



sender_list = [
  ["A Boa do Dia !", "qualaboa.net", "aboadodia@qualaboa.net", 4, 1, 
    ["{\"enabled\"=>1, \"smtp_domain\"=>\"newsletter2.qualaboa.net\", \"ref_id\"=>4, \"weight\"=>\"22\", \"img_rd\"=>\"img.newsletter2.qualaboa.net\", \"ip\"=>\"153.92.251.118\"}",
   "{\"enabled\"=>1, \"smtp_domain\"=>\"news.qualaboa.net\", \"ref_id\"=>4, \"weight\"=>\"30\", \"img_rd\"=>\"img.news.qualaboa.net\", \"ip\"=>\"153.92.239.29\"}",
   "{\"enabled\"=>1, \"smtp_domain\"=>\"newsletter.qualaboa.net\", \"ref_id\"=>4, \"weight\"=>\"25\", \"img_rd\"=>\"img.newsletter.qualaboa.net\", \"ip\"=>\"153.92.239.141\"}",
   "{\"enabled\"=>1, \"smtp_domain\"=>\"newsletter4.qualaboa.net\", \"ref_id\"=>4, \"weight\"=>\"23\", \"img_rd\"=>\"img.newsletter4.qualaboa.net\", \"ip\"=>\"213.32.165.168\"}"]],
   
   ["Brasilia!", "qualaboa.net", "aboadodia@qualaboa.net", 4, 1, 
    ["{\"enabled\"=>1, \"smtp_domain\"=>\"newsletter2.qualaboa.net\", \"ref_id\"=>4, \"weight\"=>\"22\", \"img_rd\"=>\"img.newsletter2.qualaboa.net\", \"ip\"=>\"153.92.251.118\"}",
   "{\"enabled\"=>1, \"smtp_domain\"=>\"news.qualaboa.net\", \"ref_id\"=>4, \"weight\"=>\"30\", \"img_rd\"=>\"img.news.qualaboa.net\", \"ip\"=>\"153.92.239.29\"}",
   "{\"enabled\"=>1, \"smtp_domain\"=>\"newsletter.qualaboa.net\", \"ref_id\"=>4, \"weight\"=>\"25\", \"img_rd\"=>\"img.newsletter.qualaboa.net\", \"ip\"=>\"153.92.239.141\"}",
   "{\"enabled\"=>1, \"smtp_domain\"=>\"newsletter4.qualaboa.net\", \"ref_id\"=>4, \"weight\"=>\"23\", \"img_rd\"=>\"img.newsletter4.qualaboa.net\", \"ip\"=>\"213.32.165.168\"}"]]
]

sender_list.each do |from_name, sign_domain, from_email, sib_id, active, domains_data|
  Sender.create(from_name: from_name, sign_domain: sign_domain, sib_id: sib_id, active: active, domains_data: domains_data)
end

domain_info_list = [
  [1, "newsletter2.qualaboa.net", 4, "img.newsletter2.qualaboa.net", 22, "153.92.251.118", 1],
  [1, "newsletter2.qualaboa.net", 4, "img.newsletter2.qualaboa.net", 22, "213.32.165.239", 1],
  [1, "newsletter2.qualaboa.net", 4, "img.newsletter2.qualaboa.net", 22, "77.32.131.45", 2]
]

domain_info_list.each do |enabled, smtp_domain, ref_id, img_rd, weight, sending_ip, sender_id|
  DomainInfo.create(enabled: enabled, smtp_domain: smtp_domain, ref_id: ref_id, img_rd: img_rd, weight: weight, sending_ip: sending_ip, sender_id: sender_id)
end

m_webhook_list = [
  # First Day
  # First IP
  [ "delivered", "aaaa@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaab@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaac@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "opened"   , "aaac@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 5.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "opened"   , "string", 5, 5 ],
  [ "click"    , "aaac@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 5.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "click"   , "string", 5, 5 ],
  [ "click"    , "aaac@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 5.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "click"   , "string", 5, 5 ],
  [ "delivered", "aaad@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaae@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaf@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaag@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaah@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaai@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaj@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaak@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaal@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaam@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaan@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaao@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaap@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaq@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaar@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaas@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaat@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaau@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaav@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaw@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaad@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaae@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaf@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaag@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaah@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaai@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaj@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaak@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaal@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaam@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaan@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaao@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaap@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaq@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaar@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaas@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaat@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaau@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaav@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaw@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaad@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaae@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaf@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaag@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaah@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaai@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaj@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaak@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaal@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaam@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaan@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaao@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaap@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaq@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaar@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaas@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaat@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaau@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaav@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaw@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  
  
  # Second Day
  # First IP
  [ "delivered", "aaaa@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 7.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaab@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 7.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaac@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "opened"   , "aaac@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 5.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "opened"   , "string", 5, 5 ],
  [ "delivered", "aaad@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaae@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 7.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaf@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 7.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaag@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaah@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaai@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 7.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaj@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 7.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaak@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaal@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaam@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 7.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaan@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 7.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaao@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaap@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaq@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 7.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaar@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaas@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaat@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 7.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaau@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 7.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaav@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaw@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaad@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaae@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 7.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaf@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 7.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaag@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaah@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaai@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 7.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaj@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 7.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaak@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaal@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaam@gmail.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 7.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  
  # Second Day
  # First IP
  # Other ESPs
  [ "delivered", "aaad@hotmail.com", 5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "hotmail", "crova", "delivered", "string", 5, 5 ],
  [ "opened"   , "aaad@hotmail.com", 5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 3.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "hotmail", "crova", "opened"   , "string", 5, 5 ],
  [ "delivered", "aaae@hotmail.com", 5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "hotmail", "crova", "delivered", "string", 5, 5 ],
  [ "opened"   , "aaae@hotmail.com", 5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 3.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "hotmail", "crova", "opened"   , "string", 5, 5 ],
  [ "delivered", "aaay@hotmail.com", 5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "hotmail", "crova", "delivered", "string", 5, 5 ],

  [ "delivered", "aaab@yahoo.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "yahoo",   "crova", "delivered", "string", 5, 5 ],
  [ "opened"   , "aaab@yahoo.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 3.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "yahoo",   "crova", "opened"   , "string", 5, 5 ],
  [ "delivered", "aaay@yahoo.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "yahoo",   "crova", "delivered", "string", 5, 5 ],

  [ "delivered", "aaae@blast.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "blast",   "crova", "delivered", "string", 5, 5 ],
  [ "opened"   , "aaae@blast.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 3.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "blast",   "crova", "opened"   , "string", 5, 5 ],
  [ "delivered", "aaaf@blast.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "blast",   "crova", "delivered", "string", 5, 5 ],
  [ "opened",    "aaaf@blast.com",   5, 6, "awesome_campaign", (base_date - 7.days), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "blast",   "crova", "delivered", "string", 5, 5 ],
  
  # Third Day
  # First IP
  [ "delivered", "aaaa@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaab@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaac@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "opened"   , "aaac@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 5.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "opened"   , "string", 5, 5 ],
  [ "delivered", "aaad@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaae@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaf@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaag@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "opened"   , "aaag@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 5.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "opened"   , "string", 5, 5 ],
  [ "opened"   , "aaag@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 5.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "opened"   , "string", 5, 5 ],
  [ "delivered", "aaah@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaai@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaj@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaak@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaal@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaam@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaan@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaao@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaap@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaq@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaar@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaas@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaat@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaau@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaav@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaw@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaa@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaab@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaac@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaad@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaae@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaf@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaag@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaah@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaai@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaj@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaak@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaal@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaam@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaan@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaao@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaap@gmail.com",   5, 6, "awesome_campaign", (base_date - 6.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  
  
  # Fourth Day
  # First IP
  [ "delivered", "aaaa@gmail.com",   5, 6, "awesome_campaign", (base_date - 5.days), (base_date - 5.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaab@gmail.com",   5, 6, "awesome_campaign", (base_date - 5.days), (base_date - 5.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaac@gmail.com",   5, 6, "awesome_campaign", (base_date - 5.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "opened"   , "aaac@gmail.com",   5, 6, "awesome_campaign", (base_date - 5.days), (base_date - 5.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "opened"   , "string", 5, 5 ],
  [ "delivered", "aaad@gmail.com",   5, 6, "awesome_campaign", (base_date - 5.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaae@gmail.com",   5, 6, "awesome_campaign", (base_date - 5.days), (base_date - 5.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaf@gmail.com",   5, 6, "awesome_campaign", (base_date - 5.days), (base_date - 5.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaag@gmail.com",   5, 6, "awesome_campaign", (base_date - 5.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaah@gmail.com",   5, 6, "awesome_campaign", (base_date - 5.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaai@gmail.com",   5, 6, "awesome_campaign", (base_date - 5.days), (base_date - 5.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaj@gmail.com",   5, 6, "awesome_campaign", (base_date - 5.days), (base_date - 5.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaak@gmail.com",   5, 6, "awesome_campaign", (base_date - 5.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaal@gmail.com",   5, 6, "awesome_campaign", (base_date - 5.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaam@gmail.com",   5, 6, "awesome_campaign", (base_date - 5.days), (base_date - 5.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaan@gmail.com",   5, 6, "awesome_campaign", (base_date - 5.days), (base_date - 5.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  
  
  # Fifth Day
  # First IP
  [ "delivered", "aaaa@gmail.com",   5, 6, "awesome_campaign", (base_date - 4.days), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaab@gmail.com",   5, 6, "awesome_campaign", (base_date - 4.days), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaac@gmail.com",   5, 6, "awesome_campaign", (base_date - 4.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "opened"   , "aaac@gmail.com",   5, 6, "awesome_campaign", (base_date - 4.days), (base_date - 5.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "opened"   , "string", 5, 5 ],
  [ "delivered", "aaad@gmail.com",   5, 6, "awesome_campaign", (base_date - 4.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaae@gmail.com",   5, 6, "awesome_campaign", (base_date - 4.days), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaf@gmail.com",   5, 6, "awesome_campaign", (base_date - 4.days), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaag@gmail.com",   5, 6, "awesome_campaign", (base_date - 4.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaah@gmail.com",   5, 6, "awesome_campaign", (base_date - 4.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaai@gmail.com",   5, 6, "awesome_campaign", (base_date - 4.days), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaj@gmail.com",   5, 6, "awesome_campaign", (base_date - 4.days), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaak@gmail.com",   5, 6, "awesome_campaign", (base_date - 4.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaal@gmail.com",   5, 6, "awesome_campaign", (base_date - 4.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
 
  
  # Sixth Day
  # First IP
  [ "delivered", "aaaa@gmail.com",   5, 6, "awesome_campaign", (base_date - 3.days), (base_date - 3.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaab@gmail.com",   5, 6, "awesome_campaign", (base_date - 3.days), (base_date - 3.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaac@gmail.com",   5, 6, "awesome_campaign", (base_date - 3.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "opened"   , "aaac@gmail.com",   5, 6, "awesome_campaign", (base_date - 3.days), (base_date - 5.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "opened"   , "string", 5, 5 ],
  [ "delivered", "aaad@gmail.com",   5, 6, "awesome_campaign", (base_date - 3.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaae@gmail.com",   5, 6, "awesome_campaign", (base_date - 3.days), (base_date - 3.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaf@gmail.com",   5, 6, "awesome_campaign", (base_date - 3.days), (base_date - 3.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaag@gmail.com",   5, 6, "awesome_campaign", (base_date - 3.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaah@gmail.com",   5, 6, "awesome_campaign", (base_date - 3.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaai@gmail.com",   5, 6, "awesome_campaign", (base_date - 3.days), (base_date - 3.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
 
  
  # 7th Day
  # First IP
  [ "opened"   , "aaac@gmail.com",   5, 6, "awesome_campaign", (base_date - 2.days), (base_date - 5.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "opened"   , "string", 5, 5 ],
  [ "opened"   , "aaac@gmail.com",   5, 6, "awesome_campaign", (base_date - 2.days), (base_date - 5.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "opened"   , "string", 5, 5 ],
  [ "delivered", "aaaa@gmail.com",   5, 6, "awesome_campaign", (base_date - 2.days), (base_date - 2.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaab@gmail.com",   5, 6, "awesome_campaign", (base_date - 2.days), (base_date - 2.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaac@gmail.com",   5, 6, "awesome_campaign", (base_date - 2.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaad@gmail.com",   5, 6, "awesome_campaign", (base_date - 2.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaae@gmail.com",   5, 6, "awesome_campaign", (base_date - 2.days), (base_date - 2.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaf@gmail.com",   5, 6, "awesome_campaign", (base_date - 2.days), (base_date - 2.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaag@gmail.com",   5, 6, "awesome_campaign", (base_date - 2.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaa@gmail.com",   5, 6, "awesome_campaign", (base_date - 2.days), (base_date - 2.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaab@gmail.com",   5, 6, "awesome_campaign", (base_date - 2.days), (base_date - 2.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaac@gmail.com",   5, 6, "awesome_campaign", (base_date - 2.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaad@gmail.com",   5, 6, "awesome_campaign", (base_date - 2.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaae@gmail.com",   5, 6, "awesome_campaign", (base_date - 2.days), (base_date - 2.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaf@gmail.com",   5, 6, "awesome_campaign", (base_date - 2.days), (base_date - 2.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaag@gmail.com",   5, 6, "awesome_campaign", (base_date - 2.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaag@gmail.com",   5, 6, "awesome_campaign", (base_date - 2.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
 
  
  # 8th Day
  # First IP
  [ "delivered", "aaaa@gmail.com",   5, 6, "awesome_campaign", (base_date - 1.day), (base_date - 1.day), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaab@gmail.com",   5, 6, "awesome_campaign", (base_date - 1.day), (base_date - 1.day), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaac@gmail.com",   5, 6, "awesome_campaign", (base_date - 1.day), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "opened"   , "aaac@gmail.com",   5, 6, "awesome_campaign", (base_date - 1.day), (base_date - 5.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "opened"   , "string", 5, 5 ],
  [ "delivered", "aaad@gmail.com",   5, 6, "awesome_campaign", (base_date - 1.day), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaae@gmail.com",   5, 6, "awesome_campaign", (base_date - 1.day), (base_date - 1.day), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaf@gmail.com",   5, 6, "awesome_campaign", (base_date - 1.day), (base_date - 1.day), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "gmail",   "crova", "delivered", "string", 5, 5 ],
 
  
  
  [ "delivered", "aaaa@hotmail.com", 5, 6, "awesome_campaign", (base_date - 1.day), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "hotmail", "crova", "delivered", "string", 5, 5 ],
  [ "opened"   , "aaaa@hotmail.com", 5, 6, "awesome_campaign", (base_date - 1.day), (base_date - 3.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "hotmail", "crova", "opened"   , "string", 5, 5 ],
  [ "delivered", "aaab@hotmail.com", 5, 6, "awesome_campaign", (base_date - 1.day), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "hotmail", "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaz@hotmail.com", 5, 6, "awesome_campaign", (base_date - 1.day), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "hotmail", "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaab@hotmail.com", 5, 6, "awesome_campaign", (base_date - 1.day), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "hotmail", "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaz@hotmail.com", 5, 6, "awesome_campaign", (base_date - 1.day), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "hotmail", "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaab@hotmail.com", 5, 6, "awesome_campaign", (base_date - 1.day), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "hotmail", "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaz@hotmail.com", 5, 6, "awesome_campaign", (base_date - 1.day), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "hotmail", "crova", "delivered", "string", 5, 5 ],


  [ "delivered", "aaaa@yahoo.com",   5, 6, "awesome_campaign", (base_date - 1.day), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "yahoo",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaaa@yahoo.com",   5, 6, "awesome_campaign", (base_date - 1.day), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "yahoo",   "crova", "delivered", "string", 5, 5 ],

  [ "delivered", "aaaa@blast.com",   5, 6, "awesome_campaign", (base_date - 1.day), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "blast",   "crova", "delivered", "string", 5, 5 ],
  [ "opened"   , "aaaa@blast.com",   5, 6, "awesome_campaign", (base_date - 1.day), (base_date - 3.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "blast",   "crova", "opened"   , "string", 5, 5 ],
  [ "delivered", "aaaa@blast.com",   5, 6, "awesome_campaign", (base_date - 1.day), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "blast",   "crova", "delivered", "string", 5, 5 ],
  [ "opened",    "aaaa@blast.com",   5, 6, "awesome_campaign", (base_date - 1.day), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.255", "blast",   "crova", "delivered", "string", 5, 5 ],

  # 8th Day
  # SECOND IP
  [ "delivered", "aaba@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.0", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aabb@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.0", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aabc@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.0", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aabd@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.0", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aabe@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 8.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.0", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aabf@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.0", "gmail",   "crova", "delivered", "string", 5, 5 ],
  [ "opened"   , "aabc@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 5.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.0", "gmail",   "crova", "opened"   , "string", 5, 5 ],
  [ "delivered", "aabz@gmail.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 6.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.0", "gmail",   "crova", "delivered", "string", 5, 5 ],
  
  [ "delivered", "aaba@hotmail.com", 5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.0", "hotmail", "crova", "delivered", "string", 5, 5 ],
  [ "opened"   , "aaba@hotmail.com", 5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 3.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.0", "hotmail", "crova", "opened"   , "string", 5, 5 ],
  [ "delivered", "aabb@hotmail.com", 5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.0", "hotmail", "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aabz@hotmail.com", 5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.0", "hotmail", "crova", "delivered", "string", 5, 5 ],

  [ "delivered", "aaba@yahoo.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.0", "yahoo",   "crova", "delivered", "string", 5, 5 ],
  [ "delivered", "aaba@yahoo.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.0", "yahoo",   "crova", "delivered", "string", 5, 5 ],

  [ "delivered", "aaba@blast.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.0", "blast",   "crova", "delivered", "string", 5, 5 ],
  [ "opened"   , "aaba@blast.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 3.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.0", "blast",   "crova", "opened"   , "string", 5, 5 ],
  [ "delivered", "aaba@blast.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.0", "blast",   "crova", "delivered", "string", 5, 5 ],
  [ "opened",    "aaba@blast.com",   5, 6, "awesome_campaign", (base_date - 8.days), (base_date - 4.days), 5, 5, "tag", "www.tacobell.com", "192.0.2.0", "blast",   "crova", "delivered", "string", 5, 5 ]

]

m_webhook_list.each do |event, email, hook_id, camp_id, campaign_name, date_sent, date_event, ts_event, ts_sent, tag, url, sending_ip, esp, user, reason, ts, origin_id, list_id|
  MWebhook.create(event: event, email: email, hook_id: hook_id, camp_id: camp_id, campaign_name: campaign_name, date_sent: date_sent, date_event: date_event, ts_event: ts_event, ts_sent: ts_sent, tag: tag, url: url, sending_ip: sending_ip, esp: esp, user: user, reason: reason, ts: ts, origin_id: origin_id, list_id: list_id)
end
