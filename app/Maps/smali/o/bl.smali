.class public Lo/bl;
.super Lo/X;


# direct methods
.method public constructor <init>(Lh/eY;LaU/a;Lo/aN;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lo/X;-><init>(Lh/eY;LaU/a;Lo/aN;Z)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 8

    iget-object v0, p0, Lo/bl;->a:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    const/16 v0, 0x22f

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lo/bl;->a:Lh/eY;

    const/16 v1, 0x234

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x233

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "https://www.google.com/latitude/optin"

    invoke-static {v2, v3, v4}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x230

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x231

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, Lo/ay;

    invoke-direct {v7, p0}, Lo/ay;-><init>(Lo/bl;)V

    invoke-virtual/range {v0 .. v7}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lh/eJ;)V

    return-void
.end method
