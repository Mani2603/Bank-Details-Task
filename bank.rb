class Account
    
    attr_accessor:num,:id,:name,:mobile,:password,:email
    def initialize(num,id,name,mobile,password,email)
        @num=num
        @id=id
        @name=name
        @mobile=mobile
        @password=password
        @email=email
    end
    def Create()
        puts "You Are appling for Create a New Account"
        puts "Your details are"
        puts "User id : #{@id}"
        puts "Name : #{@name}"
        puts "Mobile number : #{@mobile}"
        puts "Email Id : #{@email}"
        puts "Enter your pin :"
        pass=gets.chomp
        if pass==@password
            puts "Successfully Create a Bank Account "
        else 
            puts "Invalid Pin.Try Again"
        end 
    end
    def Balance()
        puts "Enter your password"
        pass1=gets.to_i
        if pass1=password
            a=rand(1000..10000)
            puts("Your available balance is #{a}")
        else
            puts "Invalid Pin.Try Again"
        end
    end
    def Credit()
        b=rand(1000..10000)
        puts "Enter your userid: #{@id}"
        print "Amount of Deposit : "
        c=gets.to_i
        puts "Now Available Balance is #{b+c}"
    end
    def Debit()
        puts "Enter your user id "
        d=gets.to_i
        puts "Enter the password"
        e=gets
        if(@id==d and @password==e)
            puts "Amount of Debit : "
            f=rand(1000..10000)
            g=gets.to_i
            puts "Now Available Balance is #{f-g}"
        else
            puts "Invalid Id or Password.Try Again."
        end
    end
    def Transfer()
        puts "Amount transfer"
        puts "Enter Your user id : "
        h=gets.to_i
        puts "Enter your password : "
        i=gets
        if(@id==h && @password==i)
            puts "Enter the Transfer Amount : "
            j=gets.to_i
            puts "Enter Transfer id"
            k=gets.to_i
            puts k
            puts "Successfully Amount is Transferred"
        else
            puts "Invalid your id or password.Try Again"
        end
    end 
    def Edit()
        puts "Enter user id "
        l=gets.to_i
        puts "Enter password"
        m=gets
        puts "old password is #{m}"
        if l==@id and m==@password
            puts "Change your name "
            n=gets
            puts "Change Your Phone Number "
            o=gets.to_i
            puts "Change your mail id"
            p=gets
            puts "Change your password"
            q=gets
        else
            puts "Invalid pin or user id.Try again"
        end
    end            
end
class Main
    def Method
        while true do
            #object=Account.new()
            puts " 1.Create a new Account\n 2.Balance Check\n 3.Credit Amount\n 4.Debit Amount\n 5.Transfer Amount\n 6.Edit Details\n 7.Exit"
            puts"Enter the number:"
            num=gets.to_i
            id=rand(1..100)
            puts "User Id is #{id}"
            if num<7
                puts "Enter Your Name"
                name=gets
                puts "Enter Mobile Number"
                mobile=gets.to_i
                puts "Enter Password"
                password=gets
                puts "Enter Your Email"
                email=gets
            end     
            object=Account.new(num,id,name,mobile,password,email)
            #Obj=Bank::Account.new(num,id,name,mobile,password,email)
            case num
            when 1 
                object.Create()
            when 2
                object.Balance()
            when 3 
                object.Credit()
            when 4 
                object.Debit()
            when 5 
                object.Transfer()
            when 6
                object.Edit()
            when 7
                puts "This is Invalid Number"
                Exit
            else
                puts "Invalid Number.Try Again"
            end    
        end
    end 
end 
Obj=Main.new
Obj.Method