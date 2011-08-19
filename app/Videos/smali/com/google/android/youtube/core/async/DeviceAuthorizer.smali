.class public Lcom/google/android/youtube/core/async/DeviceAuthorizer;
.super Ljava/lang/Object;
.source "DeviceAuthorizer.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/ResponseConverter;
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/ResponseConverter",
        "<",
        "Lorg/apache/http/HttpResponse;",
        "Lcom/google/android/youtube/core/model/DeviceAuth;",
        ">;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Landroid/net/Uri;",
        "Lcom/google/android/youtube/core/model/DeviceAuth;",
        ">;"
    }
.end annotation


# static fields
.field static final DEVICE_REGISTRATION_URL_TEMPLATE:Ljava/lang/String; = "https://www.google.com/youtube/accounts/registerDevice?developer=%s&serialNumber=%s"


# instance fields
.field private volatile authorizingDevice:Z

.field private final developerKey:[B

.field private final developerSecret:[B

.field private volatile deviceAuth:Lcom/google/android/youtube/core/model/DeviceAuth;

.field private final deviceRegistrationBlocker:Landroid/os/ConditionVariable;

.field private final deviceSerial:Ljava/lang/String;

.field private volatile error:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

.field private final httpsClient:Lorg/apache/http/client/HttpClient;

.field private final preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;[B[BLjava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter "httpsClient"
    .parameter "developerKey"
    .parameter "developerSecret"
    .parameter "serial"
    .parameter "preferences"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p5, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->preferences:Landroid/content/SharedPreferences;

    .line 71
    iput-object p1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->httpsClient:Lorg/apache/http/client/HttpClient;

    .line 73
    iput-object p2, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->developerKey:[B

    .line 74
    iput-object p3, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->developerSecret:[B

    .line 75
    iput-object p4, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceSerial:Ljava/lang/String;

    .line 77
    invoke-static {p5}, Lcom/google/android/youtube/core/model/DeviceAuth;->load(Landroid/content/SharedPreferences;)Lcom/google/android/youtube/core/model/DeviceAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceAuth:Lcom/google/android/youtube/core/model/DeviceAuth;

    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceAuth:Lcom/google/android/youtube/core/model/DeviceAuth;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceRegistrationBlocker:Landroid/os/ConditionVariable;

    .line 79
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private decryptDeviceKey(Ljava/lang/String;)[B
    .locals 10
    .parameter "encryptedDeviceKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x14

    const/4 v8, 0x0

    .line 143
    const/4 v0, 0x0

    .line 147
    .local v0, cipher:Ljavax/crypto/Cipher;
    :try_start_0
    const-string v7, "AES/ECB/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 154
    iget-object v7, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->developerSecret:[B

    invoke-static {v7, v8}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 155
    .local v1, decodedDevSecret:[B
    invoke-static {p1, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 158
    .local v2, decodedDeviceKey:[B
    :try_start_1
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "AES"

    invoke-direct {v6, v1, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 159
    .local v6, secretKey:Ljavax/crypto/SecretKey;
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 160
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 161
    .local v3, deviceKey:[B
    array-length v7, v3

    if-le v7, v9, :cond_0

    .line 162
    const/16 v7, 0x14

    new-array v5, v7, [B

    .line 163
    .local v5, paddedKey:[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x14

    invoke-static {v3, v7, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v7, v5

    .line 166
    .end local v5           #paddedKey:[B
    :goto_0
    return-object v7

    .line 148
    .end local v1           #decodedDevSecret:[B
    .end local v2           #decodedDeviceKey:[B
    .end local v3           #deviceKey:[B
    .end local v6           #secretKey:Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 149
    .local v4, e:Ljavax/crypto/NoSuchPaddingException;
    new-instance v7, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v7, v4}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 150
    .end local v4           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 151
    .local v4, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v7, v4}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .end local v4           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v1       #decodedDevSecret:[B
    .restart local v2       #decodedDeviceKey:[B
    .restart local v3       #deviceKey:[B
    .restart local v6       #secretKey:Ljavax/crypto/SecretKey;
    :cond_0
    move-object v7, v3

    .line 166
    goto :goto_0

    .line 168
    .end local v3           #deviceKey:[B
    .end local v6           #secretKey:Ljavax/crypto/SecretKey;
    :catch_2
    move-exception v7

    move-object v4, v7

    .line 169
    .local v4, e:Ljava/security/InvalidKeyException;
    new-instance v7, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v7, v4}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 170
    .end local v4           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v7

    move-object v4, v7

    .line 171
    .local v4, e:Ljavax/crypto/IllegalBlockSizeException;
    new-instance v7, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v7, v4}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 172
    .end local v4           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_4
    move-exception v7

    move-object v4, v7

    .line 173
    .local v4, e:Ljavax/crypto/BadPaddingException;
    new-instance v7, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v7, v4}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private registerDevice(Lorg/apache/http/client/HttpClient;Ljava/lang/String;)V
    .locals 8
    .parameter "httpClient"
    .parameter "deviceSerial"

    .prologue
    .line 117
    new-instance v0, Lcom/google/android/youtube/core/converter/http/UriRequestConverter;

    sget-object v3, Lcom/google/android/youtube/core/converter/http/HttpMethod;->POST:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-direct {v0, v3}, Lcom/google/android/youtube/core/converter/http/UriRequestConverter;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V

    .line 118
    .local v0, requestConverter:Lcom/google/android/youtube/core/converter/http/UriRequestConverter;
    new-instance v1, Lcom/google/android/youtube/core/async/HttpRequester;

    invoke-direct {v1, p1, v0, p0}, Lcom/google/android/youtube/core/async/HttpRequester;-><init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)V

    .line 120
    .local v1, requester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Landroid/net/Uri;Lcom/google/android/youtube/core/model/DeviceAuth;>;"
    const-string v3, "https://www.google.com/youtube/accounts/registerDevice?developer=%s&serialNumber=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->developerKey:[B

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 122
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v1, v2, p0}, Lcom/google/android/youtube/core/async/HttpRequester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 123
    return-void
.end method


# virtual methods
.method public convertResponse(Lorg/apache/http/HttpResponse;)Lcom/google/android/youtube/core/model/DeviceAuth;
    .locals 7
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 127
    :try_start_0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 128
    .local v4, props:Ljava/util/Properties;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 129
    const-string v5, "DeviceId"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, deviceId:Ljava/lang/String;
    const-string v5, "DeviceKey"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, encryptedDeviceKey:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 132
    invoke-direct {p0, v3}, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->decryptDeviceKey(Ljava/lang/String;)[B

    move-result-object v1

    .line 133
    .local v1, deviceKey:[B
    new-instance v5, Lcom/google/android/youtube/core/model/DeviceAuth;

    invoke-direct {v5, v0, v1}, Lcom/google/android/youtube/core/model/DeviceAuth;-><init>(Ljava/lang/String;[B)V

    return-object v5

    .line 135
    .end local v1           #deviceKey:[B
    :cond_0
    new-instance v5, Lcom/google/android/youtube/core/converter/ConverterException;

    const-string v6, "invalid device registration response"

    invoke-direct {v5, v6}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v0           #deviceId:Ljava/lang/String;
    .end local v3           #encryptedDeviceKey:Ljava/lang/String;
    .end local v4           #props:Ljava/util/Properties;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 138
    .local v2, e:Ljava/io/IOException;
    new-instance v5, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v5, v2}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public bridge synthetic convertResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 43
    check-cast p1, Lorg/apache/http/HttpResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->convertResponse(Lorg/apache/http/HttpResponse;)Lcom/google/android/youtube/core/model/DeviceAuth;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderValue(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceAuth:Lcom/google/android/youtube/core/model/DeviceAuth;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceAuth:Lcom/google/android/youtube/core/model/DeviceAuth;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/model/DeviceAuth;->getXGDataDeviceHeaderValue(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 113
    :goto_0
    return-object v1

    .line 94
    :cond_0
    const/4 v0, 0x0

    .line 96
    .local v0, doRegisterDevice:Z
    monitor-enter p0

    .line 97
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->authorizingDevice:Z

    if-nez v1, :cond_1

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->authorizingDevice:Z

    .line 99
    const/4 v0, 0x1

    .line 100
    iget-object v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceRegistrationBlocker:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 102
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    iget-object v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->httpsClient:Lorg/apache/http/client/HttpClient;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceSerial:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->registerDevice(Lorg/apache/http/client/HttpClient;Ljava/lang/String;)V

    .line 110
    :goto_1
    iget-object v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->error:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

    if-eqz v1, :cond_3

    .line 111
    iget-object v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->error:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

    throw v1

    .line 102
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceRegistrationBlocker:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    goto :goto_1

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceAuth:Lcom/google/android/youtube/core/model/DeviceAuth;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/model/DeviceAuth;->getXGDataDeviceHeaderValue(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onError(Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 1
    .parameter "uri"
    .parameter "exception"

    .prologue
    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceAuth:Lcom/google/android/youtube/core/model/DeviceAuth;

    .line 188
    new-instance v0, Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

    invoke-direct {v0, p2}, Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->error:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

    .line 189
    iget-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceRegistrationBlocker:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->authorizingDevice:Z

    .line 191
    const-string v0, "device registration failed"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->onError(Landroid/net/Uri;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Landroid/net/Uri;Lcom/google/android/youtube/core/model/DeviceAuth;)V
    .locals 2
    .parameter "uri"
    .parameter "response"

    .prologue
    .line 178
    iput-object p2, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceAuth:Lcom/google/android/youtube/core/model/DeviceAuth;

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->error:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;

    .line 180
    iget-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceAuth:Lcom/google/android/youtube/core/model/DeviceAuth;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->preferences:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/DeviceAuth;->save(Lcom/google/android/youtube/core/model/DeviceAuth;Landroid/content/SharedPreferences;)V

    .line 181
    iget-object v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->deviceRegistrationBlocker:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->authorizingDevice:Z

    .line 183
    const-string v0, "device registered"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    check-cast p1, Landroid/net/Uri;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/DeviceAuth;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->onResponse(Landroid/net/Uri;Lcom/google/android/youtube/core/model/DeviceAuth;)V

    return-void
.end method
