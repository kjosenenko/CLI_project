class Api

    def self.load_data
        response = RestClient.get("https://records.nhl.com/site/api/trophy")
        data = JSON.parse(response.body)
        data["data"].each do |trophy_data|
            Trophy.new(trophy_data)
        end
    end

end