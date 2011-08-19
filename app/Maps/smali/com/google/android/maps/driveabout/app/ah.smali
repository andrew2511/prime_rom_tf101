.class Lcom/google/android/maps/driveabout/app/ah;
.super Lak/m;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/aI;

.field private final b:Law/e;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/aI;Law/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ah;->a:Lcom/google/android/maps/driveabout/app/aI;

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/ah;->b:Law/e;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x39

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 4

    const/4 v2, 0x3

    new-instance v0, Law/e;

    sget-object v1, Ls/t;->n:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const-string v1, "__LAYERS"

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ah;->b:Law/e;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    :try_start_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ah;->b:Law/e;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Law/e;->d(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ah;->b:Law/e;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ah;->b:Law/e;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Law/e;->e(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Law/e;->d()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->b(Ljava/io/OutputStream;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Ls/t;->o:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v3}, Law/e;->d(I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ah;->a:Lcom/google/android/maps/driveabout/app/aI;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/aI;->c(Lcom/google/android/maps/driveabout/app/aI;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "DA_LayerInfo"

    invoke-static {v1, v0, v2}, Las/a;->a(Landroid/content/Context;Law/e;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ah;->a:Lcom/google/android/maps/driveabout/app/aI;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/aI;->a(Lcom/google/android/maps/driveabout/app/aI;Law/e;)V

    :cond_0
    return v3
.end method
