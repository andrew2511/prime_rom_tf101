.class public Lcom/splashtop/remote/net/HttpsClient;
.super Ljava/lang/Object;
.source "HttpsClient.java"


# instance fields
.field private hnv:Ljavax/net/ssl/HostnameVerifier;

.field private url:Ljava/lang/String;

.field private xtm:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v2, Lcom/splashtop/remote/net/HttpsClient$1;

    invoke-direct {v2, p0}, Lcom/splashtop/remote/net/HttpsClient$1;-><init>(Lcom/splashtop/remote/net/HttpsClient;)V

    iput-object v2, p0, Lcom/splashtop/remote/net/HttpsClient;->xtm:Ljavax/net/ssl/X509TrustManager;

    .line 37
    new-instance v2, Lcom/splashtop/remote/net/HttpsClient$2;

    invoke-direct {v2, p0}, Lcom/splashtop/remote/net/HttpsClient$2;-><init>(Lcom/splashtop/remote/net/HttpsClient;)V

    iput-object v2, p0, Lcom/splashtop/remote/net/HttpsClient;->hnv:Ljavax/net/ssl/HostnameVerifier;

    .line 45
    iput-object p1, p0, Lcom/splashtop/remote/net/HttpsClient;->url:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    .line 49
    .local v0, sslContext:Ljavax/net/ssl/SSLContext;
    :try_start_0
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 50
    const/4 v2, 0x1

    new-array v1, v2, [Ljavax/net/ssl/X509TrustManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/splashtop/remote/net/HttpsClient;->xtm:Ljavax/net/ssl/X509TrustManager;

    aput-object v3, v1, v2

    .line 51
    .local v1, xtmArray:[Ljavax/net/ssl/X509TrustManager;
    const/4 v2, 0x0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v2, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1           #xtmArray:[Ljavax/net/ssl/X509TrustManager;
    :goto_0
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/splashtop/remote/net/HttpsClient;->hnv:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 61
    return-void

    .line 52
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public run()Ljava/lang/String;
    .locals 13

    .prologue
    .line 64
    const/4 v8, 0x0

    .line 66
    .local v8, result:Ljava/lang/String;
    :try_start_0
    new-instance v11, Ljava/net/URL;

    iget-object v12, p0, Lcom/splashtop/remote/net/HttpsClient;->url:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    .line 67
    .local v10, urlCon:Ljava/net/URLConnection;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 69
    .local v2, in:Ljava/io/BufferedReader;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v9, sb:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 71
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 83
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v4           #line:Ljava/lang/String;
    .end local v9           #sb:Ljava/lang/StringBuilder;
    .end local v10           #urlCon:Ljava/net/URLConnection;
    :catch_0
    move-exception v11

    move-object v6, v11

    .line 84
    .local v6, mue:Ljava/net/MalformedURLException;
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 90
    .end local v6           #mue:Ljava/net/MalformedURLException;
    :cond_0
    :goto_1
    return-object v8

    .line 73
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v9       #sb:Ljava/lang/StringBuilder;
    .restart local v10       #urlCon:Ljava/net/URLConnection;
    :cond_1
    :try_start_1
    const-string v11, "Current Version:.*\\d+\\.\\d+\\.\\d+\\.\\d+"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 74
    .local v7, p:Ljava/util/regex/Pattern;
    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 75
    .local v5, m:Ljava/util/regex/Matcher;
    :cond_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 76
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, findStr:Ljava/lang/String;
    const-string v11, "\\d+\\.\\d+\\.\\d+\\.\\d+"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 78
    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 79
    :goto_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 80
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v8

    goto :goto_2

    .line 85
    .end local v1           #findStr:Ljava/lang/String;
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #m:Ljava/util/regex/Matcher;
    .end local v7           #p:Ljava/util/regex/Pattern;
    .end local v9           #sb:Ljava/lang/StringBuilder;
    .end local v10           #urlCon:Ljava/net/URLConnection;
    :catch_1
    move-exception v11

    move-object v3, v11

    .line 86
    .local v3, ioe:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 87
    .end local v3           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v11

    move-object v0, v11

    .line 88
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
