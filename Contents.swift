import UIKit

//Intent: create a bank acct that will allow us to make deposits, make withdrawls, and transfer funds between 2 accts!
//Because of our intetnions, we know that we're going to need three functions at least! (deposit, withdraw, transfer)

class BankAccount{
    //properties go below here:
    
    var accountName : String
    var currentBalance : Double
    var routingNumber : Int
    
    //add your initalizer, which will contain your properties above
    init(){
        accountName = "default"
        currentBalance = 0.0
        routingNumber = 0
    }
    
    //Your challenge is to create functions for depositing, withdrawing, setting account name, and setting routing number - 4 functions
    //Deposit
    func makeDeposit(depositAmount : Double){
        currentBalance = currentBalance + depositAmount
    }
    //Withdraw
    func makeWithdrawl(withdrawlAmount : Double){
        currentBalance = currentBalance - withdrawlAmount
    }
    //Set account name
    func setAccountName (newName : String){
        accountName = newName
    }
    //Set routing number
    func setRoutingNumber (rNum : Int){
        routingNumber = rNum
    }
    //this function checkEverything allows me to make sure I set everything correctly
    func checkEverything(){
        print(accountName)
        print(currentBalance)
        print(routingNumber)
    }
    
    //I need to create a function where I am able to transfer money from Elora's account into Jamie's account
    //for sender and recepient, I am going to create OBJECTS within a function, meaning that I'm going to create a bank account every time i access this account transfer. This is going to be important when we work with Aviatrix (project) on Wednesday
    
    func accountTransfer(sender : BankAccount, recepient : BankAccount, transferAmount: Double, senderRoutingNumber : Int){
        
        if sender.routingNumber == senderRoutingNumber {
            sender.currentBalance = sender.currentBalance - transferAmount
            recepient.currentBalance = recepient.currentBalance + transferAmount
            print("The recepient has successfully received the transfer!")
        }else {
            print("I'm sorry, but the info you typed in is not correct! Please try a different routing number.")
        }
        
        
    }
    
}

//this is outside of the class, I am going to create bank accounts which are objects

var jamiesBankAccount = BankAccount()
var eloraBankAccount = BankAccount()

eloraBankAccount.setAccountName(newName: "Elora's Bank Account")
eloraBankAccount.setRoutingNumber(rNum: 999)
eloraBankAccount.makeDeposit(depositAmount: 1000.00)

jamiesBankAccount.setAccountName(newName: "Jamie's Bank Account")
jamiesBankAccount.setRoutingNumber(rNum: 555)
jamiesBankAccount.makeDeposit(depositAmount: 10.00)

jamiesBankAccount.checkEverything()
eloraBankAccount.checkEverything()

eloraBankAccount.accountTransfer(sender: eloraBankAccount, recepient: jamiesBankAccount, transferAmount: 1.00, senderRoutingNumber: 999)

jamiesBankAccount.checkEverything()
eloraBankAccount.checkEverything()
