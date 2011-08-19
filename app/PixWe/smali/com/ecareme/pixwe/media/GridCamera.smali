.class public final Lcom/ecareme/pixwe/media/GridCamera;
.super Ljava/lang/Object;
.source "GridCamera.java"


# static fields
.field private static final DEFAULT_LANDSCAPE_ASPECT:F = 1.5f

.field private static final DEFAULT_PORTRAIT_ASPECT:F = 0.6666667f

.field public static final EYE_CONVERGENCE_SPEED:F = 3.0f

.field public static final EYE_X:F = 0.0f

.field public static final EYE_Y:F = 0.0f

.field public static final EYE_Z:F = 8.0f

.field public static final MAX_CAMERA_SPEED:F = 12.0f


# instance fields
.field private mAmountExceeding:F

.field public mAspectRatio:F

.field public mConvergenceSpeed:F

.field public mDefaultAspectRatio:F

.field private mEyeEdgeOffsetX:F

.field private mEyeEdgeOffsetXAnim:F

.field private mEyeOffsetAnimX:F

.field private mEyeOffsetAnimY:F

.field public mEyeOffsetX:F

.field public mEyeOffsetY:F

.field public mEyeX:F

.field public mEyeY:F

.field public mEyeZ:F

.field public mFov:F

.field public mFriction:F

.field public mHeight:I

.field private mHeightBy2:I

.field public mItemHeight:I

.field public mItemWidth:I

.field public mLookAtX:F

.field public mLookAtY:F

.field public mLookAtZ:F

.field public mOneByScale:F

.field private mPosX:F

.field private mPosY:F

.field private mPosZ:F

.field public mScale:F

.field private mTanFovBy2:F

.field private mTargetEyeX:F

.field private mTargetPosX:F

.field private mTargetPosY:F

.field private mTargetPosZ:F

.field public mUpX:F

.field public mUpY:F

.field public mUpZ:F

.field public mWidth:I

.field private mWidthBy2:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "itemWidth"
    .parameter "itemHeight"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/GridCamera;->reset()V

    .line 80
    int-to-float v0, p3

    int-to-float v1, p4

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ecareme/pixwe/media/GridCamera;->viewportChanged(IIFF)V

    .line 81
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mConvergenceSpeed:F

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mFriction:F

    .line 83
    return-void
.end method


# virtual methods
.method public commitMove()V
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    iput v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosX:F

    .line 209
    iget v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosY:F

    iput v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosY:F

    .line 210
    iget v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosZ:F

    iput v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosZ:F

    .line 211
    return-void
.end method

.method public commitMoveInX()V
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    iput v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosX:F

    .line 215
    return-void
.end method

.method public commitMoveInY()V
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosY:F

    iput v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosY:F

    .line 219
    return-void
.end method

.method public commitMoveInZ()V
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosZ:F

    iput v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosZ:F

    .line 223
    return-void
.end method

.method public computeConstraints(ZZLcom/ecareme/pixwe/media/Vector3f;Lcom/ecareme/pixwe/media/Vector3f;)Z
    .locals 10
    .parameter "applyConstraints"
    .parameter "applyOverflowFeedback"
    .parameter "firstSlotPosition"
    .parameter "lastSlotPosition"

    .prologue
    .line 227
    const/4 v5, 0x0

    .line 228
    .local v5, retVal:Z
    iget v7, p3, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    const/high16 v8, 0x3f80

    iget v9, p0, Lcom/ecareme/pixwe/media/GridCamera;->mItemHeight:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float v4, v7, v8

    .line 229
    .local v4, minX:F
    iget v7, p4, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    const/high16 v8, 0x3f80

    iget v9, p0, Lcom/ecareme/pixwe/media/GridCamera;->mItemHeight:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float v3, v7, v8

    .line 230
    .local v3, maxX:F
    iget v7, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    cmpg-float v7, v7, v4

    if-gez v7, :cond_1

    .line 231
    iget v7, p0, Lcom/ecareme/pixwe/media/GridCamera;->mAmountExceeding:F

    iget v8, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    sub-float/2addr v8, v4

    add-float/2addr v7, v8

    iput v7, p0, Lcom/ecareme/pixwe/media/GridCamera;->mAmountExceeding:F

    .line 232
    iput v4, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    .line 233
    iput v4, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosX:F

    .line 234
    if-eqz p1, :cond_0

    .line 235
    iput v4, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    .line 236
    const/4 v7, 0x0

    iput v7, p0, Lcom/ecareme/pixwe/media/GridCamera;->mFriction:F

    .line 238
    :cond_0
    const/4 v5, 0x1

    .line 240
    :cond_1
    iget v7, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    cmpl-float v7, v7, v3

    if-lez v7, :cond_3

    .line 241
    iget v7, p0, Lcom/ecareme/pixwe/media/GridCamera;->mAmountExceeding:F

    iget v8, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    sub-float/2addr v8, v3

    add-float/2addr v7, v8

    iput v7, p0, Lcom/ecareme/pixwe/media/GridCamera;->mAmountExceeding:F

    .line 242
    iput v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    .line 243
    iput v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosX:F

    .line 244
    if-eqz p1, :cond_2

    .line 245
    iput v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    .line 246
    const/4 v7, 0x0

    iput v7, p0, Lcom/ecareme/pixwe/media/GridCamera;->mFriction:F

    .line 248
    :cond_2
    const/4 v5, 0x1

    .line 250
    :cond_3
    if-nez v5, :cond_4

    .line 251
    const/4 v6, 0x0

    .line 252
    .local v6, scrollingFromEdgeX:F
    iget v7, p0, Lcom/ecareme/pixwe/media/GridCamera;->mAmountExceeding:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_9

    .line 253
    iget v7, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    sub-float v6, v7, v4

    .line 257
    :goto_0
    const v7, 0x3dcccccd

    cmpl-float v7, v6, v7

    if-lez v7, :cond_4

    .line 258
    const/4 v7, 0x0

    iput v7, p0, Lcom/ecareme/pixwe/media/GridCamera;->mAmountExceeding:F

    .line 261
    .end local v6           #scrollingFromEdgeX:F
    :cond_4
    if-eqz p1, :cond_a

    .line 262
    const/4 v7, 0x0

    iput v7, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeEdgeOffsetX:F

    .line 265
    const v1, 0x3f4ccccd

    .line 266
    .local v1, maxBounceBack:F
    iget v7, p0, Lcom/ecareme/pixwe/media/GridCamera;->mAmountExceeding:F

    const v8, -0x40b33333

    cmpg-float v7, v7, v8

    if-gez v7, :cond_5

    .line 267
    const v7, -0x40b33333

    iput v7, p0, Lcom/ecareme/pixwe/media/GridCamera;->mAmountExceeding:F

    .line 268
    :cond_5
    iget v7, p0, Lcom/ecareme/pixwe/media/GridCamera;->mAmountExceeding:F

    const v8, 0x3f4ccccd

    cmpl-float v7, v7, v8

    if-lez v7, :cond_6

    .line 269
    const v7, 0x3f4ccccd

    iput v7, p0, Lcom/ecareme/pixwe/media/GridCamera;->mAmountExceeding:F

    .line 271
    :cond_6
    iget v7, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    cmpl-float v7, v7, v3

    if-lez v7, :cond_7

    .line 272
    iput v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    .line 273
    :cond_7
    iget v7, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    cmpg-float v7, v7, v4

    if-gez v7, :cond_8

    .line 274
    iput v4, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    .line 275
    :cond_8
    const/4 v7, 0x0

    iput v7, p0, Lcom/ecareme/pixwe/media/GridCamera;->mAmountExceeding:F

    .line 288
    .end local v1           #maxBounceBack:F
    :goto_1
    return v5

    .line 255
    .restart local v6       #scrollingFromEdgeX:F
    :cond_9
    iget v7, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    sub-float v6, v3, v7

    goto :goto_0

    .line 277
    .end local v6           #scrollingFromEdgeX:F
    :cond_a
    iget v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mAmountExceeding:F

    .line 278
    .local v0, amountExceedingToUse:F
    const v2, 0x3f19999a

    .line 279
    .local v2, maxThreshold:F
    const v7, 0x3f19999a

    cmpl-float v7, v0, v7

    if-lez v7, :cond_b

    .line 280
    const v0, 0x3f19999a

    .line 281
    :cond_b
    const v7, -0x40e66666

    cmpg-float v7, v0, v7

    if-gez v7, :cond_c

    .line 282
    const v0, -0x40e66666

    .line 283
    :cond_c
    if-eqz p2, :cond_d

    .line 284
    const/high16 v7, -0x3ee0

    mul-float/2addr v7, v0

    iput v7, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeEdgeOffsetX:F

    goto :goto_1

    .line 286
    :cond_d
    const/4 v7, 0x0

    iput v7, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeEdgeOffsetX:F

    goto :goto_1
.end method

.method public convertToCameraSpace(FFFLcom/ecareme/pixwe/media/Vector3f;)V
    .locals 5
    .parameter "posX"
    .parameter "posY"
    .parameter "posZ"
    .parameter "retVal"

    .prologue
    .line 143
    iget v2, p0, Lcom/ecareme/pixwe/media/GridCamera;->mWidthBy2:I

    int-to-float v2, v2

    sub-float v0, p1, v2

    .line 144
    .local v0, posXx:F
    iget v2, p0, Lcom/ecareme/pixwe/media/GridCamera;->mHeightBy2:I

    int-to-float v2, v2

    sub-float v1, p2, v2

    .line 145
    .local v1, posYx:F
    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/ecareme/pixwe/media/GridCamera;->convertToRelativeCameraSpace(FFFLcom/ecareme/pixwe/media/Vector3f;)V

    .line 146
    iget v2, p4, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    const/4 v3, 0x0

    iget v4, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p4, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    .line 147
    iget v2, p4, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosY:F

    add-float/2addr v2, v3

    iput v2, p4, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    .line 148
    return-void
.end method

.method public convertToRelativeCameraSpace(FFFLcom/ecareme/pixwe/media/Vector3f;)V
    .locals 9
    .parameter "posX"
    .parameter "posY"
    .parameter "posZ"
    .parameter "retVal"

    .prologue
    .line 151
    move v0, p1

    .line 152
    .local v0, posXx:F
    move v1, p2

    .line 153
    .local v1, posYx:F
    iget v6, p0, Lcom/ecareme/pixwe/media/GridCamera;->mWidth:I

    int-to-float v6, v6

    div-float/2addr v0, v6

    .line 154
    iget v6, p0, Lcom/ecareme/pixwe/media/GridCamera;->mHeight:I

    int-to-float v6, v6

    div-float/2addr v1, v6

    .line 155
    move v2, p3

    .line 156
    .local v2, posZx:F
    iget v6, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTanFovBy2:F

    iget v7, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosZ:F

    const/high16 v8, 0x4100

    add-float/2addr v7, v8

    add-float/2addr v7, v2

    mul-float v5, v6, v7

    .line 157
    .local v5, zDiscriminant:F
    const/high16 v6, 0x4000

    mul-float/2addr v5, v6

    .line 158
    move v4, v5

    .line 159
    .local v4, yRange:F
    iget v6, p0, Lcom/ecareme/pixwe/media/GridCamera;->mAspectRatio:F

    mul-float v3, v5, v6

    .line 160
    .local v3, xRange:F
    mul-float/2addr v0, v3

    .line 161
    mul-float/2addr v1, v4

    .line 162
    iput v0, p4, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    .line 163
    iput v1, p4, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    .line 164
    return-void
.end method

.method public convertToScreenSpace(IIILcom/ecareme/pixwe/media/Vector3f;)V
    .locals 0
    .parameter "posX"
    .parameter "posY"
    .parameter "posZ"
    .parameter "retVal"

    .prologue
    .line 140
    return-void
.end method

.method public getDistanceToFitRect(FF)F
    .locals 5
    .parameter "f"
    .parameter "g"

    .prologue
    .line 167
    div-float v2, p1, p2

    .line 168
    .local v2, thisAspectRatio:F
    move v0, p2

    .line 169
    .local v0, h:F
    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mAspectRatio:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 171
    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/ecareme/pixwe/media/GridCamera;->mWidth:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 176
    :cond_0
    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mItemHeight:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 177
    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTanFovBy2:F

    div-float v1, v0, v3

    .line 178
    .local v1, targetZ:F
    const/high16 v3, 0x3f00

    mul-float/2addr v1, v3

    .line 179
    const/high16 v3, 0x4100

    sub-float/2addr v3, v1

    neg-float v3, v3

    return v3
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    .line 310
    iget v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosX:F

    iget v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosY:F

    iget v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosZ:F

    iget v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosZ:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeOffsetAnimX:F

    iget v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeOffsetX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeEdgeOffsetXAnim:F

    iget v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeEdgeOffsetX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isZAnimating()Z
    .locals 2

    .prologue
    .line 314
    iget v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosZ:F

    iget v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosZ:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveBy(FFF)V
    .locals 3
    .parameter "posX"
    .parameter "posY"
    .parameter "posZ"

    .prologue
    .line 204
    iget v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosY:F

    add-float/2addr v1, p2

    iget v2, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosZ:F

    add-float/2addr v2, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ecareme/pixwe/media/GridCamera;->moveTo(FFF)V

    .line 205
    return-void
.end method

.method public moveTo(FFF)V
    .locals 4
    .parameter "posX"
    .parameter "posY"
    .parameter "posZ"

    .prologue
    .line 195
    iget v2, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    sub-float v0, p1, v2

    .line 196
    .local v0, delta:F
    iget v2, p0, Lcom/ecareme/pixwe/media/GridCamera;->mWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mOneByScale:F

    mul-float v1, v2, v3

    .line 197
    .local v1, maxDelta:F
    neg-float v2, v1

    invoke-static {v0, v2, v1}, Lcom/ecareme/pixwe/media/FloatUtils;->clamp(FFF)F

    move-result v0

    .line 198
    iget v2, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    .line 199
    iput p2, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosY:F

    .line 200
    iput p3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosZ:F

    .line 201
    return-void
.end method

.method public moveXTo(F)V
    .locals 0
    .parameter "posX"

    .prologue
    .line 183
    iput p1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    .line 184
    return-void
.end method

.method public moveYTo(F)V
    .locals 0
    .parameter "posY"

    .prologue
    .line 187
    iput p1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosY:F

    .line 188
    return-void
.end method

.method public moveZTo(F)V
    .locals 0
    .parameter "posZ"

    .prologue
    .line 191
    iput p1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosZ:F

    .line 192
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 86
    new-instance v0, Ljava/lang/String;

    const-string v1, "Camera.mEyeX"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeX:F

    .line 87
    new-instance v0, Ljava/lang/String;

    const-string v1, "Camera.mTargetPosX"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    .line 88
    new-instance v0, Ljava/lang/String;

    const-string v1, "Camera.mTargetPosY"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosY:F

    .line 89
    new-instance v0, Ljava/lang/String;

    const-string v1, "Camera.mTargetPosZ"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosZ:F

    .line 90
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/GridCamera;->commitMove()V

    .line 91
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 94
    new-instance v0, Ljava/lang/String;

    const-string v1, "Camera.mEyeX"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeX:F

    const/4 v2, 0x0

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 95
    new-instance v0, Ljava/lang/String;

    const-string v1, "Camera.mTargetPosX"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 96
    new-instance v0, Ljava/lang/String;

    const-string v1, "Camera.mTargetPosY"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosY:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 97
    new-instance v0, Ljava/lang/String;

    const-string v1, "Camera.mTargetPosZ"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosZ:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 98
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    iput v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetEyeX:F

    .line 102
    iput v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeX:F

    .line 103
    iput v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeY:F

    .line 104
    const/high16 v0, 0x4100

    iput v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeZ:F

    .line 105
    iput v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mLookAtX:F

    .line 106
    iput v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mLookAtY:F

    .line 107
    iput v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mLookAtZ:F

    .line 108
    iput v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mUpX:F

    .line 109
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mUpY:F

    .line 110
    iput v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mUpZ:F

    .line 111
    iput v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosX:F

    .line 112
    iput v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosY:F

    .line 113
    iput v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosZ:F

    .line 114
    iput v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    .line 115
    iput v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosY:F

    .line 116
    iput v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosZ:F

    .line 117
    return-void
.end method

.method public stopMovement()V
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosX:F

    iput v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    .line 293
    iget v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosY:F

    iput v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosY:F

    .line 294
    iget v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosZ:F

    iput v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosZ:F

    .line 295
    return-void
.end method

.method public stopMovementInX()V
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosX:F

    iput v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    .line 299
    return-void
.end method

.method public stopMovementInY()V
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosY:F

    iput v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosY:F

    .line 303
    return-void
.end method

.method public stopMovementInZ()V
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosZ:F

    iput v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosZ:F

    .line 307
    return-void
.end method

.method public update(F)V
    .locals 8
    .parameter "timeElapsed"

    .prologue
    const/high16 v7, 0x4100

    const/4 v6, 0x0

    .line 318
    iget v1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mConvergenceSpeed:F

    .line 319
    .local v1, factor:F
    mul-float/2addr p1, v1

    .line 320
    iget v2, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosX:F

    .line 321
    .local v2, oldPosX:F
    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosX:F

    iget v4, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    invoke-static {v3, v4, p1}, Lcom/ecareme/pixwe/media/FloatUtils;->animate(FFF)F

    move-result v3

    iput v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosX:F

    .line 322
    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosX:F

    sub-float v0, v3, v2

    .line 323
    .local v0, diff:F
    cmpl-float v3, v0, v6

    if-nez v3, :cond_0

    .line 324
    iput v6, p0, Lcom/ecareme/pixwe/media/GridCamera;->mFriction:F

    .line 325
    :cond_0
    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    iget v4, p0, Lcom/ecareme/pixwe/media/GridCamera;->mFriction:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosX:F

    .line 326
    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosY:F

    iget v4, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosY:F

    invoke-static {v3, v4, p1}, Lcom/ecareme/pixwe/media/FloatUtils;->animate(FFF)F

    move-result v3

    iput v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosY:F

    .line 327
    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosZ:F

    iget v4, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetPosZ:F

    invoke-static {v3, v4, p1}, Lcom/ecareme/pixwe/media/FloatUtils;->animate(FFF)F

    move-result v3

    iput v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosZ:F

    .line 328
    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeZ:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_1

    .line 329
    iput v6, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeOffsetX:F

    .line 330
    iput v6, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeOffsetY:F

    .line 332
    :cond_1
    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeOffsetAnimX:F

    iget v4, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeOffsetX:F

    invoke-static {v3, v4, p1}, Lcom/ecareme/pixwe/media/FloatUtils;->animate(FFF)F

    move-result v3

    iput v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeOffsetAnimX:F

    .line 333
    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeOffsetAnimY:F

    iget v4, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeOffsetY:F

    invoke-static {v3, v4, p1}, Lcom/ecareme/pixwe/media/FloatUtils;->animate(FFF)F

    move-result v3

    iput v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeOffsetAnimY:F

    .line 334
    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeEdgeOffsetXAnim:F

    iget v4, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeEdgeOffsetX:F

    invoke-static {v3, v4, p1}, Lcom/ecareme/pixwe/media/FloatUtils;->animate(FFF)F

    move-result v3

    iput v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeEdgeOffsetXAnim:F

    .line 335
    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosX:F

    add-float/2addr v3, v6

    iput v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetEyeX:F

    .line 336
    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeZ:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_2

    .line 337
    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetEyeX:F

    iput v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeX:F

    .line 345
    :goto_0
    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeX:F

    iget v4, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeOffsetAnimX:F

    iget v5, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeEdgeOffsetXAnim:F

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeX:F

    .line 346
    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosX:F

    add-float/2addr v3, v6

    iput v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mLookAtX:F

    .line 347
    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosY:F

    add-float/2addr v3, v6

    iput v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeY:F

    .line 348
    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosY:F

    add-float/2addr v3, v6

    iput v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mLookAtY:F

    .line 349
    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosZ:F

    add-float/2addr v3, v7

    iput v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeZ:F

    .line 350
    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mPosZ:F

    iput v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mLookAtZ:F

    .line 351
    return-void

    .line 343
    :cond_2
    iget v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTargetEyeX:F

    iput v3, p0, Lcom/ecareme/pixwe/media/GridCamera;->mEyeX:F

    goto :goto_0
.end method

.method public viewportChanged(IIFF)V
    .locals 8
    .parameter "w"
    .parameter "h"
    .parameter "itemWidth"
    .parameter "itemHeight"

    .prologue
    const/high16 v7, 0x4000

    const/high16 v6, 0x3f80

    .line 122
    int-to-float v2, p2

    div-float v1, v2, p4

    .line 123
    .local v1, qFactor:F
    div-float v2, v1, v7

    float-to-double v2, v2

    const-wide/high16 v4, 0x4020

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v0, v7, v2

    .line 124
    .local v0, fov:F
    iput p1, p0, Lcom/ecareme/pixwe/media/GridCamera;->mWidth:I

    .line 125
    iput p2, p0, Lcom/ecareme/pixwe/media/GridCamera;->mHeight:I

    .line 126
    shr-int/lit8 v2, p1, 0x1

    iput v2, p0, Lcom/ecareme/pixwe/media/GridCamera;->mWidthBy2:I

    .line 127
    shr-int/lit8 v2, p2, 0x1

    iput v2, p0, Lcom/ecareme/pixwe/media/GridCamera;->mHeightBy2:I

    .line 128
    if-nez p2, :cond_0

    move v2, v6

    :goto_0
    iput v2, p0, Lcom/ecareme/pixwe/media/GridCamera;->mAspectRatio:F

    .line 129
    if-le p1, p2, :cond_1

    const/high16 v2, 0x3fc0

    :goto_1
    iput v2, p0, Lcom/ecareme/pixwe/media/GridCamera;->mDefaultAspectRatio:F

    .line 130
    const/high16 v2, 0x3f00

    mul-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/ecareme/pixwe/media/GridCamera;->mTanFovBy2:F

    .line 131
    float-to-int v2, p4

    iput v2, p0, Lcom/ecareme/pixwe/media/GridCamera;->mItemHeight:I

    .line 132
    float-to-int v2, p3

    iput v2, p0, Lcom/ecareme/pixwe/media/GridCamera;->mItemWidth:I

    .line 133
    iput p4, p0, Lcom/ecareme/pixwe/media/GridCamera;->mScale:F

    .line 134
    div-float v2, v6, p4

    iput v2, p0, Lcom/ecareme/pixwe/media/GridCamera;->mOneByScale:F

    .line 135
    iput v0, p0, Lcom/ecareme/pixwe/media/GridCamera;->mFov:F

    .line 136
    return-void

    .line 128
    :cond_0
    int-to-float v2, p1

    int-to-float v3, p2

    div-float/2addr v2, v3

    goto :goto_0

    .line 129
    :cond_1
    const v2, 0x3f2aaaab

    goto :goto_1
.end method
