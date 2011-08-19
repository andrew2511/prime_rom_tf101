.class public final Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;
.super Ljava/lang/Object;
.source "GeneralInfo.java"


# static fields
.field private static final SECRET_WORD:Ljava/lang/String; = "gwper894iry20948rjJH9fj(@(*jsd"

.field private static final USER_NAME_PREFIX:Ljava/lang/String; = "android_"

.field private static instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;


# instance fields
.field private mAffiliation:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mDeviceId:Ljava/lang/String;

.field private mNetworkId:Ljava/lang/String;

.field private mServiceName:Ljava/lang/String;

.field private mSmartEdition:Z

.field private mSystemManufacturer:Ljava/lang/String;

.field private mSystemModel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDevicePassword()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 64
    sget-object v7, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    if-nez v7, :cond_0

    move-object v7, v9

    .line 81
    :goto_0
    return-object v7

    .line 66
    :cond_0
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 67
    .local v4, md5:Ljava/security/MessageDigest;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "gwper894iry20948rjJH9fj(@(*jsd"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getDeviceUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 68
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 69
    .local v1, hash:[B
    new-instance v7, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, result:Ljava/lang/String;
    array-length v7, v1

    mul-int/lit8 v3, v7, 0x2

    .line 71
    .local v3, length:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v3, :cond_1

    move-object v7, v5

    goto :goto_0

    .line 72
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 73
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v2, v3, v7

    .local v2, i:I
    :goto_1
    if-gtz v2, :cond_2

    .line 76
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 74
    :cond_2
    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 78
    .end local v1           #hash:[B
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #md5:Ljava/security/MessageDigest;
    .end local v5           #result:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 79
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-class v7, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MD5 algorythm is not supported"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v9

    .line 81
    goto :goto_0
.end method

.method public static getAffiliation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mAffiliation:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getClientNumber()I
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mDeviceId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getDeviceUserName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mNetworkId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public static getSystemManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mSystemManufacturer:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSystemModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mSystemModel:Ljava/lang/String;

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;
    .locals 2
    .parameter "context"

    .prologue
    .line 101
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    .line 112
    :goto_0
    return-object v0

    .line 102
    :cond_0
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    invoke-direct {v0}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;-><init>()V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    .line 103
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->retrieveDeviceId(Landroid/content/Context;)V

    .line 104
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mSystemManufacturer:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mSystemModel:Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    const v1, 0x7f090054

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mAppVersion:Ljava/lang/String;

    .line 107
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mNetworkId:Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    const v1, 0x7f09004b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mServiceName:Ljava/lang/String;

    .line 109
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    const v1, 0x7f090052

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mAffiliation:Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    const v1, 0x7f090053

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mSmartEdition:Z

    .line 112
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    goto :goto_0
.end method

.method private static isOnlyZeros(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 134
    const/16 v0, 0x30

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSmartEdition()Z
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    iget-boolean v0, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mSmartEdition:Z

    return v0
.end method

.method private static retrieveDeviceId(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 118
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mDeviceId:Ljava/lang/String;

    .line 120
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->isOnlyZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mDeviceId:Ljava/lang/String;

    .line 124
    :cond_1
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->isOnlyZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    :cond_2
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mDeviceId:Ljava/lang/String;

    .line 128
    :cond_3
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->isOnlyZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 130
    :cond_4
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->instance:Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->mDeviceId:Ljava/lang/String;

    .line 131
    :cond_5
    return-void
.end method
