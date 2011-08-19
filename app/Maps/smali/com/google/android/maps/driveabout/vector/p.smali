.class public Lcom/google/android/maps/driveabout/vector/p;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Landroid/graphics/Bitmap;

.field private c:I

.field private d:I

.field private final e:[I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:F

.field private j:F

.field private final k:Lcom/google/android/maps/driveabout/vector/u;

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->e:[I

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/p;->g:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/p;->h:Z

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/p;->m:I

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/p;->k:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->e:[I

    aput v1, v0, v1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/p;->l:I

    return-void
.end method

.method public static a(II)I
    .locals 1

    move v0, p1

    :goto_0
    if-ge v0, p0, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;Lcom/google/android/maps/driveabout/vector/x;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/vector/p;->a(II)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/vector/p;->a(II)I

    move-result v1

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/maps/driveabout/vector/x;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method static b(Landroid/graphics/Bitmap;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int v2, v0, v3

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    sub-int v0, v1, v3

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/p;->i:F

    return v0
.end method

.method public a(Landroid/content/res/Resources;I)V
    .locals 3

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/vector/p;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/p;->a(Landroid/graphics/Bitmap;II)V

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/p;->a:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/p;->a(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;II)V
    .locals 8

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/p;->b(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/p;->k:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/u;->i()Lcom/google/android/maps/driveabout/vector/x;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/p;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;Lcom/google/android/maps/driveabout/vector/x;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    move v7, v1

    move-object v1, v0

    :goto_0
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/p;->a(Landroid/graphics/Bitmap;IIZZZ)V

    if-eqz v7, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/p;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void

    :cond_1
    move v7, v4

    move-object v1, p1

    goto :goto_0
.end method

.method declared-synchronized a(Landroid/graphics/Bitmap;IIZZZ)V
    .locals 12

    monitor-enter p0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have both isMipMap and autoGenerateMipMap be true."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->k:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    if-eqz p6, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/p;->k:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/u;->x()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-nez p1, :cond_3

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/p;->c:I

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/p;->d:I

    const/4 v2, 0x1

    invoke-static {p2, v2}, Lcom/google/android/maps/driveabout/vector/p;->a(II)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {p3, v3}, Lcom/google/android/maps/driveabout/vector/p;->a(II)I

    move-result v3

    move v7, v3

    move v6, v2

    :goto_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/p;->k:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/u;->v()I

    move-result v2

    if-gt v6, v2, :cond_1

    if-le v7, v2, :cond_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Textures with dimensions"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " are larger than "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " the maximum supported size "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/p;->c:I

    if-eqz p5, :cond_4

    div-int/lit8 v2, p3, 0x2

    :goto_2
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/p;->d:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move v7, v3

    move v6, v2

    goto :goto_1

    :cond_4
    move v2, p3

    goto :goto_2

    :cond_5
    int-to-float v2, p2

    int-to-float v3, v6

    div-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/p;->i:F

    int-to-float v2, p3

    int-to-float v3, v7

    div-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/p;->j:F

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/p;->e:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-nez v2, :cond_6

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/p;->e:[I

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    :cond_6
    const/16 v2, 0xde1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/p;->e:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Z

    if-eqz v2, :cond_8

    const/16 v2, 0xde1

    const/16 v3, 0x2802

    const v4, 0x46240400

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    :goto_3
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/p;->g:Z

    if-eqz v2, :cond_9

    const/16 v2, 0xde1

    const/16 v3, 0x2803

    const v4, 0x46240400

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    :goto_4
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/p;->h:Z

    if-eqz v2, :cond_b

    if-nez p5, :cond_7

    if-eqz v1, :cond_a

    :cond_7
    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const v4, 0x461c0c00

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    :goto_5
    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const v4, 0x46180400

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    :goto_6
    if-eqz p1, :cond_11

    if-eqz p5, :cond_d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move v11, v3

    move v3, v1

    move v1, v11

    :goto_7
    if-lez v1, :cond_e

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v8, 0x0

    add-int v9, v1, v2

    invoke-direct {v5, v8, v2, v1, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p4, :cond_c

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/p;->k:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/vector/u;->i()Lcom/google/android/maps/driveabout/vector/x;

    move-result-object v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v9, v1, v1, v10}, Lcom/google/android/maps/driveabout/vector/x;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    :goto_8
    invoke-virtual {v4, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v10, 0x0

    invoke-virtual {v4, p1, v5, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/16 v4, 0xde1

    const v5, 0x8191

    const/4 v8, 0x0

    invoke-interface {v0, v4, v5, v8}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v4, 0xde1

    add-int/lit8 v5, v3, 0x1

    const/4 v8, 0x0

    invoke-static {v4, v3, v9, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    add-int/2addr v2, v1

    div-int/lit8 v1, v1, 0x2

    move v3, v5

    goto :goto_7

    :cond_8
    const/16 v2, 0xde1

    const/16 v3, 0x2802

    const v4, 0x47012f00

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    goto/16 :goto_3

    :cond_9
    const/16 v2, 0xde1

    const/16 v3, 0x2803

    const v4, 0x47012f00

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    goto/16 :goto_4

    :cond_a
    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const v4, 0x46180400

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    goto :goto_5

    :cond_b
    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const/high16 v4, 0x4618

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const/high16 v4, 0x4618

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    goto/16 :goto_6

    :cond_c
    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/p;->k:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/vector/u;->i()Lcom/google/android/maps/driveabout/vector/x;

    move-result-object v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v9, v1, v1, v10}, Lcom/google/android/maps/driveabout/vector/x;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_8

    :cond_d
    if-eqz v1, :cond_10

    const/16 v1, 0xde1

    const v2, 0x8191

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    :cond_e
    :goto_9
    if-nez p1, :cond_12

    mul-int v0, v6, v7

    mul-int/lit8 v0, v0, 0x3

    :goto_a
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/p;->m:I

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/p;->a:Z

    if-eqz v0, :cond_f

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/p;->b:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_f
    monitor-exit p0

    return-void

    :cond_10
    const/16 v1, 0xde1

    const v2, 0x8191

    const/4 v3, 0x0

    :try_start_2
    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto :goto_9

    :cond_11
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    const/16 v1, 0xde1

    const v2, 0x8191

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1907

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    goto :goto_9

    :cond_12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_a
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->k:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to bind texture into an OpenGL context other than the one it was created from."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->e:[I

    aget v0, v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/p;->e:[I

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Z

    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/p;->j:F

    return v0
.end method

.method public b(Landroid/content/res/Resources;I)V
    .locals 7

    const/4 v4, 0x0

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/vector/p;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v0, p0

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/p;->a(Landroid/graphics/Bitmap;IIZZZ)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/p;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;II)V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/p;->b(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/p;->k:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/u;->i()Lcom/google/android/maps/driveabout/vector/x;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/p;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;Lcom/google/android/maps/driveabout/vector/x;)Landroid/graphics/Bitmap;

    move-result-object v0

    move v7, v4

    move-object v8, v0

    :goto_0
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/p;->a(Landroid/graphics/Bitmap;IIZZZ)V

    if-eqz v7, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/p;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void

    :cond_1
    move v7, v5

    move-object v8, p1

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/p;->g:Z

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/p;->d:I

    return v0
.end method

.method public c(Landroid/content/res/Resources;I)V
    .locals 3

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/vector/p;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/p;->b(Landroid/graphics/Bitmap;II)V

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/p;->a:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/p;->h:Z

    return-void
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/p;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/p;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(Landroid/content/res/Resources;I)V
    .locals 7

    const/4 v4, 0x1

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/vector/p;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/p;->a(Landroid/graphics/Bitmap;IIZZZ)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/p;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/p;->a:Z

    return-void
.end method

.method public declared-synchronized e()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/p;->l:I

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseRef called on Texture with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/p;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " references!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Texture"

    invoke-static {v1, v0}, Las/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/p;->l:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/p;->l:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->e:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->k:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/p;->e:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/u;->c(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/p;->m:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method f()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/p;->l:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/p;->m:I

    return v0
.end method
