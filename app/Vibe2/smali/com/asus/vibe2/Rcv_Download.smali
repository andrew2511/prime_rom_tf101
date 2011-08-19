.class public Lcom/asus/vibe2/Rcv_Download;
.super Landroid/content/BroadcastReceiver;
.source "Rcv_Download.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/vibe2/Rcv_Download$DownloadResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 23
    invoke-static {p1}, Lcom/asus/vibe2/Utils_Download;->openDownloadsPage(Landroid/content/Context;)V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    const-string v9, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 27
    const-string v9, "extra_download_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 28
    .local v7, id:J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gez v9, :cond_2

    .line 29
    invoke-static {p1}, Lcom/asus/vibe2/Utils_Download;->openDownloadsPage(Landroid/content/Context;)V

    goto :goto_0

    .line 32
    :cond_2
    const/4 v5, 0x0

    .line 33
    .local v5, downloadUrl:Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 34
    .local v1, actualDownloadSize:J
    const-string v9, "download"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/DownloadManager;

    .line 35
    .local v4, dm:Landroid/app/DownloadManager;
    new-instance v9, Landroid/app/DownloadManager$Query;

    invoke-direct {v9}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v10, 0x1

    new-array v10, v10, [J

    const/4 v11, 0x0

    aput-wide v7, v10, v11

    invoke-virtual {v9, v10}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v3

    .line 36
    .local v3, cursor:Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_0

    .line 38
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 39
    const-string v9, "uri"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 40
    const-string v9, "bytes_so_far"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 41
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-lez v9, :cond_0

    const-string v9, "http://www.inmusic.com.tw"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 44
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/asus/vibe2/Rcv_Download$DownloadResult;

    invoke-direct {v10, p0, v5, v1, v2}, Lcom/asus/vibe2/Rcv_Download$DownloadResult;-><init>(Lcom/asus/vibe2/Rcv_Download;Ljava/lang/String;J)V

    const-string v11, "Download Feedback"

    invoke-direct {v9, v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v9

    move-object v6, v9

    .line 46
    .local v6, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v9, "ASUS@Vibe"

    const-string v10, "Rcv_Download: finished without valid uri!"

    invoke-static {v9, v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
