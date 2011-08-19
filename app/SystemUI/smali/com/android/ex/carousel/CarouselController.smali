.class public Lcom/android/ex/carousel/CarouselController;
.super Ljava/lang/Object;
.source "CarouselController.java"


# instance fields
.field private final DEFAULT_DETAIL_ALIGNMENT:I

.field private final DEFAULT_DRAG_FACTOR:F

.field private final DEFAULT_FRICTION_COEFFICIENT:F

.field private final DEFAULT_PREFETCH_CARD_COUNT:I

.field private final DEFAULT_RADIUS:F

.field private final DEFAULT_ROW_COUNT:I

.field private final DEFAULT_ROW_SPACING:F

.field private final DEFAULT_SLOT_COUNT:I

.field private final DEFAULT_SWAY_SENSITIVITY:F

.field private final DEFAULT_VISIBLE_DETAIL_COUNT:I

.field private mAt:[F

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mBackgroundColor:Landroid/renderscript/Float4;

.field private mCardCount:I

.field private mCardCreationFadeDuration:J

.field private mCardRotation:F

.field private mCardsFaceTangent:Z

.field private mCarouselCallback:Lcom/android/ex/carousel/CarouselRS$CarouselCallback;

.field private mCarouselRotationAngle:F

.field private mDefaultBitmap:Landroid/graphics/Bitmap;

.field private mDefaultCardMatrix:[F

.field private mDefaultGeometry:I

.field private mDefaultLineBitmap:Landroid/graphics/Bitmap;

.field private mDetailLoadingBitmap:Landroid/graphics/Bitmap;

.field private mDetailTextureAlignment:I

.field private mDragFactor:F

.field private mDragModel:I

.field private mDrawRuler:Z

.field private mEye:[F

.field private mFadeInDuration:J

.field private mFillDirection:I

.field private mFirstCardTop:Z

.field private mForceBlendCardsWithZ:Z

.field private mFrictionCoefficient:F

.field private mLoadingBitmap:Landroid/graphics/Bitmap;

.field private mLoadingGeometry:I

.field private mPrefetchCardCount:I

.field private mRS:Landroid/renderscript/RenderScriptGL;

.field private mRadius:F

.field private mRenderScript:Lcom/android/ex/carousel/CarouselRS;

.field private mRezInCardCount:F

.field private mRowCount:I

.field private mRowSpacing:F

.field private mSlotCount:I

.field private mStartAngle:F

.field private mStoreConfigs:[I

.field private mSwaySensitivity:F

.field private mUp:[F

.field private mVisibleDetails:I

.field private mVisibleSlots:I


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/high16 v8, 0x3e80

    const/4 v2, 0x3

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/ex/carousel/CarouselController;->DEFAULT_SLOT_COUNT:I

    .line 38
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/android/ex/carousel/CarouselController;->DEFAULT_RADIUS:F

    .line 39
    iput v2, p0, Lcom/android/ex/carousel/CarouselController;->DEFAULT_VISIBLE_DETAIL_COUNT:I

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/ex/carousel/CarouselController;->DEFAULT_PREFETCH_CARD_COUNT:I

    .line 41
    iput v4, p0, Lcom/android/ex/carousel/CarouselController;->DEFAULT_ROW_COUNT:I

    .line 42
    iput v7, p0, Lcom/android/ex/carousel/CarouselController;->DEFAULT_ROW_SPACING:F

    .line 43
    iput v7, p0, Lcom/android/ex/carousel/CarouselController;->DEFAULT_SWAY_SENSITIVITY:F

    .line 44
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/android/ex/carousel/CarouselController;->DEFAULT_FRICTION_COEFFICIENT:F

    .line 45
    iput v8, p0, Lcom/android/ex/carousel/CarouselController;->DEFAULT_DRAG_FACTOR:F

    .line 46
    const/16 v0, 0x202

    iput v0, p0, Lcom/android/ex/carousel/CarouselController;->DEFAULT_DETAIL_ALIGNMENT:I

    .line 58
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move v3, v2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mDefaultLineBitmap:Landroid/graphics/Bitmap;

    .line 63
    iput v1, p0, Lcom/android/ex/carousel/CarouselController;->mCardCount:I

    .line 64
    iput v1, p0, Lcom/android/ex/carousel/CarouselController;->mVisibleSlots:I

    .line 65
    iput v2, p0, Lcom/android/ex/carousel/CarouselController;->mVisibleDetails:I

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/ex/carousel/CarouselController;->mPrefetchCardCount:I

    .line 67
    const/16 v0, 0x202

    iput v0, p0, Lcom/android/ex/carousel/CarouselController;->mDetailTextureAlignment:I

    .line 68
    iput-boolean v1, p0, Lcom/android/ex/carousel/CarouselController;->mForceBlendCardsWithZ:Z

    .line 69
    iput-boolean v4, p0, Lcom/android/ex/carousel/CarouselController;->mDrawRuler:Z

    .line 72
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/android/ex/carousel/CarouselController;->mRadius:F

    .line 73
    iput v7, p0, Lcom/android/ex/carousel/CarouselController;->mCardRotation:F

    .line 74
    iput-boolean v1, p0, Lcom/android/ex/carousel/CarouselController;->mCardsFaceTangent:Z

    .line 75
    iput v7, p0, Lcom/android/ex/carousel/CarouselController;->mSwaySensitivity:F

    .line 76
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/android/ex/carousel/CarouselController;->mFrictionCoefficient:F

    .line 77
    iput v8, p0, Lcom/android/ex/carousel/CarouselController;->mDragFactor:F

    .line 78
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/ex/carousel/CarouselController;->mSlotCount:I

    .line 79
    iput v4, p0, Lcom/android/ex/carousel/CarouselController;->mRowCount:I

    .line 80
    iput v7, p0, Lcom/android/ex/carousel/CarouselController;->mRowSpacing:F

    .line 81
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mEye:[F

    .line 82
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mAt:[F

    .line 83
    new-array v0, v2, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mUp:[F

    .line 84
    new-instance v0, Landroid/renderscript/Float4;

    const/high16 v2, 0x3f80

    invoke-direct {v0, v7, v7, v7, v2}, Landroid/renderscript/Float4;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mBackgroundColor:Landroid/renderscript/Float4;

    .line 86
    iput v7, p0, Lcom/android/ex/carousel/CarouselController;->mRezInCardCount:F

    .line 87
    const-wide/16 v2, 0xfa

    iput-wide v2, p0, Lcom/android/ex/carousel/CarouselController;->mFadeInDuration:J

    .line 88
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/ex/carousel/CarouselController;->mCardCreationFadeDuration:J

    .line 89
    new-array v0, v4, [I

    aput v1, v0, v1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move v2, v4

    move v3, v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mDetailLoadingBitmap:Landroid/graphics/Bitmap;

    .line 91
    iput v1, p0, Lcom/android/ex/carousel/CarouselController;->mDragModel:I

    .line 92
    iput v4, p0, Lcom/android/ex/carousel/CarouselController;->mFillDirection:I

    .line 93
    iput-boolean v1, p0, Lcom/android/ex/carousel/CarouselController;->mFirstCardTop:Z

    .line 97
    const/4 v6, 0x1

    .line 98
    .local v6, useDepthBuffer:Z
    return-void

    .line 58
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 81
    :array_1
    .array-data 0x4
        0x94t 0x76t 0xa5t 0x41t
        0xf3t 0x54t 0x31t 0x40t
        0xe8t 0xd9t 0x85t 0x41t
    .end array-data

    .line 82
    :array_2
    .array-data 0x4
        0xa6t 0x9bt 0x6bt 0x41t
        0xc4t 0x99t 0x59t 0xc0t
        0xb1t 0xa2t 0xa6t 0xbft
    .end array-data

    .line 83
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public createCards(I)V
    .locals 1
    .parameter "n"

    .prologue
    .line 337
    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mCardCount:I

    .line 338
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->createCards(I)V

    .line 341
    :cond_0
    return-void
.end method

.method public getCardCount()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mCardCount:I

    return v0
.end method

.method public onLongPress()V
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0}, Lcom/android/ex/carousel/CarouselRS;->doLongPress()V

    .line 780
    return-void
.end method

.method public onSurfaceChanged()V
    .locals 4

    .prologue
    .line 106
    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mSlotCount:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setSlotCount(I)V

    .line 107
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mDefaultCardMatrix:[F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setDefaultCardMatrix([F)V

    .line 108
    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mCardCount:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->createCards(I)V

    .line 109
    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mVisibleSlots:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setVisibleSlots(I)V

    .line 110
    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mVisibleDetails:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setVisibleDetails(I)V

    .line 111
    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mPrefetchCardCount:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setPrefetchCardCount(I)V

    .line 112
    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mRowCount:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setRowCount(I)V

    .line 113
    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mRowSpacing:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setRowSpacing(F)V

    .line 114
    iget-boolean v0, p0, Lcom/android/ex/carousel/CarouselController;->mFirstCardTop:Z

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setFirstCardTop(Z)V

    .line 115
    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mDetailTextureAlignment:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setDetailTextureAlignment(I)V

    .line 116
    iget-boolean v0, p0, Lcom/android/ex/carousel/CarouselController;->mForceBlendCardsWithZ:Z

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setForceBlendCardsWithZ(Z)V

    .line 117
    iget-boolean v0, p0, Lcom/android/ex/carousel/CarouselController;->mDrawRuler:Z

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setDrawRuler(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mCarouselCallback:Lcom/android/ex/carousel/CarouselRS$CarouselCallback;

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setCallback(Lcom/android/ex/carousel/CarouselRS$CarouselCallback;)V

    .line 119
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setDefaultBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 121
    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mDefaultGeometry:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setDefaultGeometry(I)V

    .line 122
    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mLoadingGeometry:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setLoadingGeometry(I)V

    .line 123
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mBackgroundColor:Landroid/renderscript/Float4;

    iget v0, v0, Landroid/renderscript/Float4;->x:F

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselController;->mBackgroundColor:Landroid/renderscript/Float4;

    iget v1, v1, Landroid/renderscript/Float4;->y:F

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselController;->mBackgroundColor:Landroid/renderscript/Float4;

    iget v2, v2, Landroid/renderscript/Float4;->z:F

    iget-object v3, p0, Lcom/android/ex/carousel/CarouselController;->mBackgroundColor:Landroid/renderscript/Float4;

    iget v3, v3, Landroid/renderscript/Float4;->w:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/ex/carousel/CarouselController;->setBackgroundColor(FFFF)V

    .line 125
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mDefaultLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setDetailLineBitmap(Landroid/graphics/Bitmap;)V

    .line 127
    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mStartAngle:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setStartAngle(F)V

    .line 128
    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mCarouselRotationAngle:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setCarouselRotationAngle(F)V

    .line 129
    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mRadius:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setRadius(F)V

    .line 130
    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mCardRotation:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setCardRotation(F)V

    .line 131
    iget-boolean v0, p0, Lcom/android/ex/carousel/CarouselController;->mCardsFaceTangent:Z

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setCardsFaceTangent(Z)V

    .line 132
    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mSwaySensitivity:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setSwaySensitivity(F)V

    .line 133
    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mFrictionCoefficient:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setFrictionCoefficient(F)V

    .line 134
    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mDragFactor:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setDragFactor(F)V

    .line 135
    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mDragModel:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setDragModel(I)V

    .line 136
    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mFillDirection:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setFillDirection(I)V

    .line 137
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mEye:[F

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselController;->mAt:[F

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselController;->mUp:[F

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/ex/carousel/CarouselController;->setLookAt([F[F[F)V

    .line 138
    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mRezInCardCount:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setRezInCardCount(F)V

    .line 139
    iget-wide v0, p0, Lcom/android/ex/carousel/CarouselController;->mFadeInDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/CarouselController;->setFadeInDuration(J)V

    .line 140
    iget-wide v0, p0, Lcom/android/ex/carousel/CarouselController;->mCardCreationFadeDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/CarouselController;->setCardCreationFadeDuration(J)V

    .line 141
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mDetailLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setDetailLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 142
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mStoreConfigs:[I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setStoreConfigs([I)V

    .line 143
    return-void
.end method

.method public onTouchMoved(FFJ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "t"

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ex/carousel/CarouselRS;->doMotion(FFJ)V

    .line 773
    return-void
.end method

.method public onTouchStarted(FFJ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "t"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ex/carousel/CarouselRS;->doStart(FFJ)V

    .line 763
    return-void
.end method

.method public onTouchStopped(FFJ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "t"

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ex/carousel/CarouselRS;->doStop(FFJ)V

    .line 790
    return-void
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/ex/carousel/CarouselController;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 478
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setBackgroundTexture(Landroid/graphics/Bitmap;)V

    .line 481
    :cond_0
    return-void
.end method

.method public setBackgroundColor(FFFF)V
    .locals 2
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 464
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/renderscript/Float4;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mBackgroundColor:Landroid/renderscript/Float4;

    .line 465
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselController;->mBackgroundColor:Landroid/renderscript/Float4;

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/CarouselRS;->setBackgroundColor(Landroid/renderscript/Float4;)V

    .line 468
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/ex/carousel/CarouselRS$CarouselCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/ex/carousel/CarouselController;->mCarouselCallback:Lcom/android/ex/carousel/CarouselRS$CarouselCallback;

    .line 565
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setCallback(Lcom/android/ex/carousel/CarouselRS$CarouselCallback;)V

    .line 568
    :cond_0
    return-void
.end method

.method public setCardCreationFadeDuration(J)V
    .locals 1
    .parameter "t"

    .prologue
    .line 749
    iput-wide p1, p0, Lcom/android/ex/carousel/CarouselController;->mCardCreationFadeDuration:J

    .line 750
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/CarouselRS;->setCardCreationFadeDuration(J)V

    .line 753
    :cond_0
    return-void
.end method

.method public setCardRotation(F)V
    .locals 1
    .parameter "cardRotation"

    .prologue
    .line 668
    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mCardRotation:F

    .line 669
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setCardRotation(F)V

    .line 672
    :cond_0
    return-void
.end method

.method public setCardsFaceTangent(Z)V
    .locals 1
    .parameter "faceTangent"

    .prologue
    .line 675
    iput-boolean p1, p0, Lcom/android/ex/carousel/CarouselController;->mCardsFaceTangent:Z

    .line 676
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setCardsFaceTangent(Z)V

    .line 679
    :cond_0
    return-void
.end method

.method public setCarouselRotationAngle(F)V
    .locals 1
    .parameter "angle"

    .prologue
    .line 603
    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mCarouselRotationAngle:F

    .line 604
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setCarouselRotationAngle(F)V

    .line 607
    :cond_0
    return-void
.end method

.method public setDefaultBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/ex/carousel/CarouselController;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 434
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setDefaultBitmap(Landroid/graphics/Bitmap;)V

    .line 437
    :cond_0
    return-void
.end method

.method public setDefaultCardMatrix([F)V
    .locals 1
    .parameter "matrix"

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/ex/carousel/CarouselController;->mDefaultCardMatrix:[F

    .line 536
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setDefaultCardMatrix([F)V

    .line 539
    :cond_0
    return-void
.end method

.method public setDefaultGeometry(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 519
    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mDefaultGeometry:I

    .line 520
    iget-object v1, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v1, p1}, Lcom/android/ex/carousel/CarouselRS;->loadGeometry(I)Landroid/renderscript/Mesh;

    move-result-object v0

    .line 522
    .local v0, mesh:Landroid/renderscript/Mesh;
    iget-object v1, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v1, v0}, Lcom/android/ex/carousel/CarouselRS;->setDefaultGeometry(Landroid/renderscript/Mesh;)V

    .line 524
    .end local v0           #mesh:Landroid/renderscript/Mesh;
    :cond_0
    return-void
.end method

.method public setDetailLineBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/ex/carousel/CarouselController;->mDefaultLineBitmap:Landroid/graphics/Bitmap;

    .line 505
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setDetailLineTexture(Landroid/graphics/Bitmap;)V

    .line 508
    :cond_0
    return-void
.end method

.method public setDetailLoadingBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/ex/carousel/CarouselController;->mDetailLoadingBitmap:Landroid/graphics/Bitmap;

    .line 491
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setDetailLoadingTexture(Landroid/graphics/Bitmap;)V

    .line 494
    :cond_0
    return-void
.end method

.method public setDetailTextureAlignment(I)V
    .locals 4
    .parameter "alignment"

    .prologue
    const/4 v3, 0x1

    .line 284
    const v2, 0xff00

    and-int v0, p1, v2

    .line 285
    .local v0, xBits:I
    if-eqz v0, :cond_0

    sub-int v2, v0, v3

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    .line 286
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must specify exactly one horizontal alignment flag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 289
    :cond_1
    and-int/lit16 v1, p1, 0xff

    .line 290
    .local v1, yBits:I
    if-eqz v1, :cond_2

    sub-int v2, v1, v3

    and-int/2addr v2, v1

    if-eqz v2, :cond_3

    .line 291
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must specify exactly one vertical alignment flag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 295
    :cond_3
    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mDetailTextureAlignment:I

    .line 296
    iget-object v2, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v2, :cond_4

    .line 297
    iget-object v2, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v2, p1}, Lcom/android/ex/carousel/CarouselRS;->setDetailTextureAlignment(I)V

    .line 299
    :cond_4
    return-void
.end method

.method public setDetailTextureForItem(IFFFFLandroid/graphics/Bitmap;)V
    .locals 7
    .parameter "n"
    .parameter "offx"
    .parameter "offy"
    .parameter "loffx"
    .parameter "loffy"
    .parameter "bitmap"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/ex/carousel/CarouselRS;->setDetailTexture(IFFFFLandroid/graphics/Bitmap;)V

    .line 388
    :cond_0
    return-void
.end method

.method public setDragFactor(F)V
    .locals 1
    .parameter "dragFactor"

    .prologue
    .line 696
    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mDragFactor:F

    .line 697
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setDragFactor(F)V

    .line 700
    :cond_0
    return-void
.end method

.method public setDragModel(I)V
    .locals 1
    .parameter "model"

    .prologue
    .line 649
    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mDragModel:I

    .line 650
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setDragModel(I)V

    .line 653
    :cond_0
    return-void
.end method

.method public setDrawRuler(Z)V
    .locals 1
    .parameter "drawRuler"

    .prologue
    .line 322
    iput-boolean p1, p0, Lcom/android/ex/carousel/CarouselController;->mDrawRuler:Z

    .line 323
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setDrawRuler(Z)V

    .line 326
    :cond_0
    return-void
.end method

.method public setFadeInDuration(J)V
    .locals 1
    .parameter "t"

    .prologue
    .line 736
    iput-wide p1, p0, Lcom/android/ex/carousel/CarouselController;->mFadeInDuration:J

    .line 737
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/CarouselRS;->setFadeInDuration(J)V

    .line 740
    :cond_0
    return-void
.end method

.method public setFillDirection(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 661
    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mFillDirection:I

    .line 662
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setFillDirection(I)V

    .line 665
    :cond_0
    return-void
.end method

.method public setFirstCardTop(Z)V
    .locals 1
    .parameter "f"

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/android/ex/carousel/CarouselController;->mFirstCardTop:Z

    .line 273
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setFirstCardTop(Z)V

    .line 276
    :cond_0
    return-void
.end method

.method public setForceBlendCardsWithZ(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 310
    iput-boolean p1, p0, Lcom/android/ex/carousel/CarouselController;->mForceBlendCardsWithZ:Z

    .line 311
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setForceBlendCardsWithZ(Z)V

    .line 314
    :cond_0
    return-void
.end method

.method public setFrictionCoefficient(F)V
    .locals 1
    .parameter "frictionCoefficient"

    .prologue
    .line 689
    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mFrictionCoefficient:F

    .line 690
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setFrictionCoefficient(F)V

    .line 693
    :cond_0
    return-void
.end method

.method public setGeometryForItem(ILandroid/renderscript/Mesh;)V
    .locals 1
    .parameter "n"
    .parameter "mesh"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/CarouselRS;->setGeometry(ILandroid/renderscript/Mesh;)V

    .line 168
    :cond_0
    return-void
.end method

.method public setLoadingBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/ex/carousel/CarouselController;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 449
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 452
    :cond_0
    return-void
.end method

.method public setLoadingGeometry(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 550
    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mLoadingGeometry:I

    .line 551
    iget-object v1, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v1, p1}, Lcom/android/ex/carousel/CarouselRS;->loadGeometry(I)Landroid/renderscript/Mesh;

    move-result-object v0

    .line 553
    .local v0, mesh:Landroid/renderscript/Mesh;
    iget-object v1, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v1, v0}, Lcom/android/ex/carousel/CarouselRS;->setLoadingGeometry(Landroid/renderscript/Mesh;)V

    .line 555
    .end local v0           #mesh:Landroid/renderscript/Mesh;
    :cond_0
    return-void
.end method

.method public setLookAt([F[F[F)V
    .locals 1
    .parameter "eye"
    .parameter "at"
    .parameter "up"

    .prologue
    .line 703
    iput-object p1, p0, Lcom/android/ex/carousel/CarouselController;->mEye:[F

    .line 704
    iput-object p2, p0, Lcom/android/ex/carousel/CarouselController;->mAt:[F

    .line 705
    iput-object p3, p0, Lcom/android/ex/carousel/CarouselController;->mUp:[F

    .line 706
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ex/carousel/CarouselRS;->setLookAt([F[F[F)V

    .line 709
    :cond_0
    return-void
.end method

.method public setMatrixForItem(I[F)V
    .locals 1
    .parameter "n"
    .parameter "matrix"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/CarouselRS;->setMatrix(I[F)V

    .line 193
    :cond_0
    return-void
.end method

.method public setPrefetchCardCount(I)V
    .locals 1
    .parameter "n"

    .prologue
    .line 242
    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mPrefetchCardCount:I

    .line 243
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setPrefetchCardCount(I)V

    .line 246
    :cond_0
    return-void
.end method

.method public setRS(Landroid/renderscript/RenderScriptGL;Lcom/android/ex/carousel/CarouselRS;)V
    .locals 0
    .parameter "rs"
    .parameter "renderScript"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/ex/carousel/CarouselController;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 102
    iput-object p2, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    .line 103
    return-void
.end method

.method public setRadius(F)V
    .locals 1
    .parameter "radius"

    .prologue
    .line 633
    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mRadius:F

    .line 634
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setRadius(F)V

    .line 637
    :cond_0
    return-void
.end method

.method public setRezInCardCount(F)V
    .locals 1
    .parameter "n"

    .prologue
    .line 720
    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mRezInCardCount:F

    .line 721
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setRezInCardCount(F)V

    .line 724
    :cond_0
    return-void
.end method

.method public setRowCount(I)V
    .locals 1
    .parameter "n"

    .prologue
    .line 252
    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mRowCount:I

    .line 253
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setRowCount(I)V

    .line 256
    :cond_0
    return-void
.end method

.method public setRowSpacing(F)V
    .locals 1
    .parameter "s"

    .prologue
    .line 262
    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mRowSpacing:F

    .line 263
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setRowSpacing(F)V

    .line 266
    :cond_0
    return-void
.end method

.method public setSlotCount(I)V
    .locals 1
    .parameter "n"

    .prologue
    .line 202
    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mSlotCount:I

    .line 203
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setSlotCount(I)V

    .line 206
    :cond_0
    return-void
.end method

.method public setStartAngle(F)V
    .locals 1
    .parameter "angle"

    .prologue
    .line 586
    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mStartAngle:F

    .line 587
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setStartAngle(F)V

    .line 590
    :cond_0
    return-void
.end method

.method public setStoreConfigs([I)V
    .locals 1
    .parameter "configs"

    .prologue
    .line 824
    iput-object p1, p0, Lcom/android/ex/carousel/CarouselController;->mStoreConfigs:[I

    .line 825
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setStoreConfigs([I)V

    .line 828
    :cond_0
    return-void
.end method

.method public setSwaySensitivity(F)V
    .locals 1
    .parameter "swaySensitivity"

    .prologue
    .line 682
    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mSwaySensitivity:F

    .line 683
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setSwaySensitivity(F)V

    .line 686
    :cond_0
    return-void
.end method

.method public setTextureForItem(ILandroid/graphics/Bitmap;)V
    .locals 1
    .parameter "n"
    .parameter "bitmap"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/CarouselRS;->setTexture(ILandroid/graphics/Bitmap;)V

    .line 365
    :cond_0
    return-void
.end method

.method public setVisibleDetails(I)V
    .locals 1
    .parameter "n"

    .prologue
    .line 226
    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mVisibleDetails:I

    .line 227
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setVisibleDetails(I)V

    .line 230
    :cond_0
    return-void
.end method

.method public setVisibleSlots(I)V
    .locals 1
    .parameter "n"

    .prologue
    .line 214
    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mVisibleSlots:I

    .line 215
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setVisibleSlots(I)V

    .line 218
    :cond_0
    return-void
.end method
