.class Lcom/android/server/wm/ScreenRotationAnimation;
.super Ljava/lang/Object;
.source "ScreenRotationAnimation.java"


# static fields
.field static final DEBUG:Z = false

.field static final FREEZE_LAYER:I = 0x1e8480

.field static final TAG:Ljava/lang/String; = "ScreenRotationAnimation"


# instance fields
.field mBlackFrame:Lcom/android/server/wm/BlackFrame;

.field final mContext:Landroid/content/Context;

.field mCurRotation:I

.field final mDisplay:Landroid/view/Display;

.field final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mEnterAnimation:Landroid/view/animation/Animation;

.field final mEnterTransformation:Landroid/view/animation/Transformation;

.field mExitAnimation:Landroid/view/animation/Animation;

.field final mExitTransformation:Landroid/view/animation/Transformation;

.field mHeight:I

.field mOriginalHeight:I

.field mOriginalRotation:I

.field mOriginalWidth:I

.field mSnapshotDeltaRotation:I

.field final mSnapshotFinalMatrix:Landroid/graphics/Matrix;

.field final mSnapshotInitialMatrix:Landroid/graphics/Matrix;

.field mSnapshotRotation:I

.field mStarted:Z

.field mSurface:Landroid/view/Surface;

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/SurfaceSession;Z)V
    .registers 21
    .parameter "context"
    .parameter "display"
    .parameter "session"
    .parameter "inTransaction"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    .line 58
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    .line 61
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 62
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    .line 63
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    .line 64
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 65
    const/16 v2, 0x9

    new-array v2, v2, [F

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    .line 69
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    .line 70
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplay:Landroid/view/Display;

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 74
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 76
    .local v15, screenshot:Landroid/graphics/Bitmap;
    if-nez v15, :cond_68

    .line 143
    :goto_67
    return-void

    .line 82
    :cond_68
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotRotation:I

    .line 83
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 84
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/view/Display;->getRotation()I

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object v2, v0

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object v2, v0

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    .line 90
    if-nez p4, :cond_a6

    .line 93
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 98
    :cond_a6
    :try_start_a6
    new-instance v2, Landroid/view/Surface;

    const/4 v4, 0x0

    const-string v5, "FreezeSurface"

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    move v8, v0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object/from16 v3, p3

    invoke-direct/range {v2 .. v10}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    move-object v2, v0

    const v3, 0x1e8481

    invoke-virtual {v2, v3}, Landroid/view/Surface;->setLayer(I)V
    :try_end_cd
    .catchall {:try_start_a6 .. :try_end_cd} :catchall_124
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_a6 .. :try_end_cd} :catch_11a

    .line 109
    :goto_cd
    :try_start_cd
    invoke-virtual/range {p2 .. p2}, Landroid/view/Display;->getRotation()I

    move-result v2

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(I)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    move-object v2, v0

    if-eqz v2, :cond_15f

    .line 112
    new-instance v12, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    move v5, v0

    invoke-direct {v12, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_ef
    .catchall {:try_start_cd .. :try_end_ef} :catchall_124

    .line 113
    .local v12, dirty:Landroid/graphics/Rect;
    const/4 v11, 0x0

    .line 115
    .local v11, c:Landroid/graphics/Canvas;
    :try_start_f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    move-object v2, v0

    invoke-virtual {v2, v12}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_f8
    .catchall {:try_start_f0 .. :try_end_f8} :catchall_124
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f0 .. :try_end_f8} :catch_12e
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_f0 .. :try_end_f8} :catch_138

    move-result-object v11

    .line 121
    :goto_f9
    if-nez v11, :cond_142

    .line 122
    :try_start_fb
    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Null surface canvas"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/Surface;->destroy()V

    .line 124
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;
    :try_end_110
    .catchall {:try_start_fb .. :try_end_110} :catchall_124

    .line 135
    if-nez p4, :cond_115

    .line 136
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 141
    .end local v11           #c:Landroid/graphics/Canvas;
    .end local v12           #dirty:Landroid/graphics/Rect;
    :cond_115
    :goto_115
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_67

    .line 101
    :catch_11a
    move-exception v2

    move-object v13, v2

    .line 102
    .local v13, e:Landroid/view/Surface$OutOfResourcesException;
    :try_start_11c
    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Unable to allocate freeze surface"

    invoke-static {v2, v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_123
    .catchall {:try_start_11c .. :try_end_123} :catchall_124

    goto :goto_cd

    .line 135
    .end local v13           #e:Landroid/view/Surface$OutOfResourcesException;
    :catchall_124
    move-exception v2

    if-nez p4, :cond_12a

    .line 136
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 141
    :cond_12a
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 135
    throw v2

    .line 116
    .restart local v11       #c:Landroid/graphics/Canvas;
    .restart local v12       #dirty:Landroid/graphics/Rect;
    :catch_12e
    move-exception v2

    move-object v13, v2

    .line 117
    .local v13, e:Ljava/lang/IllegalArgumentException;
    :try_start_130
    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Unable to lock surface"

    invoke-static {v2, v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f9

    .line 118
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    :catch_138
    move-exception v2

    move-object v13, v2

    .line 119
    .local v13, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Unable to lock surface"

    invoke-static {v2, v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f9

    .line 128
    .end local v13           #e:Landroid/view/Surface$OutOfResourcesException;
    :cond_142
    new-instance v14, Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-direct {v14, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 129
    .local v14, paint:Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 130
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v11, v15, v2, v3, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    move-object v2, v0

    invoke-virtual {v2, v11}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_15f
    .catchall {:try_start_130 .. :try_end_15f} :catchall_124

    .line 135
    .end local v11           #c:Landroid/graphics/Canvas;
    .end local v12           #dirty:Landroid/graphics/Rect;
    .end local v14           #paint:Landroid/graphics/Paint;
    :cond_15f
    if-nez p4, :cond_115

    .line 136
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    goto :goto_115
.end method

.method public static createRotationMatrix(IIILandroid/graphics/Matrix;)V
    .registers 6
    .parameter "rotation"
    .parameter "width"
    .parameter "height"
    .parameter "outMatrix"

    .prologue
    const/4 v1, 0x0

    .line 178
    packed-switch p0, :pswitch_data_28

    .line 195
    :goto_4
    return-void

    .line 180
    :pswitch_5
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    goto :goto_4

    .line 183
    :pswitch_9
    const/high16 v0, 0x42b4

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 184
    int-to-float v0, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    .line 187
    :pswitch_13
    const/high16 v0, 0x4334

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 188
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    .line 191
    :pswitch_1e
    const/high16 v0, 0x4387

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 192
    int-to-float v0, p1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    .line 178
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_5
        :pswitch_9
        :pswitch_13
        :pswitch_1e
    .end packed-switch
.end method

.method static deltaRotation(II)I
    .registers 3
    .parameter "oldRotation"
    .parameter "newRotation"

    .prologue
    .line 150
    sub-int v0, p1, p0

    .line 151
    .local v0, delta:I
    if-gez v0, :cond_6

    add-int/lit8 v0, v0, 0x4

    .line 152
    :cond_6
    return v0
.end method


# virtual methods
.method public dismiss(Landroid/view/SurfaceSession;JF)Z
    .registers 16
    .parameter "session"
    .parameter "maxAnimationDuration"
    .parameter "animationScale"

    .prologue
    .line 216
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-nez v6, :cond_6

    .line 218
    const/4 v6, 0x0

    .line 286
    :goto_5
    return v6

    .line 222
    :cond_6
    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {v6, v7}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v0

    .line 224
    .local v0, delta:I
    packed-switch v0, :pswitch_data_ec

    .line 251
    :goto_11
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplay:Landroid/view/Display;

    iget-object v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v6, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 257
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    iget-object v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v10, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 259
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    iget-object v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v10, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 261
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    .line 263
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, p2, p3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 264
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, p4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 265
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, p2, p3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 266
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, p4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 270
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 273
    :try_start_54
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 274
    .local v5, w:I
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 275
    .local v2, h:I
    new-instance v4, Landroid/graphics/Rect;

    neg-int v6, v5

    neg-int v7, v2

    mul-int/lit8 v8, v5, 0x2

    mul-int/lit8 v9, v2, 0x2

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 276
    .local v4, outer:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 277
    .local v3, inner:Landroid/graphics/Rect;
    new-instance v6, Lcom/android/server/wm/BlackFrame;

    const v7, 0x1e8480

    invoke-direct {v6, p1, v4, v3, v7}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_78
    .catchall {:try_start_54 .. :try_end_78} :catchall_e7
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_54 .. :try_end_78} :catch_dd

    .line 281
    .end local v2           #h:I
    .end local v3           #inner:Landroid/graphics/Rect;
    .end local v4           #outer:Landroid/graphics/Rect;
    .end local v5           #w:I
    :goto_78
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 286
    const/4 v6, 0x1

    goto :goto_5

    .line 226
    :pswitch_7d
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a002d

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 228
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a002c

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_11

    .line 232
    :pswitch_95
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a0033

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 234
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a0032

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_11

    .line 238
    :pswitch_ad
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a002f

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 240
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a002e

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_11

    .line 244
    :pswitch_c5
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a0031

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 246
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a0030

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_11

    .line 278
    :catch_dd
    move-exception v6

    move-object v1, v6

    .line 279
    .local v1, e:Landroid/view/Surface$OutOfResourcesException;
    :try_start_df
    const-string v6, "ScreenRotationAnimation"

    const-string v7, "Unable to allocate black surface"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e6
    .catchall {:try_start_df .. :try_end_e6} :catchall_e7

    goto :goto_78

    .line 281
    .end local v1           #e:Landroid/view/Surface$OutOfResourcesException;
    :catchall_e7
    move-exception v6

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v6

    .line 224
    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_95
        :pswitch_ad
        :pswitch_c5
    .end packed-switch
.end method

.method public getEnterTransformation()Landroid/view/animation/Transformation;
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method hasScreenshot()Z
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isAnimating()Z
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public kill()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_c

    .line 294
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 295
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    .line 297
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_15

    .line 298
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 300
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_20

    .line 301
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 302
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 304
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2b

    .line 305
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 306
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 308
    :cond_2b
    return-void
.end method

.method public setRotation(I)V
    .registers 6
    .parameter "rotation"

    .prologue
    .line 199
    iput p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    .line 204
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotRotation:I

    invoke-static {p1, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v0

    .line 205
    .local v0, delta:I
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 208
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f80

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransform(Landroid/graphics/Matrix;F)V

    .line 209
    return-void
.end method

.method setSnapshotTransform(Landroid/graphics/Matrix;F)V
    .registers 9
    .parameter "matrix"
    .parameter "alpha"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_38

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setPosition(II)V

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/Surface;->setMatrix(FFFF)V

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p2}, Landroid/view/Surface;->setAlpha(F)V

    .line 174
    :cond_38
    return-void
.end method

.method public stepAnimation(J)Z
    .registers 10
    .parameter "now"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 315
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_d

    move v2, v5

    .line 362
    :goto_c
    return v2

    .line 319
    :cond_d
    iget-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v2, :cond_1d

    .line 320
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 321
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 322
    iput-boolean v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    .line 325
    :cond_1d
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 326
    const/4 v1, 0x0

    .line 327
    .local v1, moreExit:Z
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_46

    .line 328
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2, p1, p2, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    .line 330
    if-nez v1, :cond_46

    .line 332
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->cancel()V

    .line 333
    iput-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 334
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 335
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_46

    .line 336
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->hide()V

    .line 341
    :cond_46
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, moreEnter:Z
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_6f

    .line 344
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2, p1, p2, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 345
    if-nez v0, :cond_8d

    .line 346
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->cancel()V

    .line 347
    iput-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 348
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 349
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v2, :cond_6f

    .line 350
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v2}, Lcom/android/server/wm/BlackFrame;->hide()V

    .line 359
    :cond_6f
    :goto_6f
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 360
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransform(Landroid/graphics/Matrix;F)V

    .line 362
    if-nez v0, :cond_8b

    if-eqz v1, :cond_9d

    :cond_8b
    move v2, v6

    goto :goto_c

    .line 353
    :cond_8d
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v2, :cond_6f

    .line 354
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_6f

    :cond_9d
    move v2, v5

    .line 362
    goto/16 :goto_c
.end method
