.class Lcom/google/googlenav/ui/I;
.super Ljava/lang/Object;

# interfaces
.implements Lh/eJ;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/an;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/an;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/I;->a:Lcom/google/googlenav/ui/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    const/16 v0, 0x5f

    iget-object v1, p0, Lcom/google/googlenav/ui/I;->a:Lcom/google/googlenav/ui/an;

    iget-object v1, v1, Lcom/google/googlenav/ui/an;->c:Ljava/lang/String;

    const-string v2, "2"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    if-eqz p1, :cond_0

    const-string v0, "LBS_GO_AWAY_AND_DONT_COME_BACK"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/as;->b(Ljava/lang/String;I)V

    :cond_0
    const-string v0, "IS_COMING_FROM_SETTINGS_PAGE"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/as;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/I;->a:Lcom/google/googlenav/ui/an;

    iget-object v0, v0, Lcom/google/googlenav/ui/an;->d:Lcom/google/googlenav/ui/bW;

    invoke-static {v0}, Lcom/google/googlenav/ui/bW;->e(Lcom/google/googlenav/ui/bW;)Lcom/google/googlenav/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/I;->a:Lcom/google/googlenav/ui/an;

    iget-object v1, v1, Lcom/google/googlenav/ui/an;->d:Lcom/google/googlenav/ui/bW;

    invoke-static {v1}, Lcom/google/googlenav/ui/bW;->d(Lcom/google/googlenav/ui/bW;)Lcom/google/googlenav/ui/bu;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/g;->a(Lcom/google/googlenav/ui/bu;)V

    return-void
.end method

.method public b(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "LBS_GO_AWAY_AND_DONT_COME_BACK"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/as;->a(Ljava/lang/String;ILo/Z;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/I;->a:Lcom/google/googlenav/ui/an;

    iget-object v0, v0, Lcom/google/googlenav/ui/an;->d:Lcom/google/googlenav/ui/bW;

    invoke-static {v0}, Lcom/google/googlenav/ui/bW;->b(Lcom/google/googlenav/ui/bW;)V

    const/16 v0, 0x5f

    iget-object v1, p0, Lcom/google/googlenav/ui/I;->a:Lcom/google/googlenav/ui/an;

    iget-object v1, v1, Lcom/google/googlenav/ui/an;->c:Ljava/lang/String;

    const-string v2, "3"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/I;->b(Z)V

    return-void
.end method
