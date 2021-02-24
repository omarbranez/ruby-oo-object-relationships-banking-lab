class BankAccount
    attr_accessor :balance, :status
    attr_writer
    attr_reader :name#, :status
    

    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
       
    end

 

    def deposit(deposit_amount)
        self.balance = self.balance + deposit_amount
    end

    def display_balance
        "Your balance is $#{self.balance}."
    end

    def close_account
        self.balance = 0
        self.status = "closed" 
    end
    
    def valid?
        self.balance > 0 && self.status == "open"     
    end
end
