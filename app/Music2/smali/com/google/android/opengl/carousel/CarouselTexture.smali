.class public Lcom/google/android/opengl/carousel/CarouselTexture;
.super Ljava/lang/Object;
.source "CarouselTexture.java"


# static fields
.field private static final CACHED_TEXTURE_NUM:I = 0x19

.field private static final DBG:Z = true

.field private static final OTHER_TEXTURE_NUM:I = 0x9

.field private static final TAG:Ljava/lang/String; = "CarouselTexture"

.field private static final TOTAL_TEXTURE_NUM:I = 0x3b

.field private static final USE_FIX_TEXTURE:Z = false

.field private static final VALUE_IF_KEY_NOT_FOUND:I = -0x1


# instance fields
.field public mAvailableDetailIds:[I

.field public mAvailableTextureIds:[I

.field public mBackgroundId0:I

.field public mBackgroundId1:I

.field public mCachedDetailIds:[I

.field public mCachedIds:[I

.field public mCardSingleDetailId:I

.field public mCardSingleId:I

.field public mDefaultId:I

.field public mDefaultLineId:I

.field public mDetailLoadingId:I

.field public mGlowingId:I

.field public mIds:[I

.field public mLoadingId:I

.field private mMapCardToDetailId:Landroid/util/SparseIntArray;

.field private mMapCardToTextureId:Landroid/util/SparseIntArray;

.field private mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

.field private mTempMapCardToDetailId:Landroid/util/SparseIntArray;

.field private mTempMapCardToTextureId:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Lcom/google/android/opengl/carousel/CarouselRenderer;)V
    .locals 2
    .parameter "render"

    .prologue
    const/16 v1, 0x19

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mCachedIds:[I

    .line 38
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mCachedDetailIds:[I

    .line 40
    const/16 v0, 0x3b

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    .line 45
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mAvailableTextureIds:[I

    .line 47
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mMapCardToTextureId:Landroid/util/SparseIntArray;

    .line 51
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mAvailableDetailIds:[I

    .line 53
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mMapCardToDetailId:Landroid/util/SparseIntArray;

    .line 59
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    .line 60
    return-void
.end method


# virtual methods
.method public addCardDetailPair(II)V
    .locals 1
    .parameter "tId"
    .parameter "cardId"

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/opengl/carousel/CarouselTexture;->addCardDetailPair(IIZ)V

    .line 299
    return-void
.end method

.method public addCardDetailPair(IIZ)V
    .locals 1
    .parameter "tId"
    .parameter "cardId"
    .parameter "useTemp"

    .prologue
    .line 302
    if-ltz p1, :cond_0

    const/16 v0, 0x19

    if-ge p1, v0, :cond_0

    .line 303
    if-eqz p3, :cond_1

    .line 304
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mTempMapCardToDetailId:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mAvailableDetailIds:[I

    aput p2, v0, p1

    .line 312
    :cond_0
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mMapCardToDetailId:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method public addCardTexturePair(II)V
    .locals 1
    .parameter "tId"
    .parameter "cardId"

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/opengl/carousel/CarouselTexture;->addCardTexturePair(IIZ)V

    .line 187
    return-void
.end method

.method addCardTexturePair(IIZ)V
    .locals 1
    .parameter "tId"
    .parameter "cardId"
    .parameter "useTemp"

    .prologue
    .line 190
    if-ltz p1, :cond_0

    const/16 v0, 0x19

    if-ge p1, v0, :cond_0

    .line 191
    if-eqz p3, :cond_1

    .line 192
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mTempMapCardToTextureId:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mAvailableTextureIds:[I

    aput p2, v0, p1

    .line 200
    :cond_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mMapCardToTextureId:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method public cardIdToDetailId(I)I
    .locals 3
    .parameter "cardId"

    .prologue
    .line 287
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mMapCardToDetailId:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 288
    .local v0, tId:I
    return v0
.end method

.method public cardIdToTextureId(I)I
    .locals 3
    .parameter "cardId"

    .prologue
    .line 175
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mMapCardToTextureId:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 176
    .local v0, tId:I
    return v0
.end method

.method public getAvailableDetailCount()I
    .locals 4

    .prologue
    .line 272
    const/16 v0, 0x19

    .line 273
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x19

    if-ge v1, v2, :cond_1

    .line 274
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mAvailableDetailIds:[I

    aget v2, v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 275
    add-int/lit8 v0, v0, -0x1

    .line 273
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    :cond_1
    return v0
.end method

.method public getAvailableDetailId()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 264
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x19

    if-ge v0, v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mAvailableDetailIds:[I

    aget v1, v1, v0

    if-ne v1, v2, :cond_0

    move v1, v0

    .line 268
    :goto_1
    return v1

    .line 264
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 268
    goto :goto_1
.end method

.method public getAvailableTextureCount()I
    .locals 4

    .prologue
    .line 160
    const/16 v0, 0x19

    .line 161
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x19

    if-ge v1, v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mAvailableTextureIds:[I

    aget v2, v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 163
    add-int/lit8 v0, v0, -0x1

    .line 161
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_1
    return v0
.end method

.method public getAvailableTextureId()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 152
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x19

    if-ge v0, v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mAvailableTextureIds:[I

    aget v1, v1, v0

    if-ne v1, v2, :cond_0

    move v1, v0

    .line 156
    :goto_1
    return v1

    .line 152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 156
    goto :goto_1
.end method

.method initAvailableCaches()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mAvailableTextureIds:[I

    aput v2, v1, v0

    .line 71
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mAvailableDetailIds:[I

    aput v2, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method initTextureCache()V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselTexture;->initAvailableCaches()V

    .line 64
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mMapCardToTextureId:Landroid/util/SparseIntArray;

    .line 65
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mMapCardToDetailId:Landroid/util/SparseIntArray;

    .line 66
    return-void
.end method

.method public loadTexture()V
    .locals 9

    .prologue
    const v8, 0x812f

    const/16 v7, 0x3b

    const v6, 0x46180400

    const/4 v5, 0x0

    const/16 v4, 0xde1

    .line 80
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    invoke-static {v7, v1, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 83
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    invoke-static {v1}, Lcom/google/android/opengl/carousel/GL2Helper;->printIntArray([I)V

    .line 86
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    aget v1, v1, v5

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mLoadingId:I

    .line 87
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mDetailLoadingId:I

    .line 88
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mBackgroundId0:I

    .line 89
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mBackgroundId1:I

    .line 90
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mDefaultLineId:I

    .line 91
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mDefaultId:I

    .line 92
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mCardSingleId:I

    .line 93
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mCardSingleDetailId:I

    .line 94
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mGlowingId:I

    .line 95
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mCachedIds:[I

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    add-int/lit8 v3, v0, 0x9

    aget v2, v2, v3

    aput v2, v1, v0

    .line 97
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mCachedDetailIds:[I

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    add-int/lit8 v3, v0, 0x22

    aget v2, v2, v3

    aput v2, v1, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_1

    .line 102
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    aget v1, v1, v0

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 103
    const/16 v1, 0x2801

    invoke-static {v4, v1, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 105
    const/16 v1, 0x2800

    invoke-static {v4, v1, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 107
    const/16 v1, 0x2802

    invoke-static {v4, v1, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 109
    const/16 v1, 0x2803

    invoke-static {v4, v1, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselTexture;->mDefaultId:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 115
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4, v5, v1, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mLoadingBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 118
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselTexture;->mLoadingId:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 119
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4, v5, v1, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 123
    :cond_3
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mDetailLoadingId:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 124
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mDetailLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4, v5, v1, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 126
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mDefaultLineId:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 127
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultLineBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4, v5, v1, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 129
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mGlowingBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 130
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mGlowingId:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 131
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mGlowingBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4, v5, v1, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 134
    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 135
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/opengl/carousel/Card;

    invoke-virtual {v1}, Lcom/google/android/opengl/carousel/Card;->initCardTexture()V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 138
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselTexture;->initTextureCache()V

    .line 142
    const-string v1, "loadTexture"

    invoke-static {v1}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public portTextureCache(II)V
    .locals 2
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/google/android/opengl/carousel/CarouselTexture;->cardIdToTextureId(I)I

    move-result v0

    .line 218
    .local v0, tId:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/google/android/opengl/carousel/CarouselTexture;->addCardTexturePair(IIZ)V

    goto :goto_0
.end method

.method public removeCardDetailPair(I)V
    .locals 3
    .parameter "cardId"

    .prologue
    const/4 v2, -0x1

    .line 315
    invoke-virtual {p0, p1}, Lcom/google/android/opengl/carousel/CarouselTexture;->cardIdToDetailId(I)I

    move-result v0

    .line 316
    .local v0, tId:I
    if-eq v0, v2, :cond_0

    .line 317
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mMapCardToDetailId:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 318
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mAvailableDetailIds:[I

    aput v2, v1, v0

    .line 322
    :cond_0
    return-void
.end method

.method public removeCardTexturePair(I)V
    .locals 3
    .parameter "cardId"

    .prologue
    const/4 v2, -0x1

    .line 203
    invoke-virtual {p0, p1}, Lcom/google/android/opengl/carousel/CarouselTexture;->cardIdToTextureId(I)I

    move-result v0

    .line 204
    .local v0, tId:I
    if-eq v0, v2, :cond_0

    .line 205
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mMapCardToTextureId:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 206
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mAvailableTextureIds:[I

    aput v2, v1, v0

    .line 210
    :cond_0
    return-void
.end method

.method public updateTextureCache(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/opengl/carousel/Card;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tmpCards:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/opengl/carousel/Card;>;"
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 233
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselTexture;->initAvailableCaches()V

    .line 234
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mTempMapCardToTextureId:Landroid/util/SparseIntArray;

    .line 235
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mTempMapCardToDetailId:Landroid/util/SparseIntArray;

    .line 238
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    .line 239
    .local v0, card:Lcom/google/android/opengl/carousel/Card;
    iget v3, v0, Lcom/google/android/opengl/carousel/Card;->mOldId:I

    invoke-virtual {p0, v3}, Lcom/google/android/opengl/carousel/CarouselTexture;->cardIdToTextureId(I)I

    move-result v2

    .line 240
    .local v2, tId:I
    if-eq v2, v4, :cond_0

    .line 243
    iget v3, v0, Lcom/google/android/opengl/carousel/Card;->mId:I

    invoke-virtual {p0, v2, v3, v5}, Lcom/google/android/opengl/carousel/CarouselTexture;->addCardTexturePair(IIZ)V

    goto :goto_0

    .line 246
    .end local v0           #card:Lcom/google/android/opengl/carousel/Card;
    .end local v2           #tId:I
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/carousel/Card;

    .line 247
    .restart local v0       #card:Lcom/google/android/opengl/carousel/Card;
    iget v3, v0, Lcom/google/android/opengl/carousel/Card;->mOldId:I

    invoke-virtual {p0, v3}, Lcom/google/android/opengl/carousel/CarouselTexture;->cardIdToDetailId(I)I

    move-result v2

    .line 248
    .restart local v2       #tId:I
    if-eq v2, v4, :cond_2

    .line 251
    iget v3, v0, Lcom/google/android/opengl/carousel/Card;->mId:I

    invoke-virtual {p0, v2, v3, v5}, Lcom/google/android/opengl/carousel/CarouselTexture;->addCardDetailPair(IIZ)V

    goto :goto_1

    .line 254
    .end local v0           #card:Lcom/google/android/opengl/carousel/Card;
    .end local v2           #tId:I
    :cond_3
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mTempMapCardToTextureId:Landroid/util/SparseIntArray;

    iput-object v3, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mMapCardToTextureId:Landroid/util/SparseIntArray;

    .line 255
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mTempMapCardToDetailId:Landroid/util/SparseIntArray;

    iput-object v3, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mMapCardToDetailId:Landroid/util/SparseIntArray;

    .line 256
    return-void
.end method
