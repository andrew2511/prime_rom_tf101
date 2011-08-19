.class Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;
.super Landroid/os/AsyncTask;
.source "SystemUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/update/SystemUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mLastDownloadBytes:J

.field private mLastDownloadStatus:I

.field private mProvisioned:Z

.field final synthetic this$0:Lcom/google/android/gsf/update/SystemUpdateService;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/update/SystemUpdateService;)V
    .locals 1
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mProvisioned:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/update/SystemUpdateService;Lcom/google/android/gsf/update/SystemUpdateService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;-><init>(Lcom/google/android/gsf/update/SystemUpdateService;)V

    return-void
.end method

.method private cancelUpdate()V
    .locals 7

    .prologue
    const/high16 v6, 0x1000

    const/4 v5, 0x0

    .line 586
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 587
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const-class v4, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 590
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 592
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$400(Lcom/google/android/gsf/update/SystemUpdateService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 593
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$500(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 594
    const-string v1, "SystemUpdateService"

    const-string v2, "cancelUpdate: cancelling verifier"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$500(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->cancel(Z)Z

    .line 596
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$502(Lcom/google/android/gsf/update/SystemUpdateService;Lcom/google/android/gsf/update/SystemUpdateVerifierTask;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    .line 598
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    const-string v0, "SystemUpdateService"

    const-string v1, "removeAllDownloads (cancelUpdate)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$600(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/Download;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/update/Download;->removeAllDownloads()V

    .line 603
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_approved"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "install_approved"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "url"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "filename"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "verified"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_dialog"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notified"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "install_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "started_download"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 618
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const-class v2, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 620
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 621
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/update/SystemUpdateService;->startActivity(Landroid/content/Intent;)V

    .line 624
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const-class v2, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 626
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 627
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/update/SystemUpdateService;->startActivity(Landroid/content/Intent;)V

    .line 629
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->cancelNotifications(Landroid/content/Context;)V

    .line 630
    return-void

    .line 598
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private checkDownload(Ljava/lang/String;I)Z
    .locals 13
    .parameter
    .parameter

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 402
    invoke-direct {p0, p2}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->isAutomaticallyDownloaded(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v9

    .line 404
    :goto_0
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$600(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/Download;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/update/Download;->getStatus()Lcom/google/android/gsf/update/Download$StatusInfo;

    move-result-object v1

    .line 405
    if-nez v1, :cond_3

    .line 406
    const-string v1, "SystemUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "starting download of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 408
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "update_download_watchdog_sec"

    const/16 v4, 0x5460

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 410
    if-lez v2, :cond_0

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v5, v2

    add-long v2, v3, v5

    .line 412
    const-string v4, "watchdog_deadline"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 413
    invoke-direct {p0, v2, v3, v9}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->retryAt(JZ)V

    .line 415
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 417
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "update_token"

    invoke-static {v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 418
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$600(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/Download;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->getAllowRoaming(I)Z

    move-result v3

    invoke-virtual {v2, p1, v1, v0, v3}, Lcom/google/android/gsf/update/Download;->downloadUpdate(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 423
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$600(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/Download;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/update/Download;->getStatus()Lcom/google/android/gsf/update/Download$StatusInfo;

    move-result-object v0

    .line 424
    if-nez v0, :cond_2

    .line 425
    const-string v0, "SystemUpdateService"

    const-string v1, "just-started download disappeared"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->setStatus(I)V

    .line 427
    invoke-direct {p0, p2, v8}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->downloadFailed(II)V

    :goto_1
    move v0, v8

    .line 538
    :goto_2
    return v0

    :cond_1
    move v0, v8

    .line 402
    goto/16 :goto_0

    .line 429
    :cond_2
    iget v1, v0, Lcom/google/android/gsf/update/Download$StatusInfo;->reason:I

    iput v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadStatus:I

    .line 430
    iget-wide v1, v0, Lcom/google/android/gsf/update/Download$StatusInfo;->bytesSoFar:J

    iput-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadBytes:J

    .line 431
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "status"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "download_id"

    iget-wide v3, v0, Lcom/google/android/gsf/update/Download$StatusInfo;->id:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "verified"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 439
    :cond_3
    const-string v2, "SystemUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download in progress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gsf/update/Download$StatusInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget v2, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->reason:I

    iput v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadStatus:I

    .line 441
    iget-wide v2, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->bytesSoFar:J

    iput-wide v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadBytes:J

    .line 444
    iget-boolean v2, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->completed:Z

    if-nez v2, :cond_5

    .line 446
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "watchdog_deadline"

    invoke-interface {v0, v1, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 447
    cmp-long v2, v0, v11

    if-lez v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_4

    .line 448
    const-string v0, "SystemUpdateService"

    const-string v1, "download took too long; will cancel and retry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->setStatus(I)V

    .line 450
    invoke-direct {p0, p2, v8}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->downloadFailed(II)V

    :cond_4
    move v0, v8

    .line 452
    goto :goto_2

    .line 455
    :cond_5
    iget-boolean v2, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->successful:Z

    if-nez v2, :cond_6

    .line 457
    const-string v0, "SystemUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download failed (reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->reason:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-direct {p0, p2, v8}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->downloadFailed(II)V

    move v0, v8

    .line 459
    goto/16 :goto_2

    .line 462
    :cond_6
    iget-object v2, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->filename:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 463
    const-string v0, "SystemUpdateService"

    const-string v1, "download completed but no filename available"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-direct {p0, p2, v8}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->downloadFailed(II)V

    move v0, v8

    .line 465
    goto/16 :goto_2

    .line 468
    :cond_7
    iget-wide v2, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->id:J

    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "download_id"

    const-wide/16 v6, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    iget-object v2, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->filename:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "filename"

    invoke-interface {v3, v4, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 470
    :cond_8
    const-string v2, "SystemUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download id now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; filename now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filename"

    iget-object v4, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->filename:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "download_id"

    iget-wide v4, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->id:J

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "verified"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 476
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$400(Lcom/google/android/gsf/update/SystemUpdateService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 477
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$500(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 478
    const-string v3, "SystemUpdateService"

    const-string v4, "checkDownload: cancelling verifier"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$500(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->cancel(Z)Z

    .line 480
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$502(Lcom/google/android/gsf/update/SystemUpdateService;Lcom/google/android/gsf/update/SystemUpdateVerifierTask;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    .line 482
    :cond_9
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :cond_a
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "verified"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 486
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "verified"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 487
    const-string v0, "SystemUpdateService"

    const-string v1, "verification is successful"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$400(Lcom/google/android/gsf/update/SystemUpdateService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 489
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$502(Lcom/google/android/gsf/update/SystemUpdateService;Lcom/google/android/gsf/update/SystemUpdateVerifierTask;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    .line 490
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 491
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "install_approved"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 492
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->install()V

    move v0, v9

    .line 493
    goto/16 :goto_2

    .line 482
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 490
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 495
    :cond_b
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->setStatus(I)V

    .line 496
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/OperationScheduler;->onSuccess()V

    .line 498
    const-string v0, "SystemUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sIsActivityUp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/google/android/gsf/update/SystemUpdateActivity;->sIsActivityUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    sget-boolean v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->sIsActivityUp:Z

    if-nez v0, :cond_c

    .line 501
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "next_dialog"

    invoke-interface {v0, v1, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 502
    const-string v2, "SystemUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "when = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_d

    .line 504
    const v0, 0x7f08001b

    const v1, 0x7f08001c

    const v2, 0x7f020016

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->notifyWithActivity(III)V

    :cond_c
    :goto_3
    move v0, v8

    .line 523
    goto/16 :goto_2

    .line 509
    :cond_d
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const-class v2, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 511
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 512
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/update/SystemUpdateService;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 517
    :cond_e
    const-string v0, "SystemUpdateService"

    const-string v1, "verification of system update package failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->setStatus(I)V

    .line 519
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "update_verify_redownload_delay_sec"

    const v2, 0xa8c0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->downloadFailed(II)V

    goto :goto_3

    .line 526
    :cond_f
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$400(Lcom/google/android/gsf/update/SystemUpdateService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 527
    :try_start_4
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$500(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 529
    const-string v0, "SystemUpdateService"

    const-string v1, "verification already in progress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    monitor-exit v2

    move v0, v8

    goto/16 :goto_2

    .line 533
    :cond_10
    const-string v3, "SystemUpdateService"

    const-string v4, "starting package verification"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->setStatus(I)V

    .line 535
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    new-instance v4, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    new-instance v6, Ljava/io/File;

    iget-object v1, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->filename:Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v4, v5, v6, v1, v0}, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/content/SharedPreferences;Z)V

    invoke-static {v3, v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$502(Lcom/google/android/gsf/update/SystemUpdateService;Lcom/google/android/gsf/update/SystemUpdateVerifierTask;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    .line 537
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$500(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateVerifierTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 538
    monitor-exit v2

    move v0, v9

    goto/16 :goto_2

    .line 539
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method private downloadFailed(II)V
    .locals 7
    .parameter "urgency"
    .parameter "minRetryDelaySec"

    .prologue
    const/4 v6, 0x6

    .line 353
    invoke-direct {p0, v6}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->setStatus(I)V

    .line 354
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/OperationScheduler;->onTransientError()V

    .line 355
    const-string v3, "SystemUpdateService"

    const-string v4, "removeAllDownloads (download failed)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$600(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/Download;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gsf/update/Download;->removeAllDownloads()V

    .line 357
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 358
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "status"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 359
    const-string v3, "status"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 361
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->isAutomaticallyDownloaded(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 362
    const-string v3, "download_approved"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 363
    const v3, 0x7f08001d

    const v4, 0x7f08001e

    const v5, 0x7f020017

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->notifyWithActivity(III)V

    .line 374
    :goto_0
    const-string v3, "watchdog_deadline"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 375
    return-void

    .line 368
    :cond_1
    if-lez p2, :cond_2

    .line 369
    mul-int/lit16 v3, p2, 0x3e8

    int-to-long v3, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long v1, v3, v5

    .line 370
    .local v1, when:J
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/common/OperationScheduler;->setMoratoriumTimeMillis(J)V

    .line 372
    .end local v1           #when:J
    :cond_2
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$300(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler$Options;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/common/OperationScheduler;->getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->retryAt(JZ)V

    goto :goto_0
.end method

.method private getAllowRoaming(I)Z
    .locals 6
    .parameter "urgency"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 386
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "update_allow_roaming"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 387
    .local v0, v:I
    if-gez v0, :cond_1

    .line 390
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    move v1, v5

    .line 392
    :goto_0
    return v1

    :cond_0
    move v1, v4

    .line 390
    goto :goto_0

    .line 392
    :cond_1
    if-eqz v0, :cond_2

    move v1, v5

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_0
.end method

.method private install()V
    .locals 6

    .prologue
    .line 555
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "filename"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, filename:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 557
    const-string v2, "SystemUpdateService"

    const-string v3, "can\'t install; filename disappeared"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "status"

    const/4 v4, 0x5

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "install_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 565
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->logState()V

    .line 567
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 568
    const-string v2, "SystemUpdateService"

    const-string v3, "install package has disappeared!"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    .line 574
    .local v0, context:Landroid/content/Context;
    new-instance v2, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$1;-><init>(Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask$1;->start()V

    goto :goto_0
.end method

.method private isAutomaticallyDownloaded(I)Z
    .locals 1
    .parameter "urgency"

    .prologue
    .line 545
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyWithActivity(III)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejected_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "url"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 635
    sget-boolean v1, Lcom/google/android/gsf/update/SystemUpdateActivity;->sIsActivityUp:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    :cond_0
    const-string v0, "SystemUpdateService"

    const-string v1, "skipping notification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :goto_0
    return-void

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 644
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 645
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 647
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const-class v4, Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 648
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v3, v6, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 651
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 652
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "notified"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 655
    iput-object v1, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 656
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "notified"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 658
    :cond_2
    iput p3, v3, Landroid/app/Notification;->icon:I

    .line 659
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v3, v4, v1, v0, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 662
    iget v0, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v3, Landroid/app/Notification;->flags:I

    .line 664
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 666
    invoke-virtual {p0, p3, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private retryAt(JZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 378
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 379
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const-class v4, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 382
    if-eqz p3, :cond_0

    move v2, v5

    :goto_0
    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 383
    return-void

    .line 382
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private setStatus(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "status"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 552
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    check-cast p1, [Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 11
    .parameter

    .prologue
    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 199
    const-string v2, "SystemUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UpdateTask at time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "provisioned"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 201
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 207
    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    .line 208
    :goto_0
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "provisioned"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 210
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mProvisioned:Z

    .line 212
    const/4 v4, 0x0

    iput v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadStatus:I

    .line 213
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadBytes:J

    .line 214
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "update_url"

    invoke-static {v4, v5}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 215
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 216
    const-string v0, "SystemUpdateService"

    const-string v1, "cancelUpdate (empty URL)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->cancelUpdate()V

    .line 218
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->logState()V

    .line 219
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->stopSelf()V

    .line 220
    const/4 v0, 0x0

    .line 349
    :goto_2
    return-object v0

    :cond_2
    move-wide v2, v0

    .line 207
    goto :goto_0

    .line 210
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 223
    :cond_4
    const/4 v5, 0x0

    aget-object v5, p1, v5

    const-string v6, "download_now"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 224
    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v5}, Lcom/google/android/gsf/update/SystemUpdateService;->access$200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/OperationScheduler;->resetTransientError()V

    .line 225
    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v5}, Lcom/google/android/gsf/update/SystemUpdateService;->access$200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 235
    :cond_5
    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v5}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "status"

    const/4 v7, -0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_7

    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v5}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "url"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v5}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "install_time"

    const-wide/16 v7, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v7}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "update_retry_delay_sec"

    const v9, 0x3f480

    invoke-static {v7, v8, v9}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    int-to-long v7, v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    cmp-long v5, v0, v5

    if-gtz v5, :cond_6

    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v5}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "install_time"

    const-wide/16 v7, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/32 v7, 0x36ee80

    sub-long/2addr v5, v7

    cmp-long v5, v0, v5

    if-gez v5, :cond_7

    .line 241
    :cond_6
    const-string v5, "SystemUpdateService"

    const-string v6, "cancelUpdate (willing to retry now)"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->cancelUpdate()V

    .line 245
    :cond_7
    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v5}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "update_urgency"

    const/4 v7, 0x3

    invoke-static {v5, v6, v7}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 247
    iget-object v6, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v6}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "url"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 249
    const-string v6, "SystemUpdateService"

    const-string v7, "cancelUpdate (update URL has changed)"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->cancelUpdate()V

    .line 251
    iget-object v6, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v6}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 252
    const-string v7, "url"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "status"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 254
    packed-switch v5, :pswitch_data_0

    .line 271
    :goto_3
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 272
    iget-object v6, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v6}, Lcom/google/android/gsf/update/SystemUpdateService;->access$200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/common/OperationScheduler;->resetTransientError()V

    .line 273
    iget-object v6, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v6}, Lcom/google/android/gsf/update/SystemUpdateService;->access$200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 276
    :cond_8
    iget-object v6, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v6}, Lcom/google/android/gsf/update/SystemUpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "update_provisioning_delay_sec"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 278
    if-ltz v6, :cond_b

    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-eqz v7, :cond_9

    mul-int/lit16 v7, v6, 0x3e8

    int-to-long v7, v7

    add-long/2addr v7, v2

    cmp-long v7, v0, v7

    if-gez v7, :cond_b

    .line 280
    :cond_9
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_a

    .line 284
    const/16 v2, 0x384

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 293
    :goto_4
    const-string v2, "SystemUpdateService"

    const-string v3, "cancelUpdate (not provisioned)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->cancelUpdate()V

    .line 295
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->retryAt(JZ)V

    .line 296
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->logState()V

    .line 297
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->stopSelf()V

    .line 298
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 258
    :pswitch_0
    const-string v7, "download_approved"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "install_approved"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 263
    :pswitch_1
    const-string v7, "download_approved"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "install_approved"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 268
    :pswitch_2
    const-string v7, "download_approved"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "install_approved"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 291
    :cond_a
    mul-int/lit16 v0, v6, 0x3e8

    int-to-long v0, v0

    add-long/2addr v0, v2

    goto :goto_4

    .line 301
    :cond_b
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "status"

    const/4 v6, -0x1

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_c

    invoke-direct {p0, v5}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->isAutomaticallyDownloaded(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 303
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateService;->access$200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$300(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler$Options;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/common/OperationScheduler;->getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J

    move-result-wide v2

    .line 304
    cmp-long v2, v0, v2

    if-gez v2, :cond_c

    .line 305
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->logState()V

    .line 306
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->stopSelf()V

    .line 307
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 311
    :cond_c
    const/4 v2, 0x0

    .line 313
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "status"

    const/4 v7, -0x1

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v6, 0x5

    if-eq v3, v6, :cond_11

    .line 314
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v3}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "download_approved"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 315
    invoke-direct {p0, v4, v5}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->checkDownload(Ljava/lang/String;I)Z

    move-result v0

    .line 343
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->logState()V

    .line 344
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$400(Lcom/google/android/gsf/update/SystemUpdateService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 345
    if-nez v0, :cond_d

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$500(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    move-result-object v0

    if-nez v0, :cond_d

    .line 346
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->stopSelf()V

    .line 348
    :cond_d
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 317
    :cond_e
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->setStatus(I)V

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 319
    iget-object v6, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v6}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "download_next_dialog"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 323
    const/4 v8, 0x2

    if-eq v5, v8, :cond_f

    const/4 v8, 0x5

    if-ne v5, v8, :cond_10

    cmp-long v8, v6, v3

    if-ltz v8, :cond_10

    .line 325
    :cond_f
    const v3, 0x7f08001b

    const v4, 0x7f08001c

    const v5, 0x7f020016

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->notifyWithActivity(III)V

    .line 329
    const-wide/32 v3, 0x1b7740

    add-long/2addr v0, v3

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->retryAt(JZ)V

    move v0, v2

    goto :goto_5

    .line 331
    :cond_10
    const/4 v0, 0x5

    if-ne v5, v0, :cond_11

    cmp-long v0, v6, v3

    if-gez v0, :cond_11

    .line 333
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notified"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 334
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    const-class v3, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 337
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/update/SystemUpdateService;->startActivity(Landroid/content/Intent;)V

    :cond_11
    move v0, v2

    goto/16 :goto_5

    .line 348
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method logState()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 671
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "status"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 673
    .local v0, status:I
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "download_approved"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    or-int/lit8 v0, v0, 0x20

    .line 677
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "install_approved"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 678
    or-int/lit8 v0, v0, 0x40

    .line 682
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "verified"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 683
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "verified"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v5

    :goto_0
    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 686
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mProvisioned:Z

    if-eqz v1, :cond_3

    .line 687
    or-int/lit16 v0, v0, 0x200

    .line 689
    :cond_3
    const v1, 0x31129

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-wide v3, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->mLastDownloadBytes:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->this$0:Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "url"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 692
    return-void

    :cond_4
    move v1, v6

    .line 683
    goto :goto_0
.end method
