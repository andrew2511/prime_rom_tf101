.class public Lcom/google/android/youtube/core/transfer/UploadService;
.super Lcom/google/android/youtube/core/transfer/TransferService;
.source "UploadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/transfer/UploadService$BootReceiver;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "uploads.db"

.field private static final DEFAULT_NONWIFI_LIMIT:I = 0x1400000


# instance fields
.field private httpClient:Lorg/apache/http/client/HttpClient;

.field private nonWifiLimit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;-><init>()V

    .line 55
    return-void
.end method

.method public static createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    const-class v0, Lcom/google/android/youtube/core/transfer/UploadService;

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createTask(Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;Lcom/google/android/youtube/core/transfer/TransferTask$Listener;)Lcom/google/android/youtube/core/transfer/TransferTask;
    .locals 4
    .parameter "transfer"
    .parameter "listener"

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/youtube/core/transfer/UploadTask;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadService;->httpClient:Lorg/apache/http/client/HttpClient;

    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->networkUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/google/android/youtube/core/transfer/UploadTask;-><init>(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferTask$Listener;)V

    return-object v0
.end method

.method protected getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "uploads.db"

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 39
    invoke-super {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->onCreate()V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/UploadService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/BaseApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/BaseApplication;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadService;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 41
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/UploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "uploader_nonwifi_limit"

    const/high16 v2, 0x140

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/transfer/UploadService;->nonWifiLimit:I

    .line 43
    return-void
.end method

.method protected shouldRun(Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;)Z
    .locals 4
    .parameter "transfer"

    .prologue
    .line 47
    iget-wide v0, p1, Lcom/google/android/youtube/core/transfer/Transfer$MutableTransfer;->bytesTotal:J

    iget v2, p0, Lcom/google/android/youtube/core/transfer/UploadService;->nonWifiLimit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/UploadService;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
