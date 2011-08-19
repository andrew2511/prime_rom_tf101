.class public Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;
.super Ljava/lang/Object;
.source "PersonalInfo.java"


# instance fields
.field private _eMail:Ljava/lang/String;

.field private _firstName:Ljava/lang/String;

.field private _lastName:Ljava/lang/String;

.field private _promoCode:Ljava/lang/String;

.field private _pwd:Ljava/lang/String;

.field private mCompany:Ljava/lang/String;

.field private mPhone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->mCompany:Ljava/lang/String;

    return-object v0
.end method

.method public getEMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->_eMail:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->_firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->_lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->_pwd:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getPromoCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->_promoCode:Ljava/lang/String;

    return-object v0
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->mCompany:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setEMail(Ljava/lang/String;)V
    .locals 0
    .parameter "eMail"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->_eMail:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .parameter "firstName"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->_firstName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .parameter "lastName"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->_lastName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->_pwd:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->mPhone:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPromoCode(Ljava/lang/String;)V
    .locals 0
    .parameter "promoCode"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->_promoCode:Ljava/lang/String;

    .line 50
    return-void
.end method
