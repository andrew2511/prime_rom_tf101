.class public Lh/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lo/bj;

.field private final b:LaU/a;

.field private c:Lh/at;


# direct methods
.method public constructor <init>(Lo/bj;LaU/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/k;->a:Lo/bj;

    iput-object p2, p0, Lh/k;->b:LaU/a;

    return-void
.end method

.method static synthetic a(Lh/k;)Lo/bj;
    .locals 1

    iget-object v0, p0, Lh/k;->a:Lo/bj;

    return-object v0
.end method

.method static synthetic b(Lh/k;)Lh/at;
    .locals 1

    iget-object v0, p0, Lh/k;->c:Lh/at;

    return-object v0
.end method

.method static synthetic c(Lh/k;)LaU/a;
    .locals 1

    iget-object v0, p0, Lh/k;->b:LaU/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lh/k;->a:Lo/bj;

    new-instance v1, Lh/br;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lh/br;-><init>(Lh/k;Lh/bL;)V

    invoke-virtual {v0, v1}, Lo/bj;->a(Lo/am;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/h;Lcom/google/googlenav/bv;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/googlenav/h;->a()Law/e;

    iget-object v0, p0, Lh/k;->a:Lo/bj;

    invoke-virtual {v0}, Lo/bj;->l()Lo/I;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/I;->a(Lcom/google/googlenav/bv;)V

    iget-object v0, p0, Lh/k;->a:Lo/bj;

    invoke-virtual {v0}, Lo/bj;->l()Lo/I;

    move-result-object v0

    invoke-virtual {v0}, Lo/I;->g()Law/e;

    move-result-object v0

    new-instance v1, Lh/bL;

    invoke-direct {v1, p0, v0, p2}, Lh/bL;-><init>(Lh/k;Law/e;Lcom/google/googlenav/bv;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method public a(Lh/at;)V
    .locals 0

    iput-object p1, p0, Lh/k;->c:Lh/at;

    return-void
.end method
