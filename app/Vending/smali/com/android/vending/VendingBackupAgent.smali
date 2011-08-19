.class public Lcom/android/vending/VendingBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "VendingBackupAgent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/VendingBackupAgent;Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/vending/model/DownloadInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/vending/VendingBackupAgent;->shouldRestore(Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/vending/model/DownloadInfo;)Z

    move-result v0

    return v0
.end method

.method static registerWithBackup(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    sget-object v0, Lcom/android/vending/util/VendingPreferences;->BACKUP_STATE:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 63
    :cond_0
    return-void
.end method

.method private restoreAccountApps(JLjava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .locals 7
    .parameter "aid"
    .parameter "latch"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vending/api/ApiException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v4

    .line 111
    .local v4, vendingApplication:Lcom/android/vending/VendingApplication;
    new-instance v2, Lcom/android/vending/api/RequestManager;

    invoke-virtual {v4}, Lcom/android/vending/VendingApplication;->getApiClientContext()Lcom/android/vending/VendingApplication$ApiClientContext;

    move-result-object v1

    const v3, 0xea60

    invoke-static {v4, v3}, Lcom/android/vending/ServiceLocator;->createGoogleHttpClient(Landroid/app/Application;I)Lcom/android/vending/compat/GoogleHttpClient;

    move-result-object v3

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v5

    invoke-direct {v2, v1, v3, v5}, Lcom/android/vending/api/RequestManager;-><init>(Lcom/android/vending/VendingApplication$ApiClientContext;Lcom/android/vending/compat/GoogleHttpClient;Lcom/android/vending/cache/CacheManager;)V

    .line 116
    .local v2, requestManager:Lcom/android/vending/api/RequestManager;
    new-instance v0, Lcom/android/vending/VendingBackupAgent$1;

    move-object v1, p0

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/vending/VendingBackupAgent$1;-><init>(Lcom/android/vending/VendingBackupAgent;Lcom/android/vending/api/RequestManager;Ljava/util/concurrent/CountDownLatch;Lcom/android/vending/VendingApplication;Ljava/lang/String;)V

    .line 189
    .local v0, service:Lcom/android/vending/api/RestoreApplicationsService;
    invoke-virtual {v4}, Lcom/android/vending/VendingApplication;->getDeviceConfiguration()Lcom/android/vending/model/DeviceConfiguration;

    move-result-object v6

    .line 190
    .local v6, configuration:Lcom/android/vending/model/DeviceConfiguration;
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p4, v1, v6}, Lcom/android/vending/api/RestoreApplicationsService;->queueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/DeviceConfiguration;)V

    .line 191
    invoke-virtual {v2, p4}, Lcom/android/vending/api/RequestManager;->doRequests(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method private shouldRestore(Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/vending/model/DownloadInfo;)Z
    .locals 7
    .parameter "installAsset"
    .parameter "parsed"

    .prologue
    const/16 v3, 0xc

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 217
    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 221
    .local v1, restoreVersion:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/VendingBackupAgent;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/vending/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 223
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v2, v1, :cond_0

    move v2, v6

    .line 228
    .end local v0           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v1           #restoreVersion:I
    :goto_0
    return v2

    .restart local v0       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v1       #restoreVersion:I
    :cond_0
    move v2, v5

    .line 223
    goto :goto_0

    .line 224
    .end local v0           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .end local v1           #restoreVersion:I
    :cond_1
    move v2, v6

    .line 228
    goto :goto_0
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    sget-object v6, Lcom/android/vending/compat/VendingGservicesKeys;->ANDROID_ID:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v6}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 70
    .local v0, aid:J
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 71
    .local v2, bufStream:Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 72
    .local v4, outWriter:Ljava/io/DataOutputStream;
    invoke-virtual {v4, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 74
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 75
    .local v5, vendingData:[B
    const-string v6, "vending"

    array-length v7, v5

    invoke-virtual {p2, v6, v7}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 76
    array-length v6, v5

    invoke-virtual {p2, v5, v6}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 79
    sget-object v6, Lcom/android/vending/util/VendingPreferences;->BACKUP_STATE:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v6}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 80
    .local v3, currentState:Ljava/lang/String;
    const-string v6, "vending"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 81
    sget-object v6, Lcom/android/vending/util/VendingPreferences;->BACKUP_STATE:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    const-string v7, "vending"

    invoke-virtual {v6, v7}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 9
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 89
    const-string v7, "vending"

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v4

    .line 91
    .local v4, dataSize:I
    new-array v3, v4, [B

    .line 92
    .local v3, dataBuf:[B
    const/4 v7, 0x0

    invoke-virtual {p1, v3, v7, v4}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 93
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 94
    .local v2, baStream:Ljava/io/ByteArrayInputStream;
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 95
    .local v6, in:Ljava/io/DataInputStream;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    .line 98
    .local v0, aid:J
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/vending/VendingBackupAgent;->restoreApps(J)V
    :try_end_0
    .catch Lcom/android/vending/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v0           #aid:J
    .end local v2           #baStream:Ljava/io/ByteArrayInputStream;
    .end local v3           #dataBuf:[B
    .end local v4           #dataSize:I
    .end local v6           #in:Ljava/io/DataInputStream;
    :cond_1
    return-void

    .line 99
    .restart local v0       #aid:J
    .restart local v2       #baStream:Ljava/io/ByteArrayInputStream;
    .restart local v3       #dataBuf:[B
    .restart local v4       #dataSize:I
    .restart local v6       #in:Ljava/io/DataInputStream;
    :catch_0
    move-exception v5

    .line 100
    .local v5, e:Lcom/android/vending/api/ApiException;
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Cannot call restore API."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0
.end method

.method final restoreApps(J)V
    .locals 11
    .parameter "aid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vending/api/ApiException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 195
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v5

    .line 196
    .local v5, vendingApplication:Lcom/android/vending/VendingApplication;
    invoke-virtual {v5}, Lcom/android/vending/VendingApplication;->onStartRestore()V

    .line 198
    invoke-virtual {v5}, Lcom/android/vending/VendingApplication;->getAccountList()Ljava/util/ArrayList;

    move-result-object v1

    .line 200
    .local v1, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 201
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 202
    .local v4, latch:Ljava/util/concurrent/CountDownLatch;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    .local v0, account:Ljava/lang/String;
    const-string v6, "restoring aid=0x%s account=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v0, v7, v10

    invoke-static {v6, v7}, Lcom/android/vending/util/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    invoke-direct {p0, p1, p2, v4, v0}, Lcom/android/vending/VendingBackupAgent;->restoreAccountApps(JLjava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    .line 208
    :try_start_0
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    :catch_0
    move-exception v2

    .line 210
    .local v2, e:Ljava/lang/InterruptedException;
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Request to API interrupted."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 214
    .end local v0           #account:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v4           #latch:Ljava/util/concurrent/CountDownLatch;
    .restart local p0
    :cond_0
    return-void
.end method
