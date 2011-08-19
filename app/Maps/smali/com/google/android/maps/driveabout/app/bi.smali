.class public Lcom/google/android/maps/driveabout/app/bi;
.super Lcom/google/android/maps/driveabout/app/ay;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:I

.field private d:Landroid/graphics/Bitmap;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:B

.field private i:LG/T;

.field private j:F

.field private k:F


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZIZI)V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, -0x4080

    invoke-direct {p0, p2, p3, v1}, Lcom/google/android/maps/driveabout/app/ay;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/R;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/bi;->i:LG/T;

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bi;->j:F

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bi;->k:F

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bi;->d()Lcom/google/android/maps/driveabout/app/bi;

    iput-boolean p4, p0, Lcom/google/android/maps/driveabout/app/bi;->a:Z

    iput-boolean p5, p0, Lcom/google/android/maps/driveabout/app/bi;->b:Z

    iput p6, p0, Lcom/google/android/maps/driveabout/app/bi;->c:I

    iput-boolean p7, p0, Lcom/google/android/maps/driveabout/app/bi;->f:Z

    if-lez p8, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p8}, Lcom/google/android/maps/driveabout/vector/p;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bi;->d:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private a(Law/e;)V
    .locals 1

    new-instance v0, LG/T;

    invoke-direct {v0, p1}, LG/T;-><init>(Law/e;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bi;->i:LG/T;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bi;->i:LG/T;

    invoke-virtual {v0}, LG/T;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/bi;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bi;->i:LG/T;

    invoke-virtual {v0}, LG/T;->b()[Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bi;->f:Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bi;Law/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/bi;->a(Law/e;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bi;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bi;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bi;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/bi;->e:Z

    return p1
.end method


# virtual methods
.method public a(FF)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/app/bi;->j:F

    iput p2, p0, Lcom/google/android/maps/driveabout/app/bi;->k:F

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bi;->d:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/bi;->e:Z

    return-void
.end method

.method public a(F)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bi;->j:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bi;->k:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bi;->j:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bi;->k:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bi;->i:LG/T;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bi;->i:LG/T;

    invoke-virtual {v0, p1}, LG/T;->a(F)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public b(I)Z
    .locals 3

    const/4 v2, 0x1

    iget-byte v0, p0, Lcom/google/android/maps/driveabout/app/bi;->h:B

    shl-int v1, v2, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(I)Lcom/google/android/maps/driveabout/app/bi;
    .locals 2

    iget-byte v0, p0, Lcom/google/android/maps/driveabout/app/bi;->h:B

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    int-to-byte v1, v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/google/android/maps/driveabout/app/bi;->h:B

    return-object p0
.end method

.method public d(I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bi;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bi;->d:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bi;->i:LG/T;

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    if-gez p1, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bi;->i:LG/T;

    invoke-virtual {v0}, LG/T;->a()I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bi;->i:LG/T;

    invoke-virtual {v1}, LG/T;->b()[Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lt v0, v2, :cond_3

    :cond_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    aget-object v0, v1, v0

    goto :goto_0

    :cond_4
    move v0, p1

    goto :goto_1
.end method

.method d()Lcom/google/android/maps/driveabout/app/bi;
    .locals 1

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/android/maps/driveabout/app/bi;->h:B

    return-object p0
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bi;->g:Ljava/lang/String;

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bi;->c:I

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bi;->f:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bi;->i:LG/T;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bi;->b:Z

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bi;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bi;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bi;->g:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bi;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bi;->e:Z

    return v0
.end method

.method public k()LG/T;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bi;->i:LG/T;

    return-object v0
.end method
