.class public Lcom/nvidia/tegrazone/utils/BitmapReflection;
.super Ljava/lang/Object;
.source "BitmapReflection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReflection(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 24
    .parameter "imageURL"

    .prologue
    .line 18
    const/4 v3, 0x0

    .line 21
    .local v3, reflectionGap:I
    invoke-static/range {p0 .. p0}, Lcom/nvidia/tegrazone/utils/BitmapUtils;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 24
    .local v3, originalImage:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 25
    .local v6, width:I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    .line 29
    .local v23, height:I
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 30
    .local v8, matrix:Landroid/graphics/Matrix;
    const/high16 p0, 0x3f80

    const/high16 v4, -0x4080

    move-object v0, v8

    move/from16 v1, p0

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 34
    .end local p0
    const/4 v4, 0x0

    div-int/lit8 p0, v23, 0x4

    sub-int v5, v23, p0

    div-int/lit8 v7, v23, 0x4

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 39
    .local v4, reflectionImage:Landroid/graphics/Bitmap;
    div-int/lit8 p0, v23, 0x4

    add-int p0, p0, v23

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 38
    move v0, v6

    move/from16 v1, p0

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 43
    .local p0, bitmapWithReflection:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    .local v9, canvas:Landroid/graphics/Canvas;
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v9, v3, v5, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 47
    .end local v8           #matrix:Landroid/graphics/Matrix;
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 48
    .local v14, defaultPaint:Landroid/graphics/Paint;
    const/4 v10, 0x0

    move/from16 v0, v23

    int-to-float v0, v0

    move v11, v0

    int-to-float v12, v6

    add-int/lit8 v5, v23, 0x0

    int-to-float v13, v5

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 50
    const/4 v5, 0x0

    add-int/lit8 v7, v23, 0x0

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v9, v4, v5, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 53
    new-instance v4, Landroid/graphics/Paint;

    .end local v4           #reflectionImage:Landroid/graphics/Bitmap;
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 54
    .local v4, paint:Landroid/graphics/Paint;
    new-instance v15, Landroid/graphics/LinearGradient;

    const/16 v16, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .end local v3           #originalImage:Landroid/graphics/Bitmap;
    move v0, v3

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    move v0, v3

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x20ffffff

    const v21, 0x171b1e

    .line 56
    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 54
    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 59
    .local v15, shader:Landroid/graphics/LinearGradient;
    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 62
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 65
    const/16 v17, 0x0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v18, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v19, v0

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    move v0, v3

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v16, v9

    move-object/from16 v21, v4

    .line 65
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 68
    return-object p0
.end method
