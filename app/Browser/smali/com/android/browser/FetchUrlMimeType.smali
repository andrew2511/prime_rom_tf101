.class Lcom/android/browser/FetchUrlMimeType;
.super Ljava/lang/Thread;
.source "FetchUrlMimeType.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCookies:Ljava/lang/String;

.field private mRequest:Landroid/app/DownloadManager$Request;

.field private mUri:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/DownloadManager$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "request"
    .parameter "uri"
    .parameter "cookies"
    .parameter "userAgent"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/browser/FetchUrlMimeType;->mActivity:Landroid/app/Activity;

    .line 57
    iput-object p2, p0, Lcom/android/browser/FetchUrlMimeType;->mRequest:Landroid/app/DownloadManager$Request;

    .line 58
    iput-object p3, p0, Lcom/android/browser/FetchUrlMimeType;->mUri:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/android/browser/FetchUrlMimeType;->mCookies:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Lcom/android/browser/FetchUrlMimeType;->mUserAgent:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 67
    iget-object v13, p0, Lcom/android/browser/FetchUrlMimeType;->mUserAgent:Ljava/lang/String;

    invoke-static {v13}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 68
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    iget-object v13, p0, Lcom/android/browser/FetchUrlMimeType;->mActivity:Landroid/app/Activity;

    iget-object v14, p0, Lcom/android/browser/FetchUrlMimeType;->mUri:Ljava/lang/String;

    invoke-static {v13, v14}, Landroid/net/Proxy;->getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;

    move-result-object v6

    .line 69
    .local v6, httpHost:Lorg/apache/http/HttpHost;
    if-eqz v6, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v13

    invoke-static {v13, v6}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 72
    :cond_0
    new-instance v10, Lorg/apache/http/client/methods/HttpHead;

    iget-object v13, p0, Lcom/android/browser/FetchUrlMimeType;->mUri:Ljava/lang/String;

    invoke-direct {v10, v13}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 74
    .local v10, request:Lorg/apache/http/client/methods/HttpHead;
    iget-object v13, p0, Lcom/android/browser/FetchUrlMimeType;->mCookies:Ljava/lang/String;

    if-eqz v13, :cond_1

    iget-object v13, p0, Lcom/android/browser/FetchUrlMimeType;->mCookies:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_1

    .line 75
    const-string v13, "Cookie"

    iget-object v14, p0, Lcom/android/browser/FetchUrlMimeType;->mCookies:Ljava/lang/String;

    invoke-virtual {v10, v13, v14}, Lorg/apache/http/client/methods/HttpHead;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_1
    const/4 v8, 0x0

    .line 80
    .local v8, mimeType:Ljava/lang/String;
    const/4 v1, 0x0

    .line 82
    .local v1, contentDisposition:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v10}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 86
    .local v11, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_3

    .line 87
    const-string v13, "Content-Type"

    invoke-interface {v11, v13}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 88
    .local v5, header:Lorg/apache/http/Header;
    if-eqz v5, :cond_2

    .line 89
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 90
    const/16 v13, 0x3b

    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 91
    .local v12, semicolonIndex:I
    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    .line 92
    const/4 v13, 0x0

    invoke-virtual {v8, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 95
    .end local v12           #semicolonIndex:I
    :cond_2
    const-string v13, "Content-Disposition"

    invoke-interface {v11, v13}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 96
    .local v2, contentDispositionHeader:Lorg/apache/http/Header;
    if-eqz v2, :cond_3

    .line 97
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 105
    .end local v2           #contentDispositionHeader:Lorg/apache/http/Header;
    .end local v5           #header:Lorg/apache/http/Header;
    :cond_3
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 108
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    :goto_0
    if-eqz v8, :cond_6

    .line 109
    const-string v13, "text/plain"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "application/octet-stream"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 111
    :cond_4
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v13

    iget-object v14, p0, Lcom/android/browser/FetchUrlMimeType;->mUri:Ljava/lang/String;

    invoke-static {v14}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, newMimeType:Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 115
    iget-object v13, p0, Lcom/android/browser/FetchUrlMimeType;->mRequest:Landroid/app/DownloadManager$Request;

    invoke-virtual {v13, v9}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 118
    .end local v9           #newMimeType:Ljava/lang/String;
    :cond_5
    iget-object v13, p0, Lcom/android/browser/FetchUrlMimeType;->mUri:Ljava/lang/String;

    invoke-static {v13, v1, v8}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, filename:Ljava/lang/String;
    iget-object v13, p0, Lcom/android/browser/FetchUrlMimeType;->mRequest:Landroid/app/DownloadManager$Request;

    sget-object v14, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v13, v14, v4}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 124
    .end local v4           #filename:Ljava/lang/String;
    :cond_6
    iget-object v13, p0, Lcom/android/browser/FetchUrlMimeType;->mActivity:Landroid/app/Activity;

    const-string v14, "download"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/DownloadManager;

    .line 126
    .local v7, manager:Landroid/app/DownloadManager;
    iget-object v13, p0, Lcom/android/browser/FetchUrlMimeType;->mRequest:Landroid/app/DownloadManager$Request;

    invoke-virtual {v7, v13}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 127
    return-void

    .line 100
    .end local v7           #manager:Landroid/app/DownloadManager;
    :catch_0
    move-exception v13

    move-object v3, v13

    .line 101
    .local v3, ex:Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpHead;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 102
    .end local v3           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v13

    move-object v3, v13

    .line 103
    .local v3, ex:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpHead;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .end local v3           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v13
.end method
