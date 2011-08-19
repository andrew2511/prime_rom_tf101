.class public Lcom/asus/vibe/api/VibeHttpRequest;
.super Ljava/lang/Object;
.source "VibeHttpRequest.java"


# instance fields
.field private mBitmapResponse:[B

.field private mFileResponse:Ljava/io/File;

.field private mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mMethod:Ljava/lang/String;

.field private mPostData:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mHeaders:Ljava/util/ArrayList;

    .line 42
    iput-object v1, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mFileResponse:Ljava/io/File;

    .line 43
    iput-object v1, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mBitmapResponse:[B

    .line 60
    iput-object v1, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 61
    iput-object v1, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mMethod:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mUrl:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 64
    iput-object v1, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mPostData:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .parameter "method"
    .parameter "url"
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mHeaders:Ljava/util/ArrayList;

    .line 42
    iput-object v1, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mFileResponse:Ljava/io/File;

    .line 43
    iput-object v1, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mBitmapResponse:[B

    .line 69
    iput-object v1, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 70
    iput-object p1, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mMethod:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mUrl:Ljava/lang/String;

    .line 72
    if-eqz p3, :cond_0

    .line 73
    iget-object v0, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 74
    iput-object p3, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mHeaders:Ljava/util/ArrayList;

    .line 76
    :cond_0
    iput-object p4, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mPostData:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private static getNewCacheFile()Ljava/io/File;
    .locals 6

    .prologue
    .line 46
    const/4 v2, 0x0

    .line 48
    .local v2, tmp:Ljava/io/File;
    :try_start_0
    const-string v4, "Vibe"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, filePath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #tmp:Ljava/io/File;
    .local v3, tmp:Ljava/io/File;
    move-object v2, v3

    .line 55
    .end local v1           #filePath:Ljava/lang/String;
    .end local v3           #tmp:Ljava/io/File;
    .restart local v2       #tmp:Ljava/io/File;
    :goto_0
    return-object v2

    .line 52
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 53
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "headerName"
    .parameter "headerValue"

    .prologue
    .line 95
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .local v0, header:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public execute(Lcom/asus/vibe/api/Interrupter;)I
    .locals 12
    .parameter "interrupter"

    .prologue
    const/4 v11, 0x0

    const/16 v10, -0x69

    .line 108
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v7, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 109
    iget-object v7, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const/16 v8, 0x61a8

    invoke-static {v7, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 111
    :try_start_0
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v10

    .line 162
    :goto_0
    return v7

    .line 112
    :cond_0
    const/4 v6, 0x0

    .line 113
    .local v6, response:Lorg/apache/http/HttpResponse;
    iget-object v7, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mMethod:Ljava/lang/String;

    const-string v8, "GET"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 114
    iget-object v7, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const/16 v8, 0x1388

    invoke-static {v7, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 115
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v10

    goto :goto_0

    .line 116
    :cond_1
    iget-object v7, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mHttpClient:Lorg/apache/http/client/HttpClient;

    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    iget-object v9, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mUrl:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 117
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v10

    goto :goto_0

    .line 118
    :cond_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 119
    .local v0, br:Ljava/io/BufferedReader;
    invoke-static {}, Lcom/asus/vibe/api/VibeHttpRequest;->getNewCacheFile()Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mFileResponse:Ljava/io/File;

    .line 120
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mFileResponse:Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 121
    .local v2, fout:Ljava/io/FileOutputStream;
    const-string v5, ""

    .line 122
    .local v5, line:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 123
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v10

    goto :goto_0

    .line 124
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    invoke-virtual {v2, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 158
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 159
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "ASUS@Vibe"

    const-string v8, "VibeHttpReq: Error happens during http session:"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    const/16 v7, -0x65

    goto :goto_0

    .line 126
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    move v7, v11

    .line 127
    goto/16 :goto_0

    .line 128
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .end local v5           #line:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mMethod:Ljava/lang/String;

    const-string v8, "POST"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 129
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    iget-object v7, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mUrl:Ljava/lang/String;

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 130
    .local v3, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    iget-object v7, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_7

    .line 131
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v10

    goto/16 :goto_0

    .line 132
    :cond_6
    iget-object v7, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 134
    :cond_7
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v10

    goto/16 :goto_0

    .line 135
    :cond_8
    const-string v7, "Content-Type"

    const-string v8, "text/xml"

    invoke-virtual {v3, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v7, Lorg/apache/http/entity/StringEntity;

    iget-object v8, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mPostData:Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 137
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v7

    if-eqz v7, :cond_9

    move v7, v10

    goto/16 :goto_0

    .line 138
    :cond_9
    iget-object v7, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v7, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 139
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v7

    if-eqz v7, :cond_a

    move v7, v10

    goto/16 :goto_0

    .line 140
    :cond_a
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 141
    .restart local v0       #br:Ljava/io/BufferedReader;
    invoke-static {}, Lcom/asus/vibe/api/VibeHttpRequest;->getNewCacheFile()Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mFileResponse:Ljava/io/File;

    .line 142
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mFileResponse:Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 143
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    const-string v5, ""

    .line 144
    .restart local v5       #line:Ljava/lang/String;
    :goto_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 145
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v7

    if-eqz v7, :cond_b

    move v7, v10

    goto/16 :goto_0

    .line 146
    :cond_b
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    invoke-virtual {v2, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 147
    const-string v7, "\n"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v2, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3

    .line 149
    :cond_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    move v7, v11

    .line 150
    goto/16 :goto_0

    .line 152
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .end local v3           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #i:I
    .end local v5           #line:Ljava/lang/String;
    :cond_d
    iget-object v7, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mMethod:Ljava/lang/String;

    const-string v8, "BITMAP"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 153
    invoke-virtual {p1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v7

    if-eqz v7, :cond_e

    move v7, v10

    goto/16 :goto_0

    .line 154
    :cond_e
    iget-object v7, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mHttpClient:Lorg/apache/http/client/HttpClient;

    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    iget-object v9, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mUrl:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 155
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v7

    iput-object v7, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mBitmapResponse:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v7, v11

    .line 156
    goto/16 :goto_0

    :cond_f
    move v7, v11

    .line 162
    goto/16 :goto_0
.end method

.method public getFileResponse()Ljava/io/File;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mFileResponse:Ljava/io/File;

    return-object v0
.end method

.method public getStringResponse()Ljava/lang/String;
    .locals 8

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, br:Ljava/io/BufferedReader;
    const-string v4, ""

    .line 177
    .local v4, response:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/asus/vibe/api/VibeHttpRequest;->mFileResponse:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    const-string v3, ""

    .line 179
    .local v3, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 187
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_1
    return-object v4

    .line 182
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 183
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 184
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 185
    .local v2, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 184
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_2
    move-exception v5

    move-object v2, v5

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .line 182
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_3
    move-exception v5

    move-object v2, v5

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2
.end method
