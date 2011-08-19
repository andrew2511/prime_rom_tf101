.class public Lcom/asus/dmlib/transport/HttpLinkChannel;
.super Ljava/lang/Object;
.source "HttpLinkChannel.java"


# static fields
.field private static final ACCEPT:Ljava/lang/String; = "Accept"

.field public static final ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field private static final CHARSET:Ljava/lang/String; = "Charset"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final INIT_RETRY_DELAY_MS:I = 0x12c

.field private static final MAX_DL_RETRY:I = 0x5

.field private static final MAX_RETRY_DELAY_MS:I = 0x493e0

.field public static final MIME_WBXML:Ljava/lang/String; = "application/vnd.syncml.dm+wbxml"

.field public static final MIME_XML:Ljava/lang/String; = "application/vnd.syncml.dm+xml"

.field private static final PREF_Content_Length:Ljava/lang/String; = "Content-Length"

.field private static final PREF_ETAG:Ljava/lang/String; = "ETAG"

.field private static final PREF_Retry_Count:Ljava/lang/String; = "NET_RETRY_COUNT"

.field private static final TAG:Ljava/lang/String; = "HttpLinkChannel"


# instance fields
.field private mConfig:Lcom/asus/dmlib/vdm/VdmConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmConfig;->getInstance()Lcom/asus/dmlib/vdm/VdmConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/transport/HttpLinkChannel;->mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

    .line 72
    return-void
.end method

.method private addKeyStore(Landroid/net/http/AndroidHttpClient;Ljava/lang/String;)V
    .locals 10
    .parameter "client"
    .parameter "url"

    .prologue
    .line 195
    const-string v7, "https"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 196
    const-string v7, "HttpLinkChannel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "use https connection --> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :try_start_0
    const-string v7, "BKS"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 200
    .local v6, trustStore:Ljava/security/KeyStore;
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getStorage()Lcom/asus/dmlib/vdm/PLStorage;

    move-result-object v7

    invoke-interface {v7}, Lcom/asus/dmlib/vdm/PLStorage;->openkeyStore()Ljava/io/InputStream;

    move-result-object v3

    .line 201
    .local v3, inTrust:Ljava/io/InputStream;
    const-string v7, "://"

    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const-string v8, "://"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, hostAddr:Ljava/lang/String;
    const/16 v2, 0x1bb

    .line 204
    .local v2, hostPort:I
    const/4 v7, 0x0

    const-string v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 206
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 207
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    move-result v2

    .line 211
    :cond_0
    :try_start_1
    const-string v7, "changeit"

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7

    .line 220
    :goto_0
    :try_start_3
    new-instance v5, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    invoke-direct {v5, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 221
    .local v5, socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    invoke-direct {v4, v7, v5, v2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 222
    .local v4, sch:Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {p1}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 242
    .end local v1           #hostAddr:Ljava/lang/String;
    .end local v2           #hostPort:I
    .end local v3           #inTrust:Ljava/io/InputStream;
    .end local v4           #sch:Lorg/apache/http/conn/scheme/Scheme;
    .end local v5           #socketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v6           #trustStore:Ljava/security/KeyStore;
    :cond_1
    :goto_1
    return-void

    .line 215
    .restart local v1       #hostAddr:Ljava/lang/String;
    .restart local v2       #hostPort:I
    .restart local v3       #inTrust:Ljava/io/InputStream;
    .restart local v6       #trustStore:Ljava/security/KeyStore;
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    goto :goto_0

    .line 224
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #hostAddr:Ljava/lang/String;
    .end local v2           #hostPort:I
    .end local v3           #inTrust:Ljava/io/InputStream;
    .end local v6           #trustStore:Ljava/security/KeyStore;
    :catch_1
    move-exception v7

    move-object v0, v7

    .line 225
    .local v0, e:Ljava/security/cert/CertificateException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 213
    .end local v0           #e:Ljava/security/cert/CertificateException;
    .restart local v1       #hostAddr:Ljava/lang/String;
    .restart local v2       #hostPort:I
    .restart local v3       #inTrust:Ljava/io/InputStream;
    .restart local v6       #trustStore:Ljava/security/KeyStore;
    :catchall_0
    move-exception v7

    .line 214
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7

    .line 217
    :goto_2
    :try_start_5
    throw v7
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 226
    .end local v1           #hostAddr:Ljava/lang/String;
    .end local v2           #hostPort:I
    .end local v3           #inTrust:Ljava/io/InputStream;
    .end local v6           #trustStore:Ljava/security/KeyStore;
    :catch_2
    move-exception v7

    move-object v0, v7

    .line 227
    .local v0, e:Ljava/security/KeyStoreException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 215
    .end local v0           #e:Ljava/security/KeyStoreException;
    .restart local v1       #hostAddr:Ljava/lang/String;
    .restart local v2       #hostPort:I
    .restart local v3       #inTrust:Ljava/io/InputStream;
    .restart local v6       #trustStore:Ljava/security/KeyStore;
    :catch_3
    move-exception v0

    .line 216
    .local v0, e:Ljava/io/IOException;
    :try_start_6
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_2

    .line 228
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #hostAddr:Ljava/lang/String;
    .end local v2           #hostPort:I
    .end local v3           #inTrust:Ljava/io/InputStream;
    .end local v6           #trustStore:Ljava/security/KeyStore;
    :catch_4
    move-exception v7

    move-object v0, v7

    .line 229
    .local v0, e:Ljava/security/KeyManagementException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 230
    .end local v0           #e:Ljava/security/KeyManagementException;
    :catch_5
    move-exception v7

    move-object v0, v7

    .line 231
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 232
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_6
    move-exception v7

    move-object v0, v7

    .line 233
    .local v0, e:Ljava/security/UnrecoverableKeyException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 234
    .end local v0           #e:Ljava/security/UnrecoverableKeyException;
    :catch_7
    move-exception v7

    move-object v0, v7

    .line 235
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 236
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_8
    move-exception v7

    move-object v0, v7

    .line 237
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private getHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 2

    .prologue
    .line 245
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 246
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    iget-object v1, p0, Lcom/asus/dmlib/transport/HttpLinkChannel;->mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmConfig;->getConTimeoutMillis()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 247
    iget-object v1, p0, Lcom/asus/dmlib/transport/HttpLinkChannel;->mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmConfig;->getSoTimoutMillis()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 248
    return-object v0
.end method

.method private setPostPacketHeader(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 5
    .parameter "pHttpPost"
    .parameter "pDestination"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpPost;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p3, bearerHdr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "://"

    .line 76
    .local v2, simbol:Ljava/lang/String;
    const/4 v1, 0x0

    .line 77
    .local v1, hostAddr:Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    const/4 v3, 0x0

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 80
    const-string v3, "Accept-Charset"

    const-string v4, "utf-8"

    invoke-virtual {p1, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v3, "Host"

    invoke-virtual {p1, v3, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v3, "User-Agent"

    iget-object v4, p0, Lcom/asus/dmlib/transport/HttpLinkChannel;->mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/VdmConfig;->getDmUserAgentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v3, p0, Lcom/asus/dmlib/transport/HttpLinkChannel;->mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

    invoke-virtual {v3}, Lcom/asus/dmlib/vdm/VdmConfig;->getEncodeWBXMLMsg()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    const-string v3, "Content-Type"

    const-string v4, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {p1, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_0
    if-eqz p3, :cond_0

    .line 94
    const-string v3, "x-syncml-hmac"

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, hdrValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 95
    const-string v3, "x-syncml-hmac"

    invoke-virtual {p1, v3, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .end local v0           #hdrValue:Ljava/lang/String;
    :cond_0
    return-void

    .line 87
    :cond_1
    const-string v3, "Content-Type"

    const-string v4, "application/vnd.syncml.dm+xml"

    invoke-virtual {p1, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private storeHttpHdr(Lorg/apache/http/HttpResponse;)Ljava/util/HashMap;
    .locals 11
    .parameter "resp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 460
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 461
    .local v5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "Content-Type"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 463
    .local v2, headerFields:[Lorg/apache/http/Header;
    aget-object v7, v2, v9

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 464
    const-string v7, "Content-Type"

    array-length v8, v2

    if-nez v8, :cond_1

    move-object v8, v10

    :goto_0
    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_0
    :goto_1
    const-string v7, "Charset"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 469
    const-string v7, "Charset"

    array-length v8, v2

    if-nez v8, :cond_4

    const-string v8, "utf8"

    :goto_2
    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string v7, "Accept"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 472
    const-string v6, ""

    .line 473
    .local v6, str:Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Lorg/apache/http/Header;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3
    if-ge v3, v4, :cond_5

    aget-object v1, v0, v3

    .line 474
    .local v1, field:Lorg/apache/http/Header;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 473
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 464
    .end local v0           #arr$:[Lorg/apache/http/Header;
    .end local v1           #field:Lorg/apache/http/Header;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #str:Ljava/lang/String;
    :cond_1
    const-string v8, "application/vnd.syncml.dm+wbxml"

    goto :goto_0

    .line 465
    :cond_2
    aget-object v7, v2, v9

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "application/vnd.syncml.dm+xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 466
    const-string v7, "Content-Type"

    array-length v8, v2

    if-nez v8, :cond_3

    move-object v8, v10

    :goto_4
    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string v8, "application/vnd.syncml.dm+xml"

    goto :goto_4

    .line 469
    :cond_4
    aget-object v8, v2, v9

    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 476
    .restart local v0       #arr$:[Lorg/apache/http/Header;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v6       #str:Ljava/lang/String;
    :cond_5
    const-string v7, "Accept"

    array-length v8, v2

    if-nez v8, :cond_6

    move-object v8, v10

    :goto_5
    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string v7, "Accept-Charset"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 479
    const-string v7, "Accept-Charset"

    array-length v8, v2

    if-nez v8, :cond_7

    const-string v8, "utf8"

    :goto_6
    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    return-object v5

    :cond_6
    move-object v8, v6

    .line 476
    goto :goto_5

    .line 479
    :cond_7
    aget-object v8, v2, v9

    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    goto :goto_6
.end method

.method private trySendSyncMLMsg(Ljava/lang/String;Lcom/asus/dmlib/syncml/pack/BearerPackage;)Lcom/asus/dmlib/syncml/pack/BearerPackage;
    .locals 21
    .parameter "url"
    .parameter "bearerPkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v8, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v8}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 139
    .local v8, httpParams:Lorg/apache/http/params/HttpParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dmlib/transport/HttpLinkChannel;->mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/asus/dmlib/vdm/VdmConfig;->getConTimeoutMillis()I

    move-result v18

    move-object v0, v8

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dmlib/transport/HttpLinkChannel;->mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/asus/dmlib/vdm/VdmConfig;->getSoTimoutMillis()I

    move-result v18

    move-object v0, v8

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dmlib/transport/HttpLinkChannel;->mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/asus/dmlib/vdm/VdmConfig;->getDlUserAgentName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v5

    .line 143
    .local v5, client:Landroid/net/http/AndroidHttpClient;
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/transport/HttpLinkChannel;->addKeyStore(Landroid/net/http/AndroidHttpClient;Ljava/lang/String;)V

    .line 144
    new-instance v13, Lorg/apache/http/client/methods/HttpPost;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 145
    .local v13, req:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v13, v8}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Lcom/asus/dmlib/syncml/pack/BearerPackage;->getHeader()Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/asus/dmlib/transport/HttpLinkChannel;->setPostPacketHeader(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 149
    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual/range {p2 .. p2}, Lcom/asus/dmlib/syncml/pack/BearerPackage;->getBody()[B

    move-result-object v18

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 150
    .local v6, entity:Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v13, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 155
    :try_start_0
    invoke-virtual {v5, v13}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 157
    .local v14, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    .line 159
    .local v17, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 160
    const-string v18, "HttpLinkChannel"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "response status code: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v18, Lcom/asus/dmlib/vdm/VdmException;

    const-string v19, "Connect Fail!!!"

    invoke-direct/range {v18 .. v19}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v14           #resp:Lorg/apache/http/HttpResponse;
    .end local v17           #statusLine:Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v18

    move-object/from16 v7, v18

    .line 185
    .local v7, ex:Ljava/io/IOException;
    :try_start_1
    invoke-static {v7}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 186
    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 187
    new-instance v18, Lcom/asus/dmlib/vdm/VdmException;

    const-string v19, "Connect Fail!!!"

    invoke-direct/range {v18 .. v19}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    .end local v7           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v18

    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v18

    .line 166
    .restart local v14       #resp:Lorg/apache/http/HttpResponse;
    .restart local v17       #statusLine:Lorg/apache/http/StatusLine;
    :cond_0
    :try_start_2
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/asus/dmlib/transport/HttpLinkChannel;->storeHttpHdr(Lorg/apache/http/HttpResponse;)Ljava/util/HashMap;

    move-result-object v11

    .line 167
    .local v11, rcvHttpHdr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    .line 169
    .local v15, respEntity:Lorg/apache/http/HttpEntity;
    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 170
    .local v9, in:Ljava/io/InputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 171
    .local v4, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v18, 0x200

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object v10, v0

    .line 172
    .local v10, inBuf:[B
    const/4 v12, 0x0

    .line 174
    .local v12, readCount:I
    :goto_0
    invoke-virtual {v9, v10}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/16 v18, -0x1

    move v0, v12

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 175
    const/16 v18, 0x0

    move-object v0, v4

    move-object v1, v10

    move/from16 v2, v18

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 178
    :cond_1
    new-instance v16, Lcom/asus/dmlib/syncml/pack/BearerPackage;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, v16

    move-object v1, v11

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/syncml/pack/BearerPackage;-><init>(Ljava/util/HashMap;[B)V

    .line 180
    .local v16, retVal:Lcom/asus/dmlib/syncml/pack/BearerPackage;
    invoke-virtual/range {v16 .. v16}, Lcom/asus/dmlib/syncml/pack/BearerPackage;->getBody()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v18

    if-eqz v18, :cond_2

    .line 189
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 v18, v16

    :goto_1
    return-object v18

    .line 183
    :cond_2
    const/16 v18, 0x0

    .line 189
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_1
.end method


# virtual methods
.method public requestDownload(Lcom/asus/dmlib/vdm/DownloadDescriptor;Lcom/asus/dmlib/vdm/PLStorage;Lcom/asus/dmlib/vdm/PLStorage$ItemType;)I
    .locals 32
    .parameter "dd"
    .parameter "storage"
    .parameter "itemType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dmlib/transport/HttpLinkChannel;->mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/asus/dmlib/vdm/VdmConfig;->getDlUserAgentName()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v7

    .line 290
    .local v7, client:Landroid/net/http/AndroidHttpClient;
    sget-object v28, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->OBJECT_URI:Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/vdm/DownloadDescriptor;->getField(Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/transport/HttpLinkChannel;->addKeyStore(Landroid/net/http/AndroidHttpClient;Ljava/lang/String;)V

    .line 291
    const/16 v27, 0x0

    .line 294
    .local v27, stream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v24, Lorg/apache/http/client/methods/HttpGet;

    sget-object v28, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->OBJECT_URI:Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/vdm/DownloadDescriptor;->getField(Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 296
    .local v24, req:Lorg/apache/http/client/methods/HttpGet;
    const/4 v10, 0x0

    .line 297
    .local v10, continuingDownload:Z
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;

    move-result-object v28

    const-string v29, "ETAG"

    invoke-interface/range {v28 .. v29}, Lcom/asus/dmlib/vdm/PLRegistry;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 299
    .local v21, headerETag:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/asus/dmlib/vdm/DownloadDescriptor;->size:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move v13, v0

    .line 300
    .local v13, deltaSize:I
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getMmiFactory()Lcom/asus/dmlib/vdm/MmiFactory;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v13

    invoke-interface {v0, v1}, Lcom/asus/dmlib/vdm/MmiFactory;->createProgress(I)Lcom/asus/dmlib/vdm/MmiProgress;

    move-result-object v23

    .line 301
    .local v23, progress:Lcom/asus/dmlib/vdm/MmiProgress;
    const/4 v6, 0x0

    .line 303
    .local v6, bytesSoFar:I
    new-instance v16, Ljava/io/File;

    invoke-interface/range {p2 .. p3}, Lcom/asus/dmlib/vdm/PLStorage;->getFullName(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    .local v16, f:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 306
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v17

    .line 307
    .local v17, fileLength:J
    const-wide/16 v28, 0x0

    cmp-long v28, v17, v28

    if-nez v28, :cond_5

    .line 310
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    .end local v17           #fileLength:J
    :cond_0
    :goto_0
    :try_start_1
    sget-object v28, Lcom/asus/dmlib/vdm/PLStorage$AccessMode;->APPEND:Lcom/asus/dmlib/vdm/PLStorage$AccessMode;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/PLStorage;->openOutputStream(Lcom/asus/dmlib/vdm/PLStorage$ItemType;Lcom/asus/dmlib/vdm/PLStorage$AccessMode;)Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v27

    .line 329
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/asus/dmlib/transport/HttpLinkChannel;->getHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 330
    if-eqz v10, :cond_2

    .line 331
    if-eqz v21, :cond_1

    .line 332
    const-string v28, "If-Match"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_1
    const-string v28, "Range"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "bytes="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 337
    :cond_2
    const/16 v25, 0x0

    .line 339
    .local v25, resp:Lorg/apache/http/HttpResponse;
    :try_start_3
    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v25

    .line 344
    if-nez v25, :cond_7

    .line 345
    :try_start_4
    new-instance v28, Lcom/asus/dmlib/vdm/VdmException;

    const-string v29, "Get Null respnose from server"

    sget-object v30, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_COMMS_FATAL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-direct/range {v28 .. v30}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V

    throw v28
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 440
    .end local v6           #bytesSoFar:I
    .end local v10           #continuingDownload:Z
    .end local v13           #deltaSize:I
    .end local v16           #f:Ljava/io/File;
    .end local v21           #headerETag:Ljava/lang/String;
    .end local v23           #progress:Lcom/asus/dmlib/vdm/MmiProgress;
    .end local v24           #req:Lorg/apache/http/client/methods/HttpGet;
    .end local v25           #resp:Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v28

    if-eqz v7, :cond_3

    .line 441
    invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 444
    :cond_3
    if-eqz v27, :cond_4

    .line 446
    :try_start_5
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->flush()V

    .line 447
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    .line 450
    :cond_4
    :goto_1
    throw v28

    .line 311
    .restart local v6       #bytesSoFar:I
    .restart local v10       #continuingDownload:Z
    .restart local v13       #deltaSize:I
    .restart local v16       #f:Ljava/io/File;
    .restart local v17       #fileLength:J
    .restart local v21       #headerETag:Ljava/lang/String;
    .restart local v23       #progress:Lcom/asus/dmlib/vdm/MmiProgress;
    .restart local v24       #req:Lorg/apache/http/client/methods/HttpGet;
    :cond_5
    if-nez v21, :cond_6

    .line 313
    :try_start_6
    const-string v28, "HttpLinkChannel"

    const-string v29, "can\'t resume interrupted non-resumable download"

    invoke-static/range {v28 .. v29}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 317
    :cond_6
    move-wide/from16 v0, v17

    long-to-int v0, v0

    move v6, v0

    .line 318
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 324
    .end local v17           #fileLength:J
    :catch_0
    move-exception v28

    move-object/from16 v14, v28

    .line 325
    .local v14, e:Ljava/io/FileNotFoundException;
    invoke-static {v14}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 326
    new-instance v28, Lcom/asus/dmlib/vdm/VdmException;

    const-string v29, "Can\'t open storage"

    sget-object v30, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_INTERNAL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-direct/range {v28 .. v30}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V

    throw v28

    .line 340
    .end local v14           #e:Ljava/io/FileNotFoundException;
    .restart local v25       #resp:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v14

    .line 341
    .local v14, e:Ljava/io/IOException;
    invoke-static {v14}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 342
    new-instance v28, Lcom/asus/dmlib/vdm/VdmException;

    const-string v29, "Exception on connect"

    sget-object v30, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_COMMS_FATAL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-direct/range {v28 .. v30}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V

    throw v28

    .line 348
    .end local v14           #e:Ljava/io/IOException;
    :cond_7
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v26

    .line 350
    .local v26, statusCode:I
    const-string v28, "Hugh"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "================== continuingDownload: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", statusCode = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " =================="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    if-nez v10, :cond_8

    const/16 v28, 0xc8

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    :cond_8
    if-eqz v10, :cond_d

    const/16 v28, 0xce

    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_d

    .line 352
    :cond_9
    const-string v28, "HttpLinkChannel"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "continuingDownload: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " response status code: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;

    move-result-object v28

    const-string v29, "ETAG"

    const/16 v30, 0x0

    invoke-interface/range {v28 .. v30}, Lcom/asus/dmlib/vdm/PLRegistry;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 440
    if-eqz v7, :cond_a

    .line 441
    invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 444
    :cond_a
    if-eqz v27, :cond_b

    .line 446
    :try_start_7
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->flush()V

    .line 447
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_b
    :goto_2
    move/from16 v28, v26

    .line 454
    :cond_c
    :goto_3
    return v28

    .line 448
    :catch_2
    move-exception v28

    move-object/from16 v14, v28

    .line 449
    .restart local v14       #e:Ljava/io/IOException;
    invoke-static {v14}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 357
    .end local v14           #e:Ljava/io/IOException;
    :cond_d
    :try_start_8
    const-string v28, "ETag"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v19

    .line 358
    .local v19, header:Lorg/apache/http/Header;
    if-eqz v19, :cond_e

    .line 359
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 360
    .local v15, eTag:Ljava/lang/String;
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;

    move-result-object v28

    const-string v29, "ETAG"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object v2, v15

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/PLRegistry;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .end local v15           #eTag:Ljava/lang/String;
    :cond_e
    const-string v28, "Content-Length"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v19

    .line 364
    if-nez v10, :cond_10

    if-eqz v19, :cond_10

    .line 365
    const/16 v20, -0x1

    .line 366
    .local v20, headerContentLength:I
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_f

    .line 367
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 370
    :cond_f
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;

    move-result-object v28

    const-string v29, "Content-Length"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/PLRegistry;->setIntValue(Ljava/lang/String;I)V

    .line 373
    .end local v20           #headerContentLength:I
    :cond_10
    const/16 v28, 0x800

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object v4, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 374
    .local v4, buffer:[B
    const/4 v5, -0x1

    .line 376
    .local v5, bytesRead:I
    const/16 v22, 0x0

    .line 378
    .local v22, is:Ljava/io/InputStream;
    :try_start_9
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    move-result-object v22

    .line 386
    if-nez v22, :cond_11

    .line 387
    :try_start_a
    new-instance v28, Lcom/asus/dmlib/vdm/VdmException;

    const-string v29, "Get null from Content"

    sget-object v30, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_COMMS_FATAL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-direct/range {v28 .. v30}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V

    throw v28

    .line 379
    :catch_3
    move-exception v28

    move-object/from16 v14, v28

    .line 380
    .local v14, e:Ljava/lang/IllegalStateException;
    invoke-static {v14}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 381
    new-instance v28, Lcom/asus/dmlib/vdm/VdmException;

    const-string v29, "Error while get Content"

    sget-object v30, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_COMMS_FATAL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-direct/range {v28 .. v30}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V

    throw v28

    .line 382
    .end local v14           #e:Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v28

    move-object/from16 v14, v28

    .line 383
    .local v14, e:Ljava/io/IOException;
    invoke-static {v14}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 384
    new-instance v28, Lcom/asus/dmlib/vdm/VdmException;

    const-string v29, "Error while get Content"

    sget-object v30, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_COMMS_FATAL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-direct/range {v28 .. v30}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V

    throw v28

    .line 390
    .end local v14           #e:Ljava/io/IOException;
    :cond_11
    move-object/from16 v0, v23

    move v1, v6

    move v2, v13

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/MmiProgress;->update(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 391
    const/4 v8, 0x0

    .line 394
    .local v8, cnt:I
    :cond_12
    :goto_4
    :try_start_b
    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    move-result v5

    const/16 v28, -0x1

    move v0, v5

    move/from16 v1, v28

    if-eq v0, v1, :cond_13

    .line 397
    const/16 v28, 0x0

    :try_start_c
    move-object/from16 v0, v27

    move-object v1, v4

    move/from16 v2, v28

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 403
    add-int/2addr v6, v5

    .line 405
    add-int/lit8 v8, v8, 0x1

    const/16 v28, 0x53

    move v0, v8

    move/from16 v1, v28

    if-le v0, v1, :cond_12

    .line 406
    :try_start_d
    move-object/from16 v0, v23

    move v1, v6

    move v2, v13

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/MmiProgress;->update(II)V

    .line 407
    const/4 v8, 0x0

    goto :goto_4

    .line 398
    :catch_5
    move-exception v14

    .line 399
    .restart local v14       #e:Ljava/io/IOException;
    invoke-static {v14}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 400
    new-instance v28, Lcom/asus/dmlib/vdm/VdmException;

    const-string v29, "Error write to delta"

    sget-object v30, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_FUMO_STORAGE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-direct/range {v28 .. v30}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V

    throw v28
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 410
    .end local v14           #e:Ljava/io/IOException;
    :catch_6
    move-exception v28

    move-object/from16 v14, v28

    .line 411
    .restart local v14       #e:Ljava/io/IOException;
    :try_start_e
    invoke-static {v14}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 412
    new-instance v28, Lcom/asus/dmlib/vdm/VdmException;

    const-string v29, "Error write to delta"

    sget-object v30, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_COMMS_NON_FATAL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-direct/range {v28 .. v30}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V

    throw v28

    .line 415
    .end local v14           #e:Ljava/io/IOException;
    :cond_13
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;

    move-result-object v28

    const-string v29, "Content-Length"

    invoke-interface/range {v28 .. v29}, Lcom/asus/dmlib/vdm/PLRegistry;->getIntValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 416
    .local v9, contentLength:I
    new-instance v12, Ljava/io/File;

    invoke-interface/range {p2 .. p3}, Lcom/asus/dmlib/vdm/PLStorage;->getFullName(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)Ljava/lang/String;

    move-result-object v28

    move-object v0, v12

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    .local v12, delta:Ljava/io/File;
    const-string v28, "HttpLinkChannel"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "download file length("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "), Content-Length("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    if-lez v9, :cond_18

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_18

    .line 420
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v28

    move v0, v9

    int-to-long v0, v0

    move-wide/from16 v30, v0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_18

    .line 421
    const-string v28, "HttpLinkChannel"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "download file length("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ") != Content-Length("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;

    move-result-object v28

    const-string v29, "NET_RETRY_COUNT"

    invoke-interface/range {v28 .. v29}, Lcom/asus/dmlib/vdm/PLRegistry;->getIntValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 423
    .local v11, current_retry:I
    if-gez v11, :cond_14

    const/4 v11, 0x0

    .line 425
    :cond_14
    const/16 v28, 0x5

    move v0, v11

    move/from16 v1, v28

    if-le v0, v1, :cond_16

    .line 426
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 427
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;

    move-result-object v28

    const-string v29, "NET_RETRY_COUNT"

    const/16 v30, 0x0

    invoke-interface/range {v28 .. v30}, Lcom/asus/dmlib/vdm/PLRegistry;->setIntValue(Ljava/lang/String;I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 428
    const/16 v28, -0x2

    .line 440
    if-eqz v7, :cond_15

    .line 441
    invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 444
    :cond_15
    if-eqz v27, :cond_c

    .line 446
    :try_start_f
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->flush()V

    .line 447
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_3

    .line 448
    :catch_7
    move-exception v29

    move-object/from16 v14, v29

    .line 449
    .restart local v14       #e:Ljava/io/IOException;
    invoke-static {v14}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 430
    .end local v14           #e:Ljava/io/IOException;
    :cond_16
    :try_start_10
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;

    move-result-object v28

    const-string v29, "NET_RETRY_COUNT"

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move v2, v11

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/PLRegistry;->setIntValue(Ljava/lang/String;I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 432
    const/16 v28, -0x1

    .line 440
    if-eqz v7, :cond_17

    .line 441
    invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 444
    :cond_17
    if-eqz v27, :cond_c

    .line 446
    :try_start_11
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->flush()V

    .line 447
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_3

    .line 448
    :catch_8
    move-exception v29

    move-object/from16 v14, v29

    .line 449
    .restart local v14       #e:Ljava/io/IOException;
    invoke-static {v14}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 436
    .end local v11           #current_retry:I
    .end local v14           #e:Ljava/io/IOException;
    :cond_18
    :try_start_12
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;

    move-result-object v28

    const-string v29, "ETAG"

    const/16 v30, 0x0

    invoke-interface/range {v28 .. v30}, Lcom/asus/dmlib/vdm/PLRegistry;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;

    move-result-object v28

    const-string v29, "NET_RETRY_COUNT"

    const/16 v30, 0x0

    invoke-interface/range {v28 .. v30}, Lcom/asus/dmlib/vdm/PLRegistry;->setIntValue(Ljava/lang/String;I)V

    .line 438
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;

    move-result-object v28

    const-string v29, "Content-Length"

    const/16 v30, -0x1

    invoke-interface/range {v28 .. v30}, Lcom/asus/dmlib/vdm/PLRegistry;->setIntValue(Ljava/lang/String;I)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 440
    if-eqz v7, :cond_19

    .line 441
    invoke-virtual {v7}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 444
    :cond_19
    if-eqz v27, :cond_1a

    .line 446
    :try_start_13
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->flush()V

    .line 447
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    .line 454
    :cond_1a
    :goto_5
    const/16 v28, 0x0

    goto/16 :goto_3

    .line 448
    :catch_9
    move-exception v28

    move-object/from16 v14, v28

    .line 449
    .restart local v14       #e:Ljava/io/IOException;
    invoke-static {v14}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 448
    .end local v4           #buffer:[B
    .end local v5           #bytesRead:I
    .end local v6           #bytesSoFar:I
    .end local v8           #cnt:I
    .end local v9           #contentLength:I
    .end local v10           #continuingDownload:Z
    .end local v12           #delta:Ljava/io/File;
    .end local v13           #deltaSize:I
    .end local v14           #e:Ljava/io/IOException;
    .end local v16           #f:Ljava/io/File;
    .end local v19           #header:Lorg/apache/http/Header;
    .end local v21           #headerETag:Ljava/lang/String;
    .end local v22           #is:Ljava/io/InputStream;
    .end local v23           #progress:Lcom/asus/dmlib/vdm/MmiProgress;
    .end local v24           #req:Lorg/apache/http/client/methods/HttpGet;
    .end local v25           #resp:Lorg/apache/http/HttpResponse;
    .end local v26           #statusCode:I
    :catch_a
    move-exception v29

    move-object/from16 v14, v29

    .line 449
    .restart local v14       #e:Ljava/io/IOException;
    invoke-static {v14}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method public requestOMADD(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 9
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 254
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "requestOMADD: url must have value"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 258
    :cond_0
    iget-object v6, p0, Lcom/asus/dmlib/transport/HttpLinkChannel;->mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

    invoke-virtual {v6}, Lcom/asus/dmlib/vdm/VdmConfig;->getDlUserAgentName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 259
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    invoke-direct {p0, v0, p1}, Lcom/asus/dmlib/transport/HttpLinkChannel;->addKeyStore(Landroid/net/http/AndroidHttpClient;Ljava/lang/String;)V

    .line 260
    const/4 v2, 0x0

    .line 262
    .local v2, req:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v2           #req:Lorg/apache/http/client/methods/HttpGet;
    .local v3, req:Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    invoke-direct {p0}, Lcom/asus/dmlib/transport/HttpLinkChannel;->getHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 265
    invoke-virtual {v0, v3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 266
    .local v4, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 268
    .local v5, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_2

    .line 269
    const-string v6, "HttpLinkChannel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "response status code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    const/4 v6, 0x0

    .line 281
    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_1
    :goto_0
    return-object v6

    .line 281
    :cond_2
    if-eqz v0, :cond_3

    .line 282
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_3
    move-object v6, v4

    goto :goto_0

    .line 274
    .end local v3           #req:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #resp:Lorg/apache/http/HttpResponse;
    .end local v5           #statusLine:Lorg/apache/http/StatusLine;
    .restart local v2       #req:Lorg/apache/http/client/methods/HttpGet;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 275
    .local v1, ex:Ljava/io/IOException;
    :goto_1
    if-eqz v2, :cond_4

    .line 276
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 278
    :cond_4
    new-instance v6, Lcom/asus/dmlib/vdm/VdmException;

    const-string v7, "Connect Fail!!!"

    invoke-direct {v6, v7}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v0, :cond_5

    .line 282
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_5
    throw v6

    .line 281
    .end local v2           #req:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #req:Lorg/apache/http/client/methods/HttpGet;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #req:Lorg/apache/http/client/methods/HttpGet;
    .restart local v2       #req:Lorg/apache/http/client/methods/HttpGet;
    goto :goto_2

    .line 274
    .end local v2           #req:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #req:Lorg/apache/http/client/methods/HttpGet;
    :catch_1
    move-exception v6

    move-object v1, v6

    move-object v2, v3

    .end local v3           #req:Lorg/apache/http/client/methods/HttpGet;
    .restart local v2       #req:Lorg/apache/http/client/methods/HttpGet;
    goto :goto_1
.end method

.method public sendSyncMLMsg(Ljava/lang/String;Lcom/asus/dmlib/syncml/pack/BearerPackage;)Lcom/asus/dmlib/syncml/pack/BearerPackage;
    .locals 10
    .parameter "url"
    .parameter "bearerPkg"

    .prologue
    .line 100
    const/4 v3, 0x0

    .line 101
    .local v3, retryCount:I
    const-wide/16 v4, 0x12c

    .line 104
    .local v4, retryDelay:J
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/asus/dmlib/transport/HttpLinkChannel;->mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

    invoke-virtual {v6}, Lcom/asus/dmlib/vdm/VdmConfig;->getMaxNetRetries()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 106
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/asus/dmlib/transport/HttpLinkChannel;->trySendSyncMLMsg(Ljava/lang/String;Lcom/asus/dmlib/syncml/pack/BearerPackage;)Lcom/asus/dmlib/syncml/pack/BearerPackage;
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, bearerPackage:Lcom/asus/dmlib/syncml/pack/BearerPackage;
    if-eqz v0, :cond_1

    move-object v6, v0

    .line 134
    .end local v0           #bearerPackage:Lcom/asus/dmlib/syncml/pack/BearerPackage;
    :goto_1
    return-object v6

    .line 109
    .restart local v0       #bearerPackage:Lcom/asus/dmlib/syncml/pack/BearerPackage;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    .end local v0           #bearerPackage:Lcom/asus/dmlib/syncml/pack/BearerPackage;
    :catch_0
    move-exception v1

    .line 111
    .local v1, e:Lcom/asus/dmlib/vdm/VdmException;
    add-int/lit8 v3, v3, 0x1

    .line 115
    iget-object v6, p0, Lcom/asus/dmlib/transport/HttpLinkChannel;->mConfig:Lcom/asus/dmlib/vdm/VdmConfig;

    invoke-virtual {v6}, Lcom/asus/dmlib/vdm/VdmConfig;->getMaxNetRetries()I

    move-result v6

    if-gt v3, v6, :cond_0

    .line 116
    const-string v6, "HttpLinkChannel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send dm message failed, retry after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    :goto_2
    long-to-double v6, v4

    const-wide/high16 v8, 0x3ff8

    mul-double/2addr v6, v8

    double-to-long v4, v6

    .line 125
    const-wide/32 v6, 0x493e0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 126
    const-wide/32 v4, 0x493e0

    goto :goto_0

    .line 120
    :catch_1
    move-exception v2

    .line 121
    .local v2, ex:Ljava/lang/InterruptedException;
    invoke-static {v2}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 132
    .end local v1           #e:Lcom/asus/dmlib/vdm/VdmException;
    .end local v2           #ex:Ljava/lang/InterruptedException;
    :cond_2
    const-string v6, "HttpLinkChannel"

    const-string v7, "send dm message failed!!!!!"

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v6, 0x0

    goto :goto_1
.end method
