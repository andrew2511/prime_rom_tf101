.class Lh/br;
.super Ljava/lang/Object;

# interfaces
.implements Lo/am;


# instance fields
.field final synthetic a:Lh/k;


# direct methods
.method private constructor <init>(Lh/k;)V
    .locals 0

    iput-object p1, p0, Lh/br;->a:Lh/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lh/k;Lh/bL;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/br;-><init>(Lh/k;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lh/br;->a:Lh/k;

    invoke-static {v0}, Lh/k;->a(Lh/k;)Lo/bj;

    move-result-object v0

    invoke-virtual {v0}, Lo/bj;->l()Lo/I;

    move-result-object v0

    iget-object v1, p0, Lh/br;->a:Lh/k;

    invoke-static {v1}, Lh/k;->c(Lh/k;)LaU/a;

    move-result-object v1

    new-instance v2, Lh/dO;

    invoke-direct {v2, p0, v0}, Lh/dO;-><init>(Lh/br;Lo/I;)V

    invoke-interface {v1, v2}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
