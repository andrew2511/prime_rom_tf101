.class Lcom/google/android/feedback/SendService$ScannerThread;
.super Ljava/lang/Thread;
.source "SendService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/feedback/SendService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScannerThread"
.end annotation


# instance fields
.field private mDataDir:Ljava/io/File;

.field final synthetic this$0:Lcom/google/android/feedback/SendService;


# direct methods
.method public constructor <init>(Lcom/google/android/feedback/SendService;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter "dataDir"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/feedback/SendService$ScannerThread;->this$0:Lcom/google/android/feedback/SendService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 151
    iput-object p2, p0, Lcom/google/android/feedback/SendService$ScannerThread;->mDataDir:Ljava/io/File;

    .line 152
    return-void
.end method

.method private isReportFile(Ljava/io/File;)Z
    .locals 2
    .parameter "file"

    .prologue
    .line 192
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".proto.gz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private sendReport(Ljava/io/File;)Z
    .locals 7
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v3, 0x0

    .line 203
    .local v3, ioErrorCount:I
    const/4 v1, 0x0

    .line 205
    .local v1, error:Ljava/io/IOException;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_0

    .line 207
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/feedback/SendService$ScannerThread;->sendReportHelper(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Ljava/io/IOException;
    const-string v4, "GoogleFeedbackSenderThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "network error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    move-object v1, v0

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    throw v1
.end method

.method private sendReportHelper(Ljava/io/File;)Z
    .locals 8
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 224
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    const-string v4, "https://www.google.com/tools/feedback/android/submit"

    invoke-direct {v0, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v4, "Content-encoding"

    const-string v5, "gzip"

    invoke-virtual {v0, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v4, Lorg/apache/http/entity/FileEntity;

    const-string v5, "application/x-protobuf"

    invoke-direct {v4, p1, v5}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 228
    iget-object v4, p0, Lcom/google/android/feedback/SendService$ScannerThread;->this$0:Lcom/google/android/feedback/SendService;

    invoke-static {v4}, Lcom/google/android/feedback/SendService;->access$000(Lcom/google/android/feedback/SendService;)Lcom/google/android/common/http/GoogleHttpClient;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 229
    .local v1, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 231
    .local v3, statusLine:Lorg/apache/http/StatusLine;
    if-nez v3, :cond_0

    .line 232
    const-string v4, "GoogleFeedbackSenderThread"

    const-string v5, "null status line"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 251
    :goto_0
    return v4

    .line 236
    :cond_0
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 237
    .local v2, status:I
    const-string v4, "GoogleFeedbackSenderThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sending report status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    div-int/lit8 v2, v2, 0x64

    .line 240
    packed-switch v2, :pswitch_data_0

    .line 248
    const/4 v4, 0x1

    goto :goto_0

    :pswitch_0
    move v4, v7

    .line 251
    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method notifyThreadFinished(ZZ)V
    .locals 2
    .parameter "networkError"
    .parameter "allReportsSent"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/feedback/SendService$ScannerThread;->this$0:Lcom/google/android/feedback/SendService;

    invoke-static {v0}, Lcom/google/android/feedback/SendService;->access$200(Lcom/google/android/feedback/SendService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/feedback/SendService$ScannerThread$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/feedback/SendService$ScannerThread$1;-><init>(Lcom/google/android/feedback/SendService$ScannerThread;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    .line 159
    const/4 v7, 0x0

    .line 160
    .local v7, networkError:Z
    const/4 v0, 0x1

    .line 163
    .local v0, allReportsSent:Z
    :try_start_0
    iget-object v8, p0, Lcom/google/android/feedback/SendService$ScannerThread;->mDataDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 164
    .local v4, files:[Ljava/io/File;
    if-nez v4, :cond_0

    .line 187
    invoke-virtual {p0, v7, v0}, Lcom/google/android/feedback/SendService$ScannerThread;->notifyThreadFinished(ZZ)V

    .line 189
    .end local v4           #files:[Ljava/io/File;
    :goto_0
    return-void

    .line 167
    .restart local v4       #files:[Ljava/io/File;
    :cond_0
    move-object v1, v4

    .local v1, arr$:[Ljava/io/File;
    :try_start_1
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v3, v1, v5

    .line 168
    .local v3, file:Ljava/io/File;
    invoke-direct {p0, v3}, Lcom/google/android/feedback/SendService$ScannerThread;->isReportFile(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 169
    invoke-direct {p0, v3}, Lcom/google/android/feedback/SendService$ScannerThread;->sendReport(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 172
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 176
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 187
    .end local v3           #file:Ljava/io/File;
    :cond_3
    invoke-virtual {p0, v7, v0}, Lcom/google/android/feedback/SendService$ScannerThread;->notifyThreadFinished(ZZ)V

    goto :goto_0

    .line 180
    .end local v1           #arr$:[Ljava/io/File;
    .end local v4           #files:[Ljava/io/File;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 183
    .local v2, e:Ljava/io/IOException;
    :try_start_2
    const-string v8, "GoogleFeedbackSenderThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "3 failed attempts, giving up for now"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    const/4 v7, 0x1

    .line 185
    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, v7, v0}, Lcom/google/android/feedback/SendService$ScannerThread;->notifyThreadFinished(ZZ)V

    goto :goto_0

    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    invoke-virtual {p0, v7, v0}, Lcom/google/android/feedback/SendService$ScannerThread;->notifyThreadFinished(ZZ)V

    throw v8
.end method
