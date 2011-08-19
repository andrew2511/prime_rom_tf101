.class public Lcom/google/android/maps/driveabout/vector/cH;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cu;


# instance fields
.field private final a:LG/w;

.field private final b:LG/S;

.field private final c:Lcom/google/android/maps/driveabout/vector/az;


# direct methods
.method public constructor <init>(LG/w;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/az;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/az;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cH;->c:Lcom/google/android/maps/driveabout/vector/az;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cH;->a:LG/w;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cH;->a:LG/w;

    invoke-virtual {v0}, LG/w;->i()LG/S;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cH;->b:LG/S;

    const/high16 v0, 0x1

    mul-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x20

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cH;->c:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v1, v2, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cH;->c:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/az;->a(II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cH;->c:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cH;->c:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v1, v0, v0}, Lcom/google/android/maps/driveabout/vector/az;->a(II)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/bF;I)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;ILjava/util/Collection;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bh;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 4

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cH;->b:LG/S;

    invoke-virtual {v1}, LG/S;->d()LG/Q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cH;->b:LG/S;

    invoke-virtual {v2}, LG/S;->g()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, p2, v1, v2}, Lcom/google/android/maps/driveabout/vector/Y;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/bF;LG/Q;F)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cH;->c:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/az;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lac/p;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bL;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 0

    return-void
.end method

.method public b()LG/w;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cH;->a:LG/w;

    return-object v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/bF;ILjava/util/Collection;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cH;->a_(Lcom/google/android/maps/driveabout/vector/u;)V

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 4

    const/4 v2, 0x1

    if-le p4, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x303

    invoke-interface {v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->l()V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/br;->b:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/bU;->a(I)Lcom/google/android/maps/driveabout/vector/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/p;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0
.end method

.method public b(Lac/p;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cH;->c:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/az;->d()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cH;->c:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/az;->a()I

    move-result v0

    return v0
.end method
