.class public Lv/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/bh;
.implements Lv/h;
.implements Lv/t;


# instance fields
.field protected final a:Ljava/lang/String;

.field private final b:I

.field private final c:Law/f;

.field private final d:Lv/g;

.field private e:Lak/h;

.field private final f:Ln/a;

.field private final g:Ljava/util/List;

.field private h:Lh/eY;

.field private i:Lv/j;

.field private j:Z

.field private k:Z

.field private l:Z

.field private final m:Z


# direct methods
.method public constructor <init>(Lh/eY;Lv/g;Lak/h;Ln/a;ILaw/f;Ljava/lang/String;Lv/B;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lv/r;->g:Ljava/util/List;

    iput-boolean v1, p0, Lv/r;->k:Z

    iput-boolean v1, p0, Lv/r;->l:Z

    iput-object p1, p0, Lv/r;->h:Lh/eY;

    iput-object p2, p0, Lv/r;->d:Lv/g;

    iput-object p3, p0, Lv/r;->e:Lak/h;

    iput-object p4, p0, Lv/r;->f:Ln/a;

    iput p5, p0, Lv/r;->b:I

    iput-object p6, p0, Lv/r;->c:Law/f;

    iput-object p7, p0, Lv/r;->a:Ljava/lang/String;

    iput-boolean p9, p0, Lv/r;->m:Z

    iget-object v0, p0, Lv/r;->g:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v1, p0, Lv/r;->j:Z

    invoke-direct {p0, p8}, Lv/r;->a(Lv/B;)V

    invoke-virtual {p0}, Lv/r;->l()V

    return-void
.end method

.method private a(Lv/B;)V
    .locals 6

    new-instance v0, Lv/y;

    iget-object v1, p0, Lv/r;->d:Lv/g;

    iget v2, p0, Lv/r;->b:I

    invoke-interface {v1, v2}, Lv/g;->b(I)Lv/C;

    move-result-object v1

    iget v3, p0, Lv/r;->b:I

    iget-object v4, p0, Lv/r;->c:Law/f;

    iget-boolean v5, p0, Lv/r;->m:Z

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lv/y;-><init>(Lv/C;Lv/B;ILaw/f;Z)V

    iput-object v0, p0, Lv/r;->i:Lv/j;

    iget-object v0, p0, Lv/r;->i:Lv/j;

    invoke-interface {v0, p0}, Lv/j;->a(Lv/h;)V

    return-void
.end method

.method static synthetic a(Lv/r;)V
    .locals 0

    invoke-direct {p0}, Lv/r;->m()V

    return-void
.end method

.method private m()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lv/r;->l:Z

    iget-boolean v0, p0, Lv/r;->k:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lv/r;->k:Z

    iget-object v0, p0, Lv/r;->h:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->e()V

    :cond_0
    iget-object v0, p0, Lv/r;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/login/k;

    invoke-interface {p0}, Lcom/google/googlenav/login/k;->R_()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public R_()V
    .locals 2

    iget-boolean v0, p0, Lv/r;->l:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lv/r;->l:Z

    iget-object v0, p0, Lv/r;->h:Lh/eY;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lv/r;->h:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->v()LaU/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lv/r;->h:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->v()LaU/a;

    move-result-object v0

    new-instance v1, Lv/i;

    invoke-direct {v1, p0}, Lv/i;-><init>(Lv/r;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lv/r;->m()V

    goto :goto_0
.end method

.method public S_()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lv/r;->i()Lv/j;

    move-result-object v0

    invoke-interface {v0}, Lv/j;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v4

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv/d;

    invoke-virtual {p0}, Lv/d;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "v="

    aput-object v2, v0, v1

    invoke-static {v0}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    const-string v2, "s"

    invoke-static {v1, v2, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public W_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lv/d;Lv/v;Li/aE;Ljava/lang/String;)Lv/d;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lv/r;->i()Lv/j;

    move-result-object v0

    invoke-virtual {p1}, Lv/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lv/j;->a(Ljava/lang/String;)Lv/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lv/d;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Lv/d;->a(Z)V

    invoke-interface {v0, v1}, Lv/j;->a(Lv/d;)Z

    const-string v0, "d"

    invoke-virtual {v1}, Lv/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p4}, Lv/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lv/d;->a(Z)V

    invoke-interface {v0, p1}, Lv/j;->a(Lv/d;)Z

    if-eqz p2, :cond_1

    invoke-interface {v0, p2}, Lv/j;->a(Lv/v;)V

    :cond_1
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Li/aE;->A()Li/av;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p3, v3}, Li/aE;->b(Z)Li/av;

    :cond_2
    invoke-virtual {p1}, Lv/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Li/aE;->e(Ljava/lang/String;)V

    :cond_3
    const-string v1, "c"

    invoke-virtual {p1}, Lv/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p4}, Lv/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lv/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lv/j;->f(Ljava/lang/String;)V

    move-object v0, p1

    goto :goto_0
.end method

.method a(Lh/eY;)V
    .locals 0

    iput-object p1, p0, Lv/r;->h:Lh/eY;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lv/r;->i:Lv/j;

    invoke-interface {v0, p1}, Lv/j;->a(Ljava/lang/String;)Lv/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lv/r;->i:Lv/j;

    invoke-interface {v1, p1}, Lv/j;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Law/e;

    sget-object v2, Ls/p;->t:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Law/e;->h(II)V

    const/16 v2, 0x90

    invoke-virtual {v1, v2, p1}, Law/e;->b(ILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0}, Lv/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Law/e;->b(ILjava/lang/String;)V

    invoke-static {v1}, Lv/v;->a(Law/e;)Lv/v;

    move-result-object v2

    invoke-virtual {v2, v4}, Lv/v;->a(I)V

    :try_start_0
    invoke-virtual {v0}, Lv/d;->d()Lf/h;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    invoke-virtual {v0}, Lv/d;->d()Lf/h;

    move-result-object v0

    invoke-static {v0}, Lf/I;->d(Lf/h;)Law/e;

    move-result-object v0

    invoke-static {v0}, Law/b;->a(Law/e;)Law/e;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Law/e;->b(ILaw/e;)V

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lv/v;->a(Z)V

    iget-object v0, p0, Lv/r;->i:Lv/j;

    invoke-interface {v0, v2}, Lv/j;->a(Lv/v;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lv/r;->i:Lv/j;

    invoke-interface {v0, p1}, Lv/j;->f(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Law/e;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lv/r;->b(Ljava/lang/String;Law/e;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "p"

    invoke-virtual {p0, p1, p2, v0}, Lv/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    const-string v2, "f"

    invoke-static {v1, v2, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public an_()V
    .locals 2

    iget-object v0, p0, Lv/r;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/k;

    invoke-interface {v0}, Lcom/google/googlenav/login/k;->an_()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lv/r;->i()Lv/j;

    move-result-object v0

    invoke-interface {v0}, Lv/j;->d()V

    return-void
.end method

.method public ao_()V
    .locals 2

    iget-boolean v0, p0, Lv/r;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv/r;->k:Z

    iget-object v0, p0, Lv/r;->h:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->e()V

    :cond_0
    iget-object v0, p0, Lv/r;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/k;

    invoke-interface {v0}, Lcom/google/googlenav/login/k;->ao_()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lv/r;->i()Lv/j;

    move-result-object v0

    invoke-interface {v0}, Lv/j;->d()V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lv/r;->h:Lh/eY;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv/r;->k:Z

    iget-object v0, p0, Lv/r;->h:Lh/eY;

    const/16 v1, 0x3f1

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x195

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/google/googlenav/ad;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ad;-><init>(Lcom/google/googlenav/bh;Ljava/lang/String;)V

    iget-object v1, p0, Lv/r;->e:Lak/h;

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method public b(Ljava/lang/String;Law/e;)Z
    .locals 5

    const/16 v1, 0x90

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2, v1}, Law/e;->h(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2, v1, p1}, Law/e;->b(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p2, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lv/r;->i:Lv/j;

    invoke-interface {v1, v0}, Lv/j;->a(Ljava/lang/String;)Lv/d;

    move-result-object v1

    if-nez v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lv/r;->i:Lv/j;

    invoke-interface {v1, v0}, Lv/j;->b(Ljava/lang/String;)Lv/v;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v1, Lv/v;

    invoke-direct {v1}, Lv/v;-><init>()V

    invoke-virtual {v1, v0}, Lv/v;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lv/v;->a(I)V

    move-object v0, v1

    :goto_1
    new-instance v1, Law/e;

    sget-object v2, LaX/a;->b:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v1, v3, p2}, Law/e;->b(ILaw/e;)V

    invoke-virtual {v0, v1}, Lv/v;->b(Law/e;)V

    invoke-virtual {v0, v4}, Lv/v;->a(Z)V

    iget-object v1, p0, Lv/r;->i:Lv/j;

    invoke-interface {v1, v0}, Lv/j;->a(Lv/v;)V

    move v0, v3

    goto :goto_0

    :cond_4
    new-instance v0, Lv/v;

    invoke-virtual {v1}, Lv/v;->d()Law/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lv/v;-><init>(Law/e;)V

    goto :goto_1
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lv/r;->d:Lv/g;

    invoke-interface {v0}, Lv/g;->h()Z

    move-result v0

    return v0
.end method

.method public i()Lv/j;
    .locals 1

    iget-object v0, p0, Lv/r;->i:Lv/j;

    return-object v0
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lv/r;->d:Lv/g;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lv/g;->a(I)V

    return-void
.end method

.method public k()V
    .locals 3

    :try_start_0
    new-instance v0, Law/e;

    sget-object v1, LaX/a;->f:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-object v1, p0, Lv/r;->i:Lv/j;

    invoke-interface {v1, v0}, Lv/j;->b(Law/e;)V

    const/4 v1, 0x2

    iget-boolean v2, p0, Lv/r;->j:Z

    invoke-virtual {v0, v1, v2}, Law/e;->b(IZ)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v2, v0}, Law/b;->a(Ljava/io/DataOutput;Law/e;)V

    iget-object v0, p0, Lv/r;->f:Ln/a;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, Lv/r;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ln/a;->b([BLjava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "UNKNOWNError saving MyPlaces prefs"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "UNKNOWNOOME saving MyPlaces prefs"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public l()V
    .locals 3

    iget-object v0, p0, Lv/r;->f:Ln/a;

    iget-object v1, p0, Lv/r;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ln/a;->c(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    sget-object v0, LaX/a;->f:Law/f;

    invoke-static {v0, v1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Law/e;->b(I)Z

    move-result v1

    iput-boolean v1, p0, Lv/r;->j:Z

    :cond_2
    iget-object v1, p0, Lv/r;->i:Lv/j;

    invoke-interface {v1, v0}, Lv/j;->a(Law/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UNKNOWNError loading MyPlaces prefs"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
