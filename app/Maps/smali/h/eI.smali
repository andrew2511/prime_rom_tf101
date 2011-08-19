.class public Lh/eI;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lh/eY;


# direct methods
.method public constructor <init>(Lh/eY;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/eI;->a:Lh/eY;

    return-void
.end method

.method static synthetic a(Lh/eI;)Lh/eY;
    .locals 1

    iget-object v0, p0, Lh/eI;->a:Lh/eY;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/h;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/googlenav/h;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/A;->C()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/h;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lo/A;->D()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lo/A;->B()V

    goto :goto_0
.end method

.method static synthetic a(Lh/eI;Lh/fM;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/eI;->b(Lh/fM;)V

    return-void
.end method

.method private b(Lcom/google/googlenav/h;Lh/fM;)V
    .locals 5

    iget-object v0, p0, Lh/eI;->a:Lh/eY;

    invoke-virtual {p1}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v1

    sget-object v2, Lh/dP;->b:Lh/dP;

    const/4 v3, 0x1

    new-instance v4, Lh/dI;

    invoke-direct {v4, p0, p2}, Lh/dI;-><init>(Lh/eI;Lh/fM;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lh/eY;->a(Law/e;Lh/dP;ZLh/aZ;)V

    return-void
.end method

.method private b(Lh/fM;)V
    .locals 8

    const/16 v0, 0x73

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x71

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x70

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x72

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lh/eI;->a:Lh/eY;

    new-instance v7, Lh/dK;

    invoke-direct {v7, p0, p1}, Lh/dK;-><init>(Lh/eI;Lh/fM;)V

    invoke-virtual/range {v0 .. v7}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lh/eJ;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/h;Lh/fM;)V
    .locals 1

    invoke-direct {p0, p1}, Lh/eI;->a(Lcom/google/googlenav/h;)V

    invoke-virtual {p1}, Lcom/google/googlenav/h;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/h;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lh/eI;->b(Lcom/google/googlenav/h;Lh/fM;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lh/eI;->a(Lh/fM;)V

    goto :goto_0
.end method

.method public a(Lh/fM;)V
    .locals 3

    const-string v0, "home_speedbump_ack"

    const/4 v1, 0x0

    new-instance v2, Lh/dL;

    invoke-direct {v2, p0, p1}, Lh/dL;-><init>(Lh/eI;Lh/fM;)V

    invoke-static {v0, v1, v2}, Lo/as;->a(Ljava/lang/String;ZLo/M;)V

    return-void
.end method
