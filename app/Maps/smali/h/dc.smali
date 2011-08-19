.class public Lh/dc;
.super Lh/eR;

# interfaces
.implements Lcom/google/googlenav/P;


# instance fields
.field private a:Z

.field private b:Z

.field private c:[B


# direct methods
.method public constructor <init>(Lh/eY;LaU/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    return-void
.end method

.method static synthetic a(Lh/dc;)Lx/B;
    .locals 1

    invoke-direct {p0}, Lh/dc;->j()Lx/B;

    move-result-object v0

    return-object v0
.end method

.method private j()Lx/B;
    .locals 15

    const/16 v8, 0x453

    const/16 v7, 0x26f

    const/4 v14, 0x1

    const/4 v13, 0x0

    new-instance v9, Lx/n;

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-static {v14}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x1f5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v2, 0xc7

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0x1f6

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-direct {v9, v0, v1, v13, v13}, Lx/n;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lh/dc;->c:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x453

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x26f

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lx/C;->a(Ljava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/lang/String;Ljava/lang/String;IZ)Lx/C;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v8, v0

    :goto_0
    new-instance v0, Lx/B;

    const/4 v1, 0x2

    const/16 v2, 0x415

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v13

    move-object v4, v13

    move-object v5, v13

    move-object v6, v13

    move-object v7, v13

    move-object v10, v13

    move-object v11, v13

    move-object v12, v13

    invoke-direct/range {v0 .. v12}, Lx/B;-><init>(ILjava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/util/Vector;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lx/C;Lx/n;Lx/n;[Lax/e;Lx/D;)V

    iput-boolean v14, v0, Lx/B;->u:Z

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lh/dc;->c:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v8}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v13

    move-object v2, v13

    move v5, v14

    move v6, v14

    invoke-static/range {v0 .. v6}, Lx/C;->a(Ljava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/lang/String;Ljava/lang/String;IZ)Lx/C;

    move-result-object v0

    move-object v8, v0

    goto :goto_0
.end method


# virtual methods
.method public A_()I
    .locals 1

    invoke-virtual {p0}, Lh/dc;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public a(Lax/b;)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/dc;->v()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/dc;->b:Z

    new-instance v0, Lcom/google/googlenav/f;

    invoke-static {}, Lcom/google/googlenav/d;->as()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/f;-><init>(Ljava/lang/String;Lcom/google/googlenav/P;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 2

    iput-object p2, p0, Lh/dc;->c:[B

    iget-object v0, p0, Lh/dc;->h:LaU/a;

    new-instance v1, Lh/ej;

    invoke-direct {v1, p0, p0}, Lh/ej;-><init>(Lh/dc;Lcom/google/googlenav/ui/aY;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    iput-boolean v0, p0, Lh/dc;->a:Z

    iput-boolean v0, p0, Lh/dc;->b:Z

    goto :goto_0

    :pswitch_1
    iput-boolean v1, p0, Lh/dc;->a:Z

    iput-boolean v0, p0, Lh/dc;->b:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lh/dc;->c:[B

    invoke-super {p0}, Lh/eR;->b()V

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lh/dc;->b:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lh/dc;->a:Z

    return v0
.end method
