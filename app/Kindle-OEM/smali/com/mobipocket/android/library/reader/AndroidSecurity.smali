.class public Lcom/mobipocket/android/library/reader/AndroidSecurity;
.super Lcom/amazon/system/security/Security;
.source "AndroidSecurity.java"


# static fields
.field private static final DEVICE_SERIAL_NUMBER_KEY:Ljava/lang/String; = "DsnId"


# instance fields
.field private accountSecretProvider:Lcom/amazon/kcp/reader/models/IAccountSecretProvider;

.field private storage:Lcom/amazon/kcp/application/ISecureStorage;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/ISecureStorage;Lcom/amazon/kcp/reader/models/IAccountSecretProvider;)V
    .locals 0
    .parameter "storage"
    .parameter "accountSecretProvider"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/amazon/system/security/Security;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/mobipocket/android/library/reader/AndroidSecurity;->storage:Lcom/amazon/kcp/application/ISecureStorage;

    .line 40
    iput-object p2, p0, Lcom/mobipocket/android/library/reader/AndroidSecurity;->accountSecretProvider:Lcom/amazon/kcp/reader/models/IAccountSecretProvider;

    .line 41
    return-void
.end method


# virtual methods
.method public customDrmOnly()I
    .locals 1

    .prologue
    .line 78
    const v0, -0x372d958c

    return v0
.end method

.method public getAccountSecrets()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, accountSecrets:[Ljava/lang/String;
    iget-object v3, p0, Lcom/mobipocket/android/library/reader/AndroidSecurity;->accountSecretProvider:Lcom/amazon/kcp/reader/models/IAccountSecretProvider;

    if-eqz v3, :cond_0

    .line 52
    iget-object v3, p0, Lcom/mobipocket/android/library/reader/AndroidSecurity;->accountSecretProvider:Lcom/amazon/kcp/reader/models/IAccountSecretProvider;

    invoke-interface {v3}, Lcom/amazon/kcp/reader/models/IAccountSecretProvider;->getAccountSecrets()Ljava/util/Vector;

    move-result-object v2

    .line 53
    .local v2, secrets:Ljava/util/Vector;
    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 56
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 58
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v0, v1

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v1           #i:I
    .end local v2           #secrets:Ljava/util/Vector;
    :cond_0
    return-object v0
.end method

.method public getBase64()Lcom/amazon/system/security/IBase64;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/mobipocket/android/library/reader/AndroidBase64Encoding;

    invoke-direct {v0}, Lcom/mobipocket/android/library/reader/AndroidBase64Encoding;-><init>()V

    return-object v0
.end method

.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 5

    .prologue
    .line 85
    iget-object v3, p0, Lcom/mobipocket/android/library/reader/AndroidSecurity;->storage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v4, "DsnId"

    invoke-interface {v3, v4}, Lcom/amazon/kcp/application/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, randomIdString:Ljava/lang/String;
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    const/16 v3, 0x14

    new-array v0, v3, [B

    .line 92
    .local v0, bytes:[B
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 94
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->toHex([B)Ljava/lang/String;

    move-result-object v1

    .line 96
    iget-object v3, p0, Lcom/mobipocket/android/library/reader/AndroidSecurity;->storage:Lcom/amazon/kcp/application/ISecureStorage;

    const-string v4, "DsnId"

    invoke-interface {v3, v4, v1}, Lcom/amazon/kcp/application/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 98
    .local v2, savedSuccessfully:Z
    if-nez v2, :cond_0

    .line 100
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error saving to preferences"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 104
    .end local v0           #bytes:[B
    .end local v2           #savedSuccessfully:Z
    :cond_0
    return-object v1
.end method

.method public getPID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcom/mobipocket/android/library/reader/AndroidSecurity;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    :try_start_1
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 136
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 137
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->toHex([B)Ljava/lang/String;

    move-result-object v0

    .line 147
    const/16 v1, 0x17

    .line 148
    add-int/lit8 v2, v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t get PID: unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to generate PID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPassword(II)Ljava/lang/String;
    .locals 1
    .parameter "nbAttemptLeft"
    .parameter "nbAttempt"

    .prologue
    .line 164
    const-string v0, ""

    return-object v0
.end method

.method public getSHA1MessageDigest()Lcom/amazon/system/security/IMessageDigest;
    .locals 1

    .prologue
    .line 175
    :try_start_0
    new-instance v0, Lcom/mobipocket/android/library/reader/AndroidSHA1MessageDigest;

    invoke-direct {v0}, Lcom/mobipocket/android/library/reader/AndroidSHA1MessageDigest;-><init>()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStorageSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "identifier"

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStorageType(Ljava/lang/String;)I
    .locals 1
    .parameter "identifier"

    .prologue
    .line 207
    const/4 v0, -0x1

    return v0
.end method
