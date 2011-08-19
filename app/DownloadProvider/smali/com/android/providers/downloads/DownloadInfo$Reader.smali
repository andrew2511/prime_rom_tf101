.class public Lcom/android/providers/downloads/DownloadInfo$Reader;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reader"
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V
    .locals 0
    .parameter "resolver"
    .parameter "cursor"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mResolver:Landroid/content/ContentResolver;

    .line 51
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    .line 52
    return-void
.end method

.method private addHeader(Lcom/android/providers/downloads/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "info"
    .parameter "header"
    .parameter "value"

    .prologue
    .line 126
    invoke-static {p1}, Lcom/android/providers/downloads/DownloadInfo;->access$100(Lcom/android/providers/downloads/DownloadInfo;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method private getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .parameter "column"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .parameter "column"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "column"

    .prologue
    .line 130
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 131
    .local v0, index:I
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, s:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method private readRequestHeaders(Lcom/android/providers/downloads/DownloadInfo;)V
    .locals 9
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-static {p1}, Lcom/android/providers/downloads/DownloadInfo;->access$100(Lcom/android/providers/downloads/DownloadInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    invoke-virtual {p1}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v0

    const-string v3, "headers"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 104
    .local v1, headerUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo$Reader;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 106
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "header"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 108
    .local v7, headerIndex:I
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 110
    .local v8, valueIndex:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->addHeader(Lcom/android/providers/downloads/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 114
    .end local v7           #headerIndex:I
    .end local v8           #valueIndex:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v7       #headerIndex:I
    .restart local v8       #valueIndex:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 117
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mCookies:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 118
    const-string v0, "Cookie"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mCookies:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->addHeader(Lcom/android/providers/downloads/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_1
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mReferer:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 121
    const-string v0, "Referer"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mReferer:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->addHeader(Lcom/android/providers/downloads/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_2
    return-void
.end method


# virtual methods
.method public newDownloadInfo(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)Lcom/android/providers/downloads/DownloadInfo;
    .locals 2
    .parameter "context"
    .parameter "systemFacade"

    .prologue
    .line 55
    new-instance v0, Lcom/android/providers/downloads/DownloadInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/providers/downloads/DownloadInfo;-><init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/DownloadInfo$1;)V

    .line 56
    .local v0, info:Lcom/android/providers/downloads/DownloadInfo;
    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->updateFromDatabase(Lcom/android/providers/downloads/DownloadInfo;)V

    .line 57
    invoke-direct {p0, v0}, Lcom/android/providers/downloads/DownloadInfo$Reader;->readRequestHeaders(Lcom/android/providers/downloads/DownloadInfo;)V

    .line 58
    return-object v0
.end method

.method public updateFromDatabase(Lcom/android/providers/downloads/DownloadInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 62
    const-string v1, "_id"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    .line 63
    const-string v1, "uri"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    .line 64
    const-string v1, "no_integrity"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_0

    move v1, v3

    :goto_0
    iput-boolean v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mNoIntegrity:Z

    .line 65
    const-string v1, "hint"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mHint:Ljava/lang/String;

    .line 66
    const-string v1, "_data"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    .line 67
    const-string v1, "mimetype"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    .line 68
    const-string v1, "destination"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    .line 69
    const-string v1, "visibility"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    .line 70
    const-string v1, "status"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    .line 71
    const-string v1, "numfailed"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    .line 72
    const-string v1, "method"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 73
    .local v0, retryRedirect:I
    const v1, 0xfffffff

    and-int/2addr v1, v0

    iput v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mRetryAfter:I

    .line 74
    const-string v1, "lastmod"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    .line 75
    const-string v1, "notificationpackage"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    .line 76
    const-string v1, "notificationclass"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mClass:Ljava/lang/String;

    .line 77
    const-string v1, "notificationextras"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mExtras:Ljava/lang/String;

    .line 78
    const-string v1, "cookiedata"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mCookies:Ljava/lang/String;

    .line 79
    const-string v1, "useragent"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mUserAgent:Ljava/lang/String;

    .line 80
    const-string v1, "referer"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mReferer:Ljava/lang/String;

    .line 81
    const-string v1, "total_bytes"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    .line 82
    const-string v1, "current_bytes"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mCurrentBytes:J

    .line 83
    const-string v1, "etag"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mETag:Ljava/lang/String;

    .line 84
    const-string v1, "scanned"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mMediaScanned:I

    .line 85
    const-string v1, "deleted"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    :goto_1
    iput-boolean v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mDeleted:Z

    .line 86
    const-string v1, "mediaprovider_uri"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    .line 87
    const-string v1, "is_public_api"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    :goto_2
    iput-boolean v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    .line 88
    const-string v1, "allowed_network_types"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mAllowedNetworkTypes:I

    .line 89
    const-string v1, "allow_roaming"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    :goto_3
    iput-boolean v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mAllowRoaming:Z

    .line 90
    const-string v1, "title"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mTitle:Ljava/lang/String;

    .line 91
    const-string v1, "description"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mDescription:Ljava/lang/String;

    .line 92
    const-string v1, "bypass_recommended_size_limit"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mBypassRecommendedSizeLimit:I

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    const-string v1, "control"

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mControl:I

    .line 97
    monitor-exit p0

    .line 98
    return-void

    .end local v0           #retryRedirect:I
    :cond_0
    move v1, v4

    .line 64
    goto/16 :goto_0

    .restart local v0       #retryRedirect:I
    :cond_1
    move v1, v4

    .line 85
    goto :goto_1

    :cond_2
    move v1, v4

    .line 87
    goto :goto_2

    :cond_3
    move v1, v4

    .line 89
    goto :goto_3

    .line 97
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
