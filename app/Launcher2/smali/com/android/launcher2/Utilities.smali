.class final Lcom/android/launcher2/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Utilities$BubbleText;
    }
.end annotation


# static fields
.field private static final sBlurPaint:Landroid/graphics/Paint;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field static sColorIndex:I

.field static sColors:[I

.field private static final sDisabledPaint:Landroid/graphics/Paint;

.field private static final sGlowColorFocusedPaint:Landroid/graphics/Paint;

.field private static final sGlowColorPressedPaint:Landroid/graphics/Paint;

.field private static sIconContentSize:I

.field private static sIconHeight:I

.field private static sIconTextureHeight:I

.field private static sIconTextureWidth:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 52
    sput v0, Lcom/android/launcher2/Utilities;->sIconWidth:I

    .line 53
    sput v0, Lcom/android/launcher2/Utilities;->sIconHeight:I

    .line 54
    sput v0, Lcom/android/launcher2/Utilities;->sIconContentSize:I

    .line 55
    sput v0, Lcom/android/launcher2/Utilities;->sIconTextureWidth:I

    .line 56
    sput v0, Lcom/android/launcher2/Utilities;->sIconTextureHeight:I

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 66
    sget-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/Utilities;->sColors:[I

    .line 92
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/Utilities;->sColorIndex:I

    return-void

    .line 91
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    return-void
.end method

.method static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 103
    sget-object v6, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v6

    .line 104
    :try_start_0
    sget v1, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 105
    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    .line 108
    :cond_0
    sget v4, Lcom/android/launcher2/Utilities;->sIconWidth:I

    .line 109
    .local v4, width:I
    sget v3, Lcom/android/launcher2/Utilities;->sIconHeight:I

    .line 111
    .local v3, height:I
    instance-of v1, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v1, :cond_3

    .line 112
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object p1, v0

    .line 113
    .local p1, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 114
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 123
    .end local p1           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 124
    .local v2, sourceWidth:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 126
    .local v1, sourceHeight:I
    if-lez v2, :cond_6

    if-lez v2, :cond_6

    .line 128
    if-lt v4, v2, :cond_2

    if-ge v3, v1, :cond_5

    .line 130
    :cond_2
    int-to-float p1, v2

    int-to-float v5, v1

    div-float/2addr p1, v5

    .line 131
    .local p1, ratio:F
    if-le v2, v1, :cond_4

    .line 132
    int-to-float v1, v4

    div-float p1, v1, p1

    float-to-int p1, p1

    .end local v3           #height:I
    .local p1, height:I
    move v1, v4

    .end local v4           #width:I
    .local v1, width:I
    :goto_1
    move v2, p1

    .end local p1           #height:I
    .local v2, height:I
    move v5, v1

    .line 144
    .end local v1           #width:I
    .local v5, width:I
    :goto_2
    sget v3, Lcom/android/launcher2/Utilities;->sIconTextureWidth:I

    .line 145
    .local v3, textureWidth:I
    sget v4, Lcom/android/launcher2/Utilities;->sIconTextureHeight:I

    .line 147
    .local v4, textureHeight:I
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 149
    .local p1, bitmap:Landroid/graphics/Bitmap;
    sget-object v1, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 150
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    .line 153
    .local v3, left:I
    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 164
    .local v4, top:I
    sget-object v7, Lcom/android/launcher2/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 165
    add-int/2addr v5, v3

    add-int/2addr v2, v4

    invoke-virtual {p0, v3, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 166
    .end local v2           #height:I
    .end local v5           #width:I
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 167
    sget-object v1, Lcom/android/launcher2/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .end local v1           #canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 169
    monitor-exit v6

    return-object p1

    .line 115
    .local v3, height:I
    .local v4, width:I
    .local p1, context:Landroid/content/Context;
    :cond_3
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 117
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 118
    .local v2, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 119
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .end local p1           #context:Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 170
    .end local v2           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #height:I
    .end local v4           #width:I
    .end local p0
    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 133
    .local v1, sourceHeight:I
    .local v2, sourceWidth:I
    .restart local v3       #height:I
    .restart local v4       #width:I
    .restart local p0
    .local p1, ratio:F
    :cond_4
    if-le v1, v2, :cond_7

    .line 134
    int-to-float v1, v3

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .end local v4           #width:I
    .local p1, width:I
    move v1, p1

    .end local p1           #width:I
    .local v1, width:I
    move p1, v3

    .end local v3           #height:I
    .local p1, height:I
    goto :goto_1

    .line 136
    .end local p1           #height:I
    .local v1, sourceHeight:I
    .restart local v3       #height:I
    .restart local v4       #width:I
    :cond_5
    if-ge v2, v4, :cond_6

    if-ge v1, v3, :cond_6

    .line 138
    move v2, v2

    .line 139
    .end local v4           #width:I
    .local v2, width:I
    move p1, v1

    .end local v3           #height:I
    .restart local p1       #height:I
    move v5, v2

    .end local v2           #width:I
    .restart local v5       #width:I
    move v2, p1

    .end local p1           #height:I
    .local v2, height:I
    goto :goto_2

    .end local v5           #width:I
    .local v2, sourceWidth:I
    .restart local v3       #height:I
    .restart local v4       #width:I
    :cond_6
    move v2, v3

    .end local v3           #height:I
    .local v2, height:I
    move v5, v4

    .end local v4           #width:I
    .restart local v5       #width:I
    goto :goto_2

    .end local v5           #width:I
    .local v2, sourceWidth:I
    .restart local v3       #height:I
    .restart local v4       #width:I
    .local p1, ratio:F
    :cond_7
    move p1, v3

    .end local v3           #height:I
    .local p1, height:I
    move v1, v4

    .end local v4           #width:I
    .local v1, width:I
    goto :goto_1
.end method

.method static drawSelectedAllAppsBitmap(Landroid/graphics/Canvas;IIZLandroid/graphics/Bitmap;)V
    .locals 8
    .parameter "dest"
    .parameter "destWidth"
    .parameter "destHeight"
    .parameter "pressed"
    .parameter "src"

    .prologue
    .line 175
    sget-object v4, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v4

    .line 176
    :try_start_0
    sget v5, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 180
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Assertion failed: Utilities not initialized"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 194
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 183
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 185
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 186
    .local v3, xy:[I
    sget-object v5, Lcom/android/launcher2/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, v5, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    .local v0, mask:Landroid/graphics/Bitmap;
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, p1, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v1, v5

    .line 189
    .local v1, px:F
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, p2, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v2, v5

    .line 190
    .local v2, py:F
    const/4 v5, 0x0

    aget v5, v3, v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    const/4 v6, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    add-float/2addr v6, v2

    if-eqz p3, :cond_1

    sget-object v7, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p0, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 193
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 194
    monitor-exit v4

    .line 195
    return-void

    .line 190
    :cond_1
    sget-object v7, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static getIconContentSize()I
    .locals 1

    .prologue
    .line 95
    sget v0, Lcom/android/launcher2/Utilities;->sIconContentSize:I

    return v0
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/16 v9, 0x1e

    const/4 v8, 0x0

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 240
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 241
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 243
    .local v1, density:F
    const v4, 0x7f0d0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sput v4, Lcom/android/launcher2/Utilities;->sIconWidth:I

    .line 244
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    const v4, 0x7f0d001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/android/launcher2/Utilities;->sIconContentSize:I

    .line 247
    :cond_0
    sget v4, Lcom/android/launcher2/Utilities;->sIconWidth:I

    add-int/lit8 v4, v4, 0x2

    sput v4, Lcom/android/launcher2/Utilities;->sIconTextureHeight:I

    sput v4, Lcom/android/launcher2/Utilities;->sIconTextureWidth:I

    .line 249
    sget-object v4, Lcom/android/launcher2/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    const/high16 v6, 0x40a0

    mul-float/2addr v6, v1

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v6, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 250
    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x3d00

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 252
    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x7200

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 255
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 256
    .local v0, cm:Landroid/graphics/ColorMatrix;
    const v4, 0x3e4ccccd

    invoke-virtual {v0, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 257
    sget-object v4, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 258
    sget-object v4, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    const/16 v5, 0x88

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 259
    return-void
.end method

.method static resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"
    .parameter "context"

    .prologue
    .line 209
    sget-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v0

    .line 210
    :try_start_0
    sget v1, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 211
    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    .line 214
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget v2, Lcom/android/launcher2/Utilities;->sIconWidth:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget v2, Lcom/android/launcher2/Utilities;->sIconHeight:I

    if-ne v1, v2, :cond_1

    .line 215
    monitor-exit v0

    move-object v0, p0

    .line 217
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v1, p1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static roundToPow2(I)I
    .locals 3
    .parameter "n"

    .prologue
    .line 376
    move v1, p0

    .line 377
    .local v1, orig:I
    shr-int/lit8 p0, p0, 0x1

    .line 378
    const/high16 v0, 0x800

    .line 379
    .local v0, mask:I
    :goto_0
    if-eqz v0, :cond_0

    and-int v2, p0, v0

    if-nez v2, :cond_0

    .line 380
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 383
    or-int/2addr p0, v0

    .line 384
    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 386
    :cond_1
    add-int/lit8 p0, p0, 0x1

    .line 387
    if-eq p0, v1, :cond_2

    .line 388
    shl-int/lit8 p0, p0, 0x1

    .line 390
    :cond_2
    return p0
.end method
