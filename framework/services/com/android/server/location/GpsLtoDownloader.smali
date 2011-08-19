.class public Lcom/android/server/location/GpsLtoDownloader;
.super Ljava/lang/Object;
.source "GpsLtoDownloader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GpsLtoDownloader"

.field private static final mLtoFilePath:Ljava/lang/String; = "/data/gps/lto.dat"

.field private static mOut:Ljava/io/FileOutputStream;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLtoServer:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 5
    .parameter "context"
    .parameter "properties"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/server/location/GpsLtoDownloader;->mContext:Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, count:I
    const-string v1, "http://gllto.glpals.com/7day/v2/latest/lto2.dat"

    iput-object v1, p0, Lcom/android/server/location/GpsLtoDownloader;->mLtoServer:Ljava/lang/String;

    .line 63
    return-void
.end method

.method protected static doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B
    .registers 9
    .parameter "url"
    .parameter "isProxySet"
    .parameter "proxyHost"
    .parameter "proxyPort"

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    :try_start_1
    const-string v1, "Android"

    invoke-static {v1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 90
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, req:Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p1, :cond_1a

    .line 93
    new-instance p0, Lorg/apache/http/HttpHost;

    .end local p0
    invoke-direct {p0, p2, p3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 94
    .local p0, proxy:Lorg/apache/http/HttpHost;
    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    .end local p1
    invoke-static {p1, p0}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 97
    .end local p0           #proxy:Lorg/apache/http/HttpHost;
    :cond_1a
    const-string p0, "Accept"

    const-string p1, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-interface {v1, p0, p1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string p0, "x-wap-profile"

    const-string p1, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-interface {v1, p0, p1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 106
    .local p0, response:Lorg/apache/http/HttpResponse;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    .line 107
    .local p1, status:Lorg/apache/http/StatusLine;
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    .end local p2
    const/16 p3, 0xc8

    if-eq p2, p3, :cond_5d

    .line 108
    .end local p3
    const-string p0, "GpsLtoDownloader"

    .end local p0           #response:Lorg/apache/http/HttpResponse;
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "HTTP error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object p1

    .end local p1           #status:Lorg/apache/http/StatusLine;
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_d0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_54} :catch_a5

    .line 109
    const/4 p0, 0x0

    .line 145
    if-eqz v0, :cond_5a

    .line 146
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_5a
    move-object p1, p0

    move-object p0, v0

    .line 149
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .end local v1           #req:Lorg/apache/http/client/methods/HttpUriRequest;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    :goto_5c
    return-object p1

    .line 112
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v1       #req:Lorg/apache/http/client/methods/HttpUriRequest;
    .local p0, response:Lorg/apache/http/HttpResponse;
    .restart local p1       #status:Lorg/apache/http/StatusLine;
    :cond_5d
    :try_start_5d
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_d0
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_a5

    move-result-object p2

    .line 113
    .local p2, entity:Lorg/apache/http/HttpEntity;
    const/4 p0, 0x0

    .line 114
    .local p0, body:[B
    if-eqz p2, :cond_89

    .line 116
    :try_start_64
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    .end local v1           #req:Lorg/apache/http/client/methods/HttpUriRequest;
    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_84

    .line 117
    .end local p1           #status:Lorg/apache/http/StatusLine;
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    long-to-int p1, v1

    new-array p0, p1, [B

    .line 118
    new-instance p1, Ljava/io/DataInputStream;

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7e
    .catchall {:try_start_64 .. :try_end_7e} :catchall_9e

    .line 120
    .local p1, dis:Ljava/io/DataInputStream;
    :try_start_7e
    invoke-virtual {p1, p0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_99

    .line 123
    :try_start_81
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_9e
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_e2

    .line 130
    .end local p1           #dis:Ljava/io/DataInputStream;
    :cond_84
    :goto_84
    if-eqz p2, :cond_89

    .line 131
    :try_start_86
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 136
    :cond_89
    const-string p1, "/data/gps/lto.dat"

    invoke-static {p1, p0}, Lcom/android/server/location/GpsLtoDownloader;->saveDownload(Ljava/lang/String;[B)Z
    :try_end_8e
    .catchall {:try_start_86 .. :try_end_8e} :catchall_d0
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8e} :catch_a5

    move-result p1

    if-eqz p1, :cond_c7

    .line 145
    if-eqz v0, :cond_96

    .line 146
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_96
    move-object p1, p0

    move-object p0, v0

    .line 137
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    goto :goto_5c

    .line 122
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .local p0, body:[B
    .restart local p1       #dis:Ljava/io/DataInputStream;
    :catchall_99
    move-exception p3

    .line 123
    :try_start_9a
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9e
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_d9

    .line 122
    .end local p1           #dis:Ljava/io/DataInputStream;
    :goto_9d
    :try_start_9d
    throw p3
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9e

    .line 130
    :catchall_9e
    move-exception p1

    if-eqz p2, :cond_a4

    .line 131
    :try_start_a1
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 130
    :cond_a4
    throw p1
    :try_end_a5
    .catchall {:try_start_a1 .. :try_end_a5} :catchall_d0
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a5} :catch_a5

    .line 142
    .end local p0           #body:[B
    .end local p2           #entity:Lorg/apache/http/HttpEntity;
    :catch_a5
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 143
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    .local p1, e:Ljava/lang/Exception;
    :try_start_a8
    const-string p2, "GpsLtoDownloader"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #e:Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catchall {:try_start_a8 .. :try_end_c0} :catchall_eb

    .line 145
    if-eqz p0, :cond_c5

    .line 146
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 149
    :cond_c5
    const/4 p1, 0x0

    goto :goto_5c

    .line 139
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .local p0, body:[B
    .restart local p2       #entity:Lorg/apache/http/HttpEntity;
    :cond_c7
    const/4 p0, 0x0

    .line 145
    .end local p0           #body:[B
    if-eqz v0, :cond_cd

    .line 146
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_cd
    move-object p1, p0

    move-object p0, v0

    .line 139
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    goto :goto_5c

    .line 145
    .end local p0           #client:Landroid/net/http/AndroidHttpClient;
    .end local p2           #entity:Lorg/apache/http/HttpEntity;
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    :catchall_d0
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .restart local p0       #client:Landroid/net/http/AndroidHttpClient;
    :goto_d3
    if-eqz p0, :cond_d8

    .line 146
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 145
    :cond_d8
    throw p1

    .line 124
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .local p0, body:[B
    .local p1, dis:Ljava/io/DataInputStream;
    .restart local p2       #entity:Lorg/apache/http/HttpEntity;
    :catch_d9
    move-exception p1

    .line 125
    .local p1, e:Ljava/io/IOException;
    :try_start_da
    const-string v1, "GpsLtoDownloader"

    const-string v2, "Unexpected IOException."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9d

    .line 124
    .local p1, dis:Ljava/io/DataInputStream;
    :catch_e2
    move-exception p1

    .line 125
    .local p1, e:Ljava/io/IOException;
    const-string p3, "GpsLtoDownloader"

    const-string v1, "Unexpected IOException."

    invoke-static {p3, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ea
    .catchall {:try_start_da .. :try_end_ea} :catchall_9e

    goto :goto_84

    .line 145
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .end local p1           #e:Ljava/io/IOException;
    .end local p2           #entity:Lorg/apache/http/HttpEntity;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    :catchall_eb
    move-exception p1

    goto :goto_d3
.end method

.method private static saveDownload(Ljava/lang/String;[B)Z
    .registers 5
    .parameter "mPath"
    .parameter "mData"

    .prologue
    .line 157
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, mFile:Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sput-object v2, Lcom/android/server/location/GpsLtoDownloader;->mOut:Ljava/io/FileOutputStream;

    .line 159
    sget-object v2, Lcom/android/server/location/GpsLtoDownloader;->mOut:Ljava/io/FileOutputStream;

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 161
    sget-object v2, Lcom/android/server/location/GpsLtoDownloader;->mOut:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_1f

    .line 162
    sget-object v2, Lcom/android/server/location/GpsLtoDownloader;->mOut:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 163
    sget-object v2, Lcom/android/server/location/GpsLtoDownloader;->mOut:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_21

    .line 170
    :cond_1f
    const/4 v2, 0x1

    .end local v1           #mFile:Ljava/io/File;
    :goto_20
    return v2

    .line 165
    :catch_21
    move-exception v2

    move-object v0, v2

    .line 167
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 168
    const/4 v2, 0x0

    goto :goto_20
.end method


# virtual methods
.method downloadLtoData()[B
    .registers 6

    .prologue
    .line 66
    iget-object v4, p0, Lcom/android/server/location/GpsLtoDownloader;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, proxyHost:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/location/GpsLtoDownloader;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v1

    .line 68
    .local v1, proxyPort:I
    if-eqz v0, :cond_1a

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1a

    const/4 v4, 0x1

    move v3, v4

    .line 69
    .local v3, useProxy:Z
    :goto_13
    const/4 v2, 0x0

    .line 71
    .local v2, result:[B
    iget-object v4, p0, Lcom/android/server/location/GpsLtoDownloader;->mLtoServer:Ljava/lang/String;

    if-nez v4, :cond_1d

    .line 72
    const/4 v4, 0x0

    .line 80
    :goto_19
    return-object v4

    .line 68
    .end local v2           #result:[B
    .end local v3           #useProxy:Z
    :cond_1a
    const/4 v4, 0x0

    move v3, v4

    goto :goto_13

    .line 76
    .restart local v2       #result:[B
    .restart local v3       #useProxy:Z
    :cond_1d
    if-nez v2, :cond_25

    .line 77
    iget-object v4, p0, Lcom/android/server/location/GpsLtoDownloader;->mLtoServer:Ljava/lang/String;

    invoke-static {v4, v3, v0, v1}, Lcom/android/server/location/GpsLtoDownloader;->doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B

    move-result-object v2

    :cond_25
    move-object v4, v2

    .line 80
    goto :goto_19
.end method
