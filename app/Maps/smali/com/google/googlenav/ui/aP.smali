.class public Lcom/google/googlenav/ui/aP;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/ui/aT;

.field private b:Lx/S;

.field private c:Lx/S;

.field private final d:LaF/a;

.field private e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/aT;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LaF/a;

    invoke-direct {v0, v1, v1}, LaF/a;-><init>(II)V

    iput-object v0, p0, Lcom/google/googlenav/ui/aP;->d:LaF/a;

    iput-object p1, p0, Lcom/google/googlenav/ui/aP;->a:Lcom/google/googlenav/ui/aT;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/aP;)Lcom/google/googlenav/ui/aT;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/aP;->a:Lcom/google/googlenav/ui/aT;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/aP;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/aP;->e:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/aP;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ui/aP;->h()V

    return-void
.end method

.method private h()V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/aP;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "HAS_SHOWN_CALIBRATE_COMPASS_NOTIFICATION"

    new-instance v1, Lcom/google/googlenav/ui/be;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/be;-><init>(Lcom/google/googlenav/ui/aP;)V

    invoke-static {v0, v4, v1}, Lo/as;->a(Ljava/lang/String;ILo/cf;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, LQ/g;->j()LQ/g;

    move-result-object v0

    invoke-virtual {v0}, LQ/g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LQ/g;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/aP;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/googlenav/ui/aP;->e:Ljava/lang/Boolean;

    const-string v0, "HAS_SHOWN_CALIBRATE_COMPASS_NOTIFICATION"

    const/4 v1, 0x1

    invoke-static {v0, v1, v5}, Lo/as;->a(Ljava/lang/String;ILo/Z;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/aP;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x59

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2a0

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lh/eJ;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/aP;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aB()Lcom/google/googlenav/ui/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/as;->a()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/aP;->d()V

    :cond_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/aP;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->E()Li/aQ;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/aP;->b()V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/aI;)V
    .locals 3

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/ui/aI;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lx/h;->a([Lcom/google/googlenav/ui/aI;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/x;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/aP;->b:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/aP;->b:Lx/S;

    iget-object v1, p0, Lcom/google/googlenav/ui/aP;->d:LaF/a;

    invoke-interface {v0, v1, p1}, Lx/S;->a(LaF/a;Lcom/google/googlenav/ui/x;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    const/16 v1, 0x9

    new-instance v2, Lcom/google/googlenav/ui/bd;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/bd;-><init>(Lcom/google/googlenav/ui/aP;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lx/h;->a(ILx/U;Ljava/lang/String;)Lx/S;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/aP;->b:Lx/S;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/aP;->c()V

    goto :goto_0
.end method

.method public b(Lcom/google/googlenav/ui/x;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/aP;->c:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/aP;->c:Lx/S;

    iget-object v1, p0, Lcom/google/googlenav/ui/aP;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bu;->z()LH/f;

    move-result-object v1

    invoke-virtual {v1}, LH/f;->i()Z

    move-result v1

    invoke-interface {v0, v1}, Lx/S;->a(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/aP;->c:Lx/S;

    iget-object v1, p0, Lcom/google/googlenav/ui/aP;->d:LaF/a;

    invoke-interface {v0, v1, p1}, Lx/S;->a(LaF/a;Lcom/google/googlenav/ui/x;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/aP;->b:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/aP;->b:Lx/S;

    invoke-interface {v0}, Lx/S;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/aP;->b:Lx/S;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    const/16 v1, 0xc

    new-instance v2, Lcom/google/googlenav/ui/bc;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/bc;-><init>(Lcom/google/googlenav/ui/aP;)V

    invoke-virtual {v0, v1, v2, v3}, Lx/h;->a(ILx/U;Ljava/lang/String;)Lx/S;

    const/16 v0, 0x3ab

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->bD:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/aP;->a(Lcom/google/googlenav/ui/aI;)V

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    const/16 v1, 0xd

    new-instance v2, Lcom/google/googlenav/ui/bb;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/bb;-><init>(Lcom/google/googlenav/ui/aP;)V

    invoke-virtual {v0, v1, v2, v3}, Lx/h;->a(ILx/U;Ljava/lang/String;)Lx/S;

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    const/16 v1, 0xe

    new-instance v2, Lcom/google/googlenav/ui/bg;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/bg;-><init>(Lcom/google/googlenav/ui/aP;)V

    invoke-virtual {v0, v1, v2, v3}, Lx/h;->a(ILx/U;Ljava/lang/String;)Lx/S;

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    const/16 v1, 0xf

    new-instance v2, Lcom/google/googlenav/ui/bf;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/bf;-><init>(Lcom/google/googlenav/ui/aP;)V

    invoke-virtual {v0, v1, v2, v3}, Lx/h;->a(ILx/U;Ljava/lang/String;)Lx/S;

    return-void
.end method

.method public e()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/aP;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aA()Lcom/google/googlenav/ui/bu;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/af;

    invoke-virtual {v1}, Lcom/google/googlenav/android/af;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/af;

    invoke-virtual {v0}, Lcom/google/googlenav/android/af;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/aP;->h()V

    :cond_0
    sget-object v0, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/af;

    invoke-virtual {v0}, Lcom/google/googlenav/android/af;->f()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v2, v2}, Lcom/google/googlenav/ui/bu;->a(ZZ)V

    sget-object v0, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/af;

    invoke-virtual {v0}, Lcom/google/googlenav/android/af;->h()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2, v2}, Lcom/google/googlenav/ui/bu;->a(ZZ)V

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    invoke-virtual {v0}, Lx/h;->c()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    invoke-virtual {v0}, Lx/h;->d()Z

    move-result v0

    return v0
.end method
