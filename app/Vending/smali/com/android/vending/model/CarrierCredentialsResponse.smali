.class public Lcom/android/vending/model/CarrierCredentialsResponse;
.super Ljava/lang/Object;
.source "CarrierCredentialsResponse.java"


# instance fields
.field private mCredentials:Ljava/lang/String;

.field private mExpirationTime:J

.field private mIsPasswordInvalid:Z

.field private mIsProvisioned:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCredentials()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/vending/model/CarrierCredentialsResponse;->mCredentials:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/android/vending/model/CarrierCredentialsResponse;->mExpirationTime:J

    return-wide v0
.end method

.method public isPasswordInvalid()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/vending/model/CarrierCredentialsResponse;->mIsPasswordInvalid:Z

    return v0
.end method

.method public isProvisioned()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/vending/model/CarrierCredentialsResponse;->mIsProvisioned:Z

    return v0
.end method

.method public isValid(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 75
    sget-object v6, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_CARRIER_CREDENTIALS_BUFFER_MS:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v6}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 76
    .local v2, expiryBufferTime:J
    iget-wide v6, p0, Lcom/android/vending/model/CarrierCredentialsResponse;->mExpirationTime:J

    sub-long v0, v6, v2

    .line 77
    .local v0, expiresAt:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 78
    .local v4, now:J
    iget-boolean v6, p0, Lcom/android/vending/model/CarrierCredentialsResponse;->mIsProvisioned:Z

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/android/vending/model/CarrierCredentialsResponse;->mCredentials:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public setCredentials(Ljava/lang/String;)V
    .locals 0
    .parameter "credentials"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/vending/model/CarrierCredentialsResponse;->mCredentials:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setExpirationTime(J)V
    .locals 0
    .parameter "expirationTime"

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/android/vending/model/CarrierCredentialsResponse;->mExpirationTime:J

    .line 47
    return-void
.end method

.method public setIsPasswordInvalid(Z)V
    .locals 0
    .parameter "isPasswordInvalid"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/vending/model/CarrierCredentialsResponse;->mIsPasswordInvalid:Z

    .line 63
    return-void
.end method

.method public setIsProvisioned(Z)V
    .locals 0
    .parameter "isProvisioned"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/vending/model/CarrierCredentialsResponse;->mIsProvisioned:Z

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Credentials { credentials = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierCredentialsResponse;->getCredentials()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expirationTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierCredentialsResponse;->getExpirationTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isProvisioned = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierCredentialsResponse;->isProvisioned()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPasswordInvalid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierCredentialsResponse;->isPasswordInvalid()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
