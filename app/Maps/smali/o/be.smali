.class public Lo/be;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/ui/aT;

.field private final b:Lx/T;

.field private c:Lo/bB;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/aT;Lh/eY;Lx/T;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lo/be;->b:Lx/T;

    iput-object p1, p0, Lo/be;->a:Lcom/google/googlenav/ui/aT;

    new-instance v0, Lo/bB;

    invoke-static {}, Lo/H;->j()Lo/H;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lo/bB;-><init>(Lh/eY;Lo/aN;)V

    iput-object v0, p0, Lo/be;->c:Lo/bB;

    return-void
.end method

.method static synthetic a(Lo/be;)Lcom/google/googlenav/ui/aT;
    .locals 1

    iget-object v0, p0, Lo/be;->a:Lcom/google/googlenav/ui/aT;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lo/be;->b:Lx/T;

    iget-object v1, p0, Lo/be;->b:Lx/T;

    invoke-virtual {v1, p1}, Lx/T;->a(I)Lcom/google/googlenav/bG;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bG;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/T;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lo/be;->b:Lx/T;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lx/T;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lak/m;)V
    .locals 1

    iget-object v0, p0, Lo/be;->c:Lo/bB;

    invoke-virtual {v0, p1}, Lo/bB;->a(Lak/m;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/aQ;)V
    .locals 1

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/bG;Li/q;)V
    .locals 13

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/googlenav/bG;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lo/be;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->aH()Lh/eY;

    move-result-object v8

    const/16 v0, 0x46

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v9

    const/16 v0, 0x2d9

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v10

    const/16 v0, 0x2a0

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v11

    const/16 v0, 0x5d

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v12

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v0, Lo/O;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lo/O;-><init>(Lo/be;Ljava/lang/String;Ljava/lang/String;Li/q;Lcom/google/googlenav/bG;)V

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lh/eJ;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 10

    const-wide/high16 v4, -0x8000

    const/4 v2, 0x0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v9

    new-instance v0, Lcom/google/googlenav/be;

    const/4 v3, 0x1

    move-object v1, p1

    move-wide v6, v4

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/be;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLcom/google/googlenav/aj;)V

    invoke-virtual {v9, v0}, Lak/h;->c(Lak/d;)V

    return-void
.end method
