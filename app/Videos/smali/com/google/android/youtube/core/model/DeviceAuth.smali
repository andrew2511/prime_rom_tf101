.class public Lcom/google/android/youtube/core/model/DeviceAuth;
.super Ljava/lang/Object;
.source "DeviceAuth.java"


# static fields
.field public static final DEVICE_KEY_SIZE:I = 0x14


# instance fields
.field private final deviceId:Ljava/lang/String;

.field private final deviceKey:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2
    .parameter "deviceId"
    .parameter "deviceKey"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "deviceId cannot be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    const-string v0, "deviceKey cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    array-length v0, p2

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "deviceKey must be 20 bytes"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 40
    iput-object p1, p0, Lcom/google/android/youtube/core/model/DeviceAuth;->deviceId:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/google/android/youtube/core/model/DeviceAuth;->deviceKey:[B

    .line 42
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createSignature(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 7
    .parameter "requestPath"
    .parameter "deviceKey"

    .prologue
    const-string v6, "error signing request"

    const-string v5, "HmacSHA1"

    .line 55
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "HmacSHA1"

    invoke-direct {v3, p1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 57
    .local v3, signingKey:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v4, "HmacSHA1"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 58
    .local v1, mac:Ljavax/crypto/Mac;
    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    .line 60
    .local v2, rawHmac:[B
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 66
    .end local v1           #mac:Ljavax/crypto/Mac;
    .end local v2           #rawHmac:[B
    :goto_0
    return-object v4

    .line 61
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 62
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v4, "error signing request"

    invoke-static {v6, v0}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 63
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 64
    .local v0, e:Ljava/security/InvalidKeyException;
    const-string v4, "error signing request"

    invoke-static {v6, v0}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static load(Landroid/content/SharedPreferences;)Lcom/google/android/youtube/core/model/DeviceAuth;
    .locals 5
    .parameter "preferences"

    .prologue
    const/4 v4, 0x0

    .line 70
    const-string v3, "device_id"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, deviceId:Ljava/lang/String;
    const-string v3, "device_key"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, encodedDeviceKey:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 73
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 74
    .local v1, deviceKey:[B
    new-instance v3, Lcom/google/android/youtube/core/model/DeviceAuth;

    invoke-direct {v3, v0, v1}, Lcom/google/android/youtube/core/model/DeviceAuth;-><init>(Ljava/lang/String;[B)V

    .line 76
    .end local v1           #deviceKey:[B
    :goto_0
    return-object v3

    :cond_0
    move-object v3, v4

    goto :goto_0
.end method

.method public static save(Lcom/google/android/youtube/core/model/DeviceAuth;Landroid/content/SharedPreferences;)V
    .locals 5
    .parameter "deviceAuth"
    .parameter "preferences"

    .prologue
    .line 81
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "device_id"

    iget-object v2, p0, Lcom/google/android/youtube/core/model/DeviceAuth;->deviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "device_key"

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/DeviceAuth;->deviceKey:[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    return-void
.end method


# virtual methods
.method public getXGDataDeviceHeaderValue(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .parameter "uri"

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, message:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, query:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 48
    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/model/DeviceAuth;->deviceKey:[B

    invoke-static {v3, v4}, Lcom/google/android/youtube/core/model/DeviceAuth;->createSignature(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, signature:Ljava/lang/String;
    const-string v3, "device-id=\"%s\", data=\"%s\""

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/youtube/core/model/DeviceAuth;->deviceId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
