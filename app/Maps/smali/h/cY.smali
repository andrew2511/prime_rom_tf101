.class Lh/cY;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/aj;
.implements Li/o;


# instance fields
.field final synthetic a:Lh/dN;

.field private final b:Lcom/google/googlenav/bG;


# direct methods
.method public constructor <init>(Lh/dN;Lcom/google/googlenav/bG;)V
    .locals 0

    iput-object p1, p0, Lh/cY;->a:Lh/dN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh/cY;->b:Lcom/google/googlenav/bG;

    return-void
.end method

.method static synthetic a(Lh/cY;)Lcom/google/googlenav/bG;
    .locals 1

    iget-object v0, p0, Lh/cY;->b:Lcom/google/googlenav/bG;

    return-object v0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lh/cY;->a:Lh/dN;

    iget-object v0, v0, Lh/dN;->h:LaU/a;

    new-instance v1, Lh/eW;

    invoke-direct {v1, p0}, Lh/eW;-><init>(Lh/cY;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lh/cY;->a:Lh/dN;

    iget-object v0, v0, Lh/dN;->h:LaU/a;

    new-instance v1, Lh/eX;

    invoke-direct {v1, p0}, Lh/eX;-><init>(Lh/cY;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/j;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lo/aH;

    invoke-direct {v0, p1}, Lo/aH;-><init>(Lcom/google/googlenav/j;)V

    invoke-virtual {v0}, Lo/aH;->d()Lo/U;

    move-result-object v0

    invoke-virtual {v0}, Lo/U;->F()[Lcom/google/googlenav/bG;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v1

    invoke-virtual {v0}, Lo/U;->G()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lh/cY;->b:Lcom/google/googlenav/bG;

    invoke-virtual {v2}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/googlenav/ai;->a(Law/e;Law/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Lo/U;->c(I)V

    iget-object v0, p0, Lh/cY;->a:Lh/dN;

    invoke-static {v0}, Lh/dN;->b(Lh/dN;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->Y()Li/br;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, v4, v4}, Li/br;->a(ILcom/google/googlenav/j;LaU/a;Li/aD;)V

    :cond_0
    invoke-direct {p0}, Lh/cY;->a()V

    return-void
.end method

.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lh/cY;->a:Lh/dN;

    invoke-static {v0}, Lh/dN;->b(Lh/dN;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->Y()Li/br;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Li/br;->a(ILaU/a;Li/o;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lh/cY;->b()V

    goto :goto_0
.end method
