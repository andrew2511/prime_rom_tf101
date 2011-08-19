.class public LN/j;
.super Ljava/lang/Object;


# instance fields
.field protected a:Li/x;

.field protected b:Lcom/google/googlenav/ui/aV;


# direct methods
.method public constructor <init>(Li/x;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN/j;->a:Li/x;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    iput-object v0, p0, LN/j;->b:Lcom/google/googlenav/ui/aV;

    return-void
.end method

.method private static c(Lcom/google/googlenav/bf;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/googlenav/bf;->G()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    check-cast p0, Lcom/google/googlenav/c;

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aY()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(ZBI)C
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public a(Lcom/google/googlenav/bf;)I
    .locals 2

    iget-object v0, p0, LN/j;->b:Lcom/google/googlenav/ui/aV;

    invoke-interface {p1}, Lcom/google/googlenav/bf;->F()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aV;->d(B)I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/google/googlenav/aG;
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, LN/j;->a:Li/x;

    invoke-virtual {v1}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/googlenav/bf;->F()B

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v1, v4

    :goto_0
    return-object v1

    :cond_1
    invoke-static {v1}, LN/j;->c(Lcom/google/googlenav/bf;)Z

    move-result v2

    if-eqz v2, :cond_4

    check-cast v1, Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->aZ()Lcom/google/googlenav/aG;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/googlenav/c;->O()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/googlenav/aG;->a()Lk/l;

    move-result-object v2

    :goto_1
    iget-object v3, p0, LN/j;->b:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->F()B

    move-result v1

    invoke-virtual {v3, v1, v2}, Lcom/google/googlenav/ui/aV;->a(BLk/l;)Lcom/google/googlenav/aG;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v2, v4

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Lcom/google/googlenav/bf;->G()I

    move-result v2

    if-nez v2, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/google/googlenav/c;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/googlenav/c;->T()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, -0x1

    :goto_2
    const/4 v3, 0x0

    invoke-interface {v1}, Lcom/google/googlenav/bf;->F()B

    move-result v4

    invoke-virtual {p0, v3, v4, v2}, LN/j;->a(ZBI)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    invoke-interface {v1}, Lcom/google/googlenav/bf;->F()B

    move-result v1

    :goto_3
    iget-object v3, p0, LN/j;->b:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v3, v1, v2}, Lcom/google/googlenav/ui/aV;->a(BC)Lcom/google/googlenav/aG;

    move-result-object v1

    goto :goto_0

    :cond_5
    invoke-static {v2}, Lcom/google/googlenav/ui/bl;->i(C)B

    move-result v1

    goto :goto_3

    :cond_6
    move v2, p1

    goto :goto_2
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/google/googlenav/bf;)I
    .locals 2

    iget-object v0, p0, LN/j;->b:Lcom/google/googlenav/ui/aV;

    invoke-interface {p1}, Lcom/google/googlenav/bf;->F()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aV;->c(B)I

    move-result v0

    return v0
.end method
