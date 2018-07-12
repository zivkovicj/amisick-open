
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


# First IP, First Day, Gmail

this_sending_ip = DomainInfo.all[0].sending_ip
  
100000.times do |n|
  MWebhook.create(:event => "sent", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "gmail",
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "sent", :ts => "string", :origin_id => 5, :list_id => 6 )
end

90000.times do |n|
  MWebhook.create(:event => "delivered", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "gmail", 
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "delivered", :ts => "string", :origin_id => 5, :list_id => 6 )
end

5000.times do |n|
  MWebhook.create(:event => "hard_bounce", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "gmail", 
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "hard_bounce", :ts => "string", :origin_id => 5, :list_id => 6 )
end

5000.times do |n|
  MWebhook.create(:event => "soft_bounce", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "gmail", 
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "soft_bounce", :ts => "string", :origin_id => 5, :list_id => 6 )
end

5500.times do |n|
  MWebhook.create(:event => "opened", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "gmail", 
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "opened", :ts => "string", :origin_id => 5, :list_id => 6 )
end

100.times do |n|
  MWebhook.create(:event => "opened", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "gmail", 
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "opened", :ts => "string", :origin_id => 5, :list_id => 6 )
end

10.times do |n|
  MWebhook.create(:event => "opened", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "gmail", 
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "opened", :ts => "string", :origin_id => 5, :list_id => 6 )
end

2000.times do |n|
  MWebhook.create(:event => "click", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "gmail", 
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "click", :ts => "string", :origin_id => 5, :list_id => 6 )
end

300.times do |n|
  MWebhook.create(:event => "click", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "gmail", 
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "click", :ts => "string", :origin_id => 5, :list_id => 6 )
end

20.times do |n|
  MWebhook.create(:event => "click", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "gmail", 
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "click", :ts => "string", :origin_id => 5, :list_id => 6 )
end




# First IP, First Day, Hotmail
10000.times do |n|
  MWebhook.create(:event => "sent", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "hotmail",
    :email => "user_#{n}@hotmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "sent", :ts => "string", :origin_id => 5, :list_id => 6 )
end

7000.times do |n|
  MWebhook.create(:event => "delivered", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "hotmail",
    :email => "user_#{n}@hotmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "delivered", :ts => "string", :origin_id => 5, :list_id => 6 )
end

5500.times do |n|
  MWebhook.create(:event => "opened", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "hotmail", 
    :email => "user_#{n}@hotmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "opened", :ts => "string", :origin_id => 5, :list_id => 6 )
end

1500.times do |n|
  MWebhook.create(:event => "click", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "hotmail", 
    :email => "user_#{n}@hotmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "click", :ts => "string", :origin_id => 5, :list_id => 6 )
end




# First IP, First Day, Yahoo
7000.times do |n|
  MWebhook.create(:event => "sent", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "yahoo",
    :email => "user_#{n}@yahoo.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "sent", :ts => "string", :origin_id => 5, :list_id => 6 )
end

800.times do |n|
  MWebhook.create(:event => "delivered", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "yahoo",
    :email => "user_#{n}@yahoo.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "delivered", :ts => "string", :origin_id => 5, :list_id => 6 )
end

460.times do |n|
  MWebhook.create(:event => "opened", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "yahoo", 
    :email => "user_#{n}@yahoo.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "opened", :ts => "string", :origin_id => 5, :list_id => 6 )
end

13.times do |n|
  MWebhook.create(:event => "opened", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "yahoo", 
    :email => "user_#{n}@yahoo.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "opened", :ts => "string", :origin_id => 5, :list_id => 6 )
end

78.times do |n|
  MWebhook.create(:event => "click", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "yahoo", 
    :email => "user_#{n}@yahoo.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "click", :ts => "string", :origin_id => 5, :list_id => 6 )
end




# First IP, First Day, Other
  #Blast.com
9000.times do |n|
  MWebhook.create(:event => "sent", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "blast",
    :email => "user_#{n}@blast.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "sent", :ts => "string", :origin_id => 5, :list_id => 6 )
end

8000.times do |n|
  MWebhook.create(:event => "delivered", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "blast",
    :email => "user_#{n}@blast.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "delivered", :ts => "string", :origin_id => 5, :list_id => 6 )
end

1000.times do |n|
  MWebhook.create(:event => "hard_bounce", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "blast",
    :email => "user_#{n}@blast.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "delivered", :ts => "string", :origin_id => 5, :list_id => 6 )
end

1100.times do |n|
  MWebhook.create(:event => "opened", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "blast", 
    :email => "user_#{n}@blast.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "opened", :ts => "string", :origin_id => 5, :list_id => 6 )
end

70.times do |n|
  MWebhook.create(:event => "opened", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "blast", 
    :email => "user_#{n}@blast.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "opened", :ts => "string", :origin_id => 5, :list_id => 6 )
end

85.times do |n|
  MWebhook.create(:event => "click", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "blast", 
    :email => "user_#{n}@blast.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "click", :ts => "string", :origin_id => 5, :list_id => 6 )
end

80.times do |n|
  MWebhook.create(:event => "click", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "blast", 
    :email => "user_#{n}@blast.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "click", :ts => "string", :origin_id => 5, :list_id => 6 )
end

  #Wacky.com
90.times do |n|
  MWebhook.create(:event => "sent", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "wacky",
    :email => "user_#{n}@wacky.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "sent", :ts => "string", :origin_id => 5, :list_id => 6 )
end

80.times do |n|
  MWebhook.create(:event => "delivered", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "wacky",
    :email => "user_#{n}@wacky.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "delivered", :ts => "string", :origin_id => 5, :list_id => 6 )
end

10.times do |n|
  MWebhook.create(:event => "hard_bounce", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "wacky",
    :email => "user_#{n}@wacky.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "delivered", :ts => "string", :origin_id => 5, :list_id => 6 )
end

11.times do |n|
  MWebhook.create(:event => "opened", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "wacky", 
    :email => "user_#{n}@wacky.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "opened", :ts => "string", :origin_id => 5, :list_id => 6 )
end

7.times do |n|
  MWebhook.create(:event => "opened", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "wacky", 
    :email => "user_#{n}@wacky.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "opened", :ts => "string", :origin_id => 5, :list_id => 6 )
end

8.times do |n|
  MWebhook.create(:event => "click", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "wacky", 
    :email => "user_#{n}@wacky.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "click", :ts => "string", :origin_id => 5, :list_id => 6 )
end

7.times do |n|
  MWebhook.create(:event => "click", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "wacky", 
    :email => "user_#{n}@wacky.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "click", :ts => "string", :origin_id => 5, :list_id => 6 )
end





# First IP, Second Day
11000.times do |n|
  MWebhook.create(:event => "sent", :date_sent => (base_date - 7.days), :sending_ip => this_sending_ip, :esp => "gmail",
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "sent", :ts => "string", :origin_id => 5, :list_id => 6 )
end

8000.times do |n|
  MWebhook.create(:event => "delivered", :date_sent => (base_date - 7.days), :sending_ip => this_sending_ip, :esp => "gmail",
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "delivered", :ts => "string", :origin_id => 5, :list_id => 6 )
end

3000.times do |n|
  MWebhook.create(:event => "soft_bounce", :date_sent => (base_date - 7.days), :sending_ip => this_sending_ip, :esp => "gmail",
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "soft_bounce", :ts => "string", :origin_id => 5, :list_id => 6 )
end

725.times do |n|
  MWebhook.create(:event => "opened", :date_sent => (base_date - 7.days), :sending_ip => this_sending_ip, :esp => "gmail", 
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "sent", :ts => "string", :origin_id => 5, :list_id => 6 )
end

6.times do |n|
  MWebhook.create(:event => "opened", :date_sent => (base_date - 7.days), :sending_ip => this_sending_ip, :esp => "gmail", 
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "sent", :ts => "string", :origin_id => 5, :list_id => 6 )
end

225.times do |n|
  MWebhook.create(:event => "click", :date_sent => (base_date - 7.days), :sending_ip => this_sending_ip, :esp => "gmail", 
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "sent", :ts => "string", :origin_id => 5, :list_id => 6 )
end





# First IP, Day too far back.
1400.times do |n|
  MWebhook.create(:event => "sent", :date_sent => (base_date - 15.days), :sending_ip => this_sending_ip, :esp => "gmail",
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "sent", :ts => "string", :origin_id => 5, :list_id => 6 )
end

1300.times do |n|
  MWebhook.create(:event => "delivered", :date_sent => (base_date - 15.days), :sending_ip => this_sending_ip, :esp => "gmail",
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "delivered", :ts => "string", :origin_id => 5, :list_id => 6 )
end

80.times do |n|
  MWebhook.create(:event => "opened", :date_sent => (base_date - 15.days), :sending_ip => this_sending_ip, :esp => "gmail", 
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "opened", :ts => "string", :origin_id => 5, :list_id => 6 )
end

12.times do |n|
  MWebhook.create(:event => "click", :date_sent => (base_date - 15.days), :sending_ip => this_sending_ip, :esp => "gmail", 
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "click", :ts => "string", :origin_id => 5, :list_id => 6 )
end



# First IP, Recent.
140.times do |n|
  MWebhook.create(:event => "sent", :date_sent => base_date, :sending_ip => this_sending_ip, :esp => "gmail",
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "sent", :ts => "string", :origin_id => 5, :list_id => 6 )
end

135.times do |n|
  MWebhook.create(:event => "delivered", :date_sent => base_date, :sending_ip => this_sending_ip, :esp => "gmail",
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "delivered", :ts => "string", :origin_id => 5, :list_id => 6 )
end

5.times do |n|
  MWebhook.create(:event => "hard_bounce", :date_sent => base_date, :sending_ip => this_sending_ip, :esp => "gmail",
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "delivered", :ts => "string", :origin_id => 5, :list_id => 6 )
end

10.times do |n|
  MWebhook.create(:event => "opened", :date_sent => base_date, :sending_ip => this_sending_ip, :esp => "gmail", 
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "sent", :ts => "string", :origin_id => 5, :list_id => 6 )
end

2.times do |n|
  MWebhook.create(:event => "click", :date_sent => base_date, :sending_ip => this_sending_ip, :esp => "gmail", 
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "sent", :ts => "string", :origin_id => 5, :list_id => 6 )
end



# Second IP, First Day
this_sending_ip = DomainInfo.all[1].sending_ip

12000.times do |n|
  MWebhook.create(:event => "sent", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "gmail",
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "sent", :ts => "string", :origin_id => 5, :list_id => 6 )
end

3000.times do |n|
  MWebhook.create(:event => "delivered", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "gmail",
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "sent", :ts => "string", :origin_id => 5, :list_id => 6 )
end

2000.times do |n|
  MWebhook.create(:event => "opened", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "gmail", 
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "sent", :ts => "string", :origin_id => 5, :list_id => 6 )
end

1900.times do |n|
  MWebhook.create(:event => "opened", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "gmail", 
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "sent", :ts => "string", :origin_id => 5, :list_id => 6 )
end

1000.times do |n|
  MWebhook.create(:event => "click", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "gmail", 
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "sent", :ts => "string", :origin_id => 5, :list_id => 6 )
end

800.times do |n|
  MWebhook.create(:event => "click", :date_sent => (base_date - 8.days), :sending_ip => this_sending_ip, :esp => "gmail", 
    :email => "user_#{n}@gmail.com", :hook_id => 5, :camp_id => 6, :campaign_name => "awesome_campaign", :date_event => (base_date - 4.days), :ts_event => 5, :ts_sent => 6, :tag => "tag", :url =>  "www.tacobell.com", :user => "crova", :reason => "sent", :ts => "string", :origin_id => 5, :list_id => 6 )
end



m_webhook_special_list = []

m_webhook_special_list.each do |event, email, hook_id, camp_id, campaign_name, date_sent, date_event, ts_event, ts_sent, tag, url, sending_ip, esp, user, reason, ts, origin_id, list_id|
  MWebhook.create(event: event, email: email, hook_id: hook_id, camp_id: camp_id, campaign_name: campaign_name, date_sent: date_sent, date_event: date_event, ts_event: ts_event, ts_sent: ts_sent, tag: tag, url: url, sending_ip: sending_ip, esp: esp, user: user, reason: reason, ts: ts, origin_id: origin_id, list_id: list_id)
end
