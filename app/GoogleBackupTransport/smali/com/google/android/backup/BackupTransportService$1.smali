.class Lcom/google/android/backup/BackupTransportService$1;
.super Lcom/android/internal/backup/IBackupTransport$Stub;
.source "BackupTransportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/backup/BackupTransportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastRestoreApp:Ljava/lang/String;

.field private mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

.field private mRestoreApp:Ljava/lang/String;

.field private mRestoreData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;

.field final synthetic this$0:Lcom/google/android/backup/BackupTransportService;


# direct methods
.method constructor <init>(Lcom/google/android/backup/BackupTransportService;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 242
    iput-object p1, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-direct {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;-><init>()V

    .line 244
    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    .line 247
    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;

    .line 248
    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    .line 249
    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService$1;->mLastRestoreApp:Ljava/lang/String;

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreData:Ljava/util/HashMap;

    return-void
.end method

.method private getRestoreDataLocked()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "lock not held"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 552
    :cond_0
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "restore was never started"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 553
    :cond_1
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreData:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 554
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;

    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreData:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lcom/google/android/backup/RestoreRequestProcessor;->getApplicationData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    .line 555
    :goto_0
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 556
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;

    invoke-virtual {v1}, Lcom/google/android/backup/RestoreRequestProcessor;->nextRequest()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 557
    .local v0, req:Lcom/google/common/io/protocol/ProtoBuf;
    if-nez v0, :cond_3

    .line 564
    .end local v0           #req:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_2
    return-void

    .line 559
    .restart local v0       #req:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_3
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {v1}, Lcom/google/android/backup/BackupTransportService;->access$700(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 560
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;

    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    iget-object v3, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {v3}, Lcom/google/android/backup/BackupTransportService;->access$700(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/google/android/backup/BackupTransportService;->access$500(Lcom/google/android/backup/BackupTransportService;Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/common/OperationScheduler;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/backup/RestoreRequestProcessor;->handleResponse(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 561
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;

    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreData:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lcom/google/android/backup/RestoreRequestProcessor;->getApplicationData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    goto :goto_0
.end method

.method private initRequestGeneratorLocked()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 529
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "lock not held"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 530
    :cond_0
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    if-eqz v2, :cond_1

    move v2, v5

    .line 540
    :goto_0
    return v2

    .line 532
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 533
    .local v0, now:J
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {v2}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 534
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {v2}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {v3}, Lcom/google/android/backup/BackupTransportService;->access$200(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler$Options;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/common/OperationScheduler;->getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_2

    .line 535
    const-string v2, "BackupTransportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not ready for backup request right now: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {v4}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v2, 0x0

    goto :goto_0

    .line 539
    :cond_2
    new-instance v2, Lcom/google/android/backup/BackupRequestGenerator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/google/android/backup/BackupRequestGenerator;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    move v2, v5

    .line 540
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized clearBackupData(Landroid/content/pm/PackageInfo;)I
    .locals 7
    .parameter "packageInfo"

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService$1;->initRequestGeneratorLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    .line 397
    :goto_0
    monitor-exit p0

    return v4

    .line 387
    :cond_0
    const/4 v0, 0x0

    .line 388
    .local v0, apiKey:Ljava/lang/String;
    :try_start_1
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    .local v3, packageName:Ljava/lang/String;
    :try_start_2
    iget-object v4, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-virtual {v4}, Lcom/google/android/backup/BackupTransportService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 392
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.google.android.backup.api_key"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 396
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    invoke-virtual {v4, v3, v0}, Lcom/google/android/backup/BackupRequestGenerator;->getApplication(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/backup/BackupRequestGenerator$Application;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/google/android/backup/BackupRequestGenerator$Application;->deleteAll(Ljava/lang/String;)V

    .line 397
    const/4 v4, 0x0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 394
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "BackupTransportService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown package in wipe request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 386
    .end local v0           #apiKey:Ljava/lang/String;
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public configurationIntent()Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.backup.SetBackupAccountActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public currentDestinationString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {v1}, Lcom/google/android/backup/BackupTransportService;->access$000(Lcom/google/android/backup/BackupTransportService;)Landroid/accounts/Account;

    move-result-object v0

    .line 258
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 259
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-virtual {v1}, Lcom/google/android/backup/BackupTransportService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030005

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 262
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-virtual {v1}, Lcom/google/android/backup/BackupTransportService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public declared-synchronized finishBackup()I
    .locals 4

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    invoke-virtual {v2}, Lcom/google/android/backup/BackupRequestGenerator;->makeFinalRequest()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {v3}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/backup/BackupTransportService;->access$500(Lcom/google/android/backup/BackupTransportService;Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/common/OperationScheduler;)Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/android/backup/BackupRequestGenerator$PolicyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 414
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 422
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return v1

    .line 406
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 407
    .local v0, e:Lcom/google/android/backup/BackupRequestGenerator$PolicyException;
    :try_start_2
    const-string v1, "BackupTransportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server policy rejection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {v1}, Lcom/google/android/backup/BackupTransportService;->access$600(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 410
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    invoke-virtual {v2}, Lcom/google/android/backup/BackupRequestGenerator;->makeAbortRequest()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {v3}, Lcom/google/android/backup/BackupTransportService;->access$600(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/backup/BackupTransportService;->access$500(Lcom/google/android/backup/BackupTransportService;Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/common/OperationScheduler;)Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 415
    .end local v0           #e:Lcom/google/android/backup/BackupRequestGenerator$PolicyException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 416
    .local v0, e:Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException;
    :try_start_3
    const-string v1, "BackupTransportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backup server requires initialization: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 417
    const/4 v1, 0x2

    .line 422
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 403
    .end local v0           #e:Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 418
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 419
    .local v0, e:Ljava/io/IOException;
    :try_start_5
    const-string v1, "BackupTransportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending final backup to server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 420
    const/4 v1, 0x1

    .line 422
    const/4 v2, 0x0

    :try_start_6
    iput-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized finishRestore()V
    .locals 1

    .prologue
    .line 518
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;

    .line 519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    .line 520
    iget-object v0, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    monitor-exit p0

    return-void

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .locals 5

    .prologue
    .line 428
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {v2}, Lcom/google/android/backup/BackupTransportService;->access$700(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 429
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {}, Lcom/google/android/backup/RestoreRequestProcessor;->makeDeviceRequest()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {v4}, Lcom/google/android/backup/BackupTransportService;->access$700(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/backup/BackupTransportService;->access$500(Lcom/google/android/backup/BackupTransportService;Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/common/OperationScheduler;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/backup/RestoreRequestProcessor;->processDeviceResponse(Lcom/google/common/io/protocol/ProtoBuf;)[Landroid/app/backup/RestoreSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, sets:[Landroid/app/backup/RestoreSet;
    move-object v2, v1

    .line 435
    .end local v1           #sets:[Landroid/app/backup/RestoreSet;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 433
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 434
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v2, "BackupTransportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting device list from server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    const/4 v2, 0x0

    goto :goto_0

    .line 428
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getCurrentRestoreSet()J
    .locals 4

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-virtual {v0}, Lcom/google/android/backup/BackupTransportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 7
    .parameter "outFd"

    .prologue
    const/4 v6, 0x1

    .line 496
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "no package to restore"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 499
    :cond_0
    :try_start_1
    new-instance v0, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 500
    .local v0, data:Landroid/app/backup/BackupDataOutput;
    new-instance v2, Lcom/google/android/backup/BackupDataReassembler;

    invoke-direct {v2, v0}, Lcom/google/android/backup/BackupDataReassembler;-><init>(Landroid/app/backup/BackupDataOutput;)V

    .line 501
    .local v2, reassembler:Lcom/google/android/backup/BackupDataReassembler;
    :goto_0
    iget-object v3, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/backup/BackupTransportService$1;->mLastRestoreApp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 502
    iget-object v3, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreData:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lcom/google/android/backup/BackupDataReassembler;->writeSomeData(Ljava/util/Map;)V

    .line 503
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService$1;->getRestoreDataLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/backup/BackupDataReassembler$InvalidDataException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 506
    .end local v0           #data:Landroid/app/backup/BackupDataOutput;
    .end local v2           #reassembler:Lcom/google/android/backup/BackupDataReassembler;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 507
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    const-string v3, "BackupTransportService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error getting restore data from server: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v6

    .line 513
    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    monitor-exit p0

    return v3

    .line 505
    .restart local v0       #data:Landroid/app/backup/BackupDataOutput;
    .restart local v2       #reassembler:Lcom/google/android/backup/BackupDataReassembler;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 510
    .end local v0           #data:Landroid/app/backup/BackupDataOutput;
    .end local v2           #reassembler:Lcom/google/android/backup/BackupDataReassembler;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 511
    .local v1, e:Lcom/google/android/backup/BackupDataReassembler$InvalidDataException;
    :try_start_3
    const-string v3, "BackupTransportService"

    const-string v4, "Error in restore data from server"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v6

    .line 513
    goto :goto_1
.end method

.method public declared-synchronized initializeDevice()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 304
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService$1;->initRequestGeneratorLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    .line 330
    :goto_0
    monitor-exit p0

    return v2

    .line 306
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    invoke-virtual {v2}, Lcom/google/android/backup/BackupRequestGenerator;->initializeDevice()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    const/4 v1, 0x0

    .line 310
    .local v1, isBackupEnabled:Z
    :try_start_2
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {v2}, Lcom/google/android/backup/BackupTransportService;->access$300(Lcom/google/android/backup/BackupTransportService;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .line 317
    if-nez v1, :cond_1

    .line 318
    :try_start_3
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {v2}, Lcom/google/android/backup/BackupTransportService;->access$400(Lcom/google/android/backup/BackupTransportService;)V

    move v2, v3

    .line 319
    goto :goto_0

    .line 311
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 312
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BackupTransportService"

    const-string v3, "Cannot get BackupManager isBackupEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 313
    goto :goto_0

    .line 323
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {v2}, Lcom/google/android/backup/BackupTransportService;->access$000(Lcom/google/android/backup/BackupTransportService;)Landroid/accounts/Account;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 324
    goto :goto_0

    :cond_2
    move v2, v4

    .line 330
    goto :goto_0

    .line 304
    .end local v1           #isBackupEnabled:Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized nextRestorePackage()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 475
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;

    if-nez v1, :cond_0

    .line 476
    const-string v1, "BackupTransportService"

    const-string v2, "Restore processing aborted, no more packages"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 491
    :goto_0
    monitor-exit p0

    return-object v1

    .line 482
    :cond_0
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->mLastRestoreApp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService$1;->getRestoreDataLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 488
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 489
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v1, "BackupTransportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting restore data from server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v4

    .line 491
    goto :goto_0

    .line 485
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_0

    .line 486
    :cond_2
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mLastRestoreApp:Ljava/lang/String;

    .line 487
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 475
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 11
    .parameter "pkg"
    .parameter "inFd"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 334
    monitor-enter p0

    :try_start_0
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    .local v5, packageName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 338
    .local v0, apiKey:Ljava/lang/String;
    :try_start_1
    iget-object v6, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-virtual {v6}, Lcom/google/android/backup/BackupTransportService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 341
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "com.google.android.backup.api_key"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    :cond_0
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    move v4, v10

    .line 344
    .local v4, isSystem:Z
    :goto_0
    if-nez v4, :cond_3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 345
    :cond_1
    const-string v6, "BackupTransportService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IGNORING BACKUP DATA without API key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move v6, v9

    .line 381
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #isSystem:Z
    :goto_1
    monitor-exit p0

    return v6

    .restart local v1       #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_2
    move v4, v9

    .line 342
    goto :goto_0

    .line 348
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 349
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v6, "BackupTransportService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown package in backup request: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 355
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService$1;->initRequestGeneratorLocked()Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v10

    goto :goto_1

    .line 358
    :cond_4
    new-instance v3, Lcom/google/android/backup/BackupDataFragmenter;

    new-instance v6, Landroid/app/backup/BackupDataInput;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v7, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    invoke-virtual {v7, v5, v0}, Lcom/google/android/backup/BackupRequestGenerator;->getApplication(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/backup/BackupRequestGenerator$Application;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lcom/google/android/backup/BackupDataFragmenter;-><init>(Landroid/app/backup/BackupDataInput;Lcom/google/android/backup/BackupRequestGenerator$Application;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 362
    .local v3, fragmenter:Lcom/google/android/backup/BackupDataFragmenter;
    :cond_5
    :goto_2
    const/16 v6, 0x5000

    :try_start_4
    invoke-virtual {v3, v6}, Lcom/google/android/backup/BackupDataFragmenter;->readSomeData(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 363
    iget-object v6, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    invoke-virtual {v6}, Lcom/google/android/backup/BackupRequestGenerator;->approximateSize()I

    move-result v6

    const v7, 0xc800

    if-lt v6, v7, :cond_5

    .line 364
    iget-object v6, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    iget-object v7, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    invoke-virtual {v7}, Lcom/google/android/backup/BackupRequestGenerator;->makePartialRequest()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {v8}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/google/android/backup/BackupTransportService;->access$500(Lcom/google/android/backup/BackupTransportService;Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/common/OperationScheduler;)Lcom/google/common/io/protocol/ProtoBuf;

    .line 365
    iget-object v6, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {v6}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/android/backup/BackupRequestGenerator$PolicyException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 368
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 369
    .local v2, e:Lcom/google/android/backup/BackupRequestGenerator$PolicyException;
    :try_start_5
    const-string v6, "BackupTransportService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Server policy rejection: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v6, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {v6}, Lcom/google/android/backup/BackupTransportService;->access$600(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 372
    iget-object v6, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    iget-object v7, p0, Lcom/google/android/backup/BackupTransportService$1;->mRequestGen:Lcom/google/android/backup/BackupRequestGenerator;

    invoke-virtual {v7}, Lcom/google/android/backup/BackupRequestGenerator;->makeAbortRequest()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {v8}, Lcom/google/android/backup/BackupTransportService;->access$600(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/google/android/backup/BackupTransportService;->access$500(Lcom/google/android/backup/BackupTransportService;Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/common/OperationScheduler;)Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .end local v2           #e:Lcom/google/android/backup/BackupRequestGenerator$PolicyException;
    :cond_6
    move v6, v9

    .line 375
    goto/16 :goto_1

    .line 376
    .end local v3           #fragmenter:Lcom/google/android/backup/BackupDataFragmenter;
    :catch_2
    move-exception v6

    move-object v2, v6

    .line 377
    .local v2, e:Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException;
    :try_start_6
    const-string v6, "BackupTransportService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Uninitialized device: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v6, 0x2

    goto/16 :goto_1

    .line 379
    .end local v2           #e:Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException;
    :catch_3
    move-exception v6

    move-object v2, v6

    .line 380
    .local v2, e:Ljava/io/IOException;
    const-string v6, "BackupTransportService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error sending partial backup to server: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v6, v10

    .line 381
    goto/16 :goto_1

    .line 334
    .end local v0           #apiKey:Ljava/lang/String;
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized requestBackupTime()J
    .locals 6

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {v2}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 294
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {v2}, Lcom/google/android/backup/BackupTransportService;->access$000(Lcom/google/android/backup/BackupTransportService;)Landroid/accounts/Account;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {v2}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/backup/BackupTransportService$1;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-static {v3}, Lcom/google/android/backup/BackupTransportService;->access$200(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler$Options;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/common/OperationScheduler;->getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J

    move-result-wide v0

    .line 296
    .local v0, next:J
    const-wide/16 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 299
    .end local v0           #next:J
    :goto_0
    monitor-exit p0

    return-wide v2

    :cond_0
    const-wide/32 v2, 0x240c8400

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized startRestore(J[Landroid/content/pm/PackageInfo;)I
    .locals 9
    .parameter "token"
    .parameter "packages"

    .prologue
    const/4 v8, 0x1

    .line 444
    monitor-enter p0

    const/4 v5, 0x0

    :try_start_0
    iput-object v5, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;

    .line 445
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreApp:Ljava/lang/String;

    .line 446
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreData:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 447
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/backup/BackupTransportService$1;->mLastRestoreApp:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :try_start_1
    array-length v5, p3

    new-array v0, v5, [Ljava/lang/String;

    .line 451
    .local v0, apps:[Ljava/lang/String;
    const/4 v3, -0x1

    .line 452
    .local v3, settingsIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p3

    if-ge v2, v5, :cond_1

    .line 453
    aget-object v5, p3, v2

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v5, v0, v2

    .line 454
    const-string v5, "com.android.providers.settings"

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 455
    move v3, v2

    .line 452
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 459
    :cond_1
    const/4 v5, -0x1

    if-le v3, v5, :cond_2

    .line 460
    aget-object v4, v0, v3

    .line 461
    .local v4, swap:Ljava/lang/String;
    array-length v5, v0

    sub-int/2addr v5, v8

    aget-object v5, v0, v5

    aput-object v5, v0, v3

    .line 462
    array-length v5, v0

    sub-int/2addr v5, v8

    aput-object v4, v0, v5

    .line 464
    .end local v4           #swap:Ljava/lang/String;
    :cond_2
    new-instance v5, Lcom/google/android/backup/RestoreRequestProcessor;

    const v6, 0xc800

    invoke-direct {v5, p1, p2, v0, v6}, Lcom/google/android/backup/RestoreRequestProcessor;-><init>(J[Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/google/android/backup/BackupTransportService$1;->mRestoreProc:Lcom/google/android/backup/RestoreRequestProcessor;

    .line 466
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService$1;->getRestoreDataLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 467
    const/4 v5, 0x0

    .line 470
    .end local v0           #apps:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #settingsIndex:I
    :goto_1
    monitor-exit p0

    return v5

    .line 468
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 469
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    const-string v5, "BackupTransportService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error getting restore data from server: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v5, v8

    .line 470
    goto :goto_1

    .line 444
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public transportDirName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 268
    const-string v0, "com.google.android.backup.BackupTransportService"

    return-object v0
.end method
