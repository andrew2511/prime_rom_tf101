.class public Li/aL;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/googlenav/c;Ljava/util/Vector;Lcom/google/googlenav/ui/aG;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->u()[Lcom/google/googlenav/bu;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlenav/c;->t()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v3, :cond_2

    array-length v0, v3

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v1, v3

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/google/googlenav/ui/aS;

    aget-object v4, v3, v0

    iget-object v4, v4, Lcom/google/googlenav/bu;->a:Ljava/lang/String;

    sget v6, Lcom/google/googlenav/ui/aV;->bM:I

    invoke-direct {v1, v4, v6}, Lcom/google/googlenav/ui/aS;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Li/ah;

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Li/ah;-><init>(Lcom/google/googlenav/c;Ljava/util/List;[Lcom/google/googlenav/bu;Lcom/google/googlenav/ui/aj;Ljava/lang/String;)V

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(LI/B;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/googlenav/ui/aG;->a()LaD/p;

    move-result-object v3

    new-instance v4, Li/j;

    invoke-direct {v4, v0}, Li/j;-><init>(Li/ah;)V

    invoke-virtual {v3, v2, v4}, LaD/p;->a(Ljava/util/List;LaD/n;)V

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    if-nez v3, :cond_3

    new-instance v0, Li/ah;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Li/ah;-><init>(Lcom/google/googlenav/c;Ljava/util/List;[Lcom/google/googlenav/bu;Lcom/google/googlenav/ui/aj;Ljava/lang/String;)V

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(LI/B;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
