.class Lo/S;
.super Ljava/lang/Object;

# interfaces
.implements Lh/eT;


# instance fields
.field final synthetic a:Lo/m;


# direct methods
.method constructor <init>(Lo/m;)V
    .locals 0

    iput-object p1, p0, Lo/S;->a:Lo/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/16 v0, 0x3d

    const-string v1, "a"

    const-string v2, "roi"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    iget-object v1, p0, Lo/S;->a:Lo/m;

    iget-object v1, v1, Lo/m;->c:Lo/aN;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/j;->a(Lcom/google/googlenav/login/h;)V

    iget-object v0, p0, Lo/S;->a:Lo/m;

    iget-object v0, v0, Lo/m;->a:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    return-void
.end method

.method public a(I)V
    .locals 7

    const/4 v6, 0x0

    const/16 v0, 0x3d

    const-string v1, "a"

    const-string v2, "oi"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lo/S;->a:Lo/m;

    iget-object v0, v0, Lo/m;->a:Lh/eY;

    const/16 v1, 0x17c

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lh/l;->a:Lh/fc;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    new-instance v1, Lo/bW;

    const/4 v2, 0x1

    new-instance v3, Lo/aW;

    iget-object v4, p0, Lo/S;->a:Lo/m;

    iget-object v4, v4, Lo/m;->c:Lo/aN;

    invoke-direct {v3, v4}, Lo/aW;-><init>(Lo/aN;)V

    invoke-direct {v1, v2, p1, v6, v3}, Lo/bW;-><init>(ZIILo/aT;)V

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method public b()V
    .locals 3

    const/16 v0, 0x3d

    const-string v1, "a"

    const-string v2, "coi"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    iget-object v1, p0, Lo/S;->a:Lo/m;

    iget-object v1, v1, Lo/m;->c:Lo/aN;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/j;->a(Lcom/google/googlenav/login/h;)V

    iget-object v0, p0, Lo/S;->a:Lo/m;

    iget-object v0, v0, Lo/m;->a:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    return-void
.end method
