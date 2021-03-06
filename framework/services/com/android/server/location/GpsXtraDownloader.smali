.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNextServerIndex:I

.field private mXtraServers:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 11
    .parameter "context"
    .parameter "properties"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, count:I
    const-string v6, "XTRA_SERVER_1"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, server1:Ljava/lang/String;
    const-string v6, "XTRA_SERVER_2"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, server2:Ljava/lang/String;
    const-string v6, "XTRA_SERVER_3"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, server3:Ljava/lang/String;
    if-eqz v3, :cond_1c

    add-int/lit8 v0, v0, 0x1

    .line 63
    :cond_1c
    if-eqz v4, :cond_20

    add-int/lit8 v0, v0, 0x1

    .line 64
    :cond_20
    if-eqz v5, :cond_24

    add-int/lit8 v0, v0, 0x1

    .line 66
    :cond_24
    if-nez v0, :cond_2e

    .line 67
    const-string v6, "GpsXtraDownloader"

    const-string v7, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_2d
    return-void

    .line 70
    :cond_2e
    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    .line 72
    if-eqz v3, :cond_5a

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    aput-object v3, v6, v0

    .line 73
    :goto_3b
    if-eqz v4, :cond_44

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    aput-object v4, v6, v1

    move v1, v0

    .line 74
    .end local v0           #count:I
    .restart local v1       #count:I
    :cond_44
    if-eqz v5, :cond_58

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    aput-object v5, v6, v1

    .line 77
    :goto_4c
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 78
    .local v2, random:Ljava/util/Random;
    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    goto :goto_2d

    .end local v0           #count:I
    .end local v2           #random:Ljava/util/Random;
    .restart local v1       #count:I
    :cond_58
    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_4c

    :cond_5a
    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_3b
.end method

.method protected static doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B
    .registers 9
    .parameter "url"
    .parameter "isProxySet"
    .parameter "proxyHost"
    .parameter "proxyPort"

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    :try_start_1
    const-string v1, "Android"

    invoke-static {v1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 116
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, req:Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p1, :cond_1a

    .line 119
    new-instance p0, Lorg/apache/http/HttpHost;

    .end local p0
    invoke-direct {p0, p2, p3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 120
    .local p0, proxy:Lorg/apache/http/HttpHost;
    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    .end local p1
    invoke-static {p1, p0}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 123
    .end local p0           #proxy:Lorg/apache/http/HttpHost;
    :cond_1a
    const-string p0, "Accept"

    const-string p1, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-interface {v1, p0, p1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string p0, "x-wap-profile"

    const-string p1, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-interface {v1, p0, p1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 132
    .local p0, response:Lorg/apache/http/HttpResponse;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    .line 133
    .local p1, status:Lorg/apache/http/StatusLine;
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_8a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_81

    move-result p1

    .end local p1           #status:Lorg/apache/http/StatusLine;
    const/16 p2, 0xc8

    if-eq p1, p2, :cond_41

    .line 135
    .end local p2
    const/4 p0, 0x0

    .line 165
    .end local p0           #response:Lorg/apache/http/HttpResponse;
    if-eqz v0, :cond_3e

    .line 166
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_3e
    move-object p1, p0

    move-object p0, v0

    .line 169
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .end local v1           #req:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local p3
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    :goto_40
    return-object p1

    .line 138
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v1       #req:Lorg/apache/http/client/methods/HttpUriRequest;
    .local p0, response:Lorg/apache/http/HttpResponse;
    .restart local p3
    :cond_41
    :try_start_41
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_8a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_81

    move-result-object p2

    .line 139
    .local p2, entity:Lorg/apache/http/HttpEntity;
    const/4 p0, 0x0

    .line 140
    .local p0, body:[B
    if-eqz p2, :cond_6d

    .line 142
    :try_start_48
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    .end local v1           #req:Lorg/apache/http/client/methods/HttpUriRequest;
    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_68

    .line 143
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    long-to-int p1, v1

    new-array p0, p1, [B

    .line 144
    new-instance p1, Ljava/io/DataInputStream;

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p3

    .end local p3
    invoke-direct {p1, p3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_62
    .catchall {:try_start_48 .. :try_end_62} :catchall_7a

    .line 146
    .local p1, dis:Ljava/io/DataInputStream;
    :try_start_62
    invoke-virtual {p1, p0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_75

    .line 149
    :try_start_65
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_9c

    .line 156
    .end local p1           #dis:Ljava/io/DataInputStream;
    :cond_68
    :goto_68
    if-eqz p2, :cond_6d

    .line 157
    :try_start_6a
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_8a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_81

    .line 165
    :cond_6d
    if-eqz v0, :cond_72

    .line 166
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_72
    move-object p1, p0

    move-object p0, v0

    .line 161
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    goto :goto_40

    .line 148
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .local p0, body:[B
    .restart local p1       #dis:Ljava/io/DataInputStream;
    :catchall_75
    move-exception p3

    .line 149
    :try_start_76
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_93

    .line 148
    .end local p1           #dis:Ljava/io/DataInputStream;
    :goto_79
    :try_start_79
    throw p3
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7a

    .line 156
    :catchall_7a
    move-exception p1

    if-eqz p2, :cond_80

    .line 157
    :try_start_7d
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 156
    :cond_80
    throw p1
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_8a
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_81} :catch_81

    .line 162
    .end local p0           #body:[B
    .end local p2           #entity:Lorg/apache/http/HttpEntity;
    :catch_81
    move-exception p0

    move-object p0, v0

    .line 165
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    if-eqz p0, :cond_88

    .line 166
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 169
    :cond_88
    const/4 p1, 0x0

    goto :goto_40

    .line 165
    .end local p0           #client:Landroid/net/http/AndroidHttpClient;
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    :catchall_8a
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .restart local p0       #client:Landroid/net/http/AndroidHttpClient;
    if-eqz p0, :cond_92

    .line 166
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 165
    :cond_92
    throw p1

    .line 150
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .local p0, body:[B
    .restart local p1       #dis:Ljava/io/DataInputStream;
    .restart local p2       #entity:Lorg/apache/http/HttpEntity;
    :catch_93
    move-exception p1

    .line 151
    .local p1, e:Ljava/io/IOException;
    :try_start_94
    const-string v1, "GpsXtraDownloader"

    const-string v2, "Unexpected IOException."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_79

    .line 150
    .local p1, dis:Ljava/io/DataInputStream;
    :catch_9c
    move-exception p1

    .line 151
    .local p1, e:Ljava/io/IOException;
    const-string p3, "GpsXtraDownloader"

    const-string v1, "Unexpected IOException."

    invoke-static {p3, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a4
    .catchall {:try_start_94 .. :try_end_a4} :catchall_7a

    goto :goto_68
.end method


# virtual methods
.method downloadXtraData()[B
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 83
    iget-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, proxyHost:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v1

    .line 85
    .local v1, proxyPort:I
    if-eqz v0, :cond_1d

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1d

    const/4 v5, 0x1

    move v4, v5

    .line 86
    .local v4, useProxy:Z
    :goto_14
    const/4 v2, 0x0

    .line 87
    .local v2, result:[B
    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 89
    .local v3, startIndex:I
    iget-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v5, :cond_1f

    .line 90
    const/4 v5, 0x0

    .line 106
    :goto_1c
    return-object v5

    .end local v2           #result:[B
    .end local v3           #startIndex:I
    .end local v4           #useProxy:Z
    :cond_1d
    move v4, v7

    .line 85
    goto :goto_14

    .line 94
    .restart local v2       #result:[B
    .restart local v3       #startIndex:I
    .restart local v4       #useProxy:Z
    :cond_1f
    if-nez v2, :cond_3e

    .line 95
    iget-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v5, v5, v6

    invoke-static {v5, v4, v0, v1}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B

    move-result-object v2

    .line 98
    iget v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 99
    iget v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v6, v6

    if-ne v5, v6, :cond_3a

    .line 100
    iput v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 103
    :cond_3a
    iget v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v5, v3, :cond_1f

    :cond_3e
    move-object v5, v2

    .line 106
    goto :goto_1c
.end method
