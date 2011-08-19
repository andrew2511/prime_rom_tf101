.class public Lcom/google/googlenav/layer/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/layer/i;


# instance fields
.field private final a:Li/x;

.field private final b:Lcom/google/googlenav/layer/s;

.field private final c:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Li/x;Lcom/google/googlenav/layer/s;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/layer/q;->c:Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/google/googlenav/layer/q;->a:Li/x;

    iput-object p2, p0, Lcom/google/googlenav/layer/q;->b:Lcom/google/googlenav/layer/s;

    return-void
.end method

.method private a(Lcom/google/googlenav/bF;Z)Lak/d;
    .locals 6

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/googlenav/bF;->bT()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/bF;->bS()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/layer/q;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/m;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/googlenav/layer/m;

    invoke-virtual {p1}, Lcom/google/googlenav/bF;->bJ()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Lcom/google/googlenav/layer/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/layer/i;)V

    iget-object v1, p0, Lcom/google/googlenav/layer/q;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x43

    if-eqz p2, :cond_4

    const-string v2, "p"

    :goto_1
    invoke-static {p1}, Lcom/google/googlenav/layer/q;->a(Lcom/google/googlenav/bF;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p2}, Lcom/google/googlenav/layer/m;->a(Z)V

    :cond_2
    :goto_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-string v2, "i"

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method private a()Lcom/google/googlenav/aY;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/layer/q;->a:Li/x;

    invoke-virtual {v0}, Li/x;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/layer/q;->a:Li/x;

    invoke-virtual {v2}, Li/x;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support loading details on-demand."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object p0, p0, Lcom/google/googlenav/layer/q;->a:Li/x;

    check-cast p0, Li/n;

    invoke-virtual {p0}, Li/n;->q()Lcom/google/googlenav/aY;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_1
    iget-object p0, p0, Lcom/google/googlenav/layer/q;->a:Li/x;

    check-cast p0, Li/aw;

    invoke-virtual {p0}, Li/aw;->bv()Lcom/google/googlenav/aY;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    iget-object p0, p0, Lcom/google/googlenav/layer/q;->a:Li/x;

    check-cast p0, Li/Z;

    invoke-virtual {p0}, Li/Z;->B()Lcom/google/googlenav/aY;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    iget-object p0, p0, Lcom/google/googlenav/layer/q;->a:Li/x;

    check-cast p0, Li/bm;

    invoke-virtual {p0}, Li/bm;->q()Lcom/google/googlenav/aY;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private static a(Lcom/google/googlenav/bF;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "l="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlenav/bF;->bJ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/layer/q;->a:Li/x;

    invoke-virtual {v0}, Li/x;->b()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/c;)Lak/d;
    .locals 1

    check-cast p1, Lcom/google/googlenav/bF;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/layer/q;->a(Lcom/google/googlenav/bF;Z)Lak/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/q;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/bF;Z)V
    .locals 6

    const-wide/16 v4, -0x1

    iget-object v0, p0, Lcom/google/googlenav/layer/q;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_7

    invoke-direct {p0}, Lcom/google/googlenav/layer/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    invoke-virtual {p2, v0}, Lcom/google/googlenav/bF;->a(B)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/layer/q;->b:Lcom/google/googlenav/layer/s;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/googlenav/layer/q;->b:Lcom/google/googlenav/layer/s;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->j()J

    move-result-wide v0

    :goto_0
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/google/googlenav/bF;->bT()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->b()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/google/googlenav/bF;->a(J)V

    :cond_1
    invoke-direct {p0}, Lcom/google/googlenav/layer/q;->a()Lcom/google/googlenav/aY;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/aY;->a(Ljava/lang/String;Lcom/google/googlenav/bF;)V

    iget-object v0, p0, Lcom/google/googlenav/layer/q;->a:Li/x;

    invoke-virtual {v0, p2}, Li/x;->c(Lcom/google/googlenav/c;)V

    move-object v0, p2

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/google/googlenav/layer/q;->b:Lcom/google/googlenav/layer/s;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/googlenav/layer/q;->b:Lcom/google/googlenav/layer/s;

    invoke-virtual {v1}, Lcom/google/googlenav/layer/s;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msid:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/googlenav/layer/q;->b:Lcom/google/googlenav/layer/s;

    invoke-virtual {v1}, Lcom/google/googlenav/layer/s;->p()Law/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bF;->e(Law/e;)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bF;->a(B)V

    :cond_3
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/layer/q;->a:Li/x;

    invoke-virtual {v0}, Li/x;->aG()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/layer/q;->a:Li/x;

    check-cast v0, Li/bl;

    invoke-virtual {v0}, Li/bl;->s_()V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/googlenav/layer/q;->a:Li/x;

    invoke-virtual {v0}, Li/x;->aO()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/layer/q;->a:Li/x;

    invoke-virtual {v0}, Li/x;->aN()Z

    :cond_5
    return-void

    :cond_6
    move-wide v0, v4

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/layer/q;->a:Li/x;

    invoke-virtual {v0}, Li/x;->ac()Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bF;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bF;->f(Z)V

    invoke-direct {p0}, Lcom/google/googlenav/layer/q;->a()Lcom/google/googlenav/aY;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/googlenav/aY;->a(Ljava/lang/String;Lcom/google/googlenav/bF;)V

    goto :goto_1

    :cond_8
    if-eqz p3, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/layer/q;->a:Li/x;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Li/x;->e(Z)V

    iget-object v0, p0, Lcom/google/googlenav/layer/q;->a:Li/x;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Li/x;->a(B)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/layer/q;->a:Li/x;

    invoke-virtual {v0}, Li/x;->aF()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/layer/q;->a:Li/x;

    invoke-virtual {v0}, Li/x;->au()V

    goto :goto_2
.end method

.method public b(Lcom/google/googlenav/c;)Lak/d;
    .locals 1

    check-cast p1, Lcom/google/googlenav/bF;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/layer/q;->a(Lcom/google/googlenav/bF;Z)Lak/d;

    move-result-object v0

    return-object v0
.end method
