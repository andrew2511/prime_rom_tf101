.class Lh/bw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ae;
.implements Li/o;


# instance fields
.field final synthetic a:Lh/dN;

.field private b:Lcom/google/googlenav/bG;

.field private c:Lcom/google/googlenav/h;


# direct methods
.method public constructor <init>(Lh/dN;Lcom/google/googlenav/h;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lh/bw;->a:Lh/dN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lh/bw;->b:Lcom/google/googlenav/bG;

    iput-object v0, p0, Lh/bw;->c:Lcom/google/googlenav/h;

    iput-object p2, p0, Lh/bw;->c:Lcom/google/googlenav/h;

    return-void
.end method

.method static synthetic a(Lh/bw;)Lcom/google/googlenav/bG;
    .locals 1

    iget-object v0, p0, Lh/bw;->b:Lcom/google/googlenav/bG;

    return-object v0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lh/bw;->c:Lcom/google/googlenav/h;

    invoke-virtual {v0}, Lcom/google/googlenav/h;->b()LH/m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lh/bw;->c:Lcom/google/googlenav/h;

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, LH/f;->a()LH/f;

    move-result-object v2

    iget-object v3, p0, Lh/bw;->a:Lh/dN;

    invoke-static {v3}, Lh/dN;->b(Lh/dN;)Lcom/google/googlenav/ui/aT;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aT;->at()LT/c;

    move-result-object v3

    invoke-static {v2, v0, v3, v1}, LH/a;->a(LH/f;LH/m;LT/c;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lh/bw;->a:Lh/dN;

    iget-object v0, v0, Lh/dN;->h:LaU/a;

    new-instance v1, Lh/d;

    invoke-direct {v1, p0}, Lh/d;-><init>(Lh/bw;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lh/bw;->a:Lh/dN;

    iget-object v0, v0, Lh/dN;->h:LaU/a;

    new-instance v1, Lh/c;

    invoke-direct {v1, p0}, Lh/c;-><init>(Lh/bw;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/j;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lo/aH;

    invoke-direct {v0, p1}, Lo/aH;-><init>(Lcom/google/googlenav/j;)V

    invoke-virtual {v0}, Lo/aH;->d()Lo/U;

    move-result-object v0

    iget-object v1, p0, Lh/bw;->b:Lcom/google/googlenav/bG;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/U;->a(Lcom/google/googlenav/bG;I)V

    iget-object v0, p0, Lh/bw;->a:Lh/dN;

    invoke-static {v0}, Lh/dN;->b(Lh/dN;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->Y()Li/br;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, v3, v3}, Li/br;->a(ILcom/google/googlenav/j;LaU/a;Li/aD;)V

    :cond_0
    invoke-direct {p0}, Lh/bw;->a()V

    return-void
.end method

.method public a(ZLcom/google/googlenav/bG;Lcom/google/googlenav/h;Ljava/util/List;)V
    .locals 3

    if-eqz p1, :cond_2

    iput-object p2, p0, Lh/bw;->b:Lcom/google/googlenav/bG;

    invoke-virtual {p3}, Lcom/google/googlenav/h;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/bg;->a()Lcom/google/googlenav/bg;

    move-result-object v0

    iget-object v1, p0, Lh/bw;->b:Lcom/google/googlenav/bG;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bg;->a(Lcom/google/googlenav/bG;)V

    :cond_0
    iget-object v0, p0, Lh/bw;->a:Lh/dN;

    invoke-static {v0}, Lh/dN;->b(Lh/dN;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->Y()Li/br;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Li/br;->a(ILaU/a;Li/o;)V

    invoke-static {p3}, Lcom/google/googlenav/RatingReminderAlarmManager;->a(Lcom/google/googlenav/h;)V

    :goto_0
    invoke-virtual {p3}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v0

    invoke-static {v0}, Lo/A;->a(Law/e;)V

    invoke-virtual {p3}, Lcom/google/googlenav/h;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lo/A;->A()V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lh/bw;->b()V

    goto :goto_0
.end method
