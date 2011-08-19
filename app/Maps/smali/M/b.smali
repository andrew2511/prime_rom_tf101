.class public LM/b;
.super Lcom/google/android/maps/driveabout/vector/cr;


# instance fields
.field private final a:Ljava/util/Vector;

.field private b:LM/d;

.field private volatile c:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cr;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LM/b;->a:Ljava/util/Vector;

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->r()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    const/16 v2, 0x1701

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->e()I

    move-result v3

    int-to-float v4, v3

    const/high16 v5, -0x4080

    const/high16 v6, 0x3f80

    move v3, v1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    return-void
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->r()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/16 v1, 0x1701

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0xdbba0

    return v0
.end method

.method public a(LM/d;)V
    .locals 1

    invoke-virtual {p1, p0}, LM/d;->a(LM/b;)V

    iget-object v0, p0, LM/b;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, LM/b;->g()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 2

    iget-object v0, p0, LM/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LM/d;

    invoke-virtual {p0, p1}, LM/d;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 3

    iget-object v0, p0, LM/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, LM/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM/d;

    invoke-virtual {v0}, LM/d;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, LM/d;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2}, LM/b;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;)V

    :try_start_0
    iget-object v0, p0, LM/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM/d;

    invoke-virtual {v0}, LM/d;->h()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, p1, p2, p3, p4}, LM/d;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, LM/b;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    throw v0

    :cond_4
    invoke-direct {p0, p1}, LM/b;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bw;)V
    .locals 2

    iget-object v0, p0, LM/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LM/d;

    invoke-virtual {p0, p1, p2}, LM/d;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bw;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(FFLcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 3

    iget-object v0, p0, LM/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM/d;

    invoke-virtual {v0, p1, p2, p3}, LM/d;->a(FFLcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, LM/b;->b:LM/d;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 2

    iget-object v0, p0, LM/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM/d;

    invoke-virtual {v0, p1}, LM/d;->a(Lcom/google/android/maps/driveabout/vector/bF;)Z

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/cr;->a(Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v0

    return v0
.end method

.method public a_(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 2

    iget-object v0, p0, LM/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LM/d;

    invoke-virtual {p0, p1, p2, p3, p4}, LM/d;->a_(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    iget-boolean v0, p0, LM/b;->c:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, LM/b;->c:Z

    invoke-virtual {p0}, LM/b;->g()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, LM/b;->b:LM/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, LM/b;->b:LM/d;

    invoke-virtual {v0}, LM/d;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, LM/b;->b:LM/d;

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LM/b;->c:Z

    return v0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, LM/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LM/d;

    invoke-virtual {p0}, LM/d;->g()V

    goto :goto_0

    :cond_0
    return-void
.end method
