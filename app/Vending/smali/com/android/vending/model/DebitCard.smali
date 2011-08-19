.class public Lcom/android/vending/model/DebitCard;
.super Lcom/android/vending/model/CreditDebitCard;
.source "DebitCard.java"


# instance fields
.field private final mBankAccount:Ljava/lang/String;

.field private final mIsDefault:Z

.field private final mLastDigits:Ljava/lang/String;

.field private final mPersonName:Ljava/lang/String;

.field private final mRoutingNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/Address;Z)V
    .locals 1
    .parameter "bankAccount"
    .parameter "routingNumber"
    .parameter "personName"
    .parameter "phone"
    .parameter "address"
    .parameter "isDefault"

    .prologue
    .line 23
    invoke-direct {p0, p4, p5}, Lcom/android/vending/model/CreditDebitCard;-><init>(Ljava/lang/String;Lcom/android/vending/model/Address;)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/vending/model/DebitCard;->cleanAccountNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/model/DebitCard;->mBankAccount:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/android/vending/model/DebitCard;->mBankAccount:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/vending/model/DebitCard;->getLastDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/model/DebitCard;->mLastDigits:Ljava/lang/String;

    .line 26
    invoke-virtual {p0, p2}, Lcom/android/vending/model/DebitCard;->cleanAccountNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/model/DebitCard;->mRoutingNumber:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/android/vending/model/DebitCard;->mPersonName:Ljava/lang/String;

    .line 28
    iput-boolean p6, p0, Lcom/android/vending/model/DebitCard;->mIsDefault:Z

    .line 29
    return-void
.end method


# virtual methods
.method public getBankAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/vending/model/DebitCard;->mBankAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getLastDigits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/vending/model/DebitCard;->mLastDigits:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/vending/model/DebitCard;->mPersonName:Ljava/lang/String;

    return-object v0
.end method

.method public getRoutingNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/vending/model/DebitCard;->mRoutingNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/vending/model/DebitCard;->mIsDefault:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Account number=*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/DebitCard;->mLastDigits:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Routing=*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/DebitCard;->mPersonName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/DebitCard;->mPhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/DebitCard;->mAddress:Lcom/android/vending/model/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IsDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/vending/model/DebitCard;->mIsDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
