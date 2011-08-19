.class public Lcom/google/android/gsf/update/SystemUpdateActivity;
.super Landroid/app/Activity;
.source "SystemUpdateActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static volatile sIsActivityUp:Z


# instance fields
.field private mButtonQualifier:Landroid/widget/TextView;

.field private mCountdownEnd:J

.field private mDownloadProgressCursor:Landroid/database/Cursor;

.field private mDownloadProgressObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mLastBatteryState:I

.field private mLastCheckinTime:J

.field private mLastRoaming:Z

.field private mLastStatus:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mVerifyUpdate:Ljava/lang/Runnable;

.field private mWatcher:Lcom/google/android/gsf/update/StateWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->sIsActivityUp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 62
    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    .line 72
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdateActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity$1;-><init>(Lcom/google/android/gsf/update/SystemUpdateActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressObserver:Landroid/database/ContentObserver;

    .line 164
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdateActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/update/SystemUpdateActivity$3;-><init>(Lcom/google/android/gsf/update/SystemUpdateActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mVerifyUpdate:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/update/SystemUpdateActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->refreshDownloadProgress()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/update/SystemUpdateActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->refreshStatus(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gsf/update/SystemUpdateActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/update/SystemUpdateActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastStatus:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/gsf/update/SystemUpdateActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gsf/update/SystemUpdateActivity;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/update/SystemUpdateActivity;->updateCountdownMessage(JZ)V

    return-void
.end method

.method private queryDownloadProgress(J)Landroid/database/Cursor;
    .locals 1
    .parameter "downloadId"

    .prologue
    .line 401
    invoke-static {p0, p1, p2}, Landroid/net/Downloads$ByUri;->getProgressCursor(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v0

    .line 402
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 405
    :cond_0
    return-object v0
.end method

.method private refreshDownloadProgress()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 376
    const/4 v1, 0x0

    .local v1, total:I
    const/4 v0, 0x0

    .line 377
    .local v0, current:I
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    .line 379
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    invoke-static {}, Landroid/net/Downloads$ByUri;->getProgressColumnTotalBytes()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 382
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    invoke-static {}, Landroid/net/Downloads$ByUri;->getProgressColumnCurrentBytes()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 387
    :cond_0
    if-gtz v1, :cond_1

    .line 390
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 391
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 392
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 398
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 395
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 396
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method private refreshStatus(Z)V
    .locals 14
    .parameter "forceRefresh"

    .prologue
    .line 189
    iget-object v9, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v10, "status"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 191
    .local v8, status:I
    iget-object v9, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    invoke-virtual {v9}, Lcom/google/android/gsf/update/StateWatcher;->getBatteryState()I

    move-result v0

    .line 192
    .local v0, batteryState:I
    iget-object v9, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    invoke-virtual {v9}, Lcom/google/android/gsf/update/StateWatcher;->isNetworkRoaming()Z

    move-result v7

    .line 193
    .local v7, roaming:Z
    invoke-static {p0}, Lcom/google/android/gsf/checkin/CheckinService;->getLastCheckinSuccessTime(Landroid/content/Context;)J

    move-result-wide v4

    .line 194
    .local v4, lastCheckinTime:J
    if-nez p1, :cond_1

    iget v9, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastStatus:I

    if-ne v8, v9, :cond_1

    iget v9, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastBatteryState:I

    if-ne v0, v9, :cond_1

    iget-boolean v9, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastRoaming:Z

    if-ne v7, v9, :cond_1

    iget-wide v9, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastCheckinTime:J

    cmp-long v9, v4, v9

    if-nez v9, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iput v8, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastStatus:I

    .line 201
    iput v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastBatteryState:I

    .line 202
    iput-boolean v7, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastRoaming:Z

    .line 203
    iput-wide v4, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastCheckinTime:J

    .line 210
    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    iget-wide v9, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gtz v9, :cond_0

    .line 216
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->resetContent()V

    .line 218
    const/4 v6, 0x0

    .line 219
    .local v6, noUpdate:Z
    packed-switch v8, :pswitch_data_0

    .line 293
    :cond_3
    :goto_1
    if-nez v6, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "update_description"

    invoke-static {v9, v10}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, description:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 298
    const v9, 0x7f0b0010

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {p0, v9, v10, v11}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(ILjava/lang/CharSequence;Z)V

    goto :goto_0

    .line 223
    .end local v1           #description:Ljava/lang/String;
    :pswitch_0
    const v9, 0x7f0b000f

    const v10, 0x7f080019

    const/4 v11, 0x1

    invoke-direct {p0, v9, v10, v11}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 224
    const v9, 0x7f0b0010

    const v10, 0x7f08001a

    invoke-virtual {p0, v10}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/CharSequence;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {p0, v4, v5, v13}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {p0, v9, v10, v11}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 229
    const v9, 0x7f0b0024

    const/16 v10, 0x8

    invoke-direct {p0, v9, v10}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 230
    const v9, 0x7f0b0023

    const/16 v10, 0x8

    invoke-direct {p0, v9, v10}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 231
    const v9, 0x7f0b0025

    const v10, 0x7f080018

    const/4 v11, 0x1

    invoke-direct {p0, v9, v10, v11}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 232
    const/4 v6, 0x1

    .line 233
    goto :goto_1

    .line 236
    :pswitch_1
    const v9, 0x7f0b0024

    const v10, 0x7f080010

    const/4 v11, 0x1

    invoke-direct {p0, v9, v10, v11}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 237
    if-eqz v7, :cond_4

    .line 238
    const v9, 0x7f0b0025

    const v10, 0x7f080016

    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 240
    iget-object v9, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mButtonQualifier:Landroid/widget/TextView;

    const v10, 0x7f08000f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 241
    iget-object v9, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mButtonQualifier:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 243
    :cond_4
    const v9, 0x7f0b0025

    const v10, 0x7f080016

    const/4 v11, 0x1

    invoke-direct {p0, v9, v10, v11}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    goto/16 :goto_1

    .line 249
    :pswitch_2
    const v9, 0x7f0b0022

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 250
    const v9, 0x7f0b0024

    const v10, 0x7f080011

    const/4 v11, 0x1

    invoke-direct {p0, v9, v10, v11}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 251
    const v9, 0x7f0b0025

    const v10, 0x7f080016

    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 253
    iget-object v9, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v10, "download_id"

    const-wide/16 v11, -0x1

    invoke-interface {v9, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 254
    .local v2, id:J
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-ltz v9, :cond_3

    .line 255
    invoke-direct {p0, v2, v3}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setUpProgressBarForDownload(J)V

    goto/16 :goto_1

    .line 261
    .end local v2           #id:J
    :pswitch_3
    const v9, 0x7f0b0024

    const v10, 0x7f080014

    const/4 v11, 0x1

    invoke-direct {p0, v9, v10, v11}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 262
    const v9, 0x7f0b0025

    const v10, 0x7f080015

    const/4 v11, 0x1

    invoke-direct {p0, v9, v10, v11}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    goto/16 :goto_1

    .line 267
    :pswitch_4
    const v9, 0x7f0b0022

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 268
    const v9, 0x7f0b0024

    const v10, 0x7f080012

    const/4 v11, 0x1

    invoke-direct {p0, v9, v10, v11}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 269
    const v9, 0x7f0b0025

    const v10, 0x7f080016

    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    goto/16 :goto_1

    .line 274
    :pswitch_5
    iget-wide v9, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_5

    .line 275
    iget-wide v9, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/google/android/gsf/update/SystemUpdateActivity;->updateCountdownMessage(JZ)V

    goto/16 :goto_1

    .line 277
    :cond_5
    const v9, 0x7f0b0024

    const v10, 0x7f080013

    const/4 v11, 0x1

    invoke-direct {p0, v9, v10, v11}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 278
    const v9, 0x7f0b0025

    const v10, 0x7f080017

    if-nez v0, :cond_6

    const/4 v11, 0x1

    :goto_2
    invoke-direct {p0, v9, v10, v11}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 280
    const/4 v9, 0x2

    if-ne v0, v9, :cond_7

    .line 281
    iget-object v9, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mButtonQualifier:Landroid/widget/TextView;

    const v10, 0x7f08000d

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 283
    iget-object v9, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mButtonQualifier:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 278
    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .line 284
    :cond_7
    const/4 v9, 0x1

    if-ne v0, v9, :cond_3

    .line 285
    iget-object v9, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mButtonQualifier:Landroid/widget/TextView;

    const v10, 0x7f08000e

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 287
    iget-object v9, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mButtonQualifier:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private resetContent()V
    .locals 6

    .prologue
    const v5, 0x7f0b0023

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 411
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 412
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 413
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 415
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 417
    const v0, 0x7f0b000f

    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "update_title"

    invoke-static {v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "update_size"

    invoke-static {v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0, v4}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 422
    const v0, 0x7f0b0024

    invoke-direct {p0, v0, v3}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 423
    invoke-direct {p0, v5, v3}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 424
    const v0, 0x7f0b0025

    invoke-direct {p0, v0, v3}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 425
    return-void
.end method

.method private resumeCountdown()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 310
    const v0, 0x7f0b0025

    const v1, 0x7f080032

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 311
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->updateCountdownMessage(JZ)V

    .line 312
    return-void
.end method

.method private setText(IIZ)V
    .locals 1
    .parameter "resId"
    .parameter "textResId"
    .parameter "enabled"

    .prologue
    .line 428
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 429
    return-void
.end method

.method private setText(ILjava/lang/CharSequence;Z)V
    .locals 3
    .parameter "resId"
    .parameter "text"
    .parameter "enabled"

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 433
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_0

    .line 438
    :goto_0
    return-void

    .line 434
    :cond_0
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 435
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    :cond_1
    invoke-virtual {v1, p3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setUpProgressBarForDownload(J)V
    .locals 2
    .parameter "downloadId"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    invoke-static {}, Landroid/net/Downloads$ByUri;->getProgressColumnId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_3

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 362
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 363
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 366
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->queryDownloadProgress(J)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    .line 367
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 373
    :goto_0
    return-void

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 372
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->refreshDownloadProgress()V

    goto :goto_0
.end method

.method private setVisibility(II)V
    .locals 1
    .parameter "resId"
    .parameter "visibility"

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 442
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 443
    :cond_0
    return-void
.end method

.method private startCountdown()V
    .locals 4

    .prologue
    .line 304
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.server.checkin.CHECKIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    .line 306
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->resumeCountdown()V

    .line 307
    return-void
.end method

.method private stopCountdown()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 315
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 316
    const v0, 0x3112a

    const-string v1, "activity-countdown-cancel"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 318
    :cond_0
    iput-wide v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    .line 319
    return-void
.end method

.method private updateCountdownMessage(JZ)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const v9, 0x7f0b0024

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 322
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 326
    iget-wide v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 327
    const v0, 0x7f080031

    invoke-direct {p0, v9, v0, v7}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 328
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "install_approved"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 331
    sput-boolean v8, Lcom/google/android/gsf/update/SystemUpdateActivity;->sIsActivityUp:Z

    .line 338
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 340
    :cond_2
    iget-wide v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    .line 341
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f09

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v9, v3, v7}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 345
    iget-wide v3, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    sub-int/2addr v2, v7

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v5, v2

    sub-long v2, v3, v5

    sub-long v0, v2, v0

    long-to-int v0, v0

    .line 346
    if-eqz p3, :cond_0

    .line 347
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gsf/update/SystemUpdateActivity$5;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gsf/update/SystemUpdateActivity$5;-><init>(Lcom/google/android/gsf/update/SystemUpdateActivity;JZ)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x3112a

    const/4 v4, 0x1

    .line 446
    iget v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastStatus:I

    packed-switch v0, :pswitch_data_0

    .line 477
    :goto_0
    :pswitch_0
    return-void

    .line 450
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.server.checkin.CHECKIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 455
    :pswitch_2
    const-string v0, "download"

    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "url"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "download_approved"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejected_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 462
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 463
    const-string v1, "download_now"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 464
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 468
    :pswitch_3
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->stopCountdown()V

    .line 470
    invoke-direct {p0, v4}, Lcom/google/android/gsf/update/SystemUpdateActivity;->refreshStatus(Z)V

    goto :goto_0

    .line 472
    :cond_0
    const-string v0, "install"

    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 473
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->startCountdown()V

    goto :goto_0

    .line 446
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v2, 0x0

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mHandler:Landroid/os/Handler;

    .line 90
    const-string v0, "update"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 93
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setTitle(I)V

    .line 95
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setContentView(I)V

    .line 96
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mButtonQualifier:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 101
    new-instance v0, Lcom/google/android/gsf/update/StateWatcher;

    new-instance v1, Lcom/google/android/gsf/update/SystemUpdateActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/update/SystemUpdateActivity$2;-><init>(Lcom/google/android/gsf/update/SystemUpdateActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gsf/update/StateWatcher;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    .line 107
    if-eqz p1, :cond_0

    .line 108
    const-string v0, "countdown_end"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iput-wide v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setIntent(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 161
    const-string v0, "countdown_end"

    iget-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 162
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPrefs"
    .parameter "key"

    .prologue
    .line 176
    const-string v0, "status"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdateActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/update/SystemUpdateActivity$4;-><init>(Lcom/google/android/gsf/update/SystemUpdateActivity;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const-string v0, "verify_progress"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mVerifyUpdate:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 124
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 129
    sput-boolean v2, Lcom/google/android/gsf/update/SystemUpdateActivity;->sIsActivityUp:Z

    .line 130
    invoke-static {p0}, Lcom/google/android/gsf/update/SystemUpdateService;->cancelNotifications(Landroid/content/Context;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/StateWatcher;->start()V

    .line 132
    invoke-direct {p0, v2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->refreshStatus(Z)V

    .line 134
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 135
    const v0, 0x3112a

    const-string v1, "activity-countdown-resume"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 136
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->resumeCountdown()V

    .line 138
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 144
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->stopCountdown()V

    .line 145
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/StateWatcher;->stop()V

    .line 147
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 151
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->sIsActivityUp:Z

    .line 152
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 156
    return-void
.end method
