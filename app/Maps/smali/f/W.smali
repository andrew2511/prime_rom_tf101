.class Lf/W;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lf/B;


# direct methods
.method private constructor <init>(Lf/B;)V
    .locals 0

    iput-object p1, p0, Lf/W;->a:Lf/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lf/B;Lf/G;)V
    .locals 0

    invoke-direct {p0, p1}, Lf/W;-><init>(Lf/B;)V

    return-void
.end method

.method private a(Lf/K;)Lf/P;
    .locals 3

    new-instance v0, Lf/P;

    invoke-direct {v0, p1}, Lf/P;-><init>(Lf/K;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lf/P;->a(Z)V

    new-instance v1, Lf/z;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lf/z;-><init>(Lf/W;LT/c;Lf/P;)V

    invoke-virtual {v1}, Lf/z;->b()V

    return-object v0
.end method

.method private a(Lf/P;)V
    .locals 3

    iget-object v0, p0, Lf/W;->a:Lf/B;

    invoke-virtual {p1}, Lf/P;->c()Lf/K;

    move-result-object v1

    invoke-static {v0, v1}, Lf/B;->a(Lf/B;Lf/K;)Lf/L;

    move-result-object v0

    iget-object v1, p0, Lf/W;->a:Lf/B;

    invoke-virtual {v0}, Lf/L;->d()Lf/y;

    move-result-object v0

    invoke-virtual {p1}, Lf/P;->c()Lf/K;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lf/B;->a(Lf/B;Lf/y;Lf/K;)Lf/P;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lf/P;->a(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lf/P;->b()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/P;->a([B)V

    goto :goto_0
.end method

.method static synthetic a(Lf/W;Lf/P;)V
    .locals 0

    invoke-direct {p0, p1}, Lf/W;->a(Lf/P;)V

    return-void
.end method


# virtual methods
.method public a(Lf/L;Lf/K;)Lf/P;
    .locals 1

    invoke-direct {p0, p2}, Lf/W;->a(Lf/K;)Lf/P;

    move-result-object v0

    return-object v0
.end method
