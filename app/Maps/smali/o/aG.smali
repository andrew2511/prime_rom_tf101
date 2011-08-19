.class public Lo/aG;
.super Lo/X;


# instance fields
.field final synthetic d:Lo/ao;


# direct methods
.method public constructor <init>(Lo/ao;Lh/eY;LaU/a;Lo/aN;Z)V
    .locals 0

    iput-object p1, p0, Lo/aG;->d:Lo/ao;

    invoke-direct {p0, p2, p3, p4, p5}, Lo/X;-><init>(Lh/eY;LaU/a;Lo/aN;Z)V

    return-void
.end method

.method private b()V
    .locals 7

    iget-object v0, p0, Lo/aG;->a:Lh/eY;

    const/16 v1, 0x91

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x90

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2a0

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v6, Lo/b;

    invoke-direct {v6, p0}, Lo/b;-><init>(Lo/aG;)V

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lh/eJ;)V

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lo/aG;->a:Lh/eY;

    new-instance v1, Lo/c;

    invoke-direct {v1, p0}, Lo/c;-><init>(Lo/aG;)V

    invoke-virtual {v0, v1}, Lh/eY;->c(Lh/eT;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lo/aG;->a:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    iget-object v0, p0, Lo/aG;->d:Lo/ao;

    invoke-virtual {v0}, Lo/ao;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "google.com"

    iget-object v1, p0, Lo/aG;->d:Lo/ao;

    invoke-virtual {v1}, Lo/ao;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lo/aG;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lo/aG;->c()V

    goto :goto_0
.end method
