.class final Lcom/google/android/apps/uploader/E;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field private a:Landroid/telephony/TelephonyManager;

.field private synthetic b:Lcom/google/android/apps/uploader/UploadService;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/apps/uploader/UploadService;)V
    .locals 1
    .parameter

    .prologue
    .line 522
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/uploader/E;-><init>(Lcom/google/android/apps/uploader/UploadService;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/apps/uploader/UploadService;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/google/android/apps/uploader/E;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 527
    const-string v0, "MediaUploader"

    const-string v1, "Registering DataConnectionStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/google/android/apps/uploader/E;->b:Lcom/google/android/apps/uploader/UploadService;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/UploadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/google/android/apps/uploader/E;->a:Landroid/telephony/TelephonyManager;

    .line 529
    iget-object v0, p0, Lcom/google/android/apps/uploader/E;->a:Landroid/telephony/TelephonyManager;

    const/16 v1, 0x40

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 530
    iget-object v0, p0, Lcom/google/android/apps/uploader/E;->b:Lcom/google/android/apps/uploader/UploadService;

    iget-object v1, p0, Lcom/google/android/apps/uploader/E;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/apps/uploader/UploadService;->b(Lcom/google/android/apps/uploader/UploadService;Z)Z

    .line 531
    return-void

    .line 530
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final onDataConnectionStateChanged(I)V
    .locals 3
    .parameter

    .prologue
    .line 535
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    .line 536
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/E;->b:Lcom/google/android/apps/uploader/UploadService;

    monitor-enter v1

    .line 537
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/uploader/E;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v2}, Lcom/google/android/apps/uploader/UploadService;->e(Lcom/google/android/apps/uploader/UploadService;)Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 538
    iget-object v2, p0, Lcom/google/android/apps/uploader/E;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v2, v0}, Lcom/google/android/apps/uploader/UploadService;->b(Lcom/google/android/apps/uploader/UploadService;Z)Z

    .line 539
    iget-object v0, p0, Lcom/google/android/apps/uploader/E;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v0}, Lcom/google/android/apps/uploader/UploadService;->e(Lcom/google/android/apps/uploader/UploadService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    const-string v0, "MediaUploader"

    const-string v2, "Data connection came back, resuming"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/google/android/apps/uploader/E;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v0}, Lcom/google/android/apps/uploader/UploadService;->c(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/v;->c()V

    .line 546
    :cond_0
    :goto_1
    monitor-exit v1

    return-void

    .line 535
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 543
    :cond_2
    const-string v0, "MediaUploader"

    const-string v2, "Data connection dropped"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
