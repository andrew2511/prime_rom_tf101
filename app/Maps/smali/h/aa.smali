.class Lh/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/N;


# instance fields
.field final synthetic a:Lcom/google/googlenav/c;

.field final synthetic b:Lh/dR;


# direct methods
.method constructor <init>(Lh/dR;Lcom/google/googlenav/c;)V
    .locals 0

    iput-object p1, p0, Lh/aa;->b:Lh/dR;

    iput-object p2, p0, Lh/aa;->a:Lcom/google/googlenav/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/R;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lh/aa;->b:Lh/dR;

    iget-object v0, v0, Lh/dR;->a:Lh/ew;

    const/4 v1, 0x0

    iput-object v1, v0, Lh/ew;->b:Lcom/google/googlenav/ao;

    invoke-virtual {p1}, Lcom/google/googlenav/R;->l()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lh/aa;->b:Lh/dR;

    iget-object v0, v0, Lh/dR;->a:Lh/ew;

    invoke-virtual {p1, v2}, Lcom/google/googlenav/R;->a(I)Lcom/google/googlenav/ao;

    move-result-object v1

    iput-object v1, v0, Lh/ew;->b:Lcom/google/googlenav/ao;

    iget-object v0, p0, Lh/aa;->a:Lcom/google/googlenav/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/aa;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/aa;->a:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lh/aa;->a:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lh/aa;->a:Lcom/google/googlenav/c;

    invoke-virtual {v2}, Lcom/google/googlenav/c;->j()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lh/aa;->b:Lh/dR;

    iget-object v1, v1, Lh/dR;->a:Lh/ew;

    new-instance v2, Lcom/google/googlenav/ao;

    iget-object v3, p0, Lh/aa;->b:Lh/dR;

    iget-object v3, v3, Lh/dR;->a:Lh/ew;

    iget-object v3, v3, Lh/ew;->b:Lcom/google/googlenav/ao;

    invoke-virtual {v3}, Lcom/google/googlenav/ao;->c()I

    move-result v3

    iget-object v4, p0, Lh/aa;->b:Lh/dR;

    iget-object v4, v4, Lh/dR;->a:Lh/ew;

    iget-object v4, v4, Lh/ew;->b:Lcom/google/googlenav/ao;

    invoke-virtual {v4}, Lcom/google/googlenav/ao;->f()Law/e;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/google/googlenav/ao;-><init>(I[Ljava/lang/String;Law/e;)V

    iput-object v2, v1, Lh/ew;->b:Lcom/google/googlenav/ao;

    :cond_1
    iget-object v0, p0, Lh/aa;->b:Lh/dR;

    invoke-static {v0}, Lh/dR;->a(Lh/dR;)Lh/dw;

    move-result-object v0

    invoke-virtual {v0}, Lh/dw;->e()V

    return-void
.end method
