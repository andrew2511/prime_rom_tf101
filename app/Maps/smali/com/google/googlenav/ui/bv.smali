.class public Lcom/google/googlenav/ui/bv;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Lh/eY;

.field private final c:Li/aE;

.field private final d:LaU/a;

.field private e:Z

.field private f:Lcom/google/googlenav/login/h;


# direct methods
.method public constructor <init>(Lh/eY;Li/aE;LaU/a;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/bv;->e:Z

    iput-object p1, p0, Lcom/google/googlenav/ui/bv;->b:Lh/eY;

    iput-object p2, p0, Lcom/google/googlenav/ui/bv;->c:Li/aE;

    iput-object p3, p0, Lcom/google/googlenav/ui/bv;->d:LaU/a;

    iput p4, p0, Lcom/google/googlenav/ui/bv;->a:I

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/bv;)Lh/eY;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bv;->b:Lh/eY;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/bv;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/ui/bv;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/bv;)Li/aE;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bv;->c:Li/aE;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/bv;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/bv;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/bv;)I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/bv;->a:I

    return v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/login/h;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/bv;->f:Lcom/google/googlenav/login/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/K;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/K;-><init>(Lcom/google/googlenav/ui/bv;Lcom/google/googlenav/ui/O;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/bv;->f:Lcom/google/googlenav/login/h;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/bv;->f:Lcom/google/googlenav/login/h;

    return-object v0
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/googlenav/ui/bv;->a:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/bv;->b:Lh/eY;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh/eY;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/googlenav/ui/bv;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/bv;->b:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->u()Lh/l;

    move-result-object v0

    new-instance v1, Lh/fc;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lh/fc;-><init>(I)V

    invoke-virtual {v0, v1}, Lh/l;->a(Lh/fc;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/bv;->b:Lh/eY;

    invoke-virtual {v0, v3}, Lh/eY;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/bv;->b:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->g()I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/bv;->d:LaU/a;

    new-instance v1, Lcom/google/googlenav/ui/O;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/O;-><init>(Lcom/google/googlenav/ui/bv;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
