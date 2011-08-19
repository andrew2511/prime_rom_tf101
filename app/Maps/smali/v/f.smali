.class public Lv/f;
.super Ljava/lang/Object;

# interfaces
.implements Lv/g;
.implements Lv/m;


# instance fields
.field private a:Lv/a;

.field private b:Lv/c;


# direct methods
.method public constructor <init>(Lh/eY;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv/a;

    invoke-direct {v0, p0, p1}, Lv/a;-><init>(Lv/m;Lh/eY;)V

    iput-object v0, p0, Lv/f;->a:Lv/a;

    new-instance v0, Lv/c;

    iget-object v1, p0, Lv/f;->a:Lv/a;

    invoke-direct {v0, v1}, Lv/c;-><init>(Lv/l;)V

    iput-object v0, p0, Lv/f;->b:Lv/c;

    invoke-virtual {p0}, Lv/f;->j()V

    invoke-virtual {p0}, Lv/f;->a()V

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lv/f;->b:Lv/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv/f;->a:Lv/a;

    invoke-virtual {v0}, Lv/a;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lv/f;->a:Lv/a;

    invoke-virtual {v0}, Lv/a;->a()Law/e;

    move-result-object v0

    invoke-static {v0}, Law/b;->a(Law/e;)Law/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lv/f;->b(Law/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public R_()V
    .locals 1

    iget-object v0, p0, Lv/f;->a:Lv/a;

    invoke-virtual {v0}, Lv/a;->f()V

    return-void
.end method

.method public S_()V
    .locals 0

    return-void
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lv/f;->a:Lv/a;

    invoke-virtual {v0}, Lv/a;->b()V

    invoke-direct {p0}, Lv/f;->k()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lv/f;->a:Lv/a;

    invoke-virtual {v0, p1}, Lv/a;->c(I)V

    invoke-direct {p0}, Lv/f;->k()V

    return-void
.end method

.method a(Lh/eY;)V
    .locals 1

    iget-object v0, p0, Lv/f;->a:Lv/a;

    invoke-virtual {v0, p1}, Lv/a;->a(Lh/eY;)V

    return-void
.end method

.method public a(Lv/z;)V
    .locals 1

    iget-object v0, p0, Lv/f;->b:Lv/c;

    invoke-virtual {v0, p1}, Lv/c;->a(Lv/z;)V

    return-void
.end method

.method public an_()V
    .locals 1

    iget-object v0, p0, Lv/f;->a:Lv/a;

    invoke-virtual {v0}, Lv/a;->g()V

    return-void
.end method

.method public ao_()V
    .locals 0

    return-void
.end method

.method public b(I)Lv/C;
    .locals 1

    iget-object v0, p0, Lv/f;->a:Lv/a;

    invoke-virtual {v0, p1}, Lv/a;->b(I)Lv/C;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lv/f;->b:Lv/c;

    invoke-virtual {v0}, Lv/c;->b()V

    return-void
.end method

.method public b(Law/e;)V
    .locals 1

    iget-object v0, p0, Lv/f;->b:Lv/c;

    invoke-virtual {v0, p1}, Lv/c;->b(Law/e;)V

    iget-object v0, p0, Lv/f;->a:Lv/a;

    invoke-virtual {v0, p1}, Lv/a;->b(Law/e;)V

    return-void
.end method

.method public b(Lv/z;)V
    .locals 1

    iget-object v0, p0, Lv/f;->b:Lv/c;

    invoke-virtual {v0, p1}, Lv/c;->b(Lv/z;)V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lv/f;->b:Lv/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv/f;->b:Lv/c;

    invoke-virtual {v0}, Lv/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lv/f;->a:Lv/a;

    invoke-virtual {v0}, Lv/a;->d()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lv/f;->a:Lv/a;

    invoke-virtual {v0}, Lv/a;->e()V

    return-void
.end method
