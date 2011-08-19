.class public abstract Lh/df;
.super Lh/eR;

# interfaces
.implements Lcom/google/googlenav/login/k;


# instance fields
.field protected a:Lh/cE;

.field protected b:I

.field protected c:Lc/k;


# direct methods
.method public constructor <init>(Lh/eY;LaU/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    return-void
.end method

.method private b(Lo/o;)V
    .locals 3

    iget-object v0, p0, Lh/df;->c:Lc/k;

    invoke-virtual {v0}, Lc/k;->a()Lo/i;

    move-result-object v0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    new-instance v2, Lo/h;

    invoke-direct {v2, p1}, Lo/h;-><init>(Lo/o;)V

    invoke-virtual {v1, v2}, Lak/h;->c(Lak/d;)V

    invoke-virtual {p1}, Lo/o;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/i;->a(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lh/df;->i()V

    return-void
.end method


# virtual methods
.method public T_()V
    .locals 2

    iget-object v0, p0, Lh/df;->a:Lh/cE;

    const/4 v1, 0x0

    iput-object v1, p0, Lh/df;->a:Lh/cE;

    iget-object v1, p0, Lh/df;->c:Lc/k;

    invoke-virtual {p0}, Lh/df;->v()V

    iput-object v0, p0, Lh/df;->a:Lh/cE;

    iput-object v1, p0, Lh/df;->c:Lc/k;

    invoke-virtual {p0}, Lh/df;->u()V

    return-void
.end method

.method public a(Lh/cE;Lc/k;I)V
    .locals 0

    iput-object p1, p0, Lh/df;->a:Lh/cE;

    iput-object p2, p0, Lh/df;->c:Lc/k;

    iput p3, p0, Lh/df;->b:I

    invoke-virtual {p0}, Lh/df;->u()V

    return-void
.end method

.method protected a(Lo/o;)V
    .locals 7

    iget-object v0, p0, Lh/df;->c:Lc/k;

    invoke-virtual {v0}, Lc/k;->a()Lo/i;

    move-result-object v2

    iget-object v0, p0, Lh/df;->g:Lh/eY;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x476

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x27d

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lh/eO;

    invoke-direct {v6, p0, p1, v2}, Lh/eO;-><init>(Lh/df;Lo/o;Lo/i;)V

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Lo/o;Ljava/lang/String;Ljava/lang/String;ZLh/ef;)V

    return-void
.end method

.method public final a(IILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0, p1, p2, p3}, Lh/df;->b(IILjava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    check-cast p3, Lo/o;

    invoke-virtual {p0, p3}, Lh/df;->a(Lo/o;)V

    goto :goto_0

    :pswitch_1
    check-cast p3, Lo/o;

    invoke-direct {p0, p3}, Lh/df;->b(Lo/o;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x14c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lh/df;->a:Lh/cE;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/df;->a:Lh/cE;

    invoke-interface {v0}, Lh/cE;->b()V

    :cond_0
    iput-object v1, p0, Lh/df;->a:Lh/cE;

    iput-object v1, p0, Lh/df;->c:Lc/k;

    invoke-super {p0}, Lh/eR;->b()V

    return-void
.end method

.method public abstract b(IILjava/lang/Object;)Z
.end method

.method public i()V
    .locals 0

    return-void
.end method
