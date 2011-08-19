.class public Lcom/google/android/music/SizableTrackSeekBar;
.super Landroid/widget/SeekBar;
.source "SizableTrackSeekBar.java"


# static fields
.field private static final DEFAULT_TRACK_SIZE_DIP:F = 9.0f


# instance fields
.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbAlpha:F

.field private mTrackHeight:I

.field private mTrackPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x1

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumbAlpha:F

    .line 30
    sget-object v2, Lcom/google/android/music/R$styleable;->SizableSeekbar:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 32
    .local v1, trackHeight:I
    if-ne v1, v3, :cond_0

    .line 33
    const/high16 v2, 0x4110

    invoke-virtual {p0, v2}, Lcom/google/android/music/SizableTrackSeekBar;->setTrackHeightDip(F)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/music/SizableTrackSeekBar;->setTrackHeight(I)V

    goto :goto_0
.end method

.method private configureThumbPadding()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 54
    iget-object v7, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    .line 55
    iget v7, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumbAlpha:F

    iget-object v8, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, p0, Lcom/google/android/music/SizableTrackSeekBar;->mTrackPadding:I

    .line 60
    :goto_0
    iget-object v7, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_1

    move v5, v11

    .line 61
    .local v5, thumbHeight:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->getPaddingRight()I

    move-result v3

    .line 62
    .local v3, paddingRight:I
    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->getPaddingLeft()I

    move-result v2

    .line 63
    .local v2, paddingLeft:I
    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->getPaddingTop()I

    move-result v4

    .line 64
    .local v4, paddingTop:I
    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->getPaddingBottom()I

    move-result v1

    .line 65
    .local v1, paddingBottom:I
    iget v6, p0, Lcom/google/android/music/SizableTrackSeekBar;->mTrackHeight:I

    .line 67
    .local v6, trackHeight:I
    sub-int v7, v5, v6

    div-int/lit8 v0, v7, 0x2

    .line 69
    .local v0, gapForCenteringTrack:I
    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget v8, p0, Lcom/google/android/music/SizableTrackSeekBar;->mTrackPadding:I

    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->getWidth()I

    move-result v9

    sub-int/2addr v9, v3

    sub-int/2addr v9, v2

    iget v10, p0, Lcom/google/android/music/SizableTrackSeekBar;->mTrackPadding:I

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->getHeight()I

    move-result v10

    sub-int/2addr v10, v1

    sub-int/2addr v10, v0

    sub-int/2addr v10, v4

    invoke-virtual {v7, v8, v0, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 72
    invoke-virtual {p0, v11}, Lcom/google/android/music/SizableTrackSeekBar;->setThumbOffset(I)V

    .line 73
    return-void

    .line 57
    .end local v0           #gapForCenteringTrack:I
    .end local v1           #paddingBottom:I
    .end local v2           #paddingLeft:I
    .end local v3           #paddingRight:I
    .end local v4           #paddingTop:I
    .end local v5           #thumbHeight:I
    .end local v6           #trackHeight:I
    :cond_0
    iput v11, p0, Lcom/google/android/music/SizableTrackSeekBar;->mTrackPadding:I

    goto :goto_0

    .line 60
    :cond_1
    iget-object v7, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    move v5, v7

    goto :goto_1
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 42
    invoke-direct {p0}, Lcom/google/android/music/SizableTrackSeekBar;->configureThumbPadding()V

    .line 43
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "thumb"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 49
    invoke-direct {p0}, Lcom/google/android/music/SizableTrackSeekBar;->configureThumbPadding()V

    .line 50
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 51
    return-void
.end method

.method public setThumbAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 90
    int-to-float v0, p1

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumbAlpha:F

    .line 91
    iget-object v0, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/google/android/music/SizableTrackSeekBar;->configureThumbPadding()V

    .line 95
    return-void
.end method

.method public setTrackHeight(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 81
    iput p1, p0, Lcom/google/android/music/SizableTrackSeekBar;->mTrackHeight:I

    .line 82
    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->requestLayout()V

    .line 83
    return-void
.end method

.method public setTrackHeightDip(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/music/SizableTrackSeekBar;->mTrackHeight:I

    .line 77
    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->requestLayout()V

    .line 78
    return-void
.end method
