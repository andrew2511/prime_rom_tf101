.class Lo/bF;
.super Ljava/lang/Object;

# interfaces
.implements Lh/eJ;


# instance fields
.field final synthetic a:Lo/bk;


# direct methods
.method constructor <init>(Lo/bk;)V
    .locals 0

    iput-object p1, p0, Lo/bF;->a:Lo/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    const/16 v0, 0x5b

    const-string v1, "co"

    const-string v2, "oa"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :try_start_0
    iget-object v0, p0, Lo/bF;->a:Lo/bk;

    iget-object v0, v0, Lo/bk;->a:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->A()Lcom/google/googlenav/g;

    move-result-object v0

    const-string v1, "http://www.google.com/mobile/+"

    invoke-interface {v0, v1}, Lcom/google/googlenav/g;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GooglePlusFeatureProvider"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 3

    const/16 v0, 0x5b

    const-string v1, "co"

    const-string v2, "or"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    iget-object v1, p0, Lo/bF;->a:Lo/bk;

    iget-object v1, v1, Lo/bk;->c:Lo/aN;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/j;->a(Lcom/google/googlenav/login/h;)V

    return-void
.end method

.method public c(Z)V
    .locals 3

    const/16 v0, 0x5b

    const-string v1, "co"

    const-string v2, "oc"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    iget-object v1, p0, Lo/bF;->a:Lo/bk;

    iget-object v1, v1, Lo/bk;->c:Lo/aN;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/j;->a(Lcom/google/googlenav/login/h;)V

    iget-object v0, p0, Lo/bF;->a:Lo/bk;

    iget-object v0, v0, Lo/bk;->a:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    return-void
.end method
