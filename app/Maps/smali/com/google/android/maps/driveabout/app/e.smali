.class public Lcom/google/android/maps/driveabout/app/e;
.super Ljava/lang/Object;


# instance fields
.field protected a:LF/y;

.field protected b:Z

.field protected c:Z

.field protected d:Z

.field protected e:Z

.field protected f:I

.field protected g:I

.field protected h:Z

.field protected final i:Lcom/google/android/maps/driveabout/app/aH;

.field private final j:Lcom/google/android/maps/driveabout/app/aI;

.field private final k:Lcom/google/android/maps/driveabout/app/a;

.field private final l:Lcom/google/android/maps/driveabout/app/U;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/U;Lcom/google/android/maps/driveabout/app/aI;Lcom/google/android/maps/driveabout/app/a;Lcom/google/android/maps/driveabout/vector/aQ;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/e;->d:Z

    iput v0, p0, Lcom/google/android/maps/driveabout/app/e;->f:I

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/e;->l:Lcom/google/android/maps/driveabout/app/U;

    new-instance v0, Lcom/google/android/maps/driveabout/app/aH;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/app/aH;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->i:Lcom/google/android/maps/driveabout/app/aH;

    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->i:Lcom/google/android/maps/driveabout/app/aH;

    invoke-virtual {v0, p5}, Lcom/google/android/maps/driveabout/app/aH;->a(Lcom/google/android/maps/driveabout/vector/aQ;)V

    :cond_0
    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/e;->j:Lcom/google/android/maps/driveabout/app/aI;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/e;->k:Lcom/google/android/maps/driveabout/app/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/maps/driveabout/app/aH;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->i:Lcom/google/android/maps/driveabout/app/aH;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/app/e;->g:I

    return-void
.end method

.method public a(LF/w;II)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/e;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->l:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/U;->a(LF/w;II)V

    :cond_0
    return-void
.end method

.method public a(LF/y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/e;->a:LF/y;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/cy;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->l:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/U;->a(Lcom/google/android/maps/driveabout/app/cy;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/e;->b:Z

    return-void
.end method

.method public b()LF/y;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->a:LF/y;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/app/e;->f:I

    return-void
.end method

.method public b(LF/w;II)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/e;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->l:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/U;->b(LF/w;II)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->l:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/U;->b(Z)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/e;->g:I

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->l:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/U;->c(I)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/e;->e:Z

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/e;->g:I

    return v0
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/e;->h:Z

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/e;->c:Z

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/e;->d:Z

    return v0
.end method

.method public f()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/e;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/e;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/e;->b:Z

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/e;->f:I

    return v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->l:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/U;->a()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->l:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/U;->b()V

    return-void
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->l:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/U;->c()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->l:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/U;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->l:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/U;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->l:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/U;->g()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->l:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/U;->f()I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->l:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/U;->h()I

    move-result v0

    return v0
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->l:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/U;->i()V

    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->l:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/U;->j()V

    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->l:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/U;->k()V

    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->l:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/U;->l()V

    return-void
.end method

.method public t()Lcom/google/android/maps/driveabout/app/aI;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->j:Lcom/google/android/maps/driveabout/app/aI;

    return-object v0
.end method

.method public u()Lcom/google/android/maps/driveabout/app/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->k:Lcom/google/android/maps/driveabout/app/a;

    return-object v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/e;->h:Z

    return v0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/e;->c:Z

    return v0
.end method

.method public x()Lm/w;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->l:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/U;->m()Lm/w;

    move-result-object v0

    return-object v0
.end method

.method public y()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->l:Lcom/google/android/maps/driveabout/app/U;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/U;->n()J

    move-result-wide v0

    return-wide v0
.end method
