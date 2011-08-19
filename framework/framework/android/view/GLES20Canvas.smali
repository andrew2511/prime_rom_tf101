.class Landroid/view/GLES20Canvas;
.super Landroid/view/HardwareCanvas;
.source "GLES20Canvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GLES20Canvas$CanvasFinalizer;
    }
.end annotation


# static fields
.field private static sIsAvailable:Z


# instance fields
.field private final mClipBounds:Landroid/graphics/Rect;

.field private mFilter:Landroid/graphics/DrawFilter;

.field private mFinalizer:Landroid/view/GLES20Canvas$CanvasFinalizer;

.field private mHeight:I

.field private final mLine:[F

.field private final mOpaque:Z

.field private final mPoint:[F

.field private mRenderer:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    invoke-static {}, Landroid/view/GLES20Canvas;->nIsAvailable()Z

    move-result v0

    sput-boolean v0, Landroid/view/GLES20Canvas;->sIsAvailable:Z

    return-void
.end method

.method constructor <init>(IZ)V
    .registers 4
    .parameter "layer"
    .parameter "translucent"

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/view/HardwareCanvas;-><init>()V

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mPoint:[F

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mLine:[F

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mClipBounds:Landroid/graphics/Rect;

    .line 85
    if-nez p2, :cond_23

    const/4 v0, 0x1

    :goto_17
    iput-boolean v0, p0, Landroid/view/GLES20Canvas;->mOpaque:Z

    .line 86
    invoke-static {p1}, Landroid/view/GLES20Canvas;->nCreateLayerRenderer(I)I

    move-result v0

    iput v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    .line 87
    invoke-direct {p0}, Landroid/view/GLES20Canvas;->setupFinalizer()V

    .line 88
    return-void

    .line 85
    :cond_23
    const/4 v0, 0x0

    goto :goto_17
.end method

.method constructor <init>(Z)V
    .registers 3
    .parameter "translucent"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/view/GLES20Canvas;-><init>(ZZ)V

    .line 79
    return-void
.end method

.method protected constructor <init>(ZZ)V
    .registers 4
    .parameter "record"
    .parameter "translucent"

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/view/HardwareCanvas;-><init>()V

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mPoint:[F

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mLine:[F

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mClipBounds:Landroid/graphics/Rect;

    .line 91
    if-nez p2, :cond_1d

    const/4 v0, 0x1

    :goto_17
    iput-boolean v0, p0, Landroid/view/GLES20Canvas;->mOpaque:Z

    .line 93
    invoke-virtual {p0, p1}, Landroid/view/GLES20Canvas;->setupRenderer(Z)V

    .line 94
    return-void

    .line 91
    :cond_1d
    const/4 v0, 0x0

    goto :goto_17
.end method

.method static synthetic access$000(I)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-static {p0}, Landroid/view/GLES20Canvas;->nDestroyRenderer(I)V

    return-void
.end method

.method static destroyDisplayList(I)V
    .registers 1
    .parameter "displayList"

    .prologue
    .line 242
    invoke-static {p0}, Landroid/view/GLES20Canvas;->nDestroyDisplayList(I)V

    .line 243
    return-void
.end method

.method static isAvailable()Z
    .registers 1

    .prologue
    .line 67
    sget-boolean v0, Landroid/view/GLES20Canvas;->sIsAvailable:Z

    return v0
.end method

.method private static native nCallDrawGLFunction(II)Z
.end method

.method private static native nClipRect(IFFFFI)Z
.end method

.method private static native nClipRect(IIIIII)Z
.end method

.method private static native nConcatMatrix(II)V
.end method

.method static native nCreateLayer(IIZ[I)I
.end method

.method private static native nCreateLayerRenderer(I)I
.end method

.method private static native nCreateRenderer()I
.end method

.method private static native nDestroyDisplayList(I)V
.end method

.method static native nDestroyLayer(I)V
.end method

.method static native nDestroyLayerDeferred(I)V
.end method

.method private static native nDestroyRenderer(I)V
.end method

.method private static native nDrawArc(IFFFFFFZI)V
.end method

.method private static native nDrawBitmap(II[BFFFFFFFFI)V
.end method

.method private static native nDrawBitmap(II[BFFI)V
.end method

.method private static native nDrawBitmap(II[BII)V
.end method

.method private static native nDrawBitmapMesh(II[BII[FI[III)V
.end method

.method private static native nDrawCircle(IFFFI)V
.end method

.method private static native nDrawColor(III)V
.end method

.method private static native nDrawDisplayList(IIIILandroid/graphics/Rect;)Z
.end method

.method private static native nDrawLayer(IIFFI)V
.end method

.method private static native nDrawLines(I[FIII)V
.end method

.method private static native nDrawOval(IFFFFI)V
.end method

.method private static native nDrawPatch(II[B[BFFFFI)V
.end method

.method private static native nDrawPath(III)V
.end method

.method private static native nDrawRect(IFFFFI)V
.end method

.method private static native nDrawRects(III)V
.end method

.method private static native nDrawRoundRect(IFFFFFFI)V
.end method

.method private static native nDrawText(ILjava/lang/String;IIFFII)V
.end method

.method private static native nDrawText(I[CIIFFII)V
.end method

.method private static native nDrawTextRun(ILjava/lang/String;IIIIFFII)V
.end method

.method private static native nDrawTextRun(I[CIIIIFFII)V
.end method

.method private static native nFinish(I)V
.end method

.method private static native nGetClipBounds(ILandroid/graphics/Rect;)Z
.end method

.method private static native nGetDisplayList(I)I
.end method

.method private static native nGetDisplayListRenderer(I)I
.end method

.method private static native nGetMatrix(I)I
.end method

.method private static native nGetMatrix(II)V
.end method

.method private static native nGetSaveCount(I)I
.end method

.method private static native nInterrupt(I)V
.end method

.method private static native nIsAvailable()Z
.end method

.method private static native nPrepare(IZ)V
.end method

.method private static native nPrepareDirty(IIIIIZ)V
.end method

.method private static native nPreserveBackBuffer()Z
.end method

.method private static native nQuickReject(IFFFFI)Z
.end method

.method private static native nResetModifiers(I)V
.end method

.method static native nResizeLayer(III[I)V
.end method

.method private static native nRestore(I)V
.end method

.method private static native nRestoreToCount(II)V
.end method

.method private static native nResume(I)V
.end method

.method private static native nRotate(IF)V
.end method

.method private static native nSave(II)I
.end method

.method private static native nSaveLayer(IFFFFII)I
.end method

.method private static native nSaveLayerAlpha(IFFFFII)I
.end method

.method private static native nScale(IFF)V
.end method

.method private static native nSetMatrix(II)V
.end method

.method private static native nSetViewport(III)V
.end method

.method private static native nSetupColorFilter(II)V
.end method

.method private static native nSetupShader(II)V
.end method

.method private static native nSetupShadow(IFFFI)V
.end method

.method private static native nSkew(IFF)V
.end method

.method private static native nTranslate(IFF)V
.end method

.method public static preserveBackBuffer()Z
    .registers 1

    .prologue
    .line 199
    invoke-static {}, Landroid/view/GLES20Canvas;->nPreserveBackBuffer()Z

    move-result v0

    return v0
.end method

.method private setupColorFilter(Landroid/graphics/Paint;)Z
    .registers 5
    .parameter "paint"

    .prologue
    .line 996
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 997
    .local v0, filter:Landroid/graphics/ColorFilter;
    if-eqz v0, :cond_f

    .line 998
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v2, v0, Landroid/graphics/ColorFilter;->nativeColorFilter:I

    invoke-static {v1, v2}, Landroid/view/GLES20Canvas;->nSetupColorFilter(II)V

    .line 999
    const/4 v1, 0x1

    .line 1001
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private setupFinalizer()V
    .registers 3

    .prologue
    .line 107
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    if-nez v0, :cond_c

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not create GLES20Canvas renderer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_c
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mFinalizer:Landroid/view/GLES20Canvas$CanvasFinalizer;

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas$CanvasFinalizer;->getFinalizer(Landroid/view/GLES20Canvas$CanvasFinalizer;I)Landroid/view/GLES20Canvas$CanvasFinalizer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mFinalizer:Landroid/view/GLES20Canvas$CanvasFinalizer;

    .line 112
    return-void
.end method

.method private setupModifiers(Landroid/graphics/Paint;)Z
    .registers 10
    .parameter "paint"

    .prologue
    .line 972
    const/4 v1, 0x0

    .line 974
    .local v1, hasModifier:Z
    iget-boolean v3, p1, Landroid/graphics/Paint;->hasShadow:Z

    if-eqz v3, :cond_13

    .line 975
    iget v3, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v4, p1, Landroid/graphics/Paint;->shadowRadius:F

    iget v5, p1, Landroid/graphics/Paint;->shadowDx:F

    iget v6, p1, Landroid/graphics/Paint;->shadowDy:F

    iget v7, p1, Landroid/graphics/Paint;->shadowColor:I

    invoke-static {v3, v4, v5, v6, v7}, Landroid/view/GLES20Canvas;->nSetupShadow(IFFFI)V

    .line 977
    const/4 v1, 0x1

    .line 980
    :cond_13
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    .line 981
    .local v2, shader:Landroid/graphics/Shader;
    if-eqz v2, :cond_21

    .line 982
    iget v3, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v4, v2, Landroid/graphics/Shader;->native_shader:I

    invoke-static {v3, v4}, Landroid/view/GLES20Canvas;->nSetupShader(II)V

    .line 983
    const/4 v1, 0x1

    .line 986
    :cond_21
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 987
    .local v0, filter:Landroid/graphics/ColorFilter;
    if-eqz v0, :cond_2f

    .line 988
    iget v3, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v4, v0, Landroid/graphics/ColorFilter;->nativeColorFilter:I

    invoke-static {v3, v4}, Landroid/view/GLES20Canvas;->nSetupColorFilter(II)V

    .line 989
    const/4 v1, 0x1

    .line 992
    :cond_2f
    return v1
.end method


# virtual methods
.method public callDrawGLFunction(I)Z
    .registers 3
    .parameter "drawGLFunction"

    .prologue
    .line 226
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nCallDrawGLFunction(II)Z

    move-result v0

    return v0
.end method

.method public clipPath(Landroid/graphics/Path;)Z
    .registers 3
    .parameter "path"

    .prologue
    .line 287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    .registers 4
    .parameter "path"
    .parameter "op"

    .prologue
    .line 292
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clipRect(FFFF)Z
    .registers 11
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 297
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v5, v1, Landroid/graphics/Region$Op;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nClipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(FFFFLandroid/graphics/Region$Op;)Z
    .registers 12
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "op"

    .prologue
    .line 305
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v5, p5, Landroid/graphics/Region$Op;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nClipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(IIII)Z
    .registers 11
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 310
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v5, v1, Landroid/graphics/Region$Op;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nClipRect(IIIIII)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/Rect;)Z
    .registers 8
    .parameter "rect"

    .prologue
    .line 318
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v5, v5, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nClipRect(IIIIII)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .registers 9
    .parameter "rect"
    .parameter "op"

    .prologue
    .line 324
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nClipRect(IIIIII)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/RectF;)Z
    .registers 8
    .parameter "rect"

    .prologue
    .line 329
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v5, v5, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nClipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z
    .registers 9
    .parameter "rect"
    .parameter "op"

    .prologue
    .line 335
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nClipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRegion(Landroid/graphics/Region;)Z
    .registers 3
    .parameter "region"

    .prologue
    .line 340
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .registers 4
    .parameter "region"
    .parameter "op"

    .prologue
    .line 345
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public concat(Landroid/graphics/Matrix;)V
    .registers 4
    .parameter "matrix"

    .prologue
    .line 428
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nConcatMatrix(II)V

    .line 429
    return-void
.end method

.method public drawARGB(IIII)V
    .registers 7
    .parameter "a"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 542
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0xff

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/GLES20Canvas;->drawColor(I)V

    .line 543
    return-void
.end method

.method public drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .registers 16
    .parameter "oval"
    .parameter "startAngle"
    .parameter "sweepAngle"
    .parameter "useCenter"
    .parameter "paint"

    .prologue
    .line 530
    invoke-direct {p0, p5}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)Z

    move-result v9

    .line 531
    .local v9, hasModifier:Z
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v8, p5, Landroid/graphics/Paint;->mNativePaint:I

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v8}, Landroid/view/GLES20Canvas;->nDrawArc(IFFFFFFZI)V

    .line 533
    if-eqz v9, :cond_1d

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    .line 534
    :cond_1d
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .registers 12
    .parameter "bitmap"
    .parameter "left"
    .parameter "top"
    .parameter "paint"

    .prologue
    const/4 v1, 0x0

    .line 561
    if-eqz p4, :cond_21

    invoke-direct {p0, p4}, Landroid/view/GLES20Canvas;->setupColorFilter(Landroid/graphics/Paint;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    move v6, v0

    .line 562
    .local v6, hasColorFilter:Z
    :goto_b
    if-nez p4, :cond_23

    move v5, v1

    .line 563
    .local v5, nativePaint:I
    :goto_e
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-object v2, p1, Landroid/graphics/Bitmap;->mBuffer:[B

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nDrawBitmap(II[BFFI)V

    .line 564
    if-eqz v6, :cond_20

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    .line 565
    :cond_20
    return-void

    .end local v5           #nativePaint:I
    .end local v6           #hasColorFilter:Z
    :cond_21
    move v6, v1

    .line 561
    goto :goto_b

    .line 562
    .restart local v6       #hasColorFilter:Z
    :cond_23
    iget v0, p4, Landroid/graphics/Paint;->mNativePaint:I

    move v5, v0

    goto :goto_e
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .registers 10
    .parameter "bitmap"
    .parameter "matrix"
    .parameter "paint"

    .prologue
    const/4 v3, 0x0

    .line 573
    if-eqz p3, :cond_21

    invoke-direct {p0, p3}, Landroid/view/GLES20Canvas;->setupColorFilter(Landroid/graphics/Paint;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    move v0, v2

    .line 574
    .local v0, hasColorFilter:Z
    :goto_b
    if-nez p3, :cond_23

    move v1, v3

    .line 575
    .local v1, nativePaint:I
    :goto_e
    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v3, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-object v4, p1, Landroid/graphics/Bitmap;->mBuffer:[B

    iget v5, p2, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v2, v3, v4, v5, v1}, Landroid/view/GLES20Canvas;->nDrawBitmap(II[BII)V

    .line 577
    if-eqz v0, :cond_20

    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v2}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    .line 578
    :cond_20
    return-void

    .end local v0           #hasColorFilter:Z
    .end local v1           #nativePaint:I
    :cond_21
    move v0, v3

    .line 573
    goto :goto_b

    .line 574
    .restart local v0       #hasColorFilter:Z
    :cond_23
    iget v2, p3, Landroid/graphics/Paint;->mNativePaint:I

    move v1, v2

    goto :goto_e
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 24
    .parameter "bitmap"
    .parameter "src"
    .parameter "dst"
    .parameter "paint"

    .prologue
    .line 586
    if-eqz p4, :cond_62

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/view/GLES20Canvas;->setupColorFilter(Landroid/graphics/Paint;)Z

    move-result v2

    if-eqz v2, :cond_62

    const/4 v2, 0x1

    move v15, v2

    .line 587
    .local v15, hasColorFilter:Z
    :goto_e
    if-nez p4, :cond_65

    const/4 v2, 0x0

    move v13, v2

    .line 590
    .local v13, nativePaint:I
    :goto_12
    if-nez p2, :cond_6c

    .line 591
    const/16 v18, 0x0

    .local v18, top:I
    move/from16 v16, v18

    .line 592
    .local v16, left:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 593
    .local v17, right:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 601
    .local v14, bottom:I
    :goto_20
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GLES20Canvas;->mRenderer:I

    move v2, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    move v3, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/graphics/Bitmap;->mBuffer:[B

    move-object v4, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move v7, v0

    int-to-float v8, v14

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v9, v0

    int-to-float v9, v9

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v10, v0

    int-to-float v10, v10

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v11, v0

    int-to-float v11, v11

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v12, v0

    int-to-float v12, v12

    invoke-static/range {v2 .. v13}, Landroid/view/GLES20Canvas;->nDrawBitmap(II[BFFFFFFFFI)V

    .line 603
    if-eqz v15, :cond_61

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GLES20Canvas;->mRenderer:I

    move v2, v0

    invoke-static {v2}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    .line 604
    :cond_61
    return-void

    .line 586
    .end local v13           #nativePaint:I
    .end local v14           #bottom:I
    .end local v15           #hasColorFilter:Z
    .end local v16           #left:I
    .end local v17           #right:I
    .end local v18           #top:I
    :cond_62
    const/4 v2, 0x0

    move v15, v2

    goto :goto_e

    .line 587
    .restart local v15       #hasColorFilter:Z
    :cond_65
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v2, v0

    move v13, v2

    goto :goto_12

    .line 595
    .restart local v13       #nativePaint:I
    :cond_6c
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    .line 596
    .restart local v16       #left:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    .line 597
    .restart local v17       #right:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    .line 598
    .restart local v18       #top:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v14, v0

    .restart local v14       #bottom:I
    goto :goto_20
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 20
    .parameter "bitmap"
    .parameter "src"
    .parameter "dst"
    .parameter "paint"

    .prologue
    .line 609
    if-eqz p4, :cond_54

    move-object v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/view/GLES20Canvas;->setupColorFilter(Landroid/graphics/Paint;)Z

    move-result v2

    if-eqz v2, :cond_54

    const/4 v2, 0x1

    move v14, v2

    .line 610
    .local v14, hasColorFilter:Z
    :goto_d
    if-nez p4, :cond_57

    const/4 v2, 0x0

    move v13, v2

    .line 611
    .local v13, nativePaint:I
    :goto_11
    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    move v3, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/graphics/Bitmap;->mBuffer:[B

    move-object v4, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    int-to-float v6, v6

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v8, v0

    int-to-float v8, v8

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v9, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v10, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v11, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v12, v0

    invoke-static/range {v2 .. v13}, Landroid/view/GLES20Canvas;->nDrawBitmap(II[BFFFFFFFFI)V

    .line 613
    if-eqz v14, :cond_53

    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v2}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    .line 614
    :cond_53
    return-void

    .line 609
    .end local v13           #nativePaint:I
    .end local v14           #hasColorFilter:Z
    :cond_54
    const/4 v2, 0x0

    move v14, v2

    goto :goto_d

    .line 610
    .restart local v14       #hasColorFilter:Z
    :cond_57
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v2, v0

    move v13, v2

    goto :goto_11
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .registers 26
    .parameter "colors"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "hasAlpha"
    .parameter "paint"

    .prologue
    .line 624
    if-eqz p9, :cond_43

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-direct {v0, v1}, Landroid/view/GLES20Canvas;->setupColorFilter(Landroid/graphics/Paint;)Z

    move-result v2

    if-eqz v2, :cond_43

    const/4 v2, 0x1

    move v15, v2

    .line 625
    .local v15, hasColorFilter:Z
    :goto_e
    if-eqz p8, :cond_46

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v7, v2

    .local v7, config:Landroid/graphics/Bitmap$Config;
    :goto_13
    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    .line 626
    invoke-static/range {v2 .. v7}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 627
    .local v14, b:Landroid/graphics/Bitmap;
    if-nez p9, :cond_4a

    const/4 v2, 0x0

    move v13, v2

    .line 628
    .local v13, nativePaint:I
    :goto_25
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GLES20Canvas;->mRenderer:I

    move v8, v0

    iget v9, v14, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-object v10, v14, Landroid/graphics/Bitmap;->mBuffer:[B

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-static/range {v8 .. v13}, Landroid/view/GLES20Canvas;->nDrawBitmap(II[BFFI)V

    .line 629
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 630
    if-eqz v15, :cond_42

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GLES20Canvas;->mRenderer:I

    move v2, v0

    invoke-static {v2}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    .line 631
    :cond_42
    return-void

    .line 624
    .end local v7           #config:Landroid/graphics/Bitmap$Config;
    .end local v13           #nativePaint:I
    .end local v14           #b:Landroid/graphics/Bitmap;
    .end local v15           #hasColorFilter:Z
    :cond_43
    const/4 v2, 0x0

    move v15, v2

    goto :goto_e

    .line 625
    .restart local v15       #hasColorFilter:Z
    :cond_46
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v7, v2

    goto :goto_13

    .line 627
    .restart local v7       #config:Landroid/graphics/Bitmap$Config;
    .restart local v14       #b:Landroid/graphics/Bitmap;
    :cond_4a
    move-object/from16 v0, p9

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v2, v0

    move v13, v2

    goto :goto_25
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .registers 20
    .parameter "colors"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "hasAlpha"
    .parameter "paint"

    .prologue
    .line 637
    int-to-float v4, p4

    int-to-float v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/view/GLES20Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 638
    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .registers 24
    .parameter "bitmap"
    .parameter "meshWidth"
    .parameter "meshHeight"
    .parameter "verts"
    .parameter "vertOffset"
    .parameter "colors"
    .parameter "colorOffset"
    .parameter "paint"

    .prologue
    .line 643
    if-ltz p2, :cond_8

    if-ltz p3, :cond_8

    if-ltz p5, :cond_8

    if-gez p7, :cond_e

    .line 644
    :cond_8
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 647
    :cond_e
    if-eqz p2, :cond_12

    if-nez p3, :cond_13

    .line 663
    :cond_12
    :goto_12
    return-void

    .line 651
    :cond_13
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x1

    mul-int v13, v3, v4

    .line 652
    .local v13, count:I
    move-object/from16 v0, p4

    array-length v0, v0

    move v3, v0

    mul-int/lit8 v4, v13, 0x2

    move v0, v3

    move/from16 v1, p5

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/view/GLES20Canvas;->checkRange(III)V

    .line 655
    const/16 p6, 0x0

    .line 656
    const/16 p7, 0x0

    .line 658
    if-eqz p8, :cond_5e

    move-object v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Landroid/view/GLES20Canvas;->setupColorFilter(Landroid/graphics/Paint;)Z

    move-result v3

    if-eqz v3, :cond_5e

    const/4 v3, 0x1

    move v14, v3

    .line 659
    .local v14, hasColorFilter:Z
    :goto_37
    if-nez p8, :cond_61

    const/4 v3, 0x0

    move v12, v3

    .line 660
    .local v12, nativePaint:I
    :goto_3b
    iget v3, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    move v4, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/graphics/Bitmap;->mBuffer:[B

    move-object v5, v0

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v3 .. v12}, Landroid/view/GLES20Canvas;->nDrawBitmapMesh(II[BII[FI[III)V

    .line 662
    if-eqz v14, :cond_12

    iget v3, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v3}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    goto :goto_12

    .line 658
    .end local v12           #nativePaint:I
    .end local v14           #hasColorFilter:Z
    :cond_5e
    const/4 v3, 0x0

    move v14, v3

    goto :goto_37

    .line 659
    .restart local v14       #hasColorFilter:Z
    :cond_61
    move-object/from16 v0, p8

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v3, v0

    move v12, v3

    goto :goto_3b
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .registers 8
    .parameter "cx"
    .parameter "cy"
    .parameter "radius"
    .parameter "paint"

    .prologue
    .line 671
    invoke-direct {p0, p4}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)Z

    move-result v0

    .line 672
    .local v0, hasModifier:Z
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v2, p4, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, p1, p2, p3, v2}, Landroid/view/GLES20Canvas;->nDrawCircle(IFFFI)V

    .line 673
    if-eqz v0, :cond_12

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    .line 674
    :cond_12
    return-void
.end method

.method public drawColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 681
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/view/GLES20Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 682
    return-void
.end method

.method public drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 5
    .parameter "color"
    .parameter "mode"

    .prologue
    .line 686
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, p1, v1}, Landroid/view/GLES20Canvas;->nDrawColor(III)V

    .line 687
    return-void
.end method

.method public drawDisplayList(Landroid/view/DisplayList;IILandroid/graphics/Rect;)Z
    .registers 7
    .parameter "displayList"
    .parameter "width"
    .parameter "height"
    .parameter "dirty"

    .prologue
    .line 249
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    check-cast p1, Landroid/view/GLES20DisplayList;

    .end local p1
    iget v1, p1, Landroid/view/GLES20DisplayList;->mNativeDisplayList:I

    invoke-static {v0, v1, p2, p3, p4}, Landroid/view/GLES20Canvas;->nDrawDisplayList(IIIILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V
    .registers 11
    .parameter "layer"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    const/4 v5, 0x0

    .line 261
    move-object v0, p1

    check-cast v0, Landroid/view/GLES20Layer;

    move-object v1, v0

    .line 262
    .local v1, glLayer:Landroid/view/GLES20Layer;
    if-eqz p4, :cond_23

    invoke-direct {p0, p4}, Landroid/view/GLES20Canvas;->setupColorFilter(Landroid/graphics/Paint;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, 0x1

    move v2, v4

    .line 263
    .local v2, hasColorFilter:Z
    :goto_f
    if-nez p4, :cond_25

    move v3, v5

    .line 264
    .local v3, nativePaint:I
    :goto_12
    iget v4, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-virtual {v1}, Landroid/view/GLES20Layer;->getLayer()I

    move-result v5

    invoke-static {v4, v5, p2, p3, v3}, Landroid/view/GLES20Canvas;->nDrawLayer(IIFFI)V

    .line 265
    if-eqz v2, :cond_22

    iget v4, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v4}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    .line 266
    :cond_22
    return-void

    .end local v2           #hasColorFilter:Z
    .end local v3           #nativePaint:I
    :cond_23
    move v2, v5

    .line 262
    goto :goto_f

    .line 263
    .restart local v2       #hasColorFilter:Z
    :cond_25
    iget v4, p4, Landroid/graphics/Paint;->mNativePaint:I

    move v3, v4

    goto :goto_12
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .registers 9
    .parameter "startX"
    .parameter "startY"
    .parameter "stopX"
    .parameter "stopY"
    .parameter "paint"

    .prologue
    const/4 v2, 0x0

    .line 693
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mLine:[F

    aput p1, v0, v2

    .line 694
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mLine:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 695
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mLine:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 696
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mLine:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 697
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mLine:[F

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1, p5}, Landroid/view/GLES20Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 698
    return-void
.end method

.method public drawLines([FIILandroid/graphics/Paint;)V
    .registers 8
    .parameter "pts"
    .parameter "offset"
    .parameter "count"
    .parameter "paint"

    .prologue
    .line 702
    or-int v1, p2, p3

    if-ltz v1, :cond_9

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_11

    .line 703
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The lines array must contain 4 elements per line."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 705
    :cond_11
    invoke-direct {p0, p4}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)Z

    move-result v0

    .line 706
    .local v0, hasModifier:Z
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v2, p4, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, p1, p2, p3, v2}, Landroid/view/GLES20Canvas;->nDrawLines(I[FIII)V

    .line 707
    if-eqz v0, :cond_23

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    .line 708
    :cond_23
    return-void
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .registers 5
    .parameter "pts"
    .parameter "paint"

    .prologue
    .line 715
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/view/GLES20Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 716
    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 10
    .parameter "oval"
    .parameter "paint"

    .prologue
    .line 720
    invoke-direct {p0, p2}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)Z

    move-result v6

    .line 721
    .local v6, hasModifier:Z
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nDrawOval(IFFFFI)V

    .line 722
    if-eqz v6, :cond_1a

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    .line 723
    :cond_1a
    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .registers 9
    .parameter "paint"

    .prologue
    .line 730
    iget-object v6, p0, Landroid/view/GLES20Canvas;->mClipBounds:Landroid/graphics/Rect;

    .line 731
    .local v6, r:Landroid/graphics/Rect;
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v6}, Landroid/view/GLES20Canvas;->nGetClipBounds(ILandroid/graphics/Rect;)Z

    .line 732
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/GLES20Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 733
    return-void
.end method

.method public drawPatch(Landroid/graphics/Bitmap;[BLandroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 15
    .parameter "bitmap"
    .parameter "chunks"
    .parameter "dst"
    .parameter "paint"

    .prologue
    const/4 v1, 0x0

    .line 548
    if-eqz p4, :cond_28

    invoke-direct {p0, p4}, Landroid/view/GLES20Canvas;->setupColorFilter(Landroid/graphics/Paint;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    move v9, v0

    .line 549
    .local v9, hasColorFilter:Z
    :goto_b
    if-nez p4, :cond_2a

    move v8, v1

    .line 550
    .local v8, nativePaint:I
    :goto_e
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-object v2, p1, Landroid/graphics/Bitmap;->mBuffer:[B

    iget v4, p3, Landroid/graphics/RectF;->left:F

    iget v5, p3, Landroid/graphics/RectF;->top:F

    iget v6, p3, Landroid/graphics/RectF;->right:F

    iget v7, p3, Landroid/graphics/RectF;->bottom:F

    move-object v3, p2

    invoke-static/range {v0 .. v8}, Landroid/view/GLES20Canvas;->nDrawPatch(II[B[BFFFFI)V

    .line 552
    if-eqz v9, :cond_27

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    .line 553
    :cond_27
    return-void

    .end local v8           #nativePaint:I
    .end local v9           #hasColorFilter:Z
    :cond_28
    move v9, v1

    .line 548
    goto :goto_b

    .line 549
    .restart local v9       #hasColorFilter:Z
    :cond_2a
    iget v0, p4, Landroid/graphics/Paint;->mNativePaint:I

    move v8, v0

    goto :goto_e
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .registers 7
    .parameter "path"
    .parameter "paint"

    .prologue
    .line 737
    invoke-direct {p0, p2}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)Z

    move-result v0

    .line 738
    .local v0, hasModifier:Z
    iget-boolean v1, p1, Landroid/graphics/Path;->isSimplePath:Z

    if-eqz v1, :cond_1f

    .line 739
    iget-object v1, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v1, :cond_17

    .line 740
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget-object v2, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    iget v2, v2, Landroid/graphics/Region;->mNativeRegion:I

    iget v3, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v2, v3}, Landroid/view/GLES20Canvas;->nDrawRects(III)V

    .line 745
    :cond_17
    :goto_17
    if-eqz v0, :cond_1e

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    .line 746
    :cond_1e
    return-void

    .line 743
    :cond_1f
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v2, p1, Landroid/graphics/Path;->mNativePath:I

    iget v3, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v2, v3}, Landroid/view/GLES20Canvas;->nDrawPath(III)V

    goto :goto_17
.end method

.method public drawPicture(Landroid/graphics/Picture;)V
    .registers 3
    .parameter "picture"

    .prologue
    .line 753
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .registers 4
    .parameter "picture"
    .parameter "dst"

    .prologue
    .line 758
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .registers 4
    .parameter "picture"
    .parameter "dst"

    .prologue
    .line 763
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public drawPoint(FFLandroid/graphics/Paint;)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 768
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mPoint:[F

    aput p1, v0, v1

    .line 769
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mPoint:[F

    aput p2, v0, v2

    .line 770
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mPoint:[F

    invoke-virtual {p0, v0, v1, v2, p3}, Landroid/view/GLES20Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 771
    return-void
.end method

.method public drawPoints([FIILandroid/graphics/Paint;)V
    .registers 5
    .parameter "pts"
    .parameter "offset"
    .parameter "count"
    .parameter "paint"

    .prologue
    .line 776
    return-void
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .registers 5
    .parameter "pts"
    .parameter "paint"

    .prologue
    .line 780
    const/4 v0, 0x0

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/view/GLES20Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 781
    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .registers 4
    .parameter "text"
    .parameter "pos"
    .parameter "paint"

    .prologue
    .line 791
    return-void
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .registers 6
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "pos"
    .parameter "paint"

    .prologue
    .line 786
    return-void
.end method

.method public drawRGB(III)V
    .registers 6
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 815
    const/high16 v0, -0x100

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/GLES20Canvas;->drawColor(I)V

    .line 816
    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .registers 13
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 795
    invoke-direct {p0, p5}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)Z

    move-result v6

    .line 796
    .local v6, hasModifier:Z
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nDrawRect(IFFFFI)V

    .line 797
    if-eqz v6, :cond_16

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    .line 798
    :cond_16
    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 9
    .parameter "r"
    .parameter "paint"

    .prologue
    .line 805
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/GLES20Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 806
    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 9
    .parameter "r"
    .parameter "paint"

    .prologue
    .line 810
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/GLES20Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 811
    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .registers 14
    .parameter "rect"
    .parameter "rx"
    .parameter "ry"
    .parameter "paint"

    .prologue
    .line 820
    invoke-direct {p0, p4}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)Z

    move-result v8

    .line 821
    .local v8, hasModifier:Z
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v7, p4, Landroid/graphics/Paint;->mNativePaint:I

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v7}, Landroid/view/GLES20Canvas;->nDrawRoundRect(IFFFFFFI)V

    .line 823
    if-eqz v8, :cond_1c

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    .line 824
    :cond_1c
    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .registers 18
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 848
    move-object v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)Z

    move-result v10

    .line 850
    .local v10, hasModifier:Z
    :try_start_7
    instance-of v2, p1, Ljava/lang/String;

    if-nez v2, :cond_13

    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_13

    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_33

    .line 852
    :cond_13
    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move v8, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v9, v0

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-static/range {v2 .. v9}, Landroid/view/GLES20Canvas;->nDrawText(ILjava/lang/String;IIFFII)V
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_47

    .line 865
    :goto_2b
    if-eqz v10, :cond_32

    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v2}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    .line 867
    :cond_32
    return-void

    .line 854
    :cond_33
    :try_start_33
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_50

    .line 855
    move-object v0, p1

    check-cast v0, Landroid/text/GraphicsOperations;

    move-object v2, v0

    move-object v3, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V
    :try_end_46
    .catchall {:try_start_33 .. :try_end_46} :catchall_47

    goto :goto_2b

    .line 865
    :catchall_47
    move-exception v2

    if-eqz v10, :cond_4f

    iget v4, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v4}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    :cond_4f
    throw v2

    .line 858
    :cond_50
    sub-int v2, p3, p2

    :try_start_52
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v3

    .line 859
    .local v3, buf:[C
    const/4 v2, 0x0

    invoke-static {p1, p2, p3, v3, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 860
    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    const/4 v4, 0x0

    sub-int v5, p3, p2

    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move v8, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v9, v0

    move v6, p4

    move/from16 v7, p5

    invoke-static/range {v2 .. v9}, Landroid/view/GLES20Canvas;->nDrawText(I[CIIFFII)V

    .line 862
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->recycle([C)V
    :try_end_72
    .catchall {:try_start_52 .. :try_end_72} :catchall_47

    goto :goto_2b
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .registers 14
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 888
    invoke-direct {p0, p4}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)Z

    move-result v8

    .line 890
    .local v8, hasModifier:Z
    :try_start_4
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v6, p4, Landroid/graphics/Paint;->mBidiFlags:I

    iget v7, p4, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v7}, Landroid/view/GLES20Canvas;->nDrawText(ILjava/lang/String;IIFFII)V
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1d

    .line 893
    if-eqz v8, :cond_1c

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    .line 895
    :cond_1c
    return-void

    .line 893
    :catchall_1d
    move-exception v0

    if-eqz v8, :cond_25

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    :cond_25
    throw v0
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .registers 16
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 871
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_13

    .line 872
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 875
    :cond_13
    invoke-direct {p0, p6}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)Z

    move-result v8

    .line 877
    .local v8, hasModifier:Z
    :try_start_17
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v6, p6, Landroid/graphics/Paint;->mBidiFlags:I

    iget v7, p6, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Landroid/view/GLES20Canvas;->nDrawText(ILjava/lang/String;IIFFII)V
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_2d

    .line 879
    if-eqz v8, :cond_2c

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    .line 881
    :cond_2c
    return-void

    .line 879
    :catchall_2d
    move-exception v0

    if-eqz v8, :cond_35

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    :cond_35
    throw v0
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .registers 16
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 831
    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_11

    .line 832
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 835
    :cond_11
    invoke-direct {p0, p6}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)Z

    move-result v8

    .line 837
    .local v8, hasModifier:Z
    :try_start_15
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v6, p6, Landroid/graphics/Paint;->mBidiFlags:I

    iget v7, p6, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Landroid/view/GLES20Canvas;->nDrawText(I[CIIFFII)V
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_2b

    .line 839
    if-eqz v8, :cond_2a

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    .line 841
    :cond_2a
    return-void

    .line 839
    :catchall_2b
    move-exception v0

    if-eqz v8, :cond_33

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    :cond_33
    throw v0
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 6
    .parameter "text"
    .parameter "path"
    .parameter "hOffset"
    .parameter "vOffset"
    .parameter "paint"

    .prologue
    .line 906
    return-void
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 8
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "path"
    .parameter "hOffset"
    .parameter "vOffset"
    .parameter "paint"

    .prologue
    .line 901
    return-void
.end method

.method public drawTextRun(Ljava/lang/CharSequence;IIIIFFILandroid/graphics/Paint;)V
    .registers 26
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "x"
    .parameter "y"
    .parameter "dir"
    .parameter "paint"

    .prologue
    .line 933
    or-int v5, p2, p3

    sub-int v6, p3, p2

    or-int/2addr v5, v6

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sub-int v6, v6, p3

    or-int/2addr v5, v6

    if-gez v5, :cond_14

    .line 934
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 937
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-direct {v0, v1}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)Z

    move-result v15

    .line 939
    .local v15, hasModifier:Z
    if-nez p8, :cond_5d

    const/4 v5, 0x0

    move v13, v5

    .line 940
    .local v13, flags:I
    :goto_20
    :try_start_20
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/String;

    move v5, v0

    if-nez v5, :cond_35

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/SpannedString;

    move v5, v0

    if-nez v5, :cond_35

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/SpannableString;

    move v5, v0

    if-eqz v5, :cond_60

    .line 942
    :cond_35
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GLES20Canvas;->mRenderer:I

    move v5, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p9

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v14, v0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-static/range {v5 .. v14}, Landroid/view/GLES20Canvas;->nDrawTextRun(ILjava/lang/String;IIIIFFII)V
    :try_end_52
    .catchall {:try_start_20 .. :try_end_52} :catchall_80

    .line 957
    :goto_52
    if-eqz v15, :cond_5c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GLES20Canvas;->mRenderer:I

    move v5, v0

    invoke-static {v5}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    .line 959
    :cond_5c
    return-void

    .line 939
    .end local v13           #flags:I
    :cond_5d
    const/4 v5, 0x1

    move v13, v5

    goto :goto_20

    .line 944
    .restart local v13       #flags:I
    :cond_60
    :try_start_60
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/GraphicsOperations;

    move v5, v0

    if-eqz v5, :cond_8c

    .line 945
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/GraphicsOperations;

    move-object v5, v0

    move-object/from16 v6, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v14, p9

    invoke-interface/range {v5 .. v14}, Landroid/text/GraphicsOperations;->drawTextRun(Landroid/graphics/Canvas;IIIIFFILandroid/graphics/Paint;)V
    :try_end_7f
    .catchall {:try_start_60 .. :try_end_7f} :catchall_80

    goto :goto_52

    .line 957
    :catchall_80
    move-exception v5

    if-eqz v15, :cond_8b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GLES20Canvas;->mRenderer:I

    move v6, v0

    invoke-static {v6}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    :cond_8b
    throw v5

    .line 948
    :cond_8c
    sub-int v10, p5, p4

    .line 949
    .local v10, contextLen:I
    sub-int v8, p3, p2

    .line 950
    .local v8, len:I
    :try_start_90
    invoke-static {v10}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v6

    .line 951
    .local v6, buf:[C
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    move-object v3, v6

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 952
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GLES20Canvas;->mRenderer:I

    move v5, v0

    sub-int v7, p2, p4

    const/4 v9, 0x0

    move-object/from16 v0, p9

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v14, v0

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-static/range {v5 .. v14}, Landroid/view/GLES20Canvas;->nDrawTextRun(I[CIIIIFFII)V

    .line 954
    invoke-static {v6}, Landroid/graphics/TemporaryBuffer;->recycle([C)V
    :try_end_b7
    .catchall {:try_start_90 .. :try_end_b7} :catchall_80

    goto :goto_52
.end method

.method public drawTextRun([CIIIIFFILandroid/graphics/Paint;)V
    .registers 23
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "contextIndex"
    .parameter "contextCount"
    .parameter "x"
    .parameter "y"
    .parameter "dir"
    .parameter "paint"

    .prologue
    .line 911
    or-int v2, p2, p3

    array-length v3, p1

    sub-int/2addr v3, p2

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_f

    .line 912
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 914
    :cond_f
    if-eqz p8, :cond_33

    const/4 v2, 0x1

    move/from16 v0, p8

    move v1, v2

    if-eq v0, v1, :cond_33

    .line 915
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown direction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 918
    :cond_33
    move-object v0, p0

    move-object/from16 v1, p9

    invoke-direct {v0, v1}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)Z

    move-result v12

    .line 920
    .local v12, hasModifier:Z
    :try_start_3a
    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    move-object/from16 v0, p9

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v11, v0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v2 .. v11}, Landroid/view/GLES20Canvas;->nDrawTextRun(I[CIIIIFFII)V
    :try_end_52
    .catchall {:try_start_3a .. :try_end_52} :catchall_5a

    .line 923
    if-eqz v12, :cond_59

    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v2}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    .line 925
    :cond_59
    return-void

    .line 923
    :catchall_5a
    move-exception v2

    if-eqz v12, :cond_62

    iget v3, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v3}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    :cond_62
    throw v2
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .registers 13
    .parameter "mode"
    .parameter "vertexCount"
    .parameter "verts"
    .parameter "vertOffset"
    .parameter "texs"
    .parameter "texOffset"
    .parameter "colors"
    .parameter "colorOffset"
    .parameter "indices"
    .parameter "indexOffset"
    .parameter "indexCount"
    .parameter "paint"

    .prologue
    .line 969
    return-void
.end method

.method public getClipBounds(Landroid/graphics/Rect;)Z
    .registers 3
    .parameter "bounds"

    .prologue
    .line 350
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nGetClipBounds(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method getDisplayList()I
    .registers 2

    .prologue
    .line 236
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nGetDisplayList(I)I

    move-result v0

    return v0
.end method

.method public getDrawFilter()Landroid/graphics/DrawFilter;
    .registers 2

    .prologue
    .line 520
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mFilter:Landroid/graphics/DrawFilter;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 178
    iget v0, p0, Landroid/view/GLES20Canvas;->mHeight:I

    return v0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .registers 4
    .parameter "matrix"

    .prologue
    .line 421
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nGetMatrix(II)V

    .line 422
    return-void
.end method

.method public getNativeMatrix()I
    .registers 2

    .prologue
    .line 414
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nGetMatrix(I)I

    move-result v0

    return v0
.end method

.method public getSaveCount()I
    .registers 2

    .prologue
    .line 504
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nGetSaveCount(I)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 173
    iget v0, p0, Landroid/view/GLES20Canvas;->mWidth:I

    return v0
.end method

.method interrupt()V
    .registers 2

    .prologue
    .line 271
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nInterrupt(I)V

    .line 272
    return-void
.end method

.method public isOpaque()Z
    .registers 2

    .prologue
    .line 168
    iget-boolean v0, p0, Landroid/view/GLES20Canvas;->mOpaque:Z

    return v0
.end method

.method onPostDraw()V
    .registers 2

    .prologue
    .line 219
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nFinish(I)V

    .line 220
    return-void
.end method

.method onPreDraw(Landroid/graphics/Rect;)V
    .registers 8
    .parameter "dirty"

    .prologue
    .line 206
    if-eqz p1, :cond_12

    .line 207
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget-boolean v5, p0, Landroid/view/GLES20Canvas;->mOpaque:Z

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nPrepareDirty(IIIIIZ)V

    .line 211
    :goto_11
    return-void

    .line 209
    :cond_12
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget-boolean v1, p0, Landroid/view/GLES20Canvas;->mOpaque:Z

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nPrepare(IZ)V

    goto :goto_11
.end method

.method public quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z
    .registers 12
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "type"

    .prologue
    .line 357
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v5, p5, Landroid/graphics/Canvas$EdgeType;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nQuickReject(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z
    .registers 4
    .parameter "path"
    .parameter "type"

    .prologue
    .line 365
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z
    .registers 9
    .parameter "rect"
    .parameter "type"

    .prologue
    .line 370
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/GLES20Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    return v0
.end method

.method public restore()V
    .registers 2

    .prologue
    .line 490
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nRestore(I)V

    .line 491
    return-void
.end method

.method public restoreToCount(I)V
    .registers 3
    .parameter "saveCount"

    .prologue
    .line 497
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nRestoreToCount(II)V

    .line 498
    return-void
.end method

.method resume()V
    .registers 2

    .prologue
    .line 275
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nResume(I)V

    .line 276
    return-void
.end method

.method public rotate(F)V
    .registers 3
    .parameter "degrees"

    .prologue
    .line 393
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nRotate(IF)V

    .line 394
    return-void
.end method

.method public save()I
    .registers 3

    .prologue
    .line 439
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nSave(II)I

    move-result v0

    return v0
.end method

.method public save(I)I
    .registers 3
    .parameter "saveFlags"

    .prologue
    .line 444
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nSave(II)I

    move-result v0

    return v0
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;I)I
    .registers 16
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "paint"
    .parameter "saveFlags"

    .prologue
    const/4 v1, 0x0

    .line 457
    cmpg-float v0, p1, p3

    if-gez v0, :cond_30

    cmpg-float v0, p2, p4

    if-gez v0, :cond_30

    .line 458
    if-eqz p5, :cond_2a

    invoke-direct {p0, p5}, Landroid/view/GLES20Canvas;->setupColorFilter(Landroid/graphics/Paint;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    move v8, v0

    .line 459
    .local v8, hasColorFilter:Z
    :goto_13
    if-nez p5, :cond_2c

    move v5, v1

    .line 460
    .local v5, nativePaint:I
    :goto_16
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/view/GLES20Canvas;->nSaveLayer(IFFFFII)I

    move-result v7

    .line 461
    .local v7, count:I
    if-eqz v8, :cond_28

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nResetModifiers(I)V

    :cond_28
    move v0, v7

    .line 464
    .end local v5           #nativePaint:I
    .end local v7           #count:I
    .end local v8           #hasColorFilter:Z
    :goto_29
    return v0

    :cond_2a
    move v8, v1

    .line 458
    goto :goto_13

    .line 459
    .restart local v8       #hasColorFilter:Z
    :cond_2c
    iget v0, p5, Landroid/graphics/Paint;->mNativePaint:I

    move v5, v0

    goto :goto_16

    .line 464
    .end local v8           #hasColorFilter:Z
    :cond_30
    invoke-virtual {p0, p6}, Landroid/view/GLES20Canvas;->save(I)I

    move-result v0

    goto :goto_29
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
    .registers 11
    .parameter "bounds"
    .parameter "paint"
    .parameter "saveFlags"

    .prologue
    .line 451
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/view/GLES20Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    return v0
.end method

.method public saveLayerAlpha(FFFFII)I
    .registers 14
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "alpha"
    .parameter "saveFlags"

    .prologue
    .line 479
    cmpg-float v0, p1, p3

    if-gez v0, :cond_15

    cmpg-float v0, p2, p4

    if-gez v0, :cond_15

    .line 480
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/view/GLES20Canvas;->nSaveLayerAlpha(IFFFFII)I

    move-result v0

    .line 482
    :goto_14
    return v0

    :cond_15
    invoke-virtual {p0, p6}, Landroid/view/GLES20Canvas;->save(I)I

    move-result v0

    goto :goto_14
.end method

.method public saveLayerAlpha(Landroid/graphics/RectF;II)I
    .registers 11
    .parameter "bounds"
    .parameter "alpha"
    .parameter "saveFlags"

    .prologue
    .line 472
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/view/GLES20Canvas;->saveLayerAlpha(FFFFII)I

    move-result v0

    return v0
.end method

.method public scale(FF)V
    .registers 4
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 400
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1, p2}, Landroid/view/GLES20Canvas;->nScale(IFF)V

    .line 401
    return-void
.end method

.method public setDrawFilter(Landroid/graphics/DrawFilter;)V
    .registers 2
    .parameter "filter"

    .prologue
    .line 515
    iput-object p1, p0, Landroid/view/GLES20Canvas;->mFilter:Landroid/graphics/DrawFilter;

    .line 516
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .registers 4
    .parameter "matrix"

    .prologue
    .line 407
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nSetMatrix(II)V

    .line 408
    return-void
.end method

.method public setViewport(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 187
    iput p1, p0, Landroid/view/GLES20Canvas;->mWidth:I

    .line 188
    iput p2, p0, Landroid/view/GLES20Canvas;->mHeight:I

    .line 190
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1, p2}, Landroid/view/GLES20Canvas;->nSetViewport(III)V

    .line 191
    return-void
.end method

.method protected setupRenderer(Z)V
    .registers 3
    .parameter "record"

    .prologue
    .line 97
    if-eqz p1, :cond_e

    .line 98
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nGetDisplayListRenderer(I)I

    move-result v0

    iput v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    .line 103
    :goto_a
    invoke-direct {p0}, Landroid/view/GLES20Canvas;->setupFinalizer()V

    .line 104
    return-void

    .line 100
    :cond_e
    invoke-static {}, Landroid/view/GLES20Canvas;->nCreateRenderer()I

    move-result v0

    iput v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    goto :goto_a
.end method

.method public skew(FF)V
    .registers 4
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 386
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1, p2}, Landroid/view/GLES20Canvas;->nSkew(IFF)V

    .line 387
    return-void
.end method

.method public translate(FF)V
    .registers 5
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v1, 0x0

    .line 379
    cmpl-float v0, p1, v1

    if-nez v0, :cond_9

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_e

    :cond_9
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1, p2}, Landroid/view/GLES20Canvas;->nTranslate(IFF)V

    .line 380
    :cond_e
    return-void
.end method
