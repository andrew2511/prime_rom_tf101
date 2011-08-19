.class public Lc/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/aj;


# instance fields
.field private final a:I

.field private final b:Lk/l;

.field private final c:Lk/l;

.field private final d:LaD/r;

.field private final e:Lo/aH;


# direct methods
.method public constructor <init>(LaD/r;Lo/aH;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/p;->d:LaD/r;

    iput-object p2, p0, Lc/p;->e:Lo/aH;

    iput p3, p0, Lc/p;->a:I

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_0

    move-object v0, v1

    :goto_0
    sget-char v1, Lcom/google/googlenav/ui/aV;->M:C

    invoke-interface {v0, v1}, Lk/j;->e(C)Lk/l;

    move-result-object v1

    iput-object v1, p0, Lc/p;->b:Lk/l;

    sget-char v1, Lcom/google/googlenav/ui/aV;->N:C

    invoke-interface {v0, v1}, Lk/j;->e(C)Lk/l;

    move-result-object v0

    iput-object v0, p0, Lc/p;->c:Lk/l;

    return-void

    :pswitch_0
    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->r()Lk/j;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->u()Lk/j;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->t()Lk/j;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/google/googlenav/ui/aV;->ah()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->s()Lk/j;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->t()Lk/j;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/aH;)Lk/l;
    .locals 5

    check-cast p1, Lc/a;

    invoke-static {p1}, Lc/a;->a(Lc/a;)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lc/p;->d:LaD/r;

    new-instance v2, Lc/a;

    iget v3, p0, Lc/p;->a:I

    invoke-direct {v2, v0, v3}, Lc/a;-><init>(Ljava/lang/Long;I)V

    invoke-virtual {v1, v2}, LaD/r;->a(Lcom/google/googlenav/ui/aH;)Lk/l;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v2, p0, Lc/p;->e:Lo/aH;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lc/p;->e:Lo/aH;

    invoke-virtual {v2, v0}, Lo/aH;->a(Ljava/lang/Long;)Lo/U;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lo/U;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/p;->b:Lk/l;

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lc/p;->b:Lk/l;

    :cond_0
    :goto_1
    invoke-static {p1}, Lc/a;->b(Lc/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lc/a;->c()Lk/l;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lc/a;->c(Lc/a;)Lk/l;

    move-result-object v1

    if-ne v1, v0, :cond_3

    invoke-virtual {p1}, Lc/a;->c()Lk/l;

    move-result-object v0

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    iget-object v0, p0, Lc/p;->c:Lk/l;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    const v2, 0x7f0202a4

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aV;->a(I)Lk/l;

    move-result-object v1

    invoke-static {v1}, Lk/e;->d(Lk/l;)Lk/l;

    move-result-object v1

    invoke-interface {v1}, Lk/l;->f()I

    move-result v2

    invoke-interface {v0}, Lk/l;->f()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-interface {v1}, Lk/l;->e()I

    move-result v3

    invoke-interface {v0}, Lk/l;->e()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-interface {v0}, Lk/l;->f()I

    invoke-interface {v0}, Lk/l;->e()I

    invoke-interface {v1}, Lk/l;->d()Lk/m;

    move-result-object v4

    invoke-interface {v4, v0, v2, v3}, Lk/m;->a(Lk/l;II)V

    invoke-static {p1, v0}, Lc/a;->a(Lc/a;Lk/l;)Lk/l;

    invoke-virtual {p1, v1}, Lc/a;->a(Lk/l;)V

    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method
