.class Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;
.super Ljava/lang/Object;
.source "AndroidHttpConnectionFactory.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidGoogleHttpConnection"
.end annotation


# instance fields
.field private baos:Ljava/io/ByteArrayOutputStream;

.field private closed:Z

.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private response:Lorg/apache/http/HttpResponse;

.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;


# direct methods
.method private constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;Ljava/lang/String;Z)V
    .registers 9
    .parameter
    .parameter "url"
    .parameter "usePost"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 99
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->this$0:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->baos:Ljava/io/ByteArrayOutputStream;

    .line 95
    iput-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->response:Lorg/apache/http/HttpResponse;

    .line 101
    if-eqz p3, :cond_1d

    .line 102
    :try_start_c
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->request:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_13} :catch_25

    .line 114
    :goto_13
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->access$100()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 115
    :try_start_18
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->access$208()I

    .line 118
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_4d

    .line 119
    return-void

    .line 104
    :cond_1d
    :try_start_1d
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->request:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_24} :catch_25

    goto :goto_13

    .line 106
    :catch_25
    move-exception v3

    move-object v0, v3

    .line 107
    .local v0, e:Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URISyntaxException in HttpUriRequest, post="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, message:Ljava/lang/String;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, f:Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 112
    throw v1

    .line 118
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #f:Ljava/io/IOException;
    .end local v2           #message:Ljava/lang/String;
    :catchall_4d
    move-exception v4

    :try_start_4e
    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v4
.end method

.method synthetic constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;Ljava/lang/String;ZLandroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;Ljava/lang/String;Z)V

    return-void
.end method

.method private getResponse()Lorg/apache/http/HttpResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->response:Lorg/apache/http/HttpResponse;

    if-nez v1, :cond_28

    .line 126
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_1a

    .line 128
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    check-cast v1, Lorg/apache/http/client/methods/HttpPost;

    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 132
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->this$0:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

    #getter for: Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->client:Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->access$300(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;)Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;

    move-result-object v1

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->response:Lorg/apache/http/HttpResponse;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_28} :catch_2b

    .line 138
    :cond_28
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->response:Lorg/apache/http/HttpResponse;

    return-object v1

    .line 133
    :catch_2b
    move-exception v1

    move-object v0, v1

    .line 135
    .local v0, e:Ljava/io/IOException;
    throw v0
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->response:Lorg/apache/http/HttpResponse;

    if-eqz v2, :cond_f

    .line 186
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 187
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_f

    .line 189
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 195
    .end local v0           #entity:Lorg/apache/http/HttpEntity;
    :cond_f
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->access$100()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 196
    :try_start_14
    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->closed:Z

    if-eqz v3, :cond_1a

    .line 197
    monitor-exit v2

    .line 207
    :goto_19
    return-void

    .line 199
    :cond_1a
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->closed:Z

    .line 201
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->access$210()I

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection closed.  # of open connections="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->access$200()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, logMessage:Ljava/lang/String;
    monitor-exit v2

    goto :goto_19

    .end local v1           #logMessage:Ljava/lang/String;
    :catchall_39
    move-exception v3

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_14 .. :try_end_3b} :catchall_39

    throw v3
.end method

.method public getContentType()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    .line 180
    .local v0, header:Lorg/apache/http/Header;
    if-nez v0, :cond_11

    const-string v1, ""

    :goto_10
    return-object v1

    :cond_11
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_10
.end method

.method public getLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResponseCode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public openDataOutputStream()Ljava/io/DataOutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    instance-of v0, v0, Lorg/apache/http/client/methods/HttpPost;

    if-nez v0, :cond_25

    .line 145
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t open output stream on a GET to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_25
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->baos:Ljava/io/ByteArrayOutputStream;

    .line 149
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "property"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 167
    :cond_10
    :goto_10
    return-void

    .line 166
    :cond_11
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method
