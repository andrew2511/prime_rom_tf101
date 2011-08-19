.class public Lh/eM;
.super Lh/eR;


# instance fields
.field private a:Lh/dx;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lx/U;


# direct methods
.method public constructor <init>(Lh/eY;)V
    .locals 1

    invoke-direct {p0, p1}, Lh/eR;-><init>(Lh/eY;)V

    new-instance v0, Lh/bP;

    invoke-direct {v0, p0}, Lh/bP;-><init>(Lh/eM;)V

    iput-object v0, p0, Lh/eM;->e:Lx/U;

    return-void
.end method

.method public constructor <init>(Lh/eY;LaU/a;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    new-instance v0, Lh/bP;

    invoke-direct {v0, p0}, Lh/bP;-><init>(Lh/eM;)V

    iput-object v0, p0, Lh/eM;->e:Lx/U;

    return-void
.end method

.method static synthetic a(Lh/eM;)Lh/dx;
    .locals 1

    iget-object v0, p0, Lh/eM;->a:Lh/dx;

    return-object v0
.end method

.method private h()Lx/B;
    .locals 13

    new-instance v10, Ljava/util/Vector;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Ljava/util/Vector;-><init>(I)V

    new-instance v0, Lx/w;

    const-string v1, "GMM-CLIENT-AUTH-COOKIE"

    iget-object v2, p0, Lh/eM;->d:Ljava/lang/String;

    const-string v3, "google.com"

    invoke-direct {v0, v1, v2, v3}, Lx/w;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lh/eM;->c:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x453

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x270

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lh/eM;->e:Lx/U;

    const/4 v9, 0x0

    invoke-static/range {v0 .. v10}, Lx/C;->a(Ljava/lang/String;Lx/G;Ljava/lang/String;Ljava/lang/String;IZZZLx/U;Lx/U;Ljava/util/Vector;)Lx/C;

    move-result-object v8

    new-instance v0, Lx/B;

    const/4 v1, 0x2

    iget-object v2, p0, Lh/eM;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Lx/B;-><init>(ILjava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/util/Vector;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lx/C;Lx/n;Lx/n;[Lax/e;Lx/D;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lx/B;->u:Z

    return-object v0
.end method


# virtual methods
.method public T_()V
    .locals 4

    iget-object v0, p0, Lh/eM;->b:Ljava/lang/String;

    iget-object v1, p0, Lh/eM;->c:Ljava/lang/String;

    iget-object v2, p0, Lh/eM;->d:Ljava/lang/String;

    iget-object v3, p0, Lh/eM;->a:Lh/dx;

    invoke-virtual {p0}, Lh/eM;->v()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lh/eM;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh/dx;)V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public a(Lax/c;)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected a()V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lh/eM;->k:I

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    invoke-direct {p0}, Lh/eM;->h()Lx/B;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/eM;->j:Lx/J;

    iget-object v0, p0, Lh/eM;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh/dx;)V
    .locals 0

    iput-object p1, p0, Lh/eM;->b:Ljava/lang/String;

    iput-object p2, p0, Lh/eM;->c:Ljava/lang/String;

    iput-object p3, p0, Lh/eM;->d:Ljava/lang/String;

    iput-object p4, p0, Lh/eM;->a:Lh/dx;

    invoke-virtual {p0}, Lh/eM;->u()V

    return-void
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lh/eM;->b:Ljava/lang/String;

    iput-object v0, p0, Lh/eM;->a:Lh/dx;

    iput-object v0, p0, Lh/eM;->d:Ljava/lang/String;

    iput-object v0, p0, Lh/eM;->c:Ljava/lang/String;

    invoke-super {p0}, Lh/eR;->b()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lh/eM;->a:Lh/dx;

    invoke-interface {v0}, Lh/dx;->b()V

    const/4 v0, 0x1

    iput v0, p0, Lh/eM;->k:I

    return-void
.end method
