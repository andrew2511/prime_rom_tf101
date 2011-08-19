.class public Lcom/google/android/gsf/update/Download;
.super Ljava/lang/Object;
.source "Download.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/update/Download$StatusInfo;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mNotificationClass:Ljava/lang/String;

.field private mNotificationPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/gsf/update/Download;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/update/Download;->mNotificationPackage:Ljava/lang/String;

    .line 31
    const-class v0, Lcom/google/android/gsf/update/SystemUpdateService$Receiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/update/Download;->mNotificationClass:Ljava/lang/String;

    .line 32
    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/google/android/gsf/update/Download;->mDownloadManager:Landroid/app/DownloadManager;

    .line 33
    return-void
.end method


# virtual methods
.method public downloadUpdate(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 8
    .parameter "url"
    .parameter "otaUpdateToken"
    .parameter "showDownload"
    .parameter "allowRoaming"

    .prologue
    const/4 v7, 0x0

    .line 83
    const-string v4, "update.Download"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeAllDownloads (starting download of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gsf/update/Download;->removeAllDownloads()V

    .line 87
    :try_start_0
    new-instance v4, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v4, p3}, Landroid/app/DownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/DownloadManager$Request;->setDestinationToSystemCache()Landroid/app/DownloadManager$Request;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gsf/update/Download;->mContext:Landroid/content/Context;

    const v6, 0x7f08002a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v3

    .line 94
    .local v3, req:Landroid/app/DownloadManager$Request;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 95
    const-string v4, "Authorization"

    invoke-virtual {v3, v4, p2}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 97
    :cond_0
    iget-object v4, p0, Lcom/google/android/gsf/update/Download;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v4, v3}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    .line 98
    .local v0, downloadId:J
    const-string v4, "update.Download"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Started a new update download: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    const/4 v4, 0x1

    .line 102
    .end local v0           #downloadId:J
    .end local v3           #req:Landroid/app/DownloadManager$Request;
    :goto_0
    return v4

    .line 100
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 101
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "update.Download"

    const-string v5, "Could not start update download"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v7

    .line 102
    goto :goto_0
.end method

.method public getStatus()Lcom/google/android/gsf/update/Download$StatusInfo;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 51
    iget-object v3, p0, Lcom/google/android/gsf/update/Download;->mDownloadManager:Landroid/app/DownloadManager;

    new-instance v4, Landroid/app/DownloadManager$Query;

    invoke-direct {v4}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 52
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 74
    :goto_0
    return-object v3

    .line 55
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 56
    new-instance v1, Lcom/google/android/gsf/update/Download$StatusInfo;

    invoke-direct {v1}, Lcom/google/android/gsf/update/Download$StatusInfo;-><init>()V

    .line 57
    .local v1, result:Lcom/google/android/gsf/update/Download$StatusInfo;
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->completed:Z

    .line 58
    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->id:J

    .line 59
    const-string v3, "local_filename"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->filename:Ljava/lang/String;

    .line 61
    const-string v3, "bytes_so_far"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->bytesSoFar:J

    .line 63
    const-string v3, "status"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 64
    .local v2, status:I
    and-int/lit8 v3, v2, 0x7

    if-nez v3, :cond_3

    move v3, v6

    :goto_1
    iput-boolean v3, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->completed:Z

    .line 67
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_4

    move v3, v6

    :goto_2
    iput-boolean v3, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->successful:Z

    .line 68
    if-eq v2, v6, :cond_1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 70
    :cond_1
    const-string v3, "reason"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/google/android/gsf/update/Download$StatusInfo;->reason:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v3, v1

    goto :goto_0

    :cond_3
    move v3, v5

    .line 64
    goto :goto_1

    :cond_4
    move v3, v5

    .line 67
    goto :goto_2

    .line 74
    .end local v1           #result:Lcom/google/android/gsf/update/Download$StatusInfo;
    .end local v2           #status:I
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public removeAllDownloads()V
    .locals 6

    .prologue
    .line 38
    iget-object v3, p0, Lcom/google/android/gsf/update/Download;->mDownloadManager:Landroid/app/DownloadManager;

    new-instance v4, Landroid/app/DownloadManager$Query;

    invoke-direct {v4}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 39
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 40
    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 41
    .local v1, id:J
    iget-object v3, p0, Lcom/google/android/gsf/update/Download;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide v1, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager;->remove([J)I

    .line 39
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 43
    .end local v1           #id:J
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 44
    return-void
.end method
