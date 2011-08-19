.class public Lh/I;
.super Lh/eR;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/lang/String;

.field private final c:Lf/Y;

.field private d:Z


# direct methods
.method public constructor <init>(Lh/eY;Ljava/lang/String;Ljava/lang/String;Lf/Y;LaU/a;)V
    .locals 1

    invoke-direct {p0, p1, p5}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/I;->d:Z

    iput-object p4, p0, Lh/I;->c:Lf/Y;

    iput-object p2, p0, Lh/I;->a:Ljava/lang/String;

    iput-object p3, p0, Lh/I;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/L;
    .locals 9

    const/16 v8, 0x16

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Lcom/google/googlenav/ui/view/android/L;

    invoke-direct {v0, p1, v6}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    const/16 v2, 0x451

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lh/I;->b:Ljava/lang/String;

    aput-object v4, v3, v7

    const-string v4, "5080011"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {}, Lac/m;->G()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, LR/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lh/I;->a(Ljava/lang/String;)LI/B;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    const/16 v2, 0x2d6

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lh/I;->a:Ljava/lang/String;

    invoke-static {v2, v3}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lh/I;->a(Ljava/lang/String;)LI/B;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    const/16 v2, 0x22d

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lac/m;->E()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lh/I;->a(Ljava/lang/String;)LI/B;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    invoke-static {}, Lac/m;->H()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "China"

    invoke-virtual {p0, v2}, Lh/I;->a(Ljava/lang/String;)LI/B;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/d;->D()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v6}, Lcom/google/googlenav/aT;->a(B)Lcom/google/googlenav/aT;

    move-result-object v2

    :goto_0
    const/16 v3, 0x425

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/googlenav/aT;->e()I

    move-result v4

    invoke-virtual {v1}, Lak/h;->p()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, LA/m;->a(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lh/I;->a(Ljava/lang/String;)LI/B;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    const/16 v3, 0x424

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/googlenav/aT;->d()I

    move-result v2

    invoke-virtual {v1}, Lak/h;->q()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v2}, LA/m;->a(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lh/I;->a(Ljava/lang/String;)LI/B;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    invoke-static {}, LA/m;->a()I

    move-result v2

    invoke-static {v2}, LA/m;->a(I)I

    move-result v2

    invoke-static {}, LA/m;->b()I

    move-result v3

    invoke-static {v3}, LA/m;->a(I)I

    move-result v3

    const/16 v4, 0xff

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lh/I;->a(Ljava/lang/String;)LI/B;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    const/16 v4, 0x247

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lh/I;->c:Lf/Y;

    invoke-virtual {v5}, Lf/Y;->e()Lf/h;

    move-result-object v5

    invoke-virtual {v5}, Lf/h;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lh/I;->a(Ljava/lang/String;)LI/B;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    const/16 v4, 0x24c

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lh/I;->c:Lf/Y;

    invoke-virtual {v5}, Lf/Y;->a()I

    move-result v5

    iget-object v6, p0, Lh/I;->c:Lf/Y;

    invoke-virtual {v6}, Lf/Y;->b()I

    move-result v6

    invoke-static {v5, v6}, Lf/h;->a(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lh/I;->a(Ljava/lang/String;)LI/B;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    const/16 v4, 0x24e

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lh/I;->c:Lf/Y;

    invoke-virtual {v5}, Lf/Y;->f()Lf/l;

    move-result-object v5

    invoke-virtual {v5}, Lf/l;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lh/I;->a(Ljava/lang/String;)LI/B;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    invoke-static {}, LaW/a;->d()LaW/a;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, LaW/a;->f()Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "myl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, LaW/a;->i()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, LaW/a;->j()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, LaW/a;->h()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, LaW/a;->g()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lh/I;->a(Ljava/lang/String;)LI/B;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    :goto_1
    const/16 v4, 0x3bf

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lak/h;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lh/I;->a(Ljava/lang/String;)LI/B;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    invoke-static {}, Lac/d;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lak/h;->u()J

    move-result-wide v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cookie: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lh/I;->a(Ljava/lang/String;)LI/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GAS: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, LaO/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lh/I;->a(Ljava/lang/String;)LI/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->an()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, LD/e;->a()LD/e;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Experiments: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, LD/e;->a()LD/e;

    move-result-object v4

    invoke-virtual {v4}, LD/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lh/I;->a(Ljava/lang/String;)LI/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Lr/h;->a()Lr/h;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Labs: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lr/h;->a()Lr/h;

    move-result-object v4

    invoke-virtual {v4}, Lr/h;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lh/I;->a(Ljava/lang/String;)LI/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    :cond_3
    const/16 v1, 0xe2

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v4

    invoke-virtual {v4}, Lac/m;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/googlenav/ui/aV;->ah()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "240"

    :goto_2
    invoke-static {}, Lf/P;->w()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v4, v5, v6}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lh/I;->a(Ljava/lang/String;)LI/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    invoke-static {}, Lac/d;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Network: OK"

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v4

    invoke-virtual {v4}, Lak/h;->w()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1}, Lak/h;->w()Ljava/lang/Throwable;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network: Error - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {p0, v1}, Lh/I;->a(Ljava/lang/String;)LI/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    :cond_5
    const-string v1, "fm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    const-string v1, "tm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-object v0

    :cond_6
    invoke-static {v7}, Lcom/google/googlenav/aT;->a(B)Lcom/google/googlenav/aT;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    const-string v4, "myl: N/A"

    invoke-virtual {p0, v4}, Lh/I;->a(Ljava/lang/String;)LI/B;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    const-string v5, "160"

    goto/16 :goto_2
.end method

.method static synthetic a(Lh/I;Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/L;
    .locals 1

    invoke-direct {p0, p1}, Lh/I;->a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/L;

    move-result-object v0

    return-object v0
.end method

.method private h()LI/n;
    .locals 1

    new-instance v0, Lh/bs;

    invoke-direct {v0, p0}, Lh/bs;-><init>(Lh/I;)V

    return-object v0
.end method


# virtual methods
.method public A_()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/I;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x8

    invoke-static {v0}, Lax/c;->a(I)Lax/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh/I;->a(Lax/c;)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/I;->v()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/I;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)LI/B;
    .locals 1

    new-instance v0, Lh/bt;

    invoke-direct {v0, p0, p1}, Lh/bt;-><init>(Lh/I;Ljava/lang/String;)V

    return-object v0
.end method

.method protected a()V
    .locals 3

    const/16 v0, 0x8

    iget-boolean v1, p0, Lh/I;->d:Z

    if-eqz v1, :cond_1

    const-string v1, "i"

    :goto_0
    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    iget-object v0, p0, Lh/I;->j:Lx/J;

    if-nez v0, :cond_0

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    new-instance v1, Lx/z;

    invoke-direct {p0}, Lh/I;->h()LI/n;

    move-result-object v2

    invoke-direct {v1, v2}, Lx/z;-><init>(LI/n;)V

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/I;->j:Lx/J;

    :cond_0
    iget-object v0, p0, Lh/I;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void

    :cond_1
    const-string v1, "a"

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    invoke-super {p0}, Lh/eR;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/I;->d:Z

    return-void
.end method
