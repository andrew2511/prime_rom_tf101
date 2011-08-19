.class public Lcom/google/android/street/LabelMaker;
.super Ljava/lang/Object;
.source "LabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/street/LabelMaker$Label;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private final mFullColor:Z

.field private final mIsOrthoProjected:Z

.field private final mLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/street/LabelMaker$Label;",
            ">;"
        }
    .end annotation
.end field

.field private mLineHeight:I

.field private mState:I

.field private final mStrikeHeight:I

.field private final mStrikeWidth:I

.field private mTexelHeight:F

.field private mTexelWidth:F

.field private mTextureID:I

.field private mU:I

.field private mV:I


# direct methods
.method public constructor <init>(ZII)V
    .locals 1
    .parameter "fullColor"
    .parameter "strikeWidth"
    .parameter "strikeHeight"

    .prologue
    .line 88
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/street/LabelMaker;-><init>(ZIIZ)V

    .line 89
    return-void
.end method

.method public constructor <init>(ZIIZ)V
    .locals 2
    .parameter "fullColor"
    .parameter "strikeWidth"
    .parameter "strikeHeight"
    .parameter "isOrthoProjected"

    .prologue
    const/high16 v1, 0x3f80

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/LabelMaker;->mLabels:Ljava/util/ArrayList;

    .line 78
    iput-boolean p1, p0, Lcom/google/android/street/LabelMaker;->mFullColor:Z

    .line 79
    iput p2, p0, Lcom/google/android/street/LabelMaker;->mStrikeWidth:I

    .line 80
    iput p3, p0, Lcom/google/android/street/LabelMaker;->mStrikeHeight:I

    .line 81
    iget v0, p0, Lcom/google/android/street/LabelMaker;->mStrikeWidth:I

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/google/android/street/LabelMaker;->mTexelWidth:F

    .line 82
    iget v0, p0, Lcom/google/android/street/LabelMaker;->mStrikeHeight:I

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/google/android/street/LabelMaker;->mTexelHeight:F

    .line 83
    iput-boolean p4, p0, Lcom/google/android/street/LabelMaker;->mIsOrthoProjected:Z

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/street/LabelMaker;->mState:I

    .line 85
    return-void
.end method

.method private checkState(II)V
    .locals 2
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 438
    iget v0, p0, Lcom/google/android/street/LabelMaker;->mState:I

    if-eq v0, p1, :cond_0

    .line 439
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call this method now."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_0
    iput p2, p0, Lcom/google/android/street/LabelMaker;->mState:I

    .line 442
    return-void
.end method


# virtual methods
.method public add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;)I
    .locals 8
    .parameter "gl"
    .parameter "drawable"

    .prologue
    const/4 v3, 0x0

    .line 184
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/street/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;II)I

    move-result v0

    return v0
.end method

.method public add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;)I
    .locals 8
    .parameter "gl"
    .parameter "background"
    .parameter "text"
    .parameter "textPaint"
    .parameter "outlinePaint"

    .prologue
    const/4 v6, 0x0

    .line 175
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/street/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;II)I

    move-result v0

    return v0
.end method

.method public add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;II)I
    .locals 65
    .parameter "gl"
    .parameter "background"
    .parameter "text"
    .parameter "textPaint"
    .parameter "outlinePaint"
    .parameter "minWidth"
    .parameter "minHeight"

    .prologue
    .line 200
    const/4 v5, 0x2

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/street/LabelMaker;->checkState(II)V

    .line 201
    if-eqz p2, :cond_5

    const/4 v5, 0x1

    move/from16 v48, v5

    .line 202
    .local v48, drawBackground:Z
    :goto_0
    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    const/4 v5, 0x1

    move/from16 v49, v5

    .line 204
    .local v49, drawText:Z
    :goto_1
    new-instance v58, Landroid/graphics/Rect;

    invoke-direct/range {v58 .. v58}, Landroid/graphics/Rect;-><init>()V

    .line 205
    .local v58, padding:Landroid/graphics/Rect;
    if-eqz v48, :cond_0

    .line 206
    move-object/from16 v0, p2

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    move/from16 v0, p6

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p6

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    move/from16 v0, p7

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p7

    .line 210
    :cond_0
    if-eqz p5, :cond_1

    .line 211
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v52, v5, 0x2

    .line 213
    .local v52, extraPadding:I
    move-object/from16 v0, v58

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    add-int v5, v5, v52

    move v0, v5

    move-object/from16 v1, v58

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 214
    move-object/from16 v0, v58

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    add-int v5, v5, v52

    move v0, v5

    move-object/from16 v1, v58

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 215
    move-object/from16 v0, v58

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    add-int v5, v5, v52

    move v0, v5

    move-object/from16 v1, v58

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 216
    move-object/from16 v0, v58

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    add-int v5, v5, v52

    move v0, v5

    move-object/from16 v1, v58

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 219
    .end local v52           #extraPadding:I
    :cond_1
    const/16 v44, 0x0

    .line 220
    .local v44, ascent:I
    const/16 v47, 0x0

    .line 221
    .local v47, descent:I
    const/16 v55, 0x0

    .line 222
    .local v55, measuredTextWidth:I
    const/4 v8, 0x0

    .line 223
    .local v8, numCharacters:I
    if-eqz v49, :cond_2

    .line 224
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 226
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    neg-float v5, v5

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v44, v0

    .line 227
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->descent()F

    move-result v5

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v47, v0

    .line 229
    const/4 v5, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move v2, v5

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v5

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v55, v0

    .line 232
    :cond_2
    add-int v59, v44, v47

    .line 233
    .local v59, textHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LabelMaker;->mStrikeWidth:I

    move v5, v0

    move v0, v5

    move/from16 v1, v55

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v60

    .line 235
    .local v60, textWidth:I
    move-object/from16 v0, v58

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    move-object/from16 v0, v58

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    add-int v56, v5, v6

    .line 236
    .local v56, padHeight:I
    move-object/from16 v0, v58

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    move-object/from16 v0, v58

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v6, v0

    add-int v57, v5, v6

    .line 237
    .local v57, padWidth:I
    add-int v5, v59, v56

    move/from16 v0, p7

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v53

    .line 238
    .local v53, height:I
    add-int v5, v60, v57

    move/from16 v0, p6

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 239
    .local v42, width:I
    sub-int v50, v53, v56

    .line 240
    .local v50, effectiveTextHeight:I
    sub-int v51, v42, v57

    .line 242
    .local v51, effectiveTextWidth:I
    sub-int v5, v50, v59

    div-int/lit8 v45, v5, 0x2

    .line 243
    .local v45, centerOffsetHeight:I
    sub-int v5, v51, v60

    div-int/lit8 v46, v5, 0x2

    .line 249
    .local v46, centerOffsetWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LabelMaker;->mU:I

    move/from16 v40, v0

    .line 250
    .local v40, u:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LabelMaker;->mV:I

    move/from16 v62, v0

    .line 251
    .local v62, v:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LabelMaker;->mLineHeight:I

    move/from16 v54, v0

    .line 253
    .local v54, lineHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LabelMaker;->mStrikeWidth:I

    move v5, v0

    move/from16 v0, v42

    move v1, v5

    if-le v0, v1, :cond_3

    .line 254
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LabelMaker;->mStrikeWidth:I

    move/from16 v42, v0

    .line 258
    :cond_3
    add-int v5, v40, v42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LabelMaker;->mStrikeWidth:I

    move v6, v0

    if-le v5, v6, :cond_4

    .line 260
    const/16 v40, 0x0

    .line 261
    add-int v62, v62, v54

    .line 262
    const/16 v54, 0x0

    .line 264
    :cond_4
    move/from16 v0, v54

    move/from16 v1, v53

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v54

    .line 265
    add-int v5, v62, v54

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LabelMaker;->mStrikeHeight:I

    move v6, v0

    if-le v5, v6, :cond_7

    .line 266
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Out of texture space."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 201
    .end local v8           #numCharacters:I
    .end local v40           #u:I
    .end local v42           #width:I
    .end local v44           #ascent:I
    .end local v45           #centerOffsetHeight:I
    .end local v46           #centerOffsetWidth:I
    .end local v47           #descent:I
    .end local v48           #drawBackground:Z
    .end local v49           #drawText:Z
    .end local v50           #effectiveTextHeight:I
    .end local v51           #effectiveTextWidth:I
    .end local v53           #height:I
    .end local v54           #lineHeight:I
    .end local v55           #measuredTextWidth:I
    .end local v56           #padHeight:I
    .end local v57           #padWidth:I
    .end local v58           #padding:Landroid/graphics/Rect;
    .end local v59           #textHeight:I
    .end local v60           #textWidth:I
    .end local v62           #v:I
    :cond_5
    const/4 v5, 0x0

    move/from16 v48, v5

    goto/16 :goto_0

    .line 202
    .restart local v48       #drawBackground:Z
    :cond_6
    const/4 v5, 0x0

    move/from16 v49, v5

    goto/16 :goto_1

    .line 269
    .restart local v8       #numCharacters:I
    .restart local v40       #u:I
    .restart local v42       #width:I
    .restart local v44       #ascent:I
    .restart local v45       #centerOffsetHeight:I
    .restart local v46       #centerOffsetWidth:I
    .restart local v47       #descent:I
    .restart local v49       #drawText:Z
    .restart local v50       #effectiveTextHeight:I
    .restart local v51       #effectiveTextWidth:I
    .restart local v53       #height:I
    .restart local v54       #lineHeight:I
    .restart local v55       #measuredTextWidth:I
    .restart local v56       #padHeight:I
    .restart local v57       #padWidth:I
    .restart local v58       #padding:Landroid/graphics/Rect;
    .restart local v59       #textHeight:I
    .restart local v60       #textWidth:I
    .restart local v62       #v:I
    :cond_7
    add-int v61, v40, v42

    .line 270
    .local v61, u2:I
    add-int v64, v62, v44

    .line 271
    .local v64, vBase:I
    add-int v63, v62, v53

    .line 273
    .local v63, v2:I
    if-eqz v48, :cond_8

    .line 274
    add-int v5, v40, v42

    add-int v6, v62, v53

    move-object/from16 v0, p2

    move/from16 v1, v40

    move/from16 v2, v62

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/LabelMaker;->mCanvas:Landroid/graphics/Canvas;

    move-object v5, v0

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 278
    :cond_8
    if-eqz v49, :cond_a

    .line 279
    move-object/from16 v0, v58

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    add-int v5, v5, v40

    add-int v5, v5, v46

    int-to-float v9, v5

    .line 280
    .local v9, x:F
    move-object/from16 v0, v58

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    add-int v5, v5, v64

    add-int v5, v5, v45

    int-to-float v10, v5

    .line 281
    .local v10, y:F
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 282
    .local v11, textPath:Landroid/graphics/Path;
    const/4 v7, 0x0

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 283
    if-eqz p5, :cond_9

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/LabelMaker;->mCanvas:Landroid/graphics/Canvas;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v11

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 286
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/LabelMaker;->mCanvas:Landroid/graphics/Canvas;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v11

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 289
    .end local v9           #x:F
    .end local v10           #y:F
    .end local v11           #textPath:Landroid/graphics/Path;
    :cond_a
    new-instance v12, Lcom/google/android/street/Grid;

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-direct {v12, v5, v6}, Lcom/google/android/street/Grid;-><init>(II)V

    .line 292
    .local v12, grid:Lcom/google/android/street/Grid;
    move/from16 v0, v40

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LabelMaker;->mTexelWidth:F

    move v6, v0

    mul-float v18, v5, v6

    .line 293
    .local v18, texU:F
    move/from16 v0, v61

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LabelMaker;->mTexelWidth:F

    move v6, v0

    mul-float v26, v5, v6

    .line 294
    .local v26, texU2:F
    move/from16 v0, v62

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LabelMaker;->mTexelHeight:F

    move v6, v0

    mul-float v34, v5, v6

    .line 295
    .local v34, texV:F
    move/from16 v0, v63

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/LabelMaker;->mTexelHeight:F

    move v6, v0

    mul-float v19, v5, v6

    .line 297
    .local v19, texV2:F
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v19}, Lcom/google/android/street/Grid;->set(IIFFFFF)V

    .line 298
    const/16 v21, 0x1

    const/16 v22, 0x0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v20, v12

    move/from16 v27, v19

    invoke-virtual/range {v20 .. v27}, Lcom/google/android/street/Grid;->set(IIFFFFF)V

    .line 299
    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v27, v12

    move/from16 v33, v18

    invoke-virtual/range {v27 .. v34}, Lcom/google/android/street/Grid;->set(IIFFFFF)V

    .line 300
    const/16 v21, 0x1

    const/16 v22, 0x1

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v20, v12

    move/from16 v27, v34

    invoke-virtual/range {v20 .. v27}, Lcom/google/android/street/Grid;->set(IIFFFFF)V

    .line 303
    add-int v5, v40, v42

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/street/LabelMaker;->mU:I

    .line 304
    move/from16 v0, v62

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/street/LabelMaker;->mV:I

    .line 305
    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/street/LabelMaker;->mLineHeight:I

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/LabelMaker;->mLabels:Ljava/util/ArrayList;

    move-object v5, v0

    new-instance v35, Lcom/google/android/street/LabelMaker$Label;

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v38, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v39, v0

    add-int v41, v62, v53

    move/from16 v0, v53

    neg-int v0, v0

    move/from16 v43, v0

    move-object/from16 v36, v12

    invoke-direct/range {v35 .. v43}, Lcom/google/android/street/LabelMaker$Label;-><init>(Lcom/google/android/street/Grid;FFFIIII)V

    move-object v0, v5

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/LabelMaker;->mLabels:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    return v5
.end method

.method public add(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;)I
    .locals 6
    .parameter "gl"
    .parameter "text"
    .parameter "textPaint"
    .parameter "outlinePaint"

    .prologue
    .line 161
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/street/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;)I

    move-result v0

    return v0
.end method

.method public beginAdding(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/4 v3, 0x0

    .line 139
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/google/android/street/LabelMaker;->checkState(II)V

    .line 140
    iget-object v1, p0, Lcom/google/android/street/LabelMaker;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 141
    iput v3, p0, Lcom/google/android/street/LabelMaker;->mU:I

    .line 142
    iput v3, p0, Lcom/google/android/street/LabelMaker;->mV:I

    .line 143
    iput v3, p0, Lcom/google/android/street/LabelMaker;->mLineHeight:I

    .line 144
    iget-boolean v1, p0, Lcom/google/android/street/LabelMaker;->mFullColor:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v0, v1

    .line 146
    .local v0, config:Landroid/graphics/Bitmap$Config;
    :goto_0
    iget v1, p0, Lcom/google/android/street/LabelMaker;->mStrikeWidth:I

    iget v2, p0, Lcom/google/android/street/LabelMaker;->mStrikeHeight:I

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/street/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    .line 147
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/google/android/street/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/google/android/street/LabelMaker;->mCanvas:Landroid/graphics/Canvas;

    .line 148
    iget-object v1, p0, Lcom/google/android/street/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 149
    return-void

    .line 144
    .end local v0           #config:Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    move-object v0, v1

    goto :goto_0
.end method

.method public beginDrawing(Ljavax/microedition/khronos/opengles/GL10;FF)V
    .locals 7
    .parameter "gl"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/high16 v3, 0x1

    .line 367
    const/4 v0, 0x3

    invoke-direct {p0, v4, v0}, Lcom/google/android/street/LabelMaker;->checkState(II)V

    .line 368
    const/16 v0, 0xde1

    iget v2, p0, Lcom/google/android/street/LabelMaker;->mTextureID:I

    invoke-interface {p1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 369
    const/16 v0, 0x1d00

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 370
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 373
    const/16 v0, 0x303

    invoke-interface {p1, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 374
    invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 375
    iget-boolean v0, p0, Lcom/google/android/street/LabelMaker;->mIsOrthoProjected:Z

    if-eqz v0, :cond_0

    .line 376
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 377
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 378
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 379
    const/high16 v6, 0x3f80

    move-object v0, p1

    move v2, p2

    move v3, v1

    move v4, p3

    move v5, v1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 380
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 381
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 382
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 384
    :cond_0
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;FFI)V
    .locals 6
    .parameter "gl"
    .parameter "x"
    .parameter "y"
    .parameter "labelID"

    .prologue
    const/16 v5, 0x1700

    const/4 v3, 0x3

    .line 396
    invoke-direct {p0, v3, v3}, Lcom/google/android/street/LabelMaker;->checkState(II)V

    .line 397
    invoke-static {p2}, Landroid/util/FloatMath;->floor(F)F

    move-result v1

    .line 398
    .local v1, snappedX:F
    invoke-static {p3}, Landroid/util/FloatMath;->floor(F)F

    move-result v2

    .line 399
    .local v2, snappedY:F
    iget-boolean v3, p0, Lcom/google/android/street/LabelMaker;->mIsOrthoProjected:Z

    if-eqz v3, :cond_0

    .line 400
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 401
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 402
    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 404
    :cond_0
    iget-object v3, p0, Lcom/google/android/street/LabelMaker;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/street/LabelMaker$Label;

    .line 405
    .local v0, label:Lcom/google/android/street/LabelMaker$Label;
    const/16 v3, 0xde1

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 406
    iget-object v3, v0, Lcom/google/android/street/LabelMaker$Label;->grid:Lcom/google/android/street/Grid;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/google/android/street/Grid;->draw(Ljavax/microedition/khronos/opengles/GL10;Z)V

    .line 407
    iget-boolean v3, p0, Lcom/google/android/street/LabelMaker;->mIsOrthoProjected:Z

    if-eqz v3, :cond_1

    .line 408
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 409
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 411
    :cond_1
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 1
    .parameter "gl"
    .parameter "labelID"

    .prologue
    const/4 v0, 0x0

    .line 418
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/google/android/street/LabelMaker;->draw(Ljavax/microedition/khronos/opengles/GL10;FFI)V

    .line 419
    return-void
.end method

.method public endAdding(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xde1

    const/4 v2, 0x0

    .line 318
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/street/LabelMaker;->checkState(II)V

    .line 319
    iget v0, p0, Lcom/google/android/street/LabelMaker;->mTextureID:I

    invoke-interface {p1, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 320
    iget-object v0, p0, Lcom/google/android/street/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v2, v0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 322
    iget-object v0, p0, Lcom/google/android/street/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 323
    iput-object v4, p0, Lcom/google/android/street/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    .line 324
    iput-object v4, p0, Lcom/google/android/street/LabelMaker;->mCanvas:Landroid/graphics/Canvas;

    .line 325
    return-void
.end method

.method public endDrawing(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 427
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/street/LabelMaker;->checkState(II)V

    .line 428
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 429
    iget-boolean v0, p0, Lcom/google/android/street/LabelMaker;->mIsOrthoProjected:Z

    if-eqz v0, :cond_0

    .line 430
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 431
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 432
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 433
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 435
    :cond_0
    return-void
.end method

.method public getHeight(I)F
    .locals 1
    .parameter "labelID"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/street/LabelMaker;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/street/LabelMaker$Label;

    iget v0, p0, Lcom/google/android/street/LabelMaker$Label;->height:F

    return v0
.end method

.method public getWidth(I)F
    .locals 1
    .parameter "labelID"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/android/street/LabelMaker;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/street/LabelMaker$Label;

    iget v0, p0, Lcom/google/android/street/LabelMaker$Label;->width:F

    return v0
.end method

.method public initialize(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    const/4 v5, 0x0

    const v4, 0x47012f00

    const/high16 v3, 0x4618

    const/4 v1, 0x1

    const/16 v2, 0xde1

    .line 98
    iput v1, p0, Lcom/google/android/street/LabelMaker;->mState:I

    .line 99
    new-array v0, v1, [I

    .line 100
    .local v0, textures:[I
    invoke-interface {p1, v1, v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 101
    aget v1, v0, v5

    iput v1, p0, Lcom/google/android/street/LabelMaker;->mTextureID:I

    .line 102
    iget v1, p0, Lcom/google/android/street/LabelMaker;->mTextureID:I

    invoke-interface {p1, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 105
    const/16 v1, 0x2801

    invoke-interface {p1, v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 107
    const/16 v1, 0x2800

    invoke-interface {p1, v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 110
    const/16 v1, 0x2802

    invoke-interface {p1, v2, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 112
    const/16 v1, 0x2803

    invoke-interface {p1, v2, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 115
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const v3, 0x45f00800

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 117
    return-void
.end method

.method public shutdown(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    if-eqz p1, :cond_0

    .line 124
    iget v1, p0, Lcom/google/android/street/LabelMaker;->mState:I

    if-lez v1, :cond_0

    .line 125
    new-array v0, v3, [I

    .line 126
    .local v0, textures:[I
    iget v1, p0, Lcom/google/android/street/LabelMaker;->mTextureID:I

    aput v1, v0, v2

    .line 127
    invoke-interface {p1, v3, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 130
    .end local v0           #textures:[I
    :cond_0
    return-void
.end method
