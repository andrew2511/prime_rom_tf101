.class public Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;
.super Lcom/google/android/music/MediaPlaybackLayout;
.source "MediaPlaybackLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MediaPlaybackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PortraitCompactMediaPlaybackLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackLayout;-><init>(Landroid/content/Context;)V

    .line 253
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 256
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/MediaPlaybackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 261
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/MediaPlaybackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 262
    return-void
.end method


# virtual methods
.method protected getAlbumScaleCenterX()F
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getAlbumSize()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getAlbumScaleCenterY()F
    .locals 2

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getAlbumSize()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getCollapsedScale()F
    .locals 1

    .prologue
    .line 297
    const v0, 0x3f23d70a

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 276
    invoke-super/range {p0 .. p5}, Lcom/google/android/music/MediaPlaybackLayout;->onLayout(ZIIII)V

    .line 277
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getExpandedAlbumSize()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f80

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getScale()F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    div-int/lit8 v2, v7, 0x2

    .line 279
    .local v2, collapsedOffset:I
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getAlbumSize()I

    move-result v6

    .line 280
    .local v6, size:I
    add-int v7, p2, p4

    div-int/lit8 v1, v7, 0x2

    .line 281
    .local v1, centerX:I
    div-int/lit8 v7, v6, 0x2

    sub-int v4, v1, v7

    .line 282
    .local v4, left:I
    div-int/lit8 v7, v6, 0x2

    add-int v5, v1, v7

    .line 284
    .local v5, right:I
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getAlbumArt()Lcom/google/android/music/AsyncAlbumArtImageView;

    move-result-object v0

    .line 285
    .local v0, albumArt:Landroid/view/View;
    sub-int v7, p5, v6

    sub-int/2addr v7, v2

    sub-int v8, p5, v2

    invoke-virtual {v0, v4, v7, v5, v8}, Lcom/google/android/music/AsyncAlbumArtImageView;->layout(IIII)V

    .line 287
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getFrame()Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 289
    .local v3, frameLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getFrame()Landroid/widget/ImageView;

    move-result-object v7

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v4

    sub-int v9, p5, v6

    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v9, v10

    sub-int/2addr v9, v2

    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v10, v5, v10

    iget v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v11, p5, v11

    sub-int/2addr v11, v2

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/ImageView;->layout(IIII)V

    .line 293
    return-void
.end method
