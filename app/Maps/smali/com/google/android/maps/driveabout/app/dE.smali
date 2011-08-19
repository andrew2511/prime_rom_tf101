.class Lcom/google/android/maps/driveabout/app/dE;
.super Lak/m;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/aI;

.field private final b:Lcom/google/android/maps/driveabout/app/bi;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/aI;Lcom/google/android/maps/driveabout/app/bi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dE;->a:Lcom/google/android/maps/driveabout/app/aI;

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/dE;->b:Lcom/google/android/maps/driveabout/app/bi;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x2e

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Law/e;

    sget-object v1, Ls/p;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dE;->b:Lcom/google/android/maps/driveabout/app/bi;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bi;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    invoke-virtual {v0, v4, v3}, Law/e;->h(II)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Law/e;->h(II)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Law/e;->h(II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dE;->a:Lcom/google/android/maps/driveabout/app/aI;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/aI;->a(Lcom/google/android/maps/driveabout/app/aI;)LG/R;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dE;->a:Lcom/google/android/maps/driveabout/app/aI;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/aI;->a(Lcom/google/android/maps/driveabout/app/aI;)LG/R;

    move-result-object v2

    invoke-static {v2}, Lad/m;->a(LG/R;)Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    :cond_0
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Law/e;->b(IZ)V

    const/16 v1, 0x15

    invoke-virtual {v0, v1, v4}, Law/e;->h(II)V

    invoke-virtual {v0}, Law/e;->d()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->b(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    sget-object v0, Ls/d;->a:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-virtual {v1, v2}, Law/e;->d(I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v3}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dE;->b:Lcom/google/android/maps/driveabout/app/bi;

    invoke-virtual {v0, v3}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/bi;->a(Lcom/google/android/maps/driveabout/app/bi;Law/e;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dE;->a:Lcom/google/android/maps/driveabout/app/aI;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aI;->b(Lcom/google/android/maps/driveabout/app/aI;)V

    :cond_0
    return v2
.end method
