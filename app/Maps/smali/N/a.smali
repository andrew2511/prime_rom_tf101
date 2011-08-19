.class public LN/a;
.super LN/e;


# instance fields
.field private c:Lcom/google/googlenav/aG;


# direct methods
.method public constructor <init>(Li/x;)V
    .locals 0

    invoke-direct {p0, p1}, LN/e;-><init>(Li/x;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/aG;
    .locals 5

    const/4 v3, 0x3

    iget-object v0, p0, LN/a;->c:Lcom/google/googlenav/aG;

    if-nez v0, :cond_0

    iget-object v0, p0, LN/a;->a:Li/x;

    check-cast v0, Li/F;

    invoke-virtual {v0}, Li/F;->g()Lcom/google/googlenav/layer/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/s;->a(I)Lcom/google/googlenav/aG;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, LN/a;->b:Lcom/google/googlenav/ui/aV;

    invoke-static {v3}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v1

    iget-object v2, p0, LN/a;->b:Lcom/google/googlenav/ui/aV;

    invoke-static {v3}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v2

    iget-object v3, p0, LN/a;->b:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aV;->U()Lk/j;

    move-result-object v3

    sget-char v4, Lcom/google/googlenav/ui/aV;->n:C

    invoke-interface {v3, v4}, Lk/j;->e(C)Lk/l;

    move-result-object v3

    invoke-static {v3}, Lk/e;->d(Lk/l;)Lk/l;

    move-result-object v3

    invoke-interface {v3}, Lk/l;->d()Lk/m;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/googlenav/aG;->a()Lk/l;

    move-result-object v0

    invoke-interface {v4, v0, v1, v2}, Lk/m;->a(Lk/l;II)V

    invoke-interface {v3}, Lk/l;->f()I

    move-result v0

    invoke-interface {v3}, Lk/l;->e()I

    move-result v1

    invoke-static {v3, v0, v1}, Lcom/google/googlenav/aG;->a(Lk/l;II)Lcom/google/googlenav/aG;

    move-result-object v0

    iput-object v0, p0, LN/a;->c:Lcom/google/googlenav/aG;

    :cond_0
    :goto_0
    iget-object v0, p0, LN/a;->c:Lcom/google/googlenav/aG;

    return-object v0

    :cond_1
    invoke-super {p0, p1}, LN/e;->a(I)Lcom/google/googlenav/aG;

    move-result-object v0

    iput-object v0, p0, LN/a;->c:Lcom/google/googlenav/aG;

    goto :goto_0
.end method
