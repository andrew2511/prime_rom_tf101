.class public Lcom/amazon/kcp/library/ui/BookCoverView;
.super Landroid/widget/FrameLayout;
.source "BookCoverView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/ui/BookCoverView$3;,
        Lcom/amazon/kcp/library/ui/BookCoverView$Cacher;,
        Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;
    }
.end annotation


# static fields
.field private static final TEXT_SCALE_INHIBITOR:F = 0.4f


# instance fields
.field private authorOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

.field private authorTag:Landroid/widget/TextView;

.field private cloud:Landroid/graphics/drawable/Drawable;

.field private final cover:Lcom/amazon/kcp/library/ui/Cover;

.field private dimView:Landroid/view/View;

.field private downloadProgressBar:Landroid/widget/ProgressBar;

.field private downloadProgressBarOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

.field private downloadProgressBarState:Lcom/amazon/android/util/DownloadProgressBarState;

.field private drawCloud:Z

.field private isShowingDefaultCover:Z

.field private keepMargin:I

.field private keepOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

.field private keepTag:Landroid/widget/TextView;

.field private persistUpdatableCoverToDisk:Z

.field private sampleTag:Landroid/widget/TextView;

.field private titleOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

.field private titleTag:Landroid/widget/TextView;

.field private updatableAsin:Ljava/lang/String;

.field private updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

.field private updatableCoverBook:Lcom/amazon/kcp/library/models/IListableBook;

.field private updatableType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    iput-boolean v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->drawCloud:Z

    .line 84
    iput-boolean v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->isShowingDefaultCover:Z

    .line 86
    sget-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->titleOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 87
    sget-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 88
    sget-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->keepOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 89
    sget-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->downloadProgressBarOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 100
    new-instance v0, Lcom/amazon/kcp/library/ui/Cover;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/ui/Cover;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/ui/Cover;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/BookCoverView;->addView(Landroid/view/View;)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/ui/BookCoverView;)Lcom/amazon/kcp/library/ui/Cover;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    return-object v0
.end method

.method static synthetic access$102(Lcom/amazon/kcp/library/ui/BookCoverView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->isShowingDefaultCover:Z

    return p1
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/ui/BookCoverView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->updateOverlaysVisibility()V

    return-void
.end method

.method private convertToViewVisibility(Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 306
    sget-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$3;->$SwitchMap$com$amazon$kcp$library$ui$BookCoverView$OverlayVisibility:[I

    invoke-virtual {p1}, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized overlay visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 316
    :goto_0
    return v0

    :pswitch_0
    move v0, v2

    .line 309
    goto :goto_0

    :pswitch_1
    move v0, v3

    .line 311
    goto :goto_0

    .line 313
    :pswitch_2
    iget-boolean v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->isShowingDefaultCover:Z

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private resetUpdatableCover()V
    .locals 6

    .prologue
    .line 203
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/UpdatableCover;->cancelUpdates()V

    .line 207
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    .line 209
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCoverBook:Lcom/amazon/kcp/library/models/IListableBook;

    if-eqz v0, :cond_3

    .line 213
    invoke-static {}, Lcom/amazon/kcp/cover/CoverManager;->getInstance()Lcom/amazon/kcp/cover/CoverManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCoverBook:Lcom/amazon/kcp/library/models/IListableBook;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getHeight()I

    move-result v3

    iget-boolean v4, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->persistUpdatableCoverToDisk:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/cover/CoverManager;->getCover(Lcom/amazon/kcp/library/models/IListableBook;IIZ)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    .line 227
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    new-instance v1, Lcom/amazon/kcp/library/ui/BookCoverView$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/ui/BookCoverView$1;-><init>(Lcom/amazon/kcp/library/ui/BookCoverView;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/cover/UpdatableCover;->setOnUpdateListener(Lcom/amazon/kcp/cover/OnImageUpdateListener;)V

    .line 242
    :cond_2
    return-void

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableAsin:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 220
    invoke-static {}, Lcom/amazon/kcp/cover/CoverManager;->getInstance()Lcom/amazon/kcp/cover/CoverManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableAsin:Ljava/lang/String;

    iget v2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableType:I

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getHeight()I

    move-result v4

    iget-boolean v5, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->persistUpdatableCoverToDisk:Z

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/cover/CoverManager;->getCover(Ljava/lang/String;IIIZ)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    goto :goto_0
.end method

.method private setDynamicFontSizes(I)V
    .locals 6
    .parameter "currentCoverWidth"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 524
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 525
    .local v0, defaultCoverWidth:F
    int-to-float v2, p1

    div-float v1, v2, v0

    .line 529
    .local v1, textSizeScale:F
    cmpl-float v2, v1, v4

    if-lez v2, :cond_0

    .line 531
    sub-float v2, v1, v4

    const v3, 0x3ecccccd

    mul-float/2addr v2, v3

    add-float v1, v4, v2

    .line 534
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->titleTag:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    mul-float/2addr v3, v1

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 536
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->sampleTag:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    mul-float/2addr v3, v1

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 538
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    mul-float/2addr v3, v1

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 540
    return-void
.end method

.method private updateOverlaysVisibility()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->titleTag:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->titleOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->convertToViewVisibility(Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->convertToViewVisibility(Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->keepTag:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->keepOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->convertToViewVisibility(Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->downloadProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->downloadProgressBarOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->convertToViewVisibility(Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 302
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 564
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 566
    iget-boolean v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->drawCloud:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cloud:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cloud:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 570
    :cond_0
    return-void
.end method

.method public getCover()Lcom/amazon/kcp/library/ui/Cover;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    return-object v0
.end method

.method public isSample()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->sampleTag:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/ui/Cover;->unbindDrawables()V

    .line 510
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 511
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 376
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 377
    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/BookCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->titleTag:Landroid/widget/TextView;

    .line 378
    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/BookCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->sampleTag:Landroid/widget/TextView;

    .line 379
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/BookCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    .line 380
    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/BookCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->keepTag:Landroid/widget/TextView;

    .line 381
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/BookCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->dimView:Landroid/view/View;

    .line 382
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/BookCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->downloadProgressBar:Landroid/widget/ProgressBar;

    .line 383
    new-instance v0, Lcom/amazon/android/util/DownloadProgressBarState;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/android/util/DownloadProgressBarState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->downloadProgressBarState:Lcom/amazon/android/util/DownloadProgressBarState;

    .line 386
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->keepMargin:I

    .line 388
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/BookCoverView;->setSample(Z)V

    .line 389
    sget-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-virtual {p0, v2, v0}, Lcom/amazon/kcp/library/ui/BookCoverView;->setTitle(Ljava/lang/String;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)V

    .line 390
    sget-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-virtual {p0, v2, v0}, Lcom/amazon/kcp/library/ui/BookCoverView;->setAuthor(Ljava/lang/String;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)V

    .line 391
    sget-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOADED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/BookCoverView;->setState(Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;)V

    .line 392
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x0

    .line 413
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 415
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v1, v2, v7}, Lcom/amazon/kcp/library/ui/Cover;->getCoverImageBounds(IIZ)Landroid/graphics/Rect;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->sampleTag:Landroid/widget/TextView;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->sampleTag:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 421
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 425
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->sampleTag:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v9, :cond_2

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->sampleTag:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v2, v9, :cond_3

    iget-object v2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 428
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int v1, v3, v1

    iget-object v3, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->titleTag:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    .line 430
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->titleTag:Landroid/widget/TextView;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->titleTag:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 436
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->keepTag:Landroid/widget/TextView;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->keepTag:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->keepMargin:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->keepMargin:I

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->keepTag:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 442
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->dimView:Landroid/view/View;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 445
    iget-boolean v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->drawCloud:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cloud:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    .line 450
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 451
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 453
    iget-object v4, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cloud:Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v2

    iget-object v7, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cloud:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v3

    iget-object v8, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cloud:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v1

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sub-int v2, v8, v2

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v8, v3

    sub-int v1, v3, v1

    invoke-direct {v5, v6, v7, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v1

    .line 461
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 462
    iget-object v3, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-ne v3, v9, :cond_5

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    .line 466
    :goto_3
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 467
    add-int/2addr v1, v3

    .line 469
    iget-object v4, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 484
    if-eqz p1, :cond_1

    .line 486
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/amazon/kcp/library/ui/BookCoverView$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/ui/BookCoverView$2;-><init>(Lcom/amazon/kcp/library/ui/BookCoverView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 495
    :cond_1
    return-void

    :cond_2
    move v1, v7

    .line 425
    goto/16 :goto_0

    :cond_3
    move v2, v7

    goto/16 :goto_1

    :cond_4
    move v1, v7

    .line 448
    goto :goto_2

    .line 462
    :cond_5
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 397
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 400
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/amazon/kcp/library/ui/Cover;->getCoverImageBounds(IIZ)Landroid/graphics/Rect;

    move-result-object v0

    .line 401
    .local v0, coverImageBounds:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/ui/Cover;->getWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->setDynamicFontSizes(I)V

    .line 404
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->titleTag:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/high16 v4, -0x8000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 405
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->sampleTag:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 406
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 407
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->keepTag:Landroid/widget/TextView;

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 408
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 500
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 501
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->resetUpdatableCover()V

    .line 502
    return-void
.end method

.method public setAuthor(Ljava/lang/String;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)V
    .locals 1
    .parameter "author"
    .parameter "visibility"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorTag:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    :goto_0
    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->authorOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 293
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->updateOverlaysVisibility()V

    .line 294
    return-void

    :cond_0
    move-object v0, p2

    .line 292
    goto :goto_0
.end method

.method public setBookType(I)V
    .locals 2
    .parameter "bookType"

    .prologue
    .line 354
    packed-switch p1, :pswitch_data_0

    .line 369
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    sget-object v1, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->THICK_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/ui/Cover;->setPageEffects(Lcom/amazon/kcp/library/ui/Cover$PageEffects;)V

    .line 371
    :goto_0
    return-void

    .line 357
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    sget-object v1, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->THIN_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/ui/Cover;->setPageEffects(Lcom/amazon/kcp/library/ui/Cover$PageEffects;)V

    goto :goto_0

    .line 360
    :pswitch_1
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    sget-object v1, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->THICK_SPARSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/ui/Cover;->setPageEffects(Lcom/amazon/kcp/library/ui/Cover$PageEffects;)V

    goto :goto_0

    .line 363
    :pswitch_2
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    sget-object v1, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->THIN_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/ui/Cover;->setPageEffects(Lcom/amazon/kcp/library/ui/Cover$PageEffects;)V

    goto :goto_0

    .line 366
    :pswitch_3
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    sget-object v1, Lcom/amazon/kcp/library/ui/Cover$PageEffects;->VARIABLE_THICK_PAGES:Lcom/amazon/kcp/library/ui/Cover$PageEffects;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/ui/Cover;->setPageEffects(Lcom/amazon/kcp/library/ui/Cover$PageEffects;)V

    goto :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCoverImage(IZF)V
    .locals 1
    .parameter "resourceId"
    .parameter "isDefaultCover"
    .parameter "bookLengthPercent"

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/amazon/kcp/library/ui/BookCoverView;->setCoverImage(Landroid/graphics/drawable/Drawable;ZF)V

    .line 159
    return-void
.end method

.method public setCoverImage(Landroid/graphics/Bitmap;ZF)V
    .locals 2
    .parameter "bitmap"
    .parameter "isDefaultCover"
    .parameter "bookLengthPercent"

    .prologue
    .line 146
    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/amazon/kcp/library/ui/BookCoverView;->setCoverImage(Landroid/graphics/drawable/Drawable;ZF)V

    .line 147
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCoverImage(Landroid/graphics/drawable/Drawable;ZF)V
    .locals 1
    .parameter "drawable"
    .parameter "isDefaultCover"
    .parameter "bookLengthPercent"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/UpdatableCover;->cancelUpdates()V

    .line 129
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCoverBook:Lcom/amazon/kcp/library/models/IListableBook;

    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cover:Lcom/amazon/kcp/library/ui/Cover;

    invoke-virtual {v0, p1, p3}, Lcom/amazon/kcp/library/ui/Cover;->setCoverImage(Landroid/graphics/drawable/Drawable;F)V

    .line 133
    iput-boolean p2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->isShowingDefaultCover:Z

    .line 134
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->updateOverlaysVisibility()V

    .line 135
    return-void
.end method

.method public setCoverSource(Lcom/amazon/kcp/library/models/IListableBook;ZF)V
    .locals 2
    .parameter "book"
    .parameter "persistToDisk"
    .parameter "bookLengthPercent"

    .prologue
    .line 171
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lcom/amazon/kcp/library/ui/BookCoverView;->setCoverImage(Landroid/graphics/drawable/Drawable;ZF)V

    .line 172
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCoverBook:Lcom/amazon/kcp/library/models/IListableBook;

    .line 173
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableAsin:Ljava/lang/String;

    .line 174
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getBookType()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableType:I

    .line 175
    iput-boolean p2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->persistUpdatableCoverToDisk:Z

    .line 176
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->resetUpdatableCover()V

    .line 177
    return-void
.end method

.method public setCoverSource(Ljava/lang/String;IZF)V
    .locals 4
    .parameter "asin"
    .parameter "type"
    .parameter "persistToDisk"
    .parameter "bookLengthPercent"

    .prologue
    const/4 v2, 0x0

    .line 190
    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, p4}, Lcom/amazon/kcp/library/ui/BookCoverView;->setCoverImage(Landroid/graphics/drawable/Drawable;ZF)V

    .line 191
    iput-object v2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableCoverBook:Lcom/amazon/kcp/library/models/IListableBook;

    .line 192
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableAsin:Ljava/lang/String;

    .line 193
    iput p2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->updatableType:I

    .line 194
    iput-boolean p3, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->persistUpdatableCoverToDisk:Z

    .line 195
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->resetUpdatableCover()V

    .line 196
    return-void
.end method

.method public setDownloadProgress(Lcom/amazon/kcp/library/models/IDownloadBookItem;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)V
    .locals 2
    .parameter "book"
    .parameter "downloadProgressBarOverlayVisibility"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->downloadProgressBarState:Lcom/amazon/android/util/DownloadProgressBarState;

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v0, p2, p1, v1}, Lcom/amazon/android/util/UIUtils;->setDownloadProgressBar(Lcom/amazon/android/util/DownloadProgressBarState;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;Lcom/amazon/kcp/library/models/IDownloadBookItem;Landroid/widget/ProgressBar;)Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->downloadProgressBarOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 558
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->updateOverlaysVisibility()V

    .line 559
    return-void
.end method

.method public setKeepVisibility(Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->keepOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 269
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->updateOverlaysVisibility()V

    .line 270
    return-void
.end method

.method public setSample(Z)V
    .locals 2
    .parameter "sample"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->sampleTag:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    return-void

    .line 259
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public setState(Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 327
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/library/ui/BookCoverView$Cacher;->shouldDimCover(Landroid/content/res/Resources;)Z

    move-result v1

    .line 329
    .local v1, shouldDimAiCovers:Z
    sget-object v2, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->REMOTE:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    if-ne p1, v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    sget-object v2, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->AI_SEARCH_RESULT:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    if-ne p1, v2, :cond_4

    :cond_1
    move v2, v5

    :goto_0
    iput-boolean v2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->drawCloud:Z

    .line 332
    iget-boolean v2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->drawCloud:Z

    if-eqz v2, :cond_2

    .line 334
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->cloud:Landroid/graphics/drawable/Drawable;

    .line 338
    :cond_2
    sget-object v2, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->AI_SEARCH_RESULT:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOAD_FAILED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOAD_PAUSED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->REMOTE:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    if-ne p1, v2, :cond_5

    if-eqz v1, :cond_5

    :cond_3
    move v0, v5

    .line 343
    .local v0, dimCover:Z
    :goto_1
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->dimView:Landroid/view/View;

    if-eqz v0, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 344
    return-void

    .end local v0           #dimCover:Z
    :cond_4
    move v2, v4

    .line 329
    goto :goto_0

    :cond_5
    move v0, v4

    .line 338
    goto :goto_1

    .line 343
    .restart local v0       #dimCover:Z
    :cond_6
    const/16 v3, 0x8

    goto :goto_2
.end method

.method public setTitle(Ljava/lang/String;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)V
    .locals 1
    .parameter "title"
    .parameter "visibility"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->titleTag:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    :goto_0
    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView;->titleOverlayVisibility:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 281
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/BookCoverView;->updateOverlaysVisibility()V

    .line 282
    return-void

    :cond_0
    move-object v0, p2

    .line 280
    goto :goto_0
.end method
