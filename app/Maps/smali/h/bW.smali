.class Lh/bW;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ae;
.implements Li/aD;
.implements Li/o;


# instance fields
.field final synthetic a:Lh/aB;

.field private b:Lcom/google/googlenav/bG;


# direct methods
.method private constructor <init>(Lh/aB;)V
    .locals 0

    iput-object p1, p0, Lh/bW;->a:Lh/aB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lh/aB;Lh/ea;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/bW;-><init>(Lh/aB;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lh/bW;->a:Lh/aB;

    invoke-static {v0}, Lh/aB;->a(Lh/aB;)Lh/bd;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lh/bW;->b:Lcom/google/googlenav/bG;

    invoke-interface {v0, v1, v2}, Lh/bd;->a(ZLcom/google/googlenav/bG;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/j;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lo/aH;

    invoke-direct {v0, p1}, Lo/aH;-><init>(Lcom/google/googlenav/j;)V

    invoke-virtual {v0}, Lo/aH;->d()Lo/U;

    move-result-object v0

    iget-object v1, p0, Lh/bW;->b:Lcom/google/googlenav/bG;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/U;->a(Lcom/google/googlenav/bG;I)V

    iget-object v0, p0, Lh/bW;->a:Lh/aB;

    invoke-static {v0}, Lh/aB;->c(Lh/aB;)Li/br;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lh/bW;->a:Lh/aB;

    invoke-static {v2}, Lh/aB;->b(Lh/aB;)LaU/a;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2, p0}, Li/br;->a(ILcom/google/googlenav/j;LaU/a;Li/aD;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/bW;->a:Lh/aB;

    invoke-static {v0}, Lh/aB;->a(Lh/aB;)Lh/bd;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lh/bW;->b:Lcom/google/googlenav/bG;

    invoke-interface {v0, v1, v2}, Lh/bd;->a(ZLcom/google/googlenav/bG;)V

    goto :goto_0
.end method

.method public a(ZLcom/google/googlenav/bG;Lcom/google/googlenav/h;Ljava/util/List;)V
    .locals 3

    if-eqz p1, :cond_2

    iput-object p2, p0, Lh/bW;->b:Lcom/google/googlenav/bG;

    invoke-virtual {p3}, Lcom/google/googlenav/h;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/bg;->a()Lcom/google/googlenav/bg;

    move-result-object v0

    iget-object v1, p0, Lh/bW;->b:Lcom/google/googlenav/bG;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bg;->a(Lcom/google/googlenav/bG;)V

    :cond_0
    iget-object v0, p0, Lh/bW;->a:Lh/aB;

    invoke-static {v0}, Lh/aB;->c(Lh/aB;)Li/br;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lh/bW;->a:Lh/aB;

    invoke-static {v2}, Lh/aB;->b(Lh/aB;)LaU/a;

    move-result-object v2

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
    iget-object v0, p0, Lh/bW;->a:Lh/aB;

    invoke-static {v0}, Lh/aB;->a(Lh/aB;)Lh/bd;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lh/bd;->a(ZLcom/google/googlenav/bG;)V

    goto :goto_0
.end method
