.class Lh/cU;
.super Ljava/lang/Object;

# interfaces
.implements Lo/V;


# instance fields
.field final synthetic a:Lh/cA;


# direct methods
.method constructor <init>(Lh/cA;)V
    .locals 0

    iput-object p1, p0, Lh/cU;->a:Lh/cA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lh/cU;->a:Lh/cA;

    iget-object v0, v0, Lh/cA;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/cU;->a:Lh/cA;

    iget-object v0, v0, Lh/cA;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x13f

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lh/cU;->a:Lh/cA;

    iget-object v1, p0, Lh/cU;->a:Lh/cA;

    invoke-static {v1}, Lh/cA;->b(Lh/cA;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lh/cA;->a(Lh/cA;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lh/cU;->a:Lh/cA;

    invoke-virtual {v0}, Lh/cA;->i()V

    iget-object v0, p0, Lh/cU;->a:Lh/cA;

    iget-object v0, v0, Lh/cA;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x3c0

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    return-void
.end method
