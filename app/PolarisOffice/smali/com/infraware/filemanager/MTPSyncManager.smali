.class public Lcom/infraware/filemanager/MTPSyncManager;
.super Ljava/lang/Object;
.source "MTPSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/filemanager/MTPSyncManager$SyncDBResult;,
        Lcom/infraware/filemanager/MTPSyncManager$SyncOperationMode;,
        Lcom/infraware/filemanager/MTPSyncManager$SyncScanResult;
    }
.end annotation


# static fields
.field private static isMediaBeingScanned:Z

.field private static m_bUnregisterAfterSync:Z

.field private static m_nSyncOperationMode:I

.field private static m_oDBContext:Landroid/content/Context;

.field private static m_oFileDataBase:Lcom/infraware/filemanager/database/FmFileDatabase;

.field private static m_oMediaScanReceiver:Landroid/content/BroadcastReceiver;

.field private static m_oScanContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    sput v1, Lcom/infraware/filemanager/MTPSyncManager;->m_nSyncOperationMode:I

    .line 40
    sput-object v0, Lcom/infraware/filemanager/MTPSyncManager;->m_oScanContext:Landroid/content/Context;

    .line 41
    sput-object v0, Lcom/infraware/filemanager/MTPSyncManager;->m_oMediaScanReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    sput-boolean v1, Lcom/infraware/filemanager/MTPSyncManager;->isMediaBeingScanned:Z

    .line 43
    sput-boolean v1, Lcom/infraware/filemanager/MTPSyncManager;->m_bUnregisterAfterSync:Z

    .line 60
    sput-object v0, Lcom/infraware/filemanager/MTPSyncManager;->m_oFileDataBase:Lcom/infraware/filemanager/database/FmFileDatabase;

    .line 61
    sput-object v0, Lcom/infraware/filemanager/MTPSyncManager;->m_oDBContext:Landroid/content/Context;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Z)V
    .locals 0
    .parameter

    .prologue
    .line 42
    sput-boolean p0, Lcom/infraware/filemanager/MTPSyncManager;->isMediaBeingScanned:Z

    return-void
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/infraware/filemanager/MTPSyncManager;->m_nSyncOperationMode:I

    return v0
.end method

.method static synthetic access$2()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/infraware/filemanager/MTPSyncManager;->m_oScanContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/infraware/filemanager/MTPSyncManager;->m_bUnregisterAfterSync:Z

    return v0
.end method

.method static synthetic access$4()V
    .locals 0

    .prologue
    .line 138
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->unregisterMSReceiver()V

    return-void
.end method

.method private static convertExtToType(I)I
    .locals 1
    .parameter "a_nFileExt"

    .prologue
    .line 200
    sparse-switch p0, :sswitch_data_0

    .line 217
    const/4 v0, 0x7

    :goto_0
    return v0

    .line 203
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 205
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 207
    :sswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 209
    :sswitch_3
    const/4 v0, 0x6

    goto :goto_0

    .line 211
    :sswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 213
    :sswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 200
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x12 -> :sswitch_2
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_5
    .end sparse-switch
.end method

.method public static createDataBaseInstance(Landroid/content/Context;)I
    .locals 1
    .parameter "a_oContext"

    .prologue
    .line 179
    if-nez p0, :cond_0

    .line 180
    const/4 v0, 0x4

    .line 188
    :goto_0
    return v0

    .line 182
    :cond_0
    sput-object p0, Lcom/infraware/filemanager/MTPSyncManager;->m_oDBContext:Landroid/content/Context;

    .line 183
    sget-object v0, Lcom/infraware/filemanager/MTPSyncManager;->m_oFileDataBase:Lcom/infraware/filemanager/database/FmFileDatabase;

    if-nez v0, :cond_1

    .line 184
    new-instance v0, Lcom/infraware/filemanager/database/FmFileDatabase;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/database/FmFileDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/infraware/filemanager/MTPSyncManager;->m_oFileDataBase:Lcom/infraware/filemanager/database/FmFileDatabase;

    .line 185
    :cond_1
    sget-object v0, Lcom/infraware/filemanager/MTPSyncManager;->m_oFileDataBase:Lcom/infraware/filemanager/database/FmFileDatabase;

    if-nez v0, :cond_2

    .line 186
    const/4 v0, 0x3

    goto :goto_0

    .line 188
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static operateScan(Landroid/content/Context;I)I
    .locals 6
    .parameter "a_oContext"
    .parameter "a_nSyncOperationMode"

    .prologue
    const/4 v5, 0x1

    .line 158
    sget-boolean v0, Lcom/infraware/filemanager/MTPSyncManager;->isMediaBeingScanned:Z

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x6

    .line 174
    :goto_0
    return v0

    .line 161
    :cond_0
    if-nez p0, :cond_1

    .line 162
    const/4 v0, 0x4

    goto :goto_0

    .line 164
    :cond_1
    invoke-static {p1}, Lcom/infraware/filemanager/MTPSyncManager;->setSyncOperationMode(I)I

    .line 166
    invoke-static {p0, v5}, Lcom/infraware/filemanager/MTPSyncManager;->registerMediaScanReceiver(Landroid/content/Context;Z)I

    .line 167
    sget-object v0, Lcom/infraware/filemanager/MTPSyncManager;->m_oScanContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 169
    sget-object v0, Lcom/infraware/filemanager/MTPSyncManager;->m_oScanContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v5

    .line 171
    goto :goto_0

    .line 174
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static registerMediaScanReceiver(Landroid/content/Context;Z)I
    .locals 3
    .parameter "a_oContext"
    .parameter "a_bUnregisterAfterSync"

    .prologue
    .line 67
    sget-boolean v1, Lcom/infraware/filemanager/MTPSyncManager;->isMediaBeingScanned:Z

    if-eqz v1, :cond_0

    .line 68
    const/4 v1, 0x6

    .line 121
    :goto_0
    return v1

    .line 70
    :cond_0
    if-nez p0, :cond_1

    .line 71
    const/4 v1, 0x4

    goto :goto_0

    .line 73
    :cond_1
    sget-object v1, Lcom/infraware/filemanager/MTPSyncManager;->m_oScanContext:Landroid/content/Context;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/infraware/filemanager/MTPSyncManager;->m_oScanContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 74
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->unregisterMediaScanReceiver()I

    .line 78
    :cond_2
    sput-object p0, Lcom/infraware/filemanager/MTPSyncManager;->m_oScanContext:Landroid/content/Context;

    .line 79
    sput-boolean p1, Lcom/infraware/filemanager/MTPSyncManager;->m_bUnregisterAfterSync:Z

    .line 80
    sget-object v1, Lcom/infraware/filemanager/MTPSyncManager;->m_oMediaScanReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_3

    .line 82
    new-instance v1, Lcom/infraware/filemanager/MTPSyncManager$1;

    invoke-direct {v1}, Lcom/infraware/filemanager/MTPSyncManager$1;-><init>()V

    sput-object v1, Lcom/infraware/filemanager/MTPSyncManager;->m_oMediaScanReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 119
    sget-object v1, Lcom/infraware/filemanager/MTPSyncManager;->m_oScanContext:Landroid/content/Context;

    sget-object v2, Lcom/infraware/filemanager/MTPSyncManager;->m_oMediaScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    const/4 v1, 0x1

    goto :goto_0

    .line 75
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_4
    sget-object v1, Lcom/infraware/filemanager/MTPSyncManager;->m_oScanContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/infraware/filemanager/MTPSyncManager;->m_oScanContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static releaseDataBaseInstance()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 193
    sput-object v0, Lcom/infraware/filemanager/MTPSyncManager;->m_oDBContext:Landroid/content/Context;

    .line 194
    sput-object v0, Lcom/infraware/filemanager/MTPSyncManager;->m_oFileDataBase:Lcom/infraware/filemanager/database/FmFileDatabase;

    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method private static setSyncOperationMode(I)I
    .locals 1
    .parameter "a_nSyncOperationMode"

    .prologue
    .line 149
    sget-boolean v0, Lcom/infraware/filemanager/MTPSyncManager;->isMediaBeingScanned:Z

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x6

    .line 153
    :goto_0
    return v0

    .line 152
    :cond_0
    sput p0, Lcom/infraware/filemanager/MTPSyncManager;->m_nSyncOperationMode:I

    .line 153
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static unregisterMSReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    sget-object v0, Lcom/infraware/filemanager/MTPSyncManager;->m_oScanContext:Landroid/content/Context;

    sget-object v1, Lcom/infraware/filemanager/MTPSyncManager;->m_oMediaScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    const/4 v0, 0x0

    sput-object v0, Lcom/infraware/filemanager/MTPSyncManager;->m_oScanContext:Landroid/content/Context;

    .line 143
    sput-boolean v2, Lcom/infraware/filemanager/MTPSyncManager;->m_bUnregisterAfterSync:Z

    .line 144
    sput-boolean v2, Lcom/infraware/filemanager/MTPSyncManager;->isMediaBeingScanned:Z

    .line 145
    return-void
.end method

.method public static unregisterMediaScanReceiver()I
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/infraware/filemanager/MTPSyncManager;->m_oScanContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->unregisterMSReceiver()V

    .line 132
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static updateFileCreated(Ljava/lang/String;)I
    .locals 4
    .parameter "a_strPathIncludesName"

    .prologue
    .line 222
    sget-object v2, Lcom/infraware/filemanager/MTPSyncManager;->m_oFileDataBase:Lcom/infraware/filemanager/database/FmFileDatabase;

    if-nez v2, :cond_0

    .line 223
    const/4 v2, 0x5

    .line 233
    :goto_0
    return v2

    .line 225
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, oFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 227
    const/4 v2, 0x6

    goto :goto_0

    .line 229
    :cond_1
    new-instance v1, Lcom/infraware/filemanager/FmFileItem;

    invoke-direct {v1}, Lcom/infraware/filemanager/FmFileItem;-><init>()V

    .line 230
    .local v1, oFileItem:Lcom/infraware/filemanager/FmFileItem;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/infraware/filemanager/FmFileItem;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object v2, Lcom/infraware/filemanager/MTPSyncManager;->m_oFileDataBase:Lcom/infraware/filemanager/database/FmFileDatabase;

    invoke-virtual {v1}, Lcom/infraware/filemanager/FmFileItem;->getFileExtType()I

    move-result v3

    invoke-static {v3}, Lcom/infraware/filemanager/MTPSyncManager;->convertExtToType(I)I

    move-result v3

    invoke-virtual {v2, p0, v3}, Lcom/infraware/filemanager/database/FmFileDatabase;->InsertFileDatabase(Ljava/lang/String;I)Z

    .line 233
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static updateFolderCreated(Ljava/lang/String;)I
    .locals 2
    .parameter "a_strPathIncludesName"

    .prologue
    .line 238
    sget-object v1, Lcom/infraware/filemanager/MTPSyncManager;->m_oFileDataBase:Lcom/infraware/filemanager/database/FmFileDatabase;

    if-nez v1, :cond_0

    .line 239
    const/4 v1, 0x5

    .line 246
    :goto_0
    return v1

    .line 241
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, oFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    const/4 v1, 0x6

    goto :goto_0

    .line 245
    :cond_1
    sget-object v1, Lcom/infraware/filemanager/MTPSyncManager;->m_oFileDataBase:Lcom/infraware/filemanager/database/FmFileDatabase;

    invoke-virtual {v1, p0}, Lcom/infraware/filemanager/database/FmFileDatabase;->InsertFolderDatabase(Ljava/lang/String;)Z

    .line 246
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static updateItemCopied(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "a_strSrcPathIncludesName"
    .parameter "a_strDestPathIncludesName"

    .prologue
    const/4 v3, 0x6

    .line 264
    sget-object v2, Lcom/infraware/filemanager/MTPSyncManager;->m_oFileDataBase:Lcom/infraware/filemanager/database/FmFileDatabase;

    if-nez v2, :cond_0

    .line 265
    const/4 v2, 0x5

    .line 276
    :goto_0
    return v2

    .line 267
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, oSrcFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    .line 269
    goto :goto_0

    .line 271
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, oDstFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    .line 273
    goto :goto_0

    .line 275
    :cond_2
    sget-object v2, Lcom/infraware/filemanager/MTPSyncManager;->m_oFileDataBase:Lcom/infraware/filemanager/database/FmFileDatabase;

    invoke-virtual {v2, p0, p1}, Lcom/infraware/filemanager/database/FmFileDatabase;->CopyFileDatabase(Ljava/lang/String;Ljava/lang/String;)Z

    .line 276
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static updateItemDeleted(Ljava/lang/String;)I
    .locals 2
    .parameter "a_strPathIncludesName"

    .prologue
    .line 251
    sget-object v1, Lcom/infraware/filemanager/MTPSyncManager;->m_oFileDataBase:Lcom/infraware/filemanager/database/FmFileDatabase;

    if-nez v1, :cond_0

    .line 252
    const/4 v1, 0x5

    .line 259
    :goto_0
    return v1

    .line 254
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, oFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    const/4 v1, 0x7

    goto :goto_0

    .line 258
    :cond_1
    sget-object v1, Lcom/infraware/filemanager/MTPSyncManager;->m_oFileDataBase:Lcom/infraware/filemanager/database/FmFileDatabase;

    invoke-virtual {v1, p0}, Lcom/infraware/filemanager/database/FmFileDatabase;->DeleteFileDatabase(Ljava/lang/String;)Z

    .line 259
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static updateItemDownloaded(Ljava/lang/String;)I
    .locals 1
    .parameter "a_strPathIncludesName"

    .prologue
    .line 303
    invoke-static {p0}, Lcom/infraware/filemanager/MTPSyncManager;->updateFileCreated(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static updateItemMoved(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "a_strSrcPathIncludesName"
    .parameter "a_strDestPathIncludesName"

    .prologue
    .line 281
    sget-object v2, Lcom/infraware/filemanager/MTPSyncManager;->m_oFileDataBase:Lcom/infraware/filemanager/database/FmFileDatabase;

    if-nez v2, :cond_0

    .line 282
    const/4 v2, 0x5

    .line 293
    :goto_0
    return v2

    .line 284
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v1, oSrcFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    const/4 v2, 0x7

    goto :goto_0

    .line 288
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, oDstFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 290
    const/4 v2, 0x6

    goto :goto_0

    .line 292
    :cond_2
    sget-object v2, Lcom/infraware/filemanager/MTPSyncManager;->m_oFileDataBase:Lcom/infraware/filemanager/database/FmFileDatabase;

    invoke-virtual {v2, p0, p1}, Lcom/infraware/filemanager/database/FmFileDatabase;->MoveFileDatabase(Ljava/lang/String;Ljava/lang/String;)Z

    .line 293
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static updateItemRenamed(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "a_strSrcPathIncludesName"
    .parameter "a_strDestPathIncludesName"

    .prologue
    .line 298
    invoke-static {p0, p1}, Lcom/infraware/filemanager/MTPSyncManager;->updateItemMoved(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
