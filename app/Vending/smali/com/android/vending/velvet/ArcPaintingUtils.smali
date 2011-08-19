.class public Lcom/android/vending/velvet/ArcPaintingUtils;
.super Ljava/lang/Object;
.source "ArcPaintingUtils.java"


# static fields
.field private static final sArcOvalRectangle:Landroid/graphics/RectF;

.field protected static final sBackgroundColorDark1:I

.field protected static final sBackgroundColorDark2:I

.field protected static final sBackgroundColorHighDark1:I

.field protected static final sBackgroundColorHighDark2:I

.field protected static final sBackgroundColorHighDarkTransparent1:I

.field protected static final sBackgroundColorHighLight1:I

.field protected static final sBackgroundColorHighLight2:I

.field protected static final sBackgroundColorHighLightTransparent1:I

.field protected static final sBackgroundColorLight1:I

.field protected static final sBackgroundColorMedium1:I

.field protected static final sBackgroundColorMedium2:I

.field protected static final sBackgroundColorMedium3:I

.field private static final sBackgroundPaint:Landroid/graphics/Paint;

.field private static final sBackgroundPath:Landroid/graphics/Path;

.field private static sBaseGradientHeight:I

.field private static sBaseGradientWidth:I

.field private static final sClipPath:Landroid/graphics/Path;

.field private static sFillGradient1:Landroid/graphics/LinearGradient;

.field private static sFillGradient2:Landroid/graphics/LinearGradient;

.field private static sFillGradient3:Landroid/graphics/LinearGradient;

.field private static sFillGradient4:Landroid/graphics/LinearGradient;

.field private static sFillGradient5:Landroid/graphics/LinearGradient;

.field private static final sFullRect:Landroid/graphics/RectF;

.field private static sHighlightGradient3:Landroid/graphics/LinearGradient;

.field private static sHighlightGradient4:Landroid/graphics/LinearGradient;

.field private static sHighlightGradient5:Landroid/graphics/LinearGradient;

.field private static sHighlightGradient6:Landroid/graphics/LinearGradient;

.field private static sHighlightGradient7:Landroid/graphics/LinearGradient;

.field private static final sMinorArcOvalRectangle:Landroid/graphics/RectF;

.field private static final sMinorBackgroundPath:Landroid/graphics/Path;

.field private static sOverlayBitmapRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sScreenScaleFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sput-object v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    .line 33
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sput-object v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sClipPath:Landroid/graphics/Path;

    .line 35
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sFullRect:Landroid/graphics/RectF;

    .line 37
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sArcOvalRectangle:Landroid/graphics/RectF;

    .line 39
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorArcOvalRectangle:Landroid/graphics/RectF;

    .line 41
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sput-object v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorBackgroundPath:Landroid/graphics/Path;

    .line 95
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/VendingApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorLight1:I

    .line 97
    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorMedium1:I

    .line 98
    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorMedium2:I

    .line 99
    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorMedium3:I

    .line 100
    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorDark1:I

    .line 101
    const v1, 0x7f090024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorDark2:I

    .line 102
    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighLight1:I

    .line 103
    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighLightTransparent1:I

    .line 105
    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighLight2:I

    .line 106
    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighDark1:I

    .line 107
    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighDarkTransparent1:I

    .line 109
    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighDark2:I

    .line 110
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sScreenScaleFactor:F

    .line 111
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeMinorArcOvalRect(II)V
    .locals 20
    .parameter "canvasWidth"
    .parameter "canvasHeight"

    .prologue
    .line 532
    const-wide v2, 0x3fb999999999999aL

    move/from16 v0, p0

    int-to-double v0, v0

    move-wide v4, v0

    mul-double/2addr v4, v2

    .line 533
    .local v4, x1:D
    const-wide/16 v12, 0x0

    .line 535
    .local v12, y1:D
    move/from16 v0, p0

    int-to-double v0, v0

    move-wide v8, v0

    .line 536
    .local v8, x3:D
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 538
    .local v16, y3:D
    add-double p0, v4, v8

    const-wide/high16 v2, 0x4000

    div-double p0, p0, v2

    .line 539
    .end local p1
    .local p0, xm:D
    add-double v2, v12, v16

    const-wide/high16 v6, 0x4000

    div-double/2addr v2, v6

    .line 543
    .local v2, ym:D
    sub-double v6, v16, v12

    const-wide/high16 v10, 0x4024

    div-double/2addr v6, v10

    sub-double v6, p0, v6

    .line 544
    .local v6, x2:D
    sub-double p0, v8, v4

    const-wide/high16 v10, 0x4024

    div-double p0, p0, v10

    add-double v14, v2, p0

    .line 547
    .local v14, y2:D
    sub-double p0, v14, v12

    sub-double v2, v6, v4

    div-double p0, p0, v2

    .line 548
    .local p0, ma:D
    sub-double v2, v16, v14

    sub-double v10, v8, v6

    div-double/2addr v2, v10

    .line 550
    .local v2, mb:D
    mul-double v10, p0, v2

    sub-double v18, v12, v16

    mul-double v10, v10, v18

    add-double v18, v4, v6

    mul-double v18, v18, v2

    add-double v10, v10, v18

    add-double v18, v6, v8

    mul-double v18, v18, p0

    sub-double v10, v10, v18

    const-wide/high16 v18, 0x4000

    sub-double p0, v2, p0

    mul-double p0, p0, v18

    div-double v10, v10, p0

    .line 551
    .local v10, xp:D
    add-double p0, v6, v8

    const-wide/high16 v6, 0x4000

    div-double p0, p0, v6

    sub-double p0, v10, p0

    move-wide/from16 v0, p0

    neg-double v0, v0

    move-wide/from16 p0, v0

    div-double p0, p0, v2

    add-double v2, v14, v16

    const-wide/high16 v6, 0x4000

    div-double/2addr v2, v6

    add-double v2, v2, p0

    .line 552
    .local v2, yp:D
    sub-double p0, v10, v4

    sub-double v4, v10, v4

    mul-double p0, p0, v4

    sub-double v4, v2, v12

    sub-double v6, v2, v12

    mul-double/2addr v4, v6

    add-double p0, p0, v4

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->sqrt(D)D

    .end local v4           #x1:D
    .end local v6           #x2:D
    .end local p0           #ma:D
    move-result-wide p0

    .line 554
    .local p0, r:D
    sget-object v4, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorArcOvalRectangle:Landroid/graphics/RectF;

    sub-double v5, v10, p0

    double-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 555
    sget-object v4, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorArcOvalRectangle:Landroid/graphics/RectF;

    sub-double v5, v2, p0

    double-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 556
    sget-object v4, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorArcOvalRectangle:Landroid/graphics/RectF;

    add-double v5, v10, p0

    double-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 557
    sget-object v4, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorArcOvalRectangle:Landroid/graphics/RectF;

    add-double p0, p0, v2

    move-wide/from16 v0, p0

    double-to-float v0, v0

    move/from16 p0, v0

    move/from16 v0, p0

    move-object v1, v4

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 558
    .end local p0           #r:D
    return-void
.end method

.method private static createOverlayBitmap()Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    .line 563
    const/16 v10, 0xc

    .line 564
    .local v10, squareSize:I
    mul-int/lit8 v3, v10, 0x8

    .line 565
    .local v3, width:I
    mul-int/lit8 v1, v10, 0x2

    .line 567
    .local v1, height:I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 569
    .local v7, overlayBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/VendingApplication;->getApiClientContext()Lcom/android/vending/VendingApplication$ApiClientContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/VendingApplication$ApiClientContext;->getAid()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, androidId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/vending/util/Util;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 573
    const/4 v1, 0x0

    .line 619
    .end local v1           #height:I
    .end local v3           #width:I
    :goto_0
    return-object v1

    .line 575
    .restart local v1       #height:I
    .restart local v3       #width:I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x10

    if-eq v2, v4, :cond_1

    .line 576
    const/4 v2, 0x0

    const/16 v4, 0x10

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 578
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 580
    sget v2, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorDark1:I

    const v4, -0x5f000001

    and-int v5, v2, v4

    .line 583
    .local v5, color:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 584
    const/4 v4, 0x0

    invoke-virtual {v7, v2, v4, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 583
    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 586
    :cond_2
    const/4 v2, 0x0

    .end local v3           #width:I
    .local v2, j:I
    :goto_2
    if-ge v2, v1, :cond_3

    .line 587
    const/4 v3, 0x0

    invoke-virtual {v7, v3, v2, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 586
    add-int/lit8 v2, v2, 0x4

    goto :goto_2

    .line 591
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    move v6, v1

    .end local v1           #i:I
    .end local v2           #j:I
    .local v6, i:I
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v6, v1, :cond_d

    .line 592
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 593
    .local v1, c:C
    const/16 v2, 0x39

    if-gt v1, v2, :cond_8

    const/16 v2, 0x30

    sub-int/2addr v1, v2

    move v4, v1

    .line 594
    .end local v1           #c:C
    .local v4, hexa:I
    :goto_4
    shr-int/lit8 v1, v4, 0x3

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    const/4 v1, 0x1

    .line 595
    .local v1, bit0:Z
    :goto_5
    shr-int/lit8 v2, v4, 0x2

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    const/4 v2, 0x1

    .line 596
    .local v2, bit1:Z
    :goto_6
    shr-int/lit8 v3, v4, 0x1

    and-int/lit8 v3, v3, 0x1

    const/4 v8, 0x1

    if-ne v3, v8, :cond_b

    const/4 v3, 0x1

    .line 597
    .local v3, bit2:Z
    :goto_7
    and-int/lit8 v4, v4, 0x1

    const/4 v8, 0x1

    if-ne v4, v8, :cond_c

    .end local v4           #hexa:I
    const/4 v4, 0x1

    .line 601
    .local v4, bit3:Z
    :goto_8
    rem-int/lit8 v8, v6, 0x8

    mul-int/2addr v8, v10

    .line 602
    .local v8, squareOffsetX:I
    div-int/lit8 v9, v6, 0x8

    mul-int/2addr v9, v10

    .line 604
    .local v9, squareOffsetY:I
    if-eqz v1, :cond_4

    .line 605
    add-int/lit8 v1, v8, 0x4

    add-int/lit8 v11, v9, 0x4

    invoke-virtual {v7, v1, v11, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 607
    .end local v1           #bit0:Z
    :cond_4
    if-eqz v2, :cond_5

    .line 608
    add-int/lit8 v1, v8, 0x8

    add-int/lit8 v2, v9, 0x4

    invoke-virtual {v7, v1, v2, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 610
    .end local v2           #bit1:Z
    :cond_5
    if-eqz v3, :cond_6

    .line 611
    add-int/lit8 v1, v8, 0x4

    add-int/lit8 v2, v9, 0x8

    invoke-virtual {v7, v1, v2, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 613
    :cond_6
    if-eqz v4, :cond_7

    .line 614
    add-int/lit8 v1, v8, 0x8

    add-int/lit8 v2, v9, 0x8

    invoke-virtual {v7, v1, v2, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 591
    :cond_7
    add-int/lit8 v1, v6, 0x1

    .end local v6           #i:I
    .local v1, i:I
    move v6, v1

    .end local v1           #i:I
    .restart local v6       #i:I
    goto :goto_3

    .line 593
    .end local v3           #bit2:Z
    .end local v4           #bit3:Z
    .end local v8           #squareOffsetX:I
    .end local v9           #squareOffsetY:I
    .local v1, c:C
    :cond_8
    add-int/lit8 v1, v1, 0xa

    const/16 v2, 0x61

    sub-int/2addr v1, v2

    move v4, v1

    goto :goto_4

    .line 594
    .end local v1           #c:C
    .local v4, hexa:I
    :cond_9
    const/4 v1, 0x0

    goto :goto_5

    .line 595
    .local v1, bit0:Z
    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    .line 596
    .restart local v2       #bit1:Z
    :cond_b
    const/4 v3, 0x0

    goto :goto_7

    .line 597
    .end local v4           #hexa:I
    .restart local v3       #bit2:Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_8

    .line 618
    .end local v1           #bit0:Z
    .end local v2           #bit1:Z
    .end local v3           #bit2:Z
    :cond_d
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sOverlayBitmapRef:Ljava/lang/ref/SoftReference;

    move-object v1, v7

    .line 619
    goto/16 :goto_0
.end method

.method public static drawBackgroundWithCurvedBottom(Landroid/graphics/Canvas;IIIII)V
    .locals 25
    .parameter "canvas"
    .parameter "canvasWidth"
    .parameter "canvasHeight"
    .parameter "arcStart"
    .parameter "arcEnd"
    .parameter "dropShadowSize"

    .prologue
    .line 367
    invoke-static/range {p1 .. p2}, Lcom/android/vending/velvet/ArcPaintingUtils;->updateFillGradients(II)V

    .line 369
    sget-object v5, Lcom/android/vending/velvet/ArcPaintingUtils;->sArcOvalRectangle:Landroid/graphics/RectF;

    move-object v0, v5

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/vending/velvet/ArcPaintingUtils;->getArcOvalRectangleForCurvedBottom(Landroid/graphics/RectF;IIII)V

    .line 371
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 p4, v0

    const/high16 v5, 0x4000

    div-float p4, p4, v5

    sget-object v5, Lcom/android/vending/velvet/ArcPaintingUtils;->sArcOvalRectangle:Landroid/graphics/RectF;

    .end local p4
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    move/from16 v0, p4

    move v1, v5

    invoke-static {v0, v1}, Lcom/android/vending/velvet/ArcPaintingUtils;->getArcAngleForBottomCurve(FF)F

    move-result v7

    .line 374
    .local v7, angle:F
    sget-object p4, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 379
    sget-object p4, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 380
    sget-object p4, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 381
    const/16 p4, 0x0

    .local p4, i:I
    move/from16 v11, p4

    .end local p4           #i:I
    .local v11, i:I
    :goto_0
    move v0, v11

    move/from16 v1, p5

    if-ge v0, v1, :cond_0

    .line 382
    mul-int/lit8 p4, v11, 0x2

    add-int/lit8 p4, p4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move/from16 v0, p4

    move v1, v5

    move v2, v6

    move v3, v8

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p4

    .line 383
    .local p4, color:I
    sget-object v5, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    mul-int/lit8 v6, v11, 0x2

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 384
    sget-object v5, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, v5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    sget-object p4, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    .end local p4           #color:I
    const/4 v5, 0x0

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 386
    sget-object v6, Lcom/android/vending/velvet/ArcPaintingUtils;->sArcOvalRectangle:Landroid/graphics/RectF;

    const/high16 p4, 0x4000

    const/high16 v5, 0x42b4

    sub-float/2addr v5, v7

    mul-float v8, p4, v5

    const/4 v9, 0x0

    sget-object v10, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 381
    add-int/lit8 p4, v11, 0x1

    .end local v11           #i:I
    .local p4, i:I
    move/from16 v11, p4

    .end local p4           #i:I
    .restart local v11       #i:I
    goto :goto_0

    .line 390
    :cond_0
    sget-object p4, Lcom/android/vending/velvet/ArcPaintingUtils;->sClipPath:Landroid/graphics/Path;

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->reset()V

    .line 391
    sget-object p4, Lcom/android/vending/velvet/ArcPaintingUtils;->sClipPath:Landroid/graphics/Path;

    const/16 p5, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 392
    .end local p5
    sget-object p4, Lcom/android/vending/velvet/ArcPaintingUtils;->sClipPath:Landroid/graphics/Path;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 p5, v0

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 393
    sget-object p4, Lcom/android/vending/velvet/ArcPaintingUtils;->sClipPath:Landroid/graphics/Path;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 p5, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 p3, v0

    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 394
    .end local p3
    sget-object p3, Lcom/android/vending/velvet/ArcPaintingUtils;->sClipPath:Landroid/graphics/Path;

    sget-object p4, Lcom/android/vending/velvet/ArcPaintingUtils;->sArcOvalRectangle:Landroid/graphics/RectF;

    const/high16 p5, 0x4000

    const/high16 v5, 0x42b4

    sub-float/2addr v5, v7

    mul-float p5, p5, v5

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move v2, v7

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 395
    sget-object p3, Lcom/android/vending/velvet/ArcPaintingUtils;->sClipPath:Landroid/graphics/Path;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->close()V

    .line 400
    invoke-static/range {p1 .. p2}, Lcom/android/vending/velvet/ArcPaintingUtils;->computeMinorArcOvalRect(II)V

    .line 401
    sget-object p3, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorArcOvalRectangle:Landroid/graphics/RectF;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    move/from16 v0, p3

    float-to-double v0, v0

    move-wide v11, v0

    .line 402
    .local v11, xp0:D
    sget-object p3, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorArcOvalRectangle:Landroid/graphics/RectF;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    move/from16 v0, p3

    float-to-double v0, v0

    move-wide/from16 v19, v0

    .line 403
    .local v19, yp0:D
    sget-object p3, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorArcOvalRectangle:Landroid/graphics/RectF;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    move/from16 v0, p3

    float-to-double v0, v0

    move-wide/from16 p3, v0

    const-wide/high16 v5, 0x4000

    div-double v9, p3, v5

    .line 406
    .local v9, r0:D
    sget-object p3, Lcom/android/vending/velvet/ArcPaintingUtils;->sArcOvalRectangle:Landroid/graphics/RectF;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    move/from16 v0, p3

    float-to-double v0, v0

    move-wide v15, v0

    .line 407
    .local v15, xp1:D
    sget-object p3, Lcom/android/vending/velvet/ArcPaintingUtils;->sArcOvalRectangle:Landroid/graphics/RectF;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    move/from16 v0, p3

    float-to-double v0, v0

    move-wide/from16 v21, v0

    .line 408
    .local v21, yp1:D
    sget-object p3, Lcom/android/vending/velvet/ArcPaintingUtils;->sArcOvalRectangle:Landroid/graphics/RectF;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    move/from16 v0, p3

    float-to-double v0, v0

    move-wide/from16 p3, v0

    const-wide/high16 v5, 0x4000

    div-double v13, p3, v5

    .line 413
    .local v13, r1:D
    sub-double p3, v11, v15

    sub-double v5, v11, v15

    mul-double p3, p3, v5

    sub-double v5, v19, v21

    sub-double v7, v19, v21

    mul-double/2addr v5, v7

    add-double p3, p3, v5

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sqrt(D)D

    .end local v7           #angle:F
    move-result-wide v5

    .line 414
    .local v5, d:D
    mul-double p3, v9, v9

    mul-double v7, v13, v13

    sub-double p3, p3, v7

    mul-double v7, v5, v5

    add-double p3, p3, v7

    const-wide/high16 v7, 0x4000

    mul-double/2addr v7, v5

    div-double p3, p3, v7

    .line 415
    .local p3, a:D
    mul-double v7, v9, v9

    mul-double v17, p3, p3

    sub-double v7, v7, v17

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 417
    .local v7, h:D
    sub-double v17, v15, v11

    mul-double v17, v17, p3

    div-double v17, v17, v5

    add-double v17, v17, v11

    .line 418
    .local v17, xp2:D
    sub-double v23, v21, v19

    mul-double p3, p3, v23

    div-double p3, p3, v5

    add-double p3, p3, v19

    .line 420
    .local p3, yp2:D
    sub-double v23, v15, v11

    mul-double v23, v23, v7

    div-double v23, v23, v5

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(D)D

    move-result-wide v23

    add-double p3, p3, v23

    .line 421
    .local p3, yp3:D
    sub-double p3, v21, v19

    mul-double p3, p3, v7

    div-double p3, p3, v5

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->abs(D)D

    .end local p3           #yp3:D
    move-result-wide p3

    sub-double p4, v17, p3

    .line 428
    .local p4, xp3:D
    sget-object p3, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorBackgroundPath:Landroid/graphics/Path;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 429
    sget-object p3, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorBackgroundPath:Landroid/graphics/Path;

    move/from16 v0, p1

    int-to-float v0, v0

    move v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 430
    .end local v5           #d:D
    sget-object p3, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorBackgroundPath:Landroid/graphics/Path;

    const v5, 0x3dcccccd

    move/from16 v0, p1

    int-to-float v0, v0

    move v6, v0

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 431
    const-wide v5, 0x4056800000000000L

    const-wide v7, 0x4066800000000000L

    sub-double v17, v11, p4

    div-double v17, v17, v9

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->asin(D)D

    .end local v7           #h:D
    .end local v17           #xp2:D
    move-result-wide v17

    mul-double v7, v7, v17

    const-wide v17, 0x400921fb54442d18L

    div-double v7, v7, v17

    add-double/2addr v5, v7

    move-wide v0, v5

    double-to-float v0, v0

    move/from16 p3, v0

    .line 432
    .local p3, alpha:F
    const-wide v5, 0x4056800000000000L

    const-wide v7, 0x4066800000000000L

    const v17, 0x3dcccccd

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    sub-double v11, v11, v17

    div-double v9, v11, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->asin(D)D

    .end local v9           #r0:D
    .end local v11           #xp0:D
    move-result-wide v9

    mul-double/2addr v7, v9

    const-wide v9, 0x400921fb54442d18L

    div-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-float v12, v5

    .line 433
    .local v12, beta:F
    sget-object v5, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorBackgroundPath:Landroid/graphics/Path;

    sget-object v6, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorArcOvalRectangle:Landroid/graphics/RectF;

    sub-float v7, p3, v12

    invoke-virtual {v5, v6, v12, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 434
    const-wide v5, 0x4056800000000000L

    const-wide v7, 0x4066800000000000L

    sub-double p4, v15, p4

    div-double p4, p4, v13

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->asin(D)D

    .end local p4           #xp3:D
    move-result-wide p4

    mul-double p4, p4, v7

    const-wide v7, 0x400921fb54442d18L

    div-double p4, p4, v7

    add-double p4, p4, v5

    move-wide/from16 v0, p4

    double-to-float v0, v0

    move/from16 p4, v0

    .line 435
    .local p4, alpha1:F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 p5, v0

    const/high16 v5, 0x4000

    div-float p5, p5, v5

    sget-object v5, Lcom/android/vending/velvet/ArcPaintingUtils;->sArcOvalRectangle:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    move/from16 v0, p5

    move v1, v5

    invoke-static {v0, v1}, Lcom/android/vending/velvet/ArcPaintingUtils;->getArcAngleForBottomCurve(FF)F

    move-result p5

    .line 437
    .local p5, beta1:F
    sget-object v5, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorBackgroundPath:Landroid/graphics/Path;

    sget-object v6, Lcom/android/vending/velvet/ArcPaintingUtils;->sArcOvalRectangle:Landroid/graphics/RectF;

    sub-float p5, p5, p4

    move-object v0, v5

    move-object v1, v6

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 438
    .end local p5           #beta1:F
    sget-object p4, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorBackgroundPath:Landroid/graphics/Path;

    .end local p4           #alpha1:F
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->close()V

    .line 440
    sget-object v11, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorArcOvalRectangle:Landroid/graphics/RectF;

    sub-float v13, p3, v12

    sget-object v14, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorBackgroundPath:Landroid/graphics/Path;

    .end local v13           #r1:D
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    invoke-static/range {v8 .. v14}, Lcom/android/vending/velvet/ArcPaintingUtils;->drawSwooshes(Landroid/graphics/Canvas;IILandroid/graphics/RectF;FFLandroid/graphics/Path;)V

    .line 442
    return-void
.end method

.method public static drawBackgroundWithCurvedRight(Landroid/graphics/Canvas;IIIII)V
    .locals 25
    .parameter "canvas"
    .parameter "canvasWidth"
    .parameter "canvasHeight"
    .parameter "arcStart"
    .parameter "arcEnd"
    .parameter "dropShadowSize"

    .prologue
    .line 446
    invoke-static/range {p1 .. p2}, Lcom/android/vending/velvet/ArcPaintingUtils;->updateFillGradients(II)V

    .line 448
    sget-object v5, Lcom/android/vending/velvet/ArcPaintingUtils;->sArcOvalRectangle:Landroid/graphics/RectF;

    move-object v0, v5

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/vending/velvet/ArcPaintingUtils;->getArcOvalRectangleForCurvedRight(Landroid/graphics/RectF;IIII)V

    .line 450
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 p4, v0

    const/high16 v5, 0x4000

    div-float p4, p4, v5

    sget-object v5, Lcom/android/vending/velvet/ArcPaintingUtils;->sArcOvalRectangle:Landroid/graphics/RectF;

    .end local p4
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    move/from16 v0, p4

    move v1, v5

    invoke-static {v0, v1}, Lcom/android/vending/velvet/ArcPaintingUtils;->getArcAngleForRightCurve(FF)F

    move-result p4

    .line 453
    .local p4, angle:F
    sget-object v5, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 458
    sget-object v5, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 459
    const/4 v5, 0x0

    .local v5, i:I
    move v11, v5

    .end local v5           #i:I
    .local v11, i:I
    :goto_0
    move v0, v11

    move/from16 v1, p5

    if-ge v0, v1, :cond_0

    .line 460
    mul-int/lit8 v5, v11, 0x2

    add-int/lit8 v5, v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    .line 461
    .local v5, color:I
    sget-object v6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    mul-int/lit8 v7, v11, 0x2

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 462
    sget-object v6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 463
    sget-object v5, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    .end local v5           #color:I
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 464
    sget-object v6, Lcom/android/vending/velvet/ArcPaintingUtils;->sArcOvalRectangle:Landroid/graphics/RectF;

    move/from16 v0, p4

    neg-float v0, v0

    move v7, v0

    const/high16 v5, 0x4000

    mul-float v8, v5, p4

    const/4 v9, 0x0

    sget-object v10, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 459
    add-int/lit8 v5, v11, 0x1

    .end local v11           #i:I
    .local v5, i:I
    move v11, v5

    .end local v5           #i:I
    .restart local v11       #i:I
    goto :goto_0

    .line 468
    :cond_0
    sget-object p5, Lcom/android/vending/velvet/ArcPaintingUtils;->sClipPath:Landroid/graphics/Path;

    .end local p5
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->reset()V

    .line 469
    sget-object p5, Lcom/android/vending/velvet/ArcPaintingUtils;->sClipPath:Landroid/graphics/Path;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p5

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 470
    sget-object p5, Lcom/android/vending/velvet/ArcPaintingUtils;->sClipPath:Landroid/graphics/Path;

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 p3, v0

    const/4 v5, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 471
    .end local p3
    sget-object p3, Lcom/android/vending/velvet/ArcPaintingUtils;->sClipPath:Landroid/graphics/Path;

    sget-object p5, Lcom/android/vending/velvet/ArcPaintingUtils;->sArcOvalRectangle:Landroid/graphics/RectF;

    move/from16 v0, p4

    neg-float v0, v0

    move v5, v0

    const/high16 v6, 0x4000

    mul-float p4, p4, v6

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move v2, v5

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 472
    .end local p4           #angle:F
    sget-object p3, Lcom/android/vending/velvet/ArcPaintingUtils;->sClipPath:Landroid/graphics/Path;

    const/16 p4, 0x0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 p5, v0

    invoke-virtual/range {p3 .. p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 473
    sget-object p3, Lcom/android/vending/velvet/ArcPaintingUtils;->sClipPath:Landroid/graphics/Path;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->close()V

    .line 478
    invoke-static/range {p1 .. p2}, Lcom/android/vending/velvet/ArcPaintingUtils;->computeMinorArcOvalRect(II)V

    .line 479
    sget-object p3, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorArcOvalRectangle:Landroid/graphics/RectF;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    move/from16 v0, p3

    float-to-double v0, v0

    move-wide v13, v0

    .line 480
    .local v13, xp0:D
    sget-object p3, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorArcOvalRectangle:Landroid/graphics/RectF;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    move/from16 v0, p3

    float-to-double v0, v0

    move-wide/from16 v19, v0

    .line 481
    .local v19, yp0:D
    sget-object p3, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorArcOvalRectangle:Landroid/graphics/RectF;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    move/from16 v0, p3

    float-to-double v0, v0

    move-wide/from16 p3, v0

    const-wide/high16 v5, 0x4000

    div-double v9, p3, v5

    .line 484
    .local v9, r0:D
    sget-object p3, Lcom/android/vending/velvet/ArcPaintingUtils;->sArcOvalRectangle:Landroid/graphics/RectF;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    move/from16 v0, p3

    float-to-double v0, v0

    move-wide v15, v0

    .line 485
    .local v15, xp1:D
    sget-object p3, Lcom/android/vending/velvet/ArcPaintingUtils;->sArcOvalRectangle:Landroid/graphics/RectF;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    move/from16 v0, p3

    float-to-double v0, v0

    move-wide/from16 v21, v0

    .line 486
    .local v21, yp1:D
    sget-object p3, Lcom/android/vending/velvet/ArcPaintingUtils;->sArcOvalRectangle:Landroid/graphics/RectF;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    move/from16 v0, p3

    float-to-double v0, v0

    move-wide/from16 p3, v0

    const-wide/high16 v5, 0x4000

    div-double v11, p3, v5

    .line 491
    .local v11, r1:D
    sub-double p3, v13, v15

    sub-double v5, v13, v15

    mul-double p3, p3, v5

    sub-double v5, v19, v21

    sub-double v7, v19, v21

    mul-double/2addr v5, v7

    add-double p3, p3, v5

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 492
    .local v5, d:D
    mul-double p3, v9, v9

    mul-double v7, v11, v11

    sub-double p3, p3, v7

    mul-double v7, v5, v5

    add-double p3, p3, v7

    const-wide/high16 v7, 0x4000

    mul-double/2addr v7, v5

    div-double p3, p3, v7

    .line 493
    .local p3, a:D
    mul-double v7, v9, v9

    mul-double v17, p3, p3

    sub-double v7, v7, v17

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 495
    .local v7, h:D
    sub-double v17, v15, v13

    mul-double v17, v17, p3

    div-double v17, v17, v5

    add-double v17, v17, v13

    .line 496
    .local v17, xp2:D
    sub-double v23, v21, v19

    mul-double p3, p3, v23

    div-double p3, p3, v5

    add-double p3, p3, v19

    .line 498
    .local p3, yp2:D
    sub-double v23, v15, v13

    mul-double v23, v23, v7

    div-double v23, v23, v5

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(D)D

    move-result-wide v23

    add-double p3, p3, v23

    .line 499
    .local p3, yp3:D
    sub-double p3, v21, v19

    mul-double p3, p3, v7

    div-double p3, p3, v5

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->abs(D)D

    .end local p3           #yp3:D
    move-result-wide p3

    add-double p4, v17, p3

    .line 505
    .local p4, xp3:D
    sget-object p3, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorBackgroundPath:Landroid/graphics/Path;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 506
    sget-object p3, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorBackgroundPath:Landroid/graphics/Path;

    const v5, 0x3dcccccd

    move/from16 v0, p1

    int-to-float v0, v0

    move v6, v0

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 507
    .end local v5           #d:D
    const-wide v5, 0x4056800000000000L

    const-wide v7, 0x4066800000000000L

    sub-double v17, v13, p4

    div-double v17, v17, v9

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->asin(D)D

    .end local v7           #h:D
    .end local v17           #xp2:D
    move-result-wide v17

    mul-double v7, v7, v17

    const-wide v17, 0x400921fb54442d18L

    div-double v7, v7, v17

    add-double/2addr v5, v7

    move-wide v0, v5

    double-to-float v0, v0

    move/from16 p3, v0

    .line 508
    .local p3, alpha:F
    const-wide v5, 0x4056800000000000L

    const-wide v7, 0x4066800000000000L

    const v17, 0x3dcccccd

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    sub-double v13, v13, v17

    div-double v9, v13, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->asin(D)D

    .end local v9           #r0:D
    .end local v13           #xp0:D
    move-result-wide v9

    mul-double/2addr v7, v9

    const-wide v9, 0x400921fb54442d18L

    div-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-float v9, v5

    .line 509
    .local v9, beta:F
    sget-object v5, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorBackgroundPath:Landroid/graphics/Path;

    sget-object v6, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorArcOvalRectangle:Landroid/graphics/RectF;

    sub-float v7, p3, v9

    invoke-virtual {v5, v6, v9, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 510
    const-wide v5, 0x4056800000000000L

    const-wide v7, 0x4066800000000000L

    sub-double p4, v15, p4

    div-double p4, p4, v11

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->asin(D)D

    .end local p4           #xp3:D
    move-result-wide p4

    mul-double p4, p4, v7

    const-wide v7, 0x400921fb54442d18L

    div-double p4, p4, v7

    add-double p4, p4, v5

    move-wide/from16 v0, p4

    double-to-float v0, v0

    move/from16 p4, v0

    .line 511
    .local p4, alpha1:F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 p5, v0

    const/high16 v5, 0x4000

    div-float p5, p5, v5

    sget-object v5, Lcom/android/vending/velvet/ArcPaintingUtils;->sArcOvalRectangle:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    move/from16 v0, p5

    move v1, v5

    invoke-static {v0, v1}, Lcom/android/vending/velvet/ArcPaintingUtils;->getArcAngleForRightCurve(FF)F

    move-result p5

    .line 513
    .local p5, beta1:F
    sget-object v5, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorBackgroundPath:Landroid/graphics/Path;

    sget-object v6, Lcom/android/vending/velvet/ArcPaintingUtils;->sArcOvalRectangle:Landroid/graphics/RectF;

    move/from16 v0, p4

    neg-float v0, v0

    move v7, v0

    sub-float p5, v7, p5

    move-object v0, v5

    move-object v1, v6

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 514
    .end local p5           #beta1:F
    sget-object p4, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorBackgroundPath:Landroid/graphics/Path;

    .end local p4           #alpha1:F
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->close()V

    .line 516
    sget-object v8, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorArcOvalRectangle:Landroid/graphics/RectF;

    sub-float v10, p3, v9

    sget-object v11, Lcom/android/vending/velvet/ArcPaintingUtils;->sMinorBackgroundPath:Landroid/graphics/Path;

    .end local v11           #r1:D
    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-static/range {v5 .. v11}, Lcom/android/vending/velvet/ArcPaintingUtils;->drawSwooshes(Landroid/graphics/Canvas;IILandroid/graphics/RectF;FFLandroid/graphics/Path;)V

    .line 518
    return-void
.end method

.method private static drawSwooshes(Landroid/graphics/Canvas;IILandroid/graphics/RectF;FFLandroid/graphics/Path;)V
    .locals 6
    .parameter "canvas"
    .parameter "canvasWidth"
    .parameter "canvasHeight"
    .parameter "minorArcOvalRect"
    .parameter "minorArcStartAngle"
    .parameter "minorArcSweepAngle"
    .parameter "minorPath"

    .prologue
    .line 196
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 199
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 202
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sFullRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 203
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sFullRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 204
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sFullRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 205
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sFullRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 206
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sFillGradient1:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 207
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sClipPath:Landroid/graphics/Path;

    sget-object v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 209
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 210
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sClipPath:Landroid/graphics/Path;

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 213
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 214
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 215
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    const/high16 v2, 0x3f00

    int-to-float v3, p2

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 216
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    const v1, 0x3eb33333

    int-to-float v2, p1

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f40

    int-to-float v3, p2

    mul-float/2addr v2, v3

    const v3, 0x3f266666

    int-to-float v4, p1

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f40

    int-to-float v5, p2

    mul-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 218
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    const v1, 0x3dcccccd

    int-to-float v2, p1

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 219
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 220
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sFillGradient2:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 221
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    sget-object v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 224
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 225
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 226
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    const/high16 v2, 0x3e80

    int-to-float v3, p2

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 227
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    const/high16 v1, 0x3e80

    int-to-float v2, p1

    mul-float/2addr v1, v2

    const v2, 0x3d4ccccd

    int-to-float v3, p2

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    int-to-float v4, p1

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 228
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 229
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sFillGradient3:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 230
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    sget-object v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 233
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 234
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sFillGradient4:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 235
    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p6, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 236
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 237
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sClipPath:Landroid/graphics/Path;

    .end local p6
    invoke-virtual {p0, p6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 240
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {p6}, Landroid/graphics/Path;->reset()V

    .line 241
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    const/high16 v1, 0x3f00

    int-to-float v2, p2

    mul-float/2addr v1, v2

    invoke-virtual {p6, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 242
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    const v1, 0x3f266666

    int-to-float v2, p2

    mul-float/2addr v1, v2

    invoke-virtual {p6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 243
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    const v0, 0x3ecccccd

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const v1, 0x3f666666

    int-to-float v2, p2

    mul-float/2addr v1, v2

    int-to-float v2, p1

    const/high16 v3, 0x3f40

    int-to-float v4, p2

    mul-float/2addr v3, v4

    invoke-virtual {p6, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 245
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    const v0, 0x3e99999a

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f40

    int-to-float v2, p2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3f00

    int-to-float v4, p2

    mul-float/2addr v3, v4

    invoke-virtual {p6, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 246
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    .line 247
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sFillGradient5:Landroid/graphics/LinearGradient;

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 248
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p6, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 251
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {p6}, Landroid/graphics/Path;->reset()V

    .line 252
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    const/high16 v1, 0x3e80

    int-to-float v2, p2

    mul-float/2addr v1, v2

    invoke-virtual {p6, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 253
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    const/high16 v0, 0x3e80

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const v1, 0x3d4ccccd

    int-to-float v2, p2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    int-to-float v3, p1

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p6, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 254
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 255
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x4000

    sget v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sScreenScaleFactor:F

    mul-float/2addr v0, v1

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 256
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 257
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    sget v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighDark1:I

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p6, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 261
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {p6}, Landroid/graphics/Path;->reset()V

    .line 262
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    const/high16 v1, 0x3e80

    int-to-float v2, p2

    mul-float/2addr v1, v2

    invoke-virtual {p6, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 263
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    const/high16 v0, 0x3e80

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const v1, 0x3d4ccccd

    int-to-float v2, p2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    int-to-float v3, p1

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p6, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 264
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    const v0, 0x3ee66666

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 265
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    const/high16 v0, 0x3e80

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const v1, 0x3d4ccccd

    int-to-float v2, p2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3e80

    int-to-float v4, p2

    mul-float/2addr v3, v4

    sget v4, Lcom/android/vending/velvet/ArcPaintingUtils;->sScreenScaleFactor:F

    sub-float/2addr v3, v4

    invoke-virtual {p6, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 267
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    .line 268
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 269
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 270
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    sget v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighLight2:I

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p6, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 274
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {p6}, Landroid/graphics/Path;->reset()V

    .line 275
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    const v1, 0x3f266666

    int-to-float v2, p2

    mul-float/2addr v1, v2

    invoke-virtual {p6, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 276
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    const v0, 0x3ecccccd

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const v1, 0x3f666666

    int-to-float v2, p2

    mul-float/2addr v1, v2

    int-to-float v2, p1

    const/high16 v3, 0x3f40

    int-to-float v4, p2

    mul-float/2addr v3, v4

    sget v4, Lcom/android/vending/velvet/ArcPaintingUtils;->sScreenScaleFactor:F

    add-float/2addr v3, v4

    invoke-virtual {p6, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 278
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 279
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x4000

    sget v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sScreenScaleFactor:F

    mul-float/2addr v0, v1

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 280
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sHighlightGradient3:Landroid/graphics/LinearGradient;

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 281
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p6, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 284
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {p6}, Landroid/graphics/Path;->reset()V

    .line 285
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    const/high16 v1, 0x3f00

    int-to-float v2, p2

    mul-float/2addr v1, v2

    invoke-virtual {p6, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 286
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    const v0, 0x3e99999a

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f40

    int-to-float v2, p2

    mul-float/2addr v1, v2

    int-to-float v2, p1

    const/high16 v3, 0x3f40

    int-to-float v4, p2

    mul-float/2addr v3, v4

    invoke-virtual {p6, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 288
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 289
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x4020

    sget v1, Lcom/android/vending/velvet/ArcPaintingUtils;->sScreenScaleFactor:F

    mul-float/2addr v0, v1

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 290
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sHighlightGradient4:Landroid/graphics/LinearGradient;

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 291
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    sget-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p6, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 294
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {p6}, Landroid/graphics/Path;->reset()V

    .line 295
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    const/high16 v1, 0x3f00

    int-to-float v2, p2

    mul-float/2addr v1, v2

    sget v2, Lcom/android/vending/velvet/ArcPaintingUtils;->sScreenScaleFactor:F

    sub-float/2addr v1, v2

    invoke-virtual {p6, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 296
    sget-object p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    const v0, 0x3e99999a

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f40

    int-to-float v2, p2

    mul-float/2addr v1, v2

    sget v2, Lcom/android/vending/velvet/ArcPaintingUtils;->sScreenScaleFactor:F

    sub-float/2addr v1, v2

    int-to-float p1, p1

    const/high16 v2, 0x3f40

    int-to-float p2, p2

    mul-float/2addr p2, v2

    sget v2, Lcom/android/vending/velvet/ArcPaintingUtils;->sScreenScaleFactor:F

    .end local p1
    .end local p2
    sub-float/2addr p2, v2

    invoke-virtual {p6, v0, v1, p1, p2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 298
    sget-object p1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 299
    sget-object p1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    sget p2, Lcom/android/vending/velvet/ArcPaintingUtils;->sScreenScaleFactor:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 300
    sget-object p1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object p2, Lcom/android/vending/velvet/ArcPaintingUtils;->sHighlightGradient5:Landroid/graphics/LinearGradient;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 301
    sget-object p1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    sget-object p2, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 304
    sget-object p1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 305
    sget-object p1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {p1, p3, p4, p5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 306
    sget-object p1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 307
    sget-object p1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x4020

    sget p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sScreenScaleFactor:F

    mul-float/2addr p2, p6

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 308
    sget-object p1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object p2, Lcom/android/vending/velvet/ArcPaintingUtils;->sHighlightGradient6:Landroid/graphics/LinearGradient;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 309
    sget-object p1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    sget-object p2, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 312
    iget p1, p3, Landroid/graphics/RectF;->left:F

    const/high16 p2, 0x4000

    sget p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sScreenScaleFactor:F

    mul-float/2addr p2, p6

    add-float/2addr p1, p2

    iput p1, p3, Landroid/graphics/RectF;->left:F

    .line 313
    iget p1, p3, Landroid/graphics/RectF;->right:F

    const/high16 p2, 0x4000

    sget p6, Lcom/android/vending/velvet/ArcPaintingUtils;->sScreenScaleFactor:F

    mul-float/2addr p2, p6

    add-float/2addr p1, p2

    iput p1, p3, Landroid/graphics/RectF;->right:F

    .line 314
    sget-object p1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 315
    sget-object p1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {p1, p3, p4, p5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 316
    sget-object p1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 317
    sget-object p1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x4000

    sget p3, Lcom/android/vending/velvet/ArcPaintingUtils;->sScreenScaleFactor:F

    .end local p3
    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 318
    sget-object p1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object p2, Lcom/android/vending/velvet/ArcPaintingUtils;->sHighlightGradient7:Landroid/graphics/LinearGradient;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 319
    sget-object p1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPath:Landroid/graphics/Path;

    sget-object p2, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 321
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 324
    sget-object p0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundPaint:Landroid/graphics/Paint;

    .end local p0
    const/high16 p1, -0x100

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    return-void
.end method

.method public static drawTrackerOverlay(Landroid/graphics/Canvas;II)V
    .locals 8
    .parameter "canvas"
    .parameter "canvasWidth"
    .parameter "canvasHeight"

    .prologue
    const/4 v7, 0x0

    .line 623
    sget-object v5, Lcom/android/vending/velvet/ArcPaintingUtils;->sOverlayBitmapRef:Ljava/lang/ref/SoftReference;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/vending/velvet/ArcPaintingUtils;->sOverlayBitmapRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object v1, v5

    .line 624
    .local v1, overlayBitmap:Landroid/graphics/Bitmap;
    :goto_0
    if-nez v1, :cond_0

    .line 625
    invoke-static {}, Lcom/android/vending/velvet/ArcPaintingUtils;->createOverlayBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 628
    :cond_0
    if-nez v1, :cond_2

    .line 644
    :goto_1
    return-void

    .end local v1           #overlayBitmap:Landroid/graphics/Bitmap;
    :cond_1
    move-object v1, v7

    .line 623
    goto :goto_0

    .line 632
    .restart local v1       #overlayBitmap:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 633
    sget-object v5, Lcom/android/vending/velvet/ArcPaintingUtils;->sClipPath:Landroid/graphics/Path;

    invoke-virtual {p0, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 635
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 636
    .local v2, width:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 637
    .local v0, height:I
    const/4 v3, 0x0

    .local v3, x:I
    :goto_2
    if-ge v3, p1, :cond_4

    .line 638
    const/4 v4, 0x0

    .local v4, y:I
    :goto_3
    if-ge v4, p2, :cond_3

    .line 639
    int-to-float v5, v3

    int-to-float v6, v4

    invoke-virtual {p0, v1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 638
    add-int/2addr v4, v0

    goto :goto_3

    .line 637
    :cond_3
    add-int/2addr v3, v2

    goto :goto_2

    .line 643
    .end local v4           #y:I
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1
.end method

.method public static getArcAngleForBottomCurve(FF)F
    .locals 6
    .parameter "xOffsetFromCenter"
    .parameter "curveRadius"

    .prologue
    .line 673
    const-wide v0, 0x4056800000000000L

    const-wide v2, 0x4066800000000000L

    div-float v4, p0, p1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static getArcAngleForRightCurve(FF)F
    .locals 4
    .parameter "yOffsetFromCenter"
    .parameter "curveRadius"

    .prologue
    .line 658
    const-wide v0, 0x4066800000000000L

    div-float v2, p0, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static getArcOvalRectangleForCurvedBottom(Landroid/graphics/RectF;IIII)V
    .locals 6
    .parameter "rect"
    .parameter "canvasWidth"
    .parameter "canvasHeight"
    .parameter "arcStart"
    .parameter "arcEnd"

    .prologue
    .line 116
    div-int/lit8 v1, p1, 0x2

    .line 117
    .local v1, xc:I
    mul-int v3, v1, v1

    sub-int v4, p3, p4

    sub-int v5, p3, p4

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    sub-int v4, p4, p3

    mul-int/lit8 v4, v4, 0x2

    div-int v0, v3, v4

    .line 118
    .local v0, r:I
    sub-int v2, p4, v0

    .line 120
    .local v2, yc:I
    sub-int v3, v1, v0

    int-to-float v3, v3

    iput v3, p0, Landroid/graphics/RectF;->left:F

    .line 121
    add-int v3, v1, v0

    int-to-float v3, v3

    iput v3, p0, Landroid/graphics/RectF;->right:F

    .line 122
    sub-int v3, v2, v0

    int-to-float v3, v3

    iput v3, p0, Landroid/graphics/RectF;->top:F

    .line 123
    add-int v3, v2, v0

    int-to-float v3, v3

    iput v3, p0, Landroid/graphics/RectF;->bottom:F

    .line 124
    return-void
.end method

.method public static getArcOvalRectangleForCurvedRight(Landroid/graphics/RectF;IIII)V
    .locals 6
    .parameter "rect"
    .parameter "canvasWidth"
    .parameter "canvasHeight"
    .parameter "arcStart"
    .parameter "arcEnd"

    .prologue
    .line 129
    div-int/lit8 v2, p2, 0x2

    .line 130
    .local v2, yc:I
    mul-int v3, v2, v2

    sub-int v4, p3, p4

    sub-int v5, p3, p4

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    sub-int v4, p4, p3

    mul-int/lit8 v4, v4, 0x2

    div-int v0, v3, v4

    .line 131
    .local v0, r:I
    sub-int v1, p4, v0

    .line 133
    .local v1, xc:I
    sub-int v3, v1, v0

    int-to-float v3, v3

    iput v3, p0, Landroid/graphics/RectF;->left:F

    .line 134
    add-int v3, v1, v0

    int-to-float v3, v3

    iput v3, p0, Landroid/graphics/RectF;->right:F

    .line 135
    sub-int v3, v2, v0

    int-to-float v3, v3

    iput v3, p0, Landroid/graphics/RectF;->top:F

    .line 136
    add-int v3, v2, v0

    int-to-float v3, v3

    iput v3, p0, Landroid/graphics/RectF;->bottom:F

    .line 137
    return-void
.end method

.method private static updateFillGradients(II)V
    .locals 14
    .parameter "canvasWidth"
    .parameter "canvasHeight"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x5

    const/4 v1, 0x0

    .line 140
    sget v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBaseGradientWidth:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBaseGradientHeight:I

    if-ne p1, v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    sput p0, Lcom/android/vending/velvet/ArcPaintingUtils;->sBaseGradientWidth:I

    .line 146
    sput p1, Lcom/android/vending/velvet/ArcPaintingUtils;->sBaseGradientHeight:I

    .line 148
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v2, p1

    int-to-float v3, p0

    div-int/lit8 v4, p1, 0x2

    int-to-float v4, v4

    new-array v5, v11, [I

    sget v6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorDark1:I

    aput v6, v5, v12

    sget v6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorMedium3:I

    aput v6, v5, v13

    const/4 v6, 0x2

    sget v7, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorMedium3:I

    aput v7, v5, v6

    const/4 v6, 0x3

    sget v7, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorMedium2:I

    aput v7, v5, v6

    new-array v6, v11, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    sput-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sFillGradient1:Landroid/graphics/LinearGradient;

    .line 152
    new-instance v0, Landroid/graphics/LinearGradient;

    const v2, 0x3f266666

    int-to-float v3, p0

    mul-float/2addr v3, v2

    const/high16 v2, 0x3f40

    int-to-float v4, p1

    mul-float/2addr v4, v2

    sget v5, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorMedium2:I

    sget v6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorMedium1:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    sput-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sFillGradient2:Landroid/graphics/LinearGradient;

    .line 154
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v2, 0x3e80

    int-to-float v3, p0

    mul-float/2addr v3, v2

    const v2, 0x3e99999a

    int-to-float v4, p1

    mul-float/2addr v4, v2

    sget v5, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorMedium2:I

    sget v6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorLight1:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    sput-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sFillGradient3:Landroid/graphics/LinearGradient;

    .line 156
    new-instance v2, Landroid/graphics/LinearGradient;

    int-to-float v3, p0

    sget v7, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorMedium1:I

    sget v8, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorLight1:I

    sget-object v9, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    sput-object v2, Lcom/android/vending/velvet/ArcPaintingUtils;->sFillGradient4:Landroid/graphics/LinearGradient;

    .line 158
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v3, p0

    sget v5, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorMedium3:I

    sget v6, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorLight1:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    sput-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sFillGradient5:Landroid/graphics/LinearGradient;

    .line 161
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v3, p0

    new-array v5, v10, [I

    sget v2, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighLight1:I

    aput v2, v5, v12

    sget v2, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorMedium3:I

    aput v2, v5, v13

    const/4 v2, 0x2

    sget v4, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighDark2:I

    aput v4, v5, v2

    const/4 v2, 0x3

    sget v4, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorLight1:I

    aput v4, v5, v2

    sget v2, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighLight2:I

    aput v2, v5, v11

    new-array v6, v10, [F

    fill-array-data v6, :array_1

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    sput-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sHighlightGradient3:Landroid/graphics/LinearGradient;

    .line 166
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v3, p0

    new-array v5, v10, [I

    sget v2, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighLight2:I

    aput v2, v5, v12

    sget v2, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighLight2:I

    aput v2, v5, v13

    const/4 v2, 0x2

    sget v4, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighLight1:I

    aput v4, v5, v2

    const/4 v2, 0x3

    sget v4, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighLightTransparent1:I

    aput v4, v5, v2

    sget v2, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighLightTransparent1:I

    aput v2, v5, v11

    new-array v6, v10, [F

    fill-array-data v6, :array_2

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    sput-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sHighlightGradient4:Landroid/graphics/LinearGradient;

    .line 171
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v3, p0

    new-array v5, v10, [I

    sget v2, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighDark2:I

    aput v2, v5, v12

    sget v2, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighDark2:I

    aput v2, v5, v13

    const/4 v2, 0x2

    sget v4, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighDark1:I

    aput v4, v5, v2

    const/4 v2, 0x3

    sget v4, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighDarkTransparent1:I

    aput v4, v5, v2

    sget v2, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighDarkTransparent1:I

    aput v2, v5, v11

    new-array v6, v10, [F

    fill-array-data v6, :array_3

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    sput-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sHighlightGradient5:Landroid/graphics/LinearGradient;

    .line 176
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v4, p1

    const/4 v2, 0x7

    new-array v5, v2, [I

    sget v2, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighDark2:I

    aput v2, v5, v12

    sget v2, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighDark2:I

    aput v2, v5, v13

    const/4 v2, 0x2

    sget v3, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighDark1:I

    aput v3, v5, v2

    const/4 v2, 0x3

    sget v3, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighDarkTransparent1:I

    aput v3, v5, v2

    sget v2, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighDarkTransparent1:I

    aput v2, v5, v11

    sget v2, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighDark1:I

    aput v2, v5, v10

    const/4 v2, 0x6

    sget v3, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighDark1:I

    aput v3, v5, v2

    const/4 v2, 0x7

    new-array v6, v2, [F

    fill-array-data v6, :array_4

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    sput-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sHighlightGradient6:Landroid/graphics/LinearGradient;

    .line 183
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v4, p1

    const/4 v2, 0x6

    new-array v5, v2, [I

    sget v2, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighLight2:I

    aput v2, v5, v12

    sget v2, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighLight1:I

    aput v2, v5, v13

    const/4 v2, 0x2

    sget v3, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighLightTransparent1:I

    aput v3, v5, v2

    const/4 v2, 0x3

    sget v3, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighLightTransparent1:I

    aput v3, v5, v2

    sget v2, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighLight1:I

    aput v2, v5, v11

    sget v2, Lcom/android/vending/velvet/ArcPaintingUtils;->sBackgroundColorHighLight1:I

    aput v2, v5, v10

    const/4 v2, 0x6

    new-array v6, v2, [F

    fill-array-data v6, :array_5

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    sput-object v0, Lcom/android/vending/velvet/ArcPaintingUtils;->sHighlightGradient7:Landroid/graphics/LinearGradient;

    goto/16 :goto_0

    .line 148
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x19t 0x3et
        0x33t 0x33t 0x33t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 161
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3et
        0x66t 0x66t 0xe6t 0x3et
        0x33t 0x33t 0x33t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 166
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3et
        0x66t 0x66t 0xe6t 0x3et
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 171
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3et
        0x66t 0x66t 0xe6t 0x3et
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 176
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3et
        0xcdt 0xcct 0xcct 0x3et
        0x66t 0x66t 0xe6t 0x3et
        0x33t 0x33t 0x33t 0x3ft
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 183
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0x3et
        0x66t 0x66t 0xe6t 0x3et
        0x33t 0x33t 0x33t 0x3ft
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
