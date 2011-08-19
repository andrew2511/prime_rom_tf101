.class Lh/K;
.super Ljava/lang/Object;

# interfaces
.implements Lh/cN;


# instance fields
.field final synthetic a:Lh/cs;


# direct methods
.method constructor <init>(Lh/cs;)V
    .locals 0

    iput-object p1, p0, Lh/K;->a:Lh/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/googlenav/bG;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lh/K;->a:Lh/cs;

    invoke-static {v0}, Lh/cs;->a(Lh/cs;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/V;

    invoke-direct {v1}, Lcom/google/googlenav/V;-><init>()V

    invoke-virtual {v1, p2}, Lcom/google/googlenav/V;->c(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/V;->e(I)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/V;->i(Z)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/V;->a(Z)Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->a(Lcom/google/googlenav/bs;)V

    iget-object v0, p0, Lh/K;->a:Lh/cs;

    invoke-static {v0}, Lh/cs;->e(Lh/cs;)Lh/p;

    move-result-object v0

    invoke-interface {v0}, Lh/p;->a()V

    return-void
.end method

.method static synthetic a(Lh/K;Lcom/google/googlenav/bG;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh/K;->a(Lcom/google/googlenav/bG;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lh/K;->a:Lh/cs;

    invoke-static {v0}, Lh/cs;->a(Lh/cs;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    new-instance v0, Lcom/google/googlenav/bv;

    invoke-direct {v0}, Lcom/google/googlenav/bv;-><init>()V

    iget-object v1, p0, Lh/K;->a:Lh/cs;

    invoke-static {v1}, Lh/cs;->b(Lh/cs;)Lh/dM;

    move-result-object v1

    invoke-virtual {v1}, Lh/dM;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh/K;->a:Lh/cs;

    invoke-static {v1}, Lh/cs;->c(Lh/cs;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/bv;->a:Law/e;

    :goto_0
    iget-object v1, p0, Lh/K;->a:Lh/cs;

    invoke-static {v1}, Lh/cs;->d(Lh/cs;)Lh/k;

    move-result-object v1

    iget-object v2, p0, Lh/K;->a:Lh/cs;

    invoke-static {v2}, Lh/cs;->c(Lh/cs;)Lcom/google/googlenav/h;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lh/k;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/bv;)V

    return-void

    :cond_0
    iget-object v1, p0, Lh/K;->a:Lh/cs;

    invoke-static {v1}, Lh/cs;->c(Lh/cs;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/bv;->b:Law/e;

    goto :goto_0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lh/K;->a:Lh/cs;

    invoke-static {v0}, Lh/cs;->a(Lh/cs;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x8f

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    new-instance v0, Lcom/google/googlenav/bv;

    invoke-direct {v0}, Lcom/google/googlenav/bv;-><init>()V

    iget-object v1, p0, Lh/K;->a:Lh/cs;

    invoke-static {v1}, Lh/cs;->b(Lh/cs;)Lh/dM;

    move-result-object v1

    invoke-virtual {v1}, Lh/dM;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lh/K;->a:Lh/cs;

    invoke-static {v1}, Lh/cs;->c(Lh/cs;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/bv;->d:Law/e;

    :goto_0
    iget-object v1, p0, Lh/K;->a:Lh/cs;

    invoke-static {v1}, Lh/cs;->d(Lh/cs;)Lh/k;

    move-result-object v1

    iget-object v2, p0, Lh/K;->a:Lh/cs;

    invoke-static {v2}, Lh/cs;->c(Lh/cs;)Lcom/google/googlenav/h;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lh/k;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/bv;)V

    return-void

    :cond_0
    iget-object v1, p0, Lh/K;->a:Lh/cs;

    invoke-static {v1}, Lh/cs;->c(Lh/cs;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/bv;->c:Law/e;

    goto :goto_0
.end method

.method public c()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lh/K;->a:Lh/cs;

    invoke-static {v0}, Lh/cs;->a(Lh/cs;)Lh/eY;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v2

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V

    iget-object v0, p0, Lh/K;->a:Lh/cs;

    invoke-static {v0}, Lh/cs;->f(Lh/cs;)Lh/dh;

    move-result-object v0

    iget-object v1, p0, Lh/K;->a:Lh/cs;

    invoke-static {v1}, Lh/cs;->c(Lh/cs;)Lcom/google/googlenav/h;

    move-result-object v1

    new-instance v2, Lh/ca;

    invoke-direct {v2, p0}, Lh/ca;-><init>(Lh/K;)V

    invoke-virtual {v0, v1, v2}, Lh/dh;->a(Lcom/google/googlenav/h;Lh/H;)V

    return-void
.end method
