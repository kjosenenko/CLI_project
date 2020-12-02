class Trophy

    attr_accessor :name, :awarded_to, :description

    @@all = []

    def initialize(data)

        self.name = data["name"]
        self.awarded_to = data["briefDescription"]
        self.description = wordy(data["description"])
        @@all << self

    end

    def self.all
        @@all
    end

    def wordy(s)
        s.split(/\<.*?\>/)
            .map(&:strip)
            .reject(&:empty?)
            .join(' ')
            .gsub(/\s,/,',')
    end

end