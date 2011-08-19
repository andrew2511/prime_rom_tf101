.class Lcom/google/android/maps/driveabout/vector/bP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/aA;


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Lcom/google/android/maps/driveabout/vector/bi;

.field private final c:I

.field private final d:I

.field private e:Z


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;FLcom/google/android/maps/driveabout/vector/bi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bP;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/bP;->b:Lcom/google/android/maps/driveabout/vector/bi;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bP;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bP;->c:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bP;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bP;->d:I

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bP;->c:I

    int-to-float v0, v0

    return v0
.end method

.method public a(ILcom/google/android/maps/driveabout/vector/F;)Lcom/google/android/maps/driveabout/vector/p;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bP;->b:Lcom/google/android/maps/driveabout/vector/bi;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bP;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/driveabout/vector/p;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/p;->d()V

    :cond_0
    return-object p0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;ILcom/google/android/maps/driveabout/vector/F;)Lcom/google/android/maps/driveabout/vector/p;
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bP;->b:Lcom/google/android/maps/driveabout/vector/bi;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bP;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/p;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/p;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/p;-><init>(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bP;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/p;->d(Z)V

    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/p;->c(Z)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bP;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/p;->a(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bP;->b:Lcom/google/android/maps/driveabout/vector/bi;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bP;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/bi;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->d()V

    return-object v0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bP;->d:I

    int-to-float v0, v0

    return v0
.end method

.method public c()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bP;->d:I

    int-to-float v0, v0

    return v0
.end method

.method public f()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bP;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bP;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
