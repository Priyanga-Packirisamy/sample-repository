uname = gets
Password = gets
uc = uname[2..3].scan(/[A-Z]/).length 
#up = uname[2].scan(/[A-Z]/)
#puts up
lc = uname.scan(/[a-z]/).length
dc = uname.scan(/[0-9]/).length
if uc == 2 && dc == 6
    puts "username : #{uname}"
else
    puts "Enter valid INDOS no."
end

uname = gets
Password = gets
uc = uname[2..3].scan(/[A-Z]/).length
dc = uname.scan(/[0-9]/).length
if uc == 2 && dc == 6
    puts "username : #{uname}"
else
    puts "Enter valid INDOS no."
end

if Password.length >= 9 && Password.length <=13
    uc = Password.scan(/[A-Z]/).length
    lc = Password.scan(/[a-z]/).length
    dc = Password.scan(/[0-9]/).length
    sc = Password.scan(/["+", "-", "&", "|", "!", "(", ")", "{", "}", "[", "]", "^","~", "*", "?", ":","@","~","#","$","%","*","_","=","\","<",">"]/).length
   
    if sc>=1 && dc>=1 && lc>=1 && uc>=1
        puts "Strong password"
        puts "Password : #{Password}"
    else
        puts "Invalid password"
        if sc<1 && dc<1 && lc<1 && uc<1
            puts "Password should have atleast 1 symbol,1 number,1 lowercase alphabet and 1 uppercase alphabet"
        elsif sc<1 && dc<1 && lc<1  
            puts "Password should have atleast 1 symbol,1 number and 1 lowercase alphabet"
        elsif sc<1 && dc<1 && uc<1
            puts "Password should have atleast 1 symbol,1 number and 1 uppercase alphabet"
        elsif sc<1  && lc<1 && uc<1
            puts "Password should have atleast 1 symbol,1 lowercase alphabet and 1 uppercase alphabet"
        elsif dc<1 && lc<1 && uc<1
            puts "Password should have atleast 1 number,1 lowercase alphabet and 1 uppercase alphabet"
        elsif sc<1 && dc<1
            puts "Password should have atleast 1 symbol and 1 number"
        elsif sc<1  && lc<1
            puts "Password should have atleast 1 symbol and 1 lowercase alphabet"
        elsif  dc<1 && lc<1
            puts "Password should have atleast 1 number and 1 lowercase alphabet"
        elsif sc<1 &&  uc<1
            puts "Password should have atleast 1 symbol and 1 uppercase alphabet"
        elsif  dc<1 && uc<1
            puts "Password should have atleast 1 number and 1 uppercase alphabet"
        elsif lc<1 && uc<1
            puts "Password should have atleast 1 lowercase alphabet and 1 uppercase alphabet"
        elsif sc<1
            puts "Password should have atleast 1 symbol"
        elsif  dc<1
            puts "Password should have atleast 1 number "
        elsif lc<1  
            puts "Password should have atleast 1 lowercase alphabet"
        else
            puts "Password should have atleast 1 uppercase alphabet"
    end
else
    puts "Retype password of greater than 8 characters and less than 12 characters"
end
