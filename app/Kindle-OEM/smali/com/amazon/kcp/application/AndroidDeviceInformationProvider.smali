.class public Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;
.super Ljava/lang/Object;
.source "AndroidDeviceInformationProvider.java"

# interfaces
.implements Lcom/amazon/kcp/application/IDeviceInformationProvider;


# instance fields
.field private deviceType:Lcom/amazon/kcp/application/AndroidDeviceType;

.field private security:Lcom/mobipocket/android/library/reader/AndroidSecurity;


# direct methods
.method public constructor <init>(Lcom/mobipocket/android/library/reader/AndroidSecurity;Lcom/amazon/kcp/application/AndroidDeviceType;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;->security:Lcom/mobipocket/android/library/reader/AndroidSecurity;

    .line 26
    iput-object p2, p0, Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;->deviceType:Lcom/amazon/kcp/application/AndroidDeviceType;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device Type is set to \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" in AndroidDeviceInformationProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    return-void
.end method


# virtual methods
.method public getCannonicalAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "Redding"

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;->security:Lcom/mobipocket/android/library/reader/AndroidSecurity;

    invoke-virtual {v0}, Lcom/mobipocket/android/library/reader/AndroidSecurity;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceModelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%FIRST_NAME%%FIRST_NAME_POSSESSIVE_STRING%%DUPE_STRATEGY_1ST% "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;->deviceType:Lcom/amazon/kcp/application/AndroidDeviceType;

    sget-object v1, Lcom/amazon/kcp/application/AndroidDeviceType;->WHISKEYTOWN:Lcom/amazon/kcp/application/AndroidDeviceType;

    if-ne v0, v1, :cond_0

    const-string v0, "Android Tablet"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Android"

    goto :goto_0
.end method

.method public getDeviceTypeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;->deviceType:Lcom/amazon/kcp/application/AndroidDeviceType;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidDeviceType;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidDeviceInformationProvider;->security:Lcom/mobipocket/android/library/reader/AndroidSecurity;

    invoke-virtual {v0}, Lcom/mobipocket/android/library/reader/AndroidSecurity;->getPID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
