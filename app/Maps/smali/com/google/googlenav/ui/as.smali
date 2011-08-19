.class public Lcom/google/googlenav/ui/as;
.super Ljava/lang/Object;

# interfaces
.implements Lx/U;


# instance fields
.field private a:Lf/Y;

.field private b:Lx/S;

.field private c:Lx/S;

.field private final d:LaF/a;


# direct methods
.method public constructor <init>(Lf/Y;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LaF/a;

    invoke-direct {v0, v1, v1}, LaF/a;-><init>(II)V

    iput-object v0, p0, Lcom/google/googlenav/ui/as;->d:LaF/a;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/as;->a(Lf/Y;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/as;->b:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/as;->b:Lx/S;

    invoke-interface {v0, p1}, Lx/S;->a(Z)V

    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/as;->c:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/as;->c:Lx/S;

    invoke-interface {v0, p1}, Lx/S;->a(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lx/h;->a(ILx/U;Ljava/lang/String;)Lx/S;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/as;->b:Lx/S;

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0, v2}, Lx/h;->a(ILx/U;Ljava/lang/String;)Lx/S;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/as;->c:Lx/S;

    :cond_0
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/x;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/as;->b()V

    iget-object v0, p0, Lcom/google/googlenav/ui/as;->b:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/as;->b:Lx/S;

    iget-object v1, p0, Lcom/google/googlenav/ui/as;->d:LaF/a;

    invoke-interface {v0, v1, p1}, Lx/S;->a(LaF/a;Lcom/google/googlenav/ui/x;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/as;->c:Lx/S;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/as;->c:Lx/S;

    iget-object v1, p0, Lcom/google/googlenav/ui/as;->d:LaF/a;

    invoke-interface {v0, v1, p1}, Lx/S;->a(LaF/a;Lcom/google/googlenav/ui/x;)V

    :cond_1
    return-void
.end method

.method public a(Lf/Y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/as;->a:Lf/Y;

    return-void
.end method

.method public a(Lax/b;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lax/b;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/as;->a:Lf/Y;

    invoke-virtual {p1}, Lax/b;->k()I

    move-result v1

    invoke-virtual {p1}, Lax/b;->l()I

    move-result v2

    invoke-virtual {v0, v3, v1, v2}, Lf/Y;->a(ZII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method public a(Lx/Q;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/as;->b:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/as;->b:Lx/S;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/as;->a:Lf/Y;

    invoke-virtual {v0, v2}, Lf/Y;->a(Z)Z

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/as;->c:Lx/S;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/as;->c:Lx/S;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/as;->a:Lf/Y;

    invoke-virtual {v0, v1}, Lf/Y;->a(Z)Z

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/as;->a:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/as;->a(Z)V

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/as;->a:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/as;->b(Z)V

    :goto_1
    iget-object v0, p0, Lcom/google/googlenav/ui/as;->a:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->q()V

    return-void

    :cond_0
    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/as;->a(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/as;->b(Z)V

    goto :goto_1
.end method

.method public b(Lx/Q;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
