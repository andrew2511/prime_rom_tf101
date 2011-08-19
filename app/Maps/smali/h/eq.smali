.class public Lh/eq;
.super Lh/eR;


# instance fields
.field private a:Lh/de;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Lak/i;


# direct methods
.method public constructor <init>(Lh/eY;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lh/eR;-><init>(Lh/eY;)V

    iput-boolean v0, p0, Lh/eq;->d:Z

    iput-boolean v0, p0, Lh/eq;->e:Z

    new-instance v0, Lh/fN;

    invoke-direct {v0, p0}, Lh/fN;-><init>(Lh/eq;)V

    iput-object v0, p0, Lh/eq;->f:Lak/i;

    return-void
.end method

.method public constructor <init>(Lh/eY;LaU/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    iput-boolean v0, p0, Lh/eq;->d:Z

    iput-boolean v0, p0, Lh/eq;->e:Z

    new-instance v0, Lh/fN;

    invoke-direct {v0, p0}, Lh/fN;-><init>(Lh/eq;)V

    iput-object v0, p0, Lh/eq;->f:Lak/i;

    return-void
.end method

.method static synthetic a(Lh/eq;)Lh/de;
    .locals 1

    iget-object v0, p0, Lh/eq;->a:Lh/de;

    return-object v0
.end method

.method static synthetic a(Lh/eq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lh/eq;->d:Z

    return p1
.end method

.method static synthetic b(Lh/eq;)Z
    .locals 1

    iget-boolean v0, p0, Lh/eq;->e:Z

    return v0
.end method

.method static synthetic b(Lh/eq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lh/eq;->e:Z

    return p1
.end method

.method private h()V
    .locals 11

    const/4 v1, 0x1

    const/4 v3, 0x0

    new-instance v4, Lh/fO;

    invoke-direct {v4, p0}, Lh/fO;-><init>(Lh/eq;)V

    new-instance v0, Lo/aL;

    const/4 v5, 0x0

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lo/aL;-><init>(ZIILo/aE;Lo/aA;)V

    iget-object v1, p0, Lh/eq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/aL;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lh/eq;->g:Lh/eY;

    const/16 v1, 0x321

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lh/eq;->f:Lak/i;

    sget-object v7, Lh/l;->a:Lh/fc;

    const-wide/16 v8, 0x0

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Lh/eY;->a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    return-void
.end method


# virtual methods
.method public T_()V
    .locals 5

    iget-object v0, p0, Lh/eq;->a:Lh/de;

    iget-object v1, p0, Lh/eq;->c:Ljava/lang/String;

    iget-object v2, p0, Lh/eq;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lh/eq;->d:Z

    iget-boolean v4, p0, Lh/eq;->e:Z

    invoke-virtual {p0}, Lh/eq;->v()V

    iput-object v0, p0, Lh/eq;->a:Lh/de;

    iput-object v1, p0, Lh/eq;->c:Ljava/lang/String;

    iput-object v2, p0, Lh/eq;->b:Ljava/lang/String;

    iput-boolean v3, p0, Lh/eq;->d:Z

    iput-boolean v4, p0, Lh/eq;->e:Z

    invoke-virtual {p0}, Lh/eq;->u()V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/eq;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    iget v0, p0, Lh/eq;->k:I

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/eq;->d()V

    iget v0, p0, Lh/eq;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/eq;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    iget v0, p0, Lh/eq;->k:I

    goto :goto_0
.end method

.method protected a()V
    .locals 3

    const/4 v0, 0x3

    iput v0, p0, Lh/eq;->k:I

    new-instance v0, Lx/o;

    iget-object v1, p0, Lh/eq;->c:Ljava/lang/String;

    const/16 v2, 0x311

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lx/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/eq;->j:Lx/J;

    iget-object v0, p0, Lh/eq;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Lh/de;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p2, p0, Lh/eq;->a:Lh/de;

    iput-object p1, p0, Lh/eq;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lh/eq;->b:Ljava/lang/String;

    iput-boolean v1, p0, Lh/eq;->d:Z

    iput-boolean v1, p0, Lh/eq;->e:Z

    invoke-virtual {p0}, Lh/eq;->u()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lh/eq;->b:Ljava/lang/String;

    invoke-direct {p0}, Lh/eq;->h()V

    move v0, v2

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lh/eq;->a:Lh/de;

    invoke-interface {v0}, Lh/de;->b()V

    invoke-virtual {p0}, Lh/eq;->v()V

    move v0, v2

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lh/eq;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eq;->a:Lh/de;

    iget-object v1, p0, Lh/eq;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lh/de;->a(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lh/eq;->v()V

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh/eq;->a:Lh/de;

    invoke-interface {v0}, Lh/de;->b()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x6a9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected b()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lh/eq;->a:Lh/de;

    iput-object v0, p0, Lh/eq;->c:Ljava/lang/String;

    iput-object v0, p0, Lh/eq;->b:Ljava/lang/String;

    iput-boolean v1, p0, Lh/eq;->d:Z

    iput-boolean v1, p0, Lh/eq;->e:Z

    invoke-super {p0}, Lh/eR;->b()V

    return-void
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lh/eq;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eq;->a:Lh/de;

    iget-object v1, p0, Lh/eq;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lh/de;->a(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lh/eq;->v()V

    return-void

    :cond_0
    iget-object v0, p0, Lh/eq;->a:Lh/de;

    invoke-interface {v0}, Lh/de;->b()V

    goto :goto_0
.end method
