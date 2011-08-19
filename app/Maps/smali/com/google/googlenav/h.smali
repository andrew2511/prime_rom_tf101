.class public Lcom/google/googlenav/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Law/e;

.field private final b:LH/m;

.field private final c:Lcom/google/googlenav/aP;


# direct methods
.method public constructor <init>(Law/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/h;-><init>(Law/e;LH/m;)V

    return-void
.end method

.method public constructor <init>(Law/e;LH/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/h;->a:Law/e;

    iput-object p2, p0, Lcom/google/googlenav/h;->b:LH/m;

    sget-object v0, Lcom/google/googlenav/aP;->c:Lcom/google/googlenav/aP;

    iput-object v0, p0, Lcom/google/googlenav/h;->c:Lcom/google/googlenav/aP;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/c;)Law/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/h;->a:Law/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/h;->b:LH/m;

    invoke-virtual {p1}, Lcom/google/googlenav/c;->bk()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/googlenav/aP;->b:Lcom/google/googlenav/aP;

    :goto_0
    iput-object v0, p0, Lcom/google/googlenav/h;->c:Lcom/google/googlenav/aP;

    return-void

    :cond_0
    sget-object v0, Lcom/google/googlenav/aP;->a:Lcom/google/googlenav/aP;

    goto :goto_0
.end method


# virtual methods
.method public a()Law/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Law/e;

    return-object v0
.end method

.method public a(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Law/e;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Law/e;->b(IZ)V

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Law/e;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p2}, Law/e;->b(IZ)V

    return-void
.end method

.method public a(Lcom/google/googlenav/bG;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ai;->a(Law/e;Law/e;)Z

    move-result v0

    return v0
.end method

.method public b()LH/m;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/h;->b:LH/m;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Law/e;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Law/e;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Law/e;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Law/b;->a(Law/e;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Law/e;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Law/b;->a(Law/e;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Lf/h;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Law/e;

    invoke-static {v0}, Lcom/google/googlenav/ui/D;->a(Law/e;)Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Law/e;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Law/e;

    const/16 v1, 0xd

    invoke-static {v0, v1}, Law/b;->h(Law/e;I)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Law/e;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Law/b;->h(Law/e;I)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Law/e;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Law/b;->h(Law/e;I)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/h;->g()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/h;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/h;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Law/e;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Law/b;->h(Law/e;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/googlenav/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlenav/h;->a:Law/e;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Law/e;->d(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/h;->a:Law/e;

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Lcom/google/googlenav/aP;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/h;->c:Lcom/google/googlenav/aP;

    return-object v0
.end method
