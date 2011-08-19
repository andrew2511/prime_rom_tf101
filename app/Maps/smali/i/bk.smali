.class public Li/bk;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/googlenav/c;Lcom/google/googlenav/ui/bu;Lcom/google/googlenav/ui/aG;)Lcom/google/googlenav/ui/aQ;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    sget-object v4, Lcom/google/googlenav/ui/av;->bm:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, LR/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/google/googlenav/ui/av;->bo:Lcom/google/googlenav/ui/av;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/c;->l()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LR/a;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0xc2

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-static {v6, v7, v5}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8, v8, v9}, LR/a;->a(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/googlenav/ui/av;->bp:Lcom/google/googlenav/ui/av;

    invoke-static {v5, v6}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/c;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LR/a;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v4}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    sget-object v1, Lcom/google/googlenav/ui/av;->bo:Lcom/google/googlenav/ui/av;

    invoke-static {v5, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    invoke-static {p0, p2, v0, v9}, Li/P;->a(Lcom/google/googlenav/c;Lcom/google/googlenav/ui/aG;Lcom/google/googlenav/ui/aQ;Z)V

    invoke-virtual {p0}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v1

    invoke-static {v1, p1, v0}, Li/P;->a(Lf/h;Lcom/google/googlenav/ui/bu;Lcom/google/googlenav/ui/aQ;)V

    invoke-static {p0, v3, v8}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Z)V

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->b(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    return-object v0
.end method
