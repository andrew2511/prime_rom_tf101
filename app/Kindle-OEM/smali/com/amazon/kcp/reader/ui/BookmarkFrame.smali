.class public Lcom/amazon/kcp/reader/ui/BookmarkFrame;
.super Landroid/widget/FrameLayout;
.source "BookmarkFrame.java"


# static fields
.field private static final FADE_IN_DELAY:J = 0xc8L


# instance fields
.field private bookmark:Landroid/widget/ImageView;

.field private bookmarkOverlayId:I

.field private bookmarkRibbonId:I

.field private bookmarkRibbonOffsetId:I

.field private isOffset:Z

.field private offsetBookmark:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const v0, 0x7f020017

    iput v0, p0, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->bookmarkRibbonId:I

    .line 27
    const v0, 0x7f020018

    iput v0, p0, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->bookmarkRibbonOffsetId:I

    .line 28
    const v0, 0x7f020014

    iput v0, p0, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->bookmarkOverlayId:I

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->isOffset:Z

    .line 43
    return-void
.end method

.method private crossFadeBookmarks(Landroid/widget/ImageView;Landroid/widget/ImageView;Z)V
    .locals 6
    .parameter "fromView"
    .parameter "toView"
    .parameter "animated"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 87
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 88
    invoke-virtual {p2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 90
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 91
    .local v0, fadeIn:Landroid/view/animation/Animation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 92
    if-nez p3, :cond_0

    .line 94
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 95
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 98
    :cond_0
    new-instance v1, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;

    new-instance v2, Lcom/amazon/kcp/reader/ui/BookmarkFrame$1;

    invoke-direct {v2, p0, p2}, Lcom/amazon/kcp/reader/ui/BookmarkFrame$1;-><init>(Lcom/amazon/kcp/reader/ui/BookmarkFrame;Landroid/widget/ImageView;)V

    invoke-direct {v1, v3, v3, v2}, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 107
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 109
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f0c0027

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->bookmark:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->offsetBookmark:Landroid/widget/ImageView;

    .line 51
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 52
    return-void
.end method

.method public setOverlaysVisible(ZZ)Z
    .locals 2
    .parameter "visible"
    .parameter "animated"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->isOffset:Z

    if-ne v0, p1, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    .line 62
    :cond_0
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->isOffset:Z

    .line 63
    if-eqz p1, :cond_1

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->bookmark:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->offsetBookmark:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, p2}, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->crossFadeBookmarks(Landroid/widget/ImageView;Landroid/widget/ImageView;Z)V

    .line 72
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->offsetBookmark:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->bookmark:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, p2}, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->crossFadeBookmarks(Landroid/widget/ImageView;Landroid/widget/ImageView;Z)V

    goto :goto_1
.end method

.method public showBookmark(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->offsetBookmark:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->bookmarkRibbonOffsetId:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->bookmark:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->bookmarkRibbonId:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    return-void

    .line 80
    :cond_0
    iget v1, p0, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->bookmarkOverlayId:I

    goto :goto_0

    .line 81
    :cond_1
    const v1, 0x106000d

    goto :goto_1
.end method

.method public updateColorMode(Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V
    .locals 1
    .parameter "colorMode"

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getBookmarkRibbonResId()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->bookmarkRibbonId:I

    .line 114
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getBookmarkRibbonOffsetResId()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->bookmarkRibbonOffsetId:I

    .line 115
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getBookmarkOverlayResId()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/BookmarkFrame;->bookmarkOverlayId:I

    .line 116
    return-void
.end method
