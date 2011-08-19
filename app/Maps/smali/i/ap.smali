.class Li/ap;
.super Lcom/google/googlenav/ui/bS;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lo/U;

.field final synthetic c:Li/C;


# direct methods
.method constructor <init>(Li/C;ILo/U;)V
    .locals 0

    iput-object p1, p0, Li/ap;->c:Li/C;

    iput p2, p0, Li/ap;->a:I

    iput-object p3, p0, Li/ap;->b:Lo/U;

    invoke-direct {p0}, Lcom/google/googlenav/ui/bS;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Li/ap;->c:Li/C;

    iget-object v0, v0, Li/C;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Li/ap;->a:I

    or-int/2addr v0, v1

    return v0
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Li/ap;->b:Lo/U;

    iget-object v1, p0, Li/ap;->c:Li/C;

    iget-object v1, v1, Li/C;->h:Lf/v;

    invoke-virtual {v1}, Lf/v;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/U;->e(Z)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 2

    iget-object v0, p0, Li/ap;->b:Lo/U;

    iget-object v1, p0, Li/ap;->c:Li/C;

    iget-object v1, v1, Li/C;->h:Lf/v;

    invoke-virtual {v1}, Lf/v;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/U;->f(Z)I

    move-result v0

    return v0
.end method

.method public f()Lf/h;
    .locals 1

    iget-object v0, p0, Li/ap;->b:Lo/U;

    invoke-virtual {v0}, Lo/U;->d()Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Li/ap;->a:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Li/ap;->a:I

    return v0
.end method
