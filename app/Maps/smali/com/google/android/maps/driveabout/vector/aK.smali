.class public Lcom/google/android/maps/driveabout/vector/aK;
.super Lcom/google/android/maps/driveabout/vector/aY;


# instance fields
.field private volatile a:Lcom/google/android/maps/driveabout/vector/p;

.field private b:[B

.field private c:Lcom/google/android/maps/driveabout/vector/cd;

.field private d:Z


# direct methods
.method private constructor <init>([BLjava/util/Set;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/aY;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aK;->b:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->d:Z

    return-void
.end method

.method public static a(LG/w;[Ljava/lang/String;LG/j;)Lcom/google/android/maps/driveabout/vector/aK;
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2}, LG/j;->a()LG/d;

    move-result-object p0

    check-cast p0, LG/h;

    invoke-virtual {p0}, LG/h;->m()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    if-ltz v4, :cond_0

    array-length v5, p1

    if-ge v4, v5, :cond_0

    aget-object v4, p1, v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/maps/driveabout/vector/aK;

    invoke-virtual {p0}, LG/h;->a()[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/aK;-><init>([BLjava/util/Set;)V

    return-object v1
.end method

.method public static a([B)Lcom/google/android/maps/driveabout/vector/aK;
    .locals 2

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aK;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/vector/aK;-><init>([BLjava/util/Set;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/u;I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/u;->l()V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/az;->b:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/az;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/br;->b:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;Lcom/google/android/maps/driveabout/vector/p;)V
    .locals 4

    const/high16 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p3, v0}, Lcom/google/android/maps/driveabout/vector/p;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aK;->c:Lcom/google/android/maps/driveabout/vector/cd;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aK;->c:Lcom/google/android/maps/driveabout/vector/cd;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cd;->a(Lcom/google/android/maps/driveabout/vector/u;)I

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aK;->c:Lcom/google/android/maps/driveabout/vector/cd;

    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/aK;->d:Z

    :cond_0
    :goto_0
    invoke-interface {v0, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aK;->a:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/p;->g()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 4

    const/16 v3, 0x4e20

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->a:Lcom/google/android/maps/driveabout/vector/p;

    if-nez v0, :cond_1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/aK;->d:Z

    if-nez v2, :cond_2

    invoke-virtual {p1, v3}, Lcom/google/android/maps/driveabout/vector/u;->b(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/aK;->c(Lcom/google/android/maps/driveabout/vector/u;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/p;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/p;-><init>(Lcom/google/android/maps/driveabout/vector/u;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/p;->c(Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/p;->a(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->a:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    if-nez v0, :cond_3

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p1, v3}, Lcom/google/android/maps/driveabout/vector/u;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/aK;->c(Lcom/google/android/maps/driveabout/vector/u;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/driveabout/vector/cd;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/vector/cd;-><init>()V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aK;->c:Lcom/google/android/maps/driveabout/vector/cd;

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/maps/driveabout/vector/aK;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;Lcom/google/android/maps/driveabout/vector/p;)V

    goto :goto_1
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->a:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->a:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->a:Lcom/google/android/maps/driveabout/vector/p;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->d:Z

    :cond_0
    return-void
.end method

.method public b()I
    .locals 2

    const/16 v0, 0x60

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aK;->b:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aK;->b:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/aK;->a_(Lcom/google/android/maps/driveabout/vector/u;)V

    return-void
.end method

.method c(Lcom/google/android/maps/driveabout/vector/u;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v1, 0x1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->i()Lcom/google/android/maps/driveabout/vector/x;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aK;->b:[B

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/x;->a([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->d:Z

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aK;->d:Z

    return-void
.end method
