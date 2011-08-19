.class public Lcom/amazon/android/util/DownloadProgressBarState;
.super Ljava/lang/Object;
.source "DownloadProgressBarState.java"


# instance fields
.field private horizontalDownloadingDrawable:Landroid/graphics/drawable/Drawable;

.field private horizontalNoProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private horizontalPausedDrawable:Landroid/graphics/drawable/Drawable;

.field private isDrawableIndeterminate:Z

.field private isOverrideVisible:Z

.field private progress:D

.field private progressDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isOverrideVisible:Z

    .line 34
    iput-boolean v1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isDrawableIndeterminate:Z

    .line 35
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progress:D

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0200ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalDownloadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 49
    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalPausedDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    const v1, 0x108006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalNoProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    iget-object v1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalDownloadingDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    return-void
.end method


# virtual methods
.method public calculateState(Lcom/amazon/kcp/library/models/IDownloadBookItem;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 69
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/amazon/android/util/UIUtils;->getContentDownloadProgressPercent(Lcom/amazon/kcp/library/models/IDownloadBookItem;)D

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progress:D

    .line 70
    iget-wide v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progress:D

    cmpl-double v0, v0, v6

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progress:D

    int-to-double v2, p2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    move v0, v4

    :goto_1
    iput-boolean v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isOverrideVisible:Z

    .line 72
    if-eqz p1, :cond_0

    .line 74
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v0

    .line 75
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadTarget()I

    move-result v1

    .line 77
    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_2
    iget-object v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalNoProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_5

    move v0, v4

    :goto_3
    iput-boolean v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isDrawableIndeterminate:Z

    .line 143
    :cond_0
    return-void

    :cond_1
    move-wide v0, v6

    .line 69
    goto :goto_0

    :cond_2
    move v0, v5

    .line 70
    goto :goto_1

    .line 83
    :pswitch_0
    iput-boolean v4, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isOverrideVisible:Z

    .line 84
    iget-object v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalPausedDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 89
    :pswitch_1
    iput-boolean v4, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isOverrideVisible:Z

    .line 90
    iget-object v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalPausedDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 95
    :pswitch_2
    iput-boolean v5, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isOverrideVisible:Z

    .line 96
    iget-object v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalDownloadingDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 100
    :pswitch_3
    iput-boolean v4, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isOverrideVisible:Z

    .line 101
    if-nez v1, :cond_3

    .line 103
    iget-object v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalNoProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalDownloadingDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 114
    :pswitch_4
    iput-boolean v5, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isOverrideVisible:Z

    goto :goto_2

    .line 118
    :pswitch_5
    iput-boolean v4, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isOverrideVisible:Z

    .line 119
    iget-wide v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progress:D

    cmpl-double v0, v0, v6

    if-nez v0, :cond_4

    if-nez p2, :cond_4

    .line 121
    iget-object v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalNoProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalDownloadingDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 130
    :pswitch_6
    iput-boolean v4, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isOverrideVisible:Z

    .line 131
    iget-object v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->horizontalNoProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_5
    move v0, v5

    .line 132
    goto :goto_3

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progress:D

    double-to-int v0, v0

    return v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->progressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isDrawableIndeterminate()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isDrawableIndeterminate:Z

    return v0
.end method

.method public isOverrideVisibile()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/amazon/android/util/DownloadProgressBarState;->isOverrideVisible:Z

    return v0
.end method
