.class public Lcom/android/soundrecorder/VUMeter;
.super Landroid/view/View;
.source "VUMeter.java"


# instance fields
.field mCurrentAngle:F

.field mPaint:Landroid/graphics/Paint;

.field mService:Lcom/android/soundrecorder/IRecorderService;

.field mShadow:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/soundrecorder/VUMeter;->init(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/soundrecorder/VUMeter;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method


# virtual methods
.method init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 55
    .local v0, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/VUMeter;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/soundrecorder/VUMeter;->mPaint:Landroid/graphics/Paint;

    .line 58
    iget-object v1, p0, Lcom/android/soundrecorder/VUMeter;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/soundrecorder/VUMeter;->mShadow:Landroid/graphics/Paint;

    .line 60
    iget-object v1, p0, Lcom/android/soundrecorder/VUMeter;->mShadow:Landroid/graphics/Paint;

    const/16 v2, 0x3c

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/soundrecorder/VUMeter;->mService:Lcom/android/soundrecorder/IRecorderService;

    .line 63
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    .line 64
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .parameter "canvas"

    .prologue
    .line 73
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 75
    const v17, 0x3ec90fdb

    .line 76
    .local v17, minAngle:F
    const v16, 0x402fede0

    .line 78
    .local v16, maxAngle:F
    const v11, 0x3ec90fdb

    .line 81
    .local v11, angle:F
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/VUMeter;->mService:Lcom/android/soundrecorder/IRecorderService;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 82
    const v5, 0x4016cbe5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/VUMeter;->mService:Lcom/android/soundrecorder/IRecorderService;

    move-object v6, v0

    invoke-interface {v6}, Lcom/android/soundrecorder/IRecorderService;->getMaxAmplitude()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x4700

    div-float/2addr v5, v6

    add-float/2addr v11, v5

    .line 87
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    move v5, v0

    cmpl-float v5, v11, v5

    if-lez v5, :cond_2

    .line 88
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    .line 92
    :goto_1
    const v5, 0x402fede0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    move v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/android/soundrecorder/VUMeter;->getWidth()I

    move-result v5

    move v0, v5

    int-to-float v0, v0

    move/from16 v21, v0

    .line 95
    .local v21, w:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/soundrecorder/VUMeter;->getHeight()I

    move-result v5

    int-to-float v14, v5

    .line 96
    .local v14, h:F
    const/high16 v5, 0x4000

    div-float v18, v21, v5

    .line 97
    .local v18, pivotX:F
    const/high16 v5, 0x4060

    sub-float v5, v14, v5

    const/high16 v6, 0x4120

    sub-float v19, v5, v6

    .line 98
    .local v19, pivotY:F
    const/high16 v5, 0x4080

    mul-float/2addr v5, v14

    const/high16 v6, 0x40a0

    div-float v15, v5, v6

    .line 99
    .local v15, l:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    move v5, v0

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    move-wide v0, v5

    double-to-float v0, v0

    move/from16 v20, v0

    .line 100
    .local v20, sin:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    move v5, v0

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v12, v5

    .line 101
    .local v12, cos:F
    mul-float v5, v15, v12

    sub-float v22, v18, v5

    .line 102
    .local v22, x0:F
    mul-float v5, v15, v20

    sub-float v23, v19, v5

    .line 103
    .local v23, y0:F
    const/high16 v5, 0x4000

    add-float v6, v22, v5

    const/high16 v5, 0x4000

    add-float v7, v23, v5

    const/high16 v5, 0x4000

    add-float v8, v18, v5

    const/high16 v5, 0x4000

    add-float v9, v19, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/VUMeter;->mShadow:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 104
    const/high16 v5, 0x4000

    add-float v5, v5, v18

    const/high16 v6, 0x4000

    add-float v6, v6, v19

    const/high16 v7, 0x4060

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/VUMeter;->mShadow:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/VUMeter;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v18

    move/from16 v9, v19

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 106
    const/high16 v5, 0x4060

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/VUMeter;->mPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 108
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/VUMeter;->mService:Lcom/android/soundrecorder/IRecorderService;

    move-object v5, v0

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/VUMeter;->mService:Lcom/android/soundrecorder/IRecorderService;

    move-object v5, v0

    invoke-interface {v5}, Lcom/android/soundrecorder/IRecorderService;->state()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 109
    const-wide/16 v5, 0x46

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/soundrecorder/VUMeter;->postInvalidateDelayed(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    :cond_1
    :goto_2
    return-void

    .line 83
    .end local v12           #cos:F
    .end local v14           #h:F
    .end local v15           #l:F
    .end local v18           #pivotX:F
    .end local v19           #pivotY:F
    .end local v20           #sin:F
    .end local v21           #w:F
    .end local v22           #x0:F
    .end local v23           #y0:F
    :catch_0
    move-exception v5

    move-object v13, v5

    .line 84
    .local v13, e:Landroid/os/RemoteException;
    invoke-virtual {v13}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 90
    .end local v13           #e:Landroid/os/RemoteException;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    move v5, v0

    const v6, 0x3e3851ec

    sub-float/2addr v5, v6

    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    goto/16 :goto_1

    .line 110
    .restart local v12       #cos:F
    .restart local v14       #h:F
    .restart local v15       #l:F
    .restart local v18       #pivotX:F
    .restart local v19       #pivotY:F
    .restart local v20       #sin:F
    .restart local v21       #w:F
    .restart local v22       #x0:F
    .restart local v23       #y0:F
    :catch_1
    move-exception v5

    move-object v13, v5

    .line 111
    .restart local v13       #e:Landroid/os/RemoteException;
    invoke-virtual {v13}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public setRecorderService(Lcom/android/soundrecorder/IRecorderService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/soundrecorder/VUMeter;->mService:Lcom/android/soundrecorder/IRecorderService;

    .line 68
    invoke-virtual {p0}, Lcom/android/soundrecorder/VUMeter;->invalidate()V

    .line 69
    return-void
.end method
