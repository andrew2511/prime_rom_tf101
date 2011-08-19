.class public Lcom/google/android/maps/driveabout/vector/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cu;


# instance fields
.field private final a:LG/S;

.field private final b:LG/w;

.field private c:[Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:I

.field private f:Lcom/google/android/maps/driveabout/vector/aK;


# direct methods
.method public constructor <init>(LG/w;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ac;->b:LG/w;

    invoke-virtual {p1}, LG/w;->i()LG/S;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->a:LG/S;

    return-void
.end method

.method public static a(LG/u;)Lcom/google/android/maps/driveabout/vector/ac;
    .locals 2

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ac;

    invoke-interface {p0}, LG/u;->a()LG/w;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/ac;-><init>(LG/w;)V

    instance-of v1, p0, LG/G;

    if-eqz v1, :cond_0

    check-cast p0, LG/G;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/ac;->a(LG/G;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/ac;->h()V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->c:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->d:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->e:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/bF;I)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ac;->f:Lcom/google/android/maps/driveabout/vector/aK;

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public a(LG/G;)V
    .locals 1

    invoke-virtual {p1}, LG/G;->f()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aK;->a([B)Lcom/google/android/maps/driveabout/vector/aK;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->f:Lcom/google/android/maps/driveabout/vector/aK;

    invoke-virtual {p1}, LG/G;->c()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->c:[Ljava/lang/String;

    invoke-virtual {p1}, LG/G;->d()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->d:[Ljava/lang/String;

    invoke-virtual {p1}, LG/G;->e()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->e:I

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;ILjava/util/Collection;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->c:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bh;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->f:Lcom/google/android/maps/driveabout/vector/aK;

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ac;->a:LG/S;

    invoke-virtual {v1}, LG/S;->d()LG/Q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ac;->a:LG/S;

    invoke-virtual {v2}, LG/S;->g()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, p2, v1, v2}, Lcom/google/android/maps/driveabout/vector/Y;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/bF;LG/Q;F)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ac;->f:Lcom/google/android/maps/driveabout/vector/aK;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/aK;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0
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
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->f:Lcom/google/android/maps/driveabout/vector/aK;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->f:Lcom/google/android/maps/driveabout/vector/aK;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/aK;->a_(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_0
    return-void
.end method

.method public b()LG/w;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->b:LG/w;

    return-object v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/bF;ILjava/util/Collection;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->d:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/ac;->a_(Lcom/google/android/maps/driveabout/vector/u;)V

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 0

    invoke-static {p1, p3}, Lcom/google/android/maps/driveabout/vector/aK;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    return-void
.end method

.method public b(Lac/p;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->f:Lcom/google/android/maps/driveabout/vector/aK;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->f:Lcom/google/android/maps/driveabout/vector/aK;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aK;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->f:Lcom/google/android/maps/driveabout/vector/aK;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->f:Lcom/google/android/maps/driveabout/vector/aK;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aK;->d()V

    :cond_0
    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->f:Lcom/google/android/maps/driveabout/vector/aK;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->f:Lcom/google/android/maps/driveabout/vector/aK;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aK;->a()I

    move-result v0

    goto :goto_0
.end method

.method public g()I
    .locals 2

    const/16 v0, 0x88

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ac;->f:Lcom/google/android/maps/driveabout/vector/aK;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ac;->f:Lcom/google/android/maps/driveabout/vector/aK;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aK;->b()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method
