.class public Lcom/android/providers/downloads/ui/DownloadAdapter;
.super Landroid/widget/CursorAdapter;
.source "DownloadAdapter.java"


# instance fields
.field private final mBytesDownloadedSoFarColumnId:I

.field private mCursor:Landroid/database/Cursor;

.field private final mDateColumnId:I

.field private mDateFormat:Ljava/text/DateFormat;

.field private final mDescriptionColumnId:I

.field private final mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

.field private final mETag:I

.field private final mFileNameColumnId:I

.field private final mIdColumnId:I

.field private final mMediaTypeColumnId:I

.field private final mNoIntegrity:I

.field private final mReasonColumnId:I

.field private mResources:Landroid/content/res/Resources;

.field private final mStatusColumnId:I

.field private mTimeFormat:Ljava/text/DateFormat;

.field private final mTitleColumnId:I

.field private final mTotalBytesColumnId:I


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V
    .locals 2
    .parameter "downloadList"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x3

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 71
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    .line 72
    iput-object p2, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    .line 73
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mResources:Landroid/content/res/Resources;

    .line 74
    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDateFormat:Ljava/text/DateFormat;

    .line 75
    invoke-static {v1}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTimeFormat:Ljava/text/DateFormat;

    .line 77
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mIdColumnId:I

    .line 78
    const-string v0, "title"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTitleColumnId:I

    .line 79
    const-string v0, "description"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDescriptionColumnId:I

    .line 80
    const-string v0, "status"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mStatusColumnId:I

    .line 81
    const-string v0, "reason"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mReasonColumnId:I

    .line 82
    const-string v0, "total_size"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTotalBytesColumnId:I

    .line 83
    const-string v0, "bytes_so_far"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mBytesDownloadedSoFarColumnId:I

    .line 84
    const-string v0, "media_type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mMediaTypeColumnId:I

    .line 85
    const-string v0, "last_modified_timestamp"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDateColumnId:I

    .line 87
    const-string v0, "local_filename"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mFileNameColumnId:I

    .line 89
    const-string v0, "etag"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mETag:I

    .line 90
    const-string v0, "no_integrity"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mNoIntegrity:I

    .line 91
    return-void
.end method

.method private getDateString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDateColumnId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 134
    .local v0, date:Ljava/util/Date;
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getStartOfToday()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 137
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getDownloadPercentageTextAndUpdateProgressBar(Landroid/widget/ProgressBar;)Ljava/lang/String;
    .locals 12
    .parameter "progressBar"

    .prologue
    .line 151
    iget-object v8, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mBytesDownloadedSoFarColumnId:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 152
    .local v2, downloaded:J
    iget-object v8, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTotalBytesColumnId:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 153
    .local v6, total:J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_0

    .line 154
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 155
    const-string v8, ""

    .line 170
    :goto_0
    return-object v8

    .line 156
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-nez v8, :cond_1

    .line 157
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 158
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 159
    const-string v8, "0%"

    goto :goto_0

    .line 161
    :cond_1
    long-to-double v8, v2

    long-to-double v10, v6

    div-double v0, v8, v10

    .line 162
    .local v0, divided:D
    const-wide/high16 v8, 0x4059

    mul-double/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 163
    .local v4, longPercentage:J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gez v8, :cond_3

    .line 164
    const-wide/16 v4, 0x0

    .line 168
    :cond_2
    :goto_1
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 169
    long-to-int v8, v4

    invoke-virtual {p1, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 170
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 165
    :cond_3
    const-wide/16 v8, 0x64

    cmp-long v8, v4, v8

    if-lez v8, :cond_2

    .line 166
    const-wide/16 v4, 0x64

    goto :goto_1
.end method

.method private getDownloadedSizeText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 192
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mBytesDownloadedSoFarColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 193
    .local v0, downloadedBytes:J
    const-string v2, ""

    .line 194
    .local v2, sizeText:Ljava/lang/String;
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    .line 195
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 197
    :cond_0
    return-object v2
.end method

.method private getResumabilityStatus()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 175
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mETag:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, eTag:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTotalBytesColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v6, :cond_0

    move v3, v6

    .line 177
    .local v3, noIntegrity:Z
    :goto_0
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mBytesDownloadedSoFarColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 181
    .local v0, downloadedBytes:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    .line 182
    const-string v4, ""

    .line 187
    :goto_1
    return-object v4

    .line 176
    .end local v0           #downloadedBytes:J
    .end local v3           #noIntegrity:Z
    :cond_0
    const/4 v4, 0x0

    move v3, v4

    goto :goto_0

    .line 184
    .restart local v0       #downloadedBytes:J
    .restart local v3       #noIntegrity:Z
    :cond_1
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    .line 185
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 187
    :cond_2
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private getSizeText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 201
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTotalBytesColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 202
    .local v1, totalBytes:J
    const-string v0, ""

    .line 203
    .local v0, sizeText:Ljava/lang/String;
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 204
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 206
    :cond_0
    return-object v0
.end method

.method private getStartOfToday()Ljava/util/Date;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 143
    .local v0, today:Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 144
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 145
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 146
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 147
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private getStatusStringId()I
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mStatusColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 228
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mStatusColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :sswitch_0
    const v0, 0x7f06000d

    .line 225
    :goto_0
    return v0

    .line 215
    :sswitch_1
    const v0, 0x7f06000c

    goto :goto_0

    .line 219
    :sswitch_2
    const v0, 0x7f06000b

    goto :goto_0

    .line 222
    :sswitch_3
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mReasonColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 223
    const v0, 0x7f06000a

    goto :goto_0

    .line 225
    :cond_0
    const/high16 v0, 0x7f06

    goto :goto_0

    .line 210
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private retrieveAndSetIcon(Landroid/view/View;)V
    .locals 10
    .parameter "convertView"

    .prologue
    const/4 v9, 0x0

    .line 232
    iget-object v6, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v7, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mMediaTypeColumnId:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, mediaType:Ljava/lang/String;
    const v6, 0x7f090006

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 234
    .local v1, iconView:Landroid/widget/ImageView;
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    if-nez v4, :cond_0

    .line 257
    .end local p0
    :goto_0
    return-void

    .line 240
    .restart local p0
    :cond_0
    const-string v6, "application/vnd.oma.drm.message"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 241
    const v6, 0x7f020005

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 256
    .end local p0
    :goto_1
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 243
    .restart local p0
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "file"

    const-string v7, ""

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    iget-object v6, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 246
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/high16 v6, 0x1

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 248
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 250
    const v6, 0x7f020004

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 252
    :cond_2
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 253
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private setTextForView(Landroid/view/View;ILjava/lang/String;)V
    .locals 1
    .parameter "parent"
    .parameter "textViewId"
    .parameter "text"

    .prologue
    .line 260
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 261
    .local v0, view:Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .locals 9
    .parameter "convertView"
    .parameter "position"

    .prologue
    .line 101
    instance-of v1, p1, Lcom/android/providers/downloads/ui/DownloadItem;

    if-nez v1, :cond_0

    .line 130
    .end local p1
    :goto_0
    return-void

    .line 105
    .restart local p1
    :cond_0
    const v1, 0x7f09000d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    .line 107
    .local v7, progress:Landroid/widget/ProgressBar;
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mIdColumnId:I

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 108
    .local v2, downloadId:J
    move-object v0, p1

    check-cast v0, Lcom/android/providers/downloads/ui/DownloadItem;

    move-object v1, v0

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mFileNameColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mMediaTypeColumnId:I

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/providers/downloads/ui/DownloadItem;->setData(JILjava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadAdapter;->retrieveAndSetIcon(Landroid/view/View;)V

    .line 115
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTitleColumnId:I

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 116
    .local v8, title:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f060007

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 119
    :cond_1
    const v1, 0x7f090007

    invoke-direct {p0, p1, v1, v8}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 120
    const v1, 0x7f090009

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDescriptionColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v1, v4}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 121
    const v1, 0x7f090011

    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getSizeText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v1, v4}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 122
    const v1, 0x7f09000f

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getStatusStringId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v1, v4}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 123
    const v1, 0x7f09000c

    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getDateString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v1, v4}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 124
    const v1, 0x7f090010

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getDownloadedSizeText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  /  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v1, v4}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 125
    const v1, 0x7f09000e

    invoke-direct {p0, v7}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getDownloadPercentageTextAndUpdateProgressBar(Landroid/widget/ProgressBar;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v1, v4}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 126
    const v1, 0x7f09000a

    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getResumabilityStatus()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v1, v4}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 128
    check-cast p1, Lcom/android/providers/downloads/ui/DownloadItem;

    .end local p1
    invoke-virtual {p1}, Lcom/android/providers/downloads/ui/DownloadItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v4, v2, v3}, Lcom/android/providers/downloads/ui/DownloadList;->isDownloadSelected(J)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 273
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->bindView(Landroid/view/View;I)V

    .line 274
    return-void
.end method

.method public newView()Landroid/view/View;
    .locals 4

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040001

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/DownloadItem;

    .line 96
    .local v0, view:Lcom/android/providers/downloads/ui/DownloadItem;
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/DownloadItem;->setDownloadListObj(Lcom/android/providers/downloads/ui/DownloadList;)V

    .line 97
    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->newView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
