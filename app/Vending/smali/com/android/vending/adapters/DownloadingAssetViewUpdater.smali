.class public Lcom/android/vending/adapters/DownloadingAssetViewUpdater;
.super Ljava/lang/Object;
.source "DownloadingAssetViewUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/adapters/DownloadingAssetViewUpdater$1;
    }
.end annotation


# static fields
.field private static sDownloadStatusFormatBytes:Ljava/lang/CharSequence;

.field private static sDownloadStatusFormatPercents:Ljava/lang/CharSequence;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/vending/adapters/DownloadingAssetViewUpdater;->mContext:Landroid/content/Context;

    .line 34
    sget-object v0, Lcom/android/vending/adapters/DownloadingAssetViewUpdater;->sDownloadStatusFormatPercents:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 35
    const v0, 0x7f07017b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    sput-object v0, Lcom/android/vending/adapters/DownloadingAssetViewUpdater;->sDownloadStatusFormatPercents:Ljava/lang/CharSequence;

    .line 38
    :cond_0
    sget-object v0, Lcom/android/vending/adapters/DownloadingAssetViewUpdater;->sDownloadStatusFormatBytes:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 39
    const v0, 0x7f07017c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    sput-object v0, Lcom/android/vending/adapters/DownloadingAssetViewUpdater;->sDownloadStatusFormatBytes:Ljava/lang/CharSequence;

    .line 42
    :cond_1
    return-void
.end method

.method private updateView(Landroid/view/View;JJI)V
    .locals 14
    .parameter "view"
    .parameter "bytesComplete"
    .parameter "bytesTotal"
    .parameter "statusStringId"

    .prologue
    .line 114
    const v10, 0x7f080058

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    .line 115
    .local v5, progressBar:Landroid/widget/ProgressBar;
    const v10, 0x7f080055

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 116
    .local v7, progressStatusPercents:Landroid/widget/TextView;
    const v10, 0x7f080056

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 118
    .local v6, progressStatusBytes:Landroid/widget/TextView;
    const-wide/16 v10, 0x0

    cmp-long v10, p2, v10

    if-lez v10, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v10, p4, v10

    if-lez v10, :cond_1

    cmp-long v10, p2, p4

    if-gtz v10, :cond_1

    const/4 v10, 0x1

    move v3, v10

    .line 120
    .local v3, bytesValid:Z
    :goto_0
    const/4 v4, 0x0

    .line 121
    .local v4, percent:I
    if-eqz v3, :cond_2

    .line 122
    const-wide/16 v10, 0x64

    mul-long v10, v10, p2

    div-long v10, v10, p4

    long-to-int v4, v10

    .line 124
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 125
    invoke-virtual {v5, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 130
    :goto_1
    const-string v10, " "

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const-string v10, " "

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    if-gez p6, :cond_0

    if-eqz v3, :cond_0

    .line 134
    sget-object v10, Lcom/android/vending/adapters/DownloadingAssetViewUpdater;->sDownloadStatusFormatPercents:Ljava/lang/CharSequence;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/CharSequence;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 137
    .local v9, progressStringPercents:Ljava/lang/CharSequence;
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    sget-object v10, Lcom/android/vending/adapters/DownloadingAssetViewUpdater;->sDownloadStatusFormatBytes:Ljava/lang/CharSequence;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/CharSequence;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/vending/adapters/DownloadingAssetViewUpdater;->mContext:Landroid/content/Context;

    move-object v0, v13

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/vending/adapters/DownloadingAssetViewUpdater;->mContext:Landroid/content/Context;

    move-object v0, v13

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 142
    .local v8, progressStringBytes:Ljava/lang/CharSequence;
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .end local v8           #progressStringBytes:Ljava/lang/CharSequence;
    .end local v9           #progressStringPercents:Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 118
    .end local v3           #bytesValid:Z
    .end local v4           #percent:I
    :cond_1
    const/4 v10, 0x0

    move v3, v10

    goto :goto_0

    .line 127
    .restart local v3       #bytesValid:Z
    .restart local v4       #percent:I
    :cond_2
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_1
.end method


# virtual methods
.method public updateView(Landroid/view/View;Lcom/android/vending/model/Asset;)V
    .locals 9
    .parameter "view"
    .parameter "asset"

    .prologue
    const-wide/16 v2, -0x1

    .line 82
    const/4 v6, -0x1

    .line 84
    .local v6, stringId:I
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset()Lcom/android/vending/model/LocalAsset;

    move-result-object v8

    .line 85
    .local v8, localAsset:Lcom/android/vending/model/LocalAsset;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v0

    move-object v7, v0

    .line 87
    .local v7, assetState:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    :goto_0
    sget-object v0, Lcom/android/vending/adapters/DownloadingAssetViewUpdater$1;->$SwitchMap$com$android$vending$model$LocalAssetInfo$AssetState:[I

    invoke-virtual {v7}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    .line 109
    invoke-direct/range {v0 .. v6}, Lcom/android/vending/adapters/DownloadingAssetViewUpdater;->updateView(Landroid/view/View;JJI)V

    .line 110
    return-void

    .line 85
    .end local v7           #assetState:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    :cond_0
    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-object v7, v0

    goto :goto_0

    .line 89
    .restart local v7       #assetState:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    :pswitch_0
    const v6, 0x7f0700d9

    .line 90
    goto :goto_1

    .line 95
    :pswitch_1
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isFree()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isEverInstalledByUser()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    const v6, 0x7f070106

    goto :goto_1

    .line 98
    :cond_1
    const v6, 0x7f0700d9

    .line 100
    goto :goto_1

    .line 102
    :pswitch_2
    const v6, 0x7f0700cd

    .line 103
    goto :goto_1

    .line 105
    :pswitch_3
    const v6, 0x7f0700cf

    goto :goto_1

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateView(Landroid/view/View;Lcom/android/vending/model/DownloadProgress;)V
    .locals 9
    .parameter "view"
    .parameter "downloadStatus"

    .prologue
    .line 45
    iget-wide v2, p2, Lcom/android/vending/model/DownloadProgress;->mBytesComplete:J

    .line 46
    .local v2, bytesComplete:J
    iget-wide v4, p2, Lcom/android/vending/model/DownloadProgress;->mBytesTotal:J

    .line 47
    .local v4, bytesTotal:J
    iget v8, p2, Lcom/android/vending/model/DownloadProgress;->mStatusId:I

    .line 48
    .local v8, status:I
    const/4 v6, -0x1

    .line 50
    .local v6, stringId:I
    invoke-static {v8}, Lcom/android/vending/compat/Downloads;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    invoke-static {v8}, Lcom/android/vending/compat/Downloads;->isStatusSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    move-object v0, p0

    move-object v1, p1

    .line 78
    invoke-direct/range {v0 .. v6}, Lcom/android/vending/adapters/DownloadingAssetViewUpdater;->updateView(Landroid/view/View;JJI)V

    .line 79
    return-void

    .line 54
    :cond_1
    invoke-virtual {p2}, Lcom/android/vending/model/DownloadProgress;->getLocalAsset()Lcom/android/vending/model/LocalAsset;

    move-result-object v7

    .line 55
    .local v7, asset:Lcom/android/vending/model/LocalAsset;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v0

    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOADING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne v0, v1, :cond_2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Asset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/vending/model/LocalAsset;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is in downloading state, but download failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v7, v0}, Lcom/android/vending/model/LocalAsset;->setState(Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    .line 60
    :cond_2
    const-wide/16 v2, -0x1

    .line 61
    const-wide/16 v4, -0x1

    .line 62
    const v6, 0x7f0700dd

    .line 63
    goto :goto_0

    .line 66
    .end local v7           #asset:Lcom/android/vending/model/LocalAsset;
    :cond_3
    invoke-static {v8}, Lcom/android/vending/compat/Downloads;->isStatusPending(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    const-wide/16 v2, -0x1

    .line 68
    const-wide/16 v4, -0x1

    .line 69
    const v6, 0x7f0700d9

    goto :goto_0

    .line 70
    :cond_4
    invoke-static {v8}, Lcom/android/vending/compat/Downloads;->isStatusPaused(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71
    const v6, 0x7f0700db

    goto :goto_0

    .line 72
    :cond_5
    invoke-static {v8}, Lcom/android/vending/compat/Downloads;->isStatusQueuedForWifi(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const v6, 0x7f0700dc

    goto :goto_0
.end method
