.class public Lh/ct;
.super Lh/eR;

# interfaces
.implements Lax/f;


# instance fields
.field private a:Ljava/util/Date;

.field private b:I

.field private c:Lax/h;

.field private d:Lax/d;

.field private e:Lh/eg;

.field private f:I

.field private l:Lx/c;

.field private m:I


# direct methods
.method protected constructor <init>(Lh/eY;)V
    .locals 1

    invoke-direct {p0, p1}, Lh/eR;-><init>(Lh/eY;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/ct;->e:Lh/eg;

    const/4 v0, -0x1

    iput v0, p0, Lh/ct;->m:I

    return-void
.end method

.method private j()Z
    .locals 1

    iget-object v0, p0, Lh/ct;->c:Lax/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/ct;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    iget v0, p0, Lh/ct;->k:I

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/ct;->d()V

    iget v0, p0, Lh/ct;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/ct;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    iget v0, p0, Lh/ct;->k:I

    goto :goto_0
.end method

.method protected a()V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lh/ct;->k:I

    invoke-virtual {p0}, Lh/ct;->h()V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    iget-object v1, p0, Lh/ct;->l:Lx/c;

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/c;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/ct;->j:Lx/J;

    iget-object v0, p0, Lh/ct;->j:Lx/J;

    iget v1, p0, Lh/ct;->m:I

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method

.method public a(Lu/s;)V
    .locals 1

    invoke-virtual {p1}, Lu/s;->c()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lh/ct;->a:Ljava/util/Date;

    invoke-virtual {p1}, Lu/s;->d()I

    move-result v0

    iput v0, p0, Lh/ct;->b:I

    return-void
.end method

.method public a(Lu/s;Lh/eg;)V
    .locals 0

    iput-object p2, p0, Lh/ct;->e:Lh/eg;

    invoke-virtual {p0, p1}, Lh/ct;->a(Lu/s;)V

    invoke-super {p0}, Lh/eR;->u()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lh/ct;->a:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    sparse-switch p1, :sswitch_data_0

    iput v4, p0, Lh/ct;->k:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lh/ct;->v()V

    iget-object v0, p0, Lh/ct;->l:Lx/c;

    invoke-virtual {v0}, Lx/c;->a()Lu/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh/ct;->a(Lu/s;)V

    iget-object v0, p0, Lh/ct;->e:Lh/eg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/ct;->e:Lh/eg;

    invoke-virtual {p0}, Lh/ct;->i()Lu/s;

    move-result-object v1

    invoke-interface {v0, v1}, Lh/eg;->a(Lu/s;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/ct;->e:Lh/eg;

    :cond_0
    iget-object v0, p0, Lh/ct;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->H()V

    iput v4, p0, Lh/ct;->k:I

    move v0, v3

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lh/ct;->d()V

    iput v2, p0, Lh/ct;->k:I

    move v0, v3

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lh/ct;->b()V

    iput v3, p0, Lh/ct;->f:I

    iget-object v0, p0, Lh/ct;->c:Lax/h;

    iget v1, p0, Lh/ct;->b:I

    if-ne v1, v2, :cond_1

    move v1, v3

    :goto_1
    invoke-interface {v0, v1}, Lax/h;->a(I)V

    iget-object v0, p0, Lh/ct;->c:Lax/h;

    iget-object v1, p0, Lh/ct;->a:Ljava/util/Date;

    invoke-interface {v0, v1}, Lax/h;->a(Ljava/util/Date;)V

    iget-object v0, p0, Lh/ct;->c:Lax/h;

    invoke-interface {v0}, Lax/h;->a()V

    iput v4, p0, Lh/ct;->k:I

    move v0, v3

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lh/ct;->b()V

    iput v2, p0, Lh/ct;->f:I

    iget-object v1, p0, Lh/ct;->d:Lax/d;

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->c(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lax/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lh/ct;->d:Lax/d;

    iget-object v1, p0, Lh/ct;->d:Lax/d;

    invoke-interface {v1}, Lax/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, v1}, Lax/d;->a(I)V

    iget-object v0, p0, Lh/ct;->d:Lax/d;

    invoke-interface {v0}, Lax/d;->a()V

    iput v4, p0, Lh/ct;->k:I

    move v0, v3

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lh/ct;->b()V

    iput v4, p0, Lh/ct;->f:I

    iget-object v1, p0, Lh/ct;->d:Lax/d;

    invoke-static {v0}, Lcom/google/googlenav/ui/aM;->b(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lax/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lh/ct;->d:Lax/d;

    iget-object v1, p0, Lh/ct;->d:Lax/d;

    invoke-interface {v1}, Lax/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, v1}, Lax/d;->a(I)V

    iget-object v0, p0, Lh/ct;->d:Lax/d;

    invoke-interface {v0}, Lax/d;->a()V

    iput v4, p0, Lh/ct;->k:I

    move v0, v3

    goto/16 :goto_0

    :sswitch_5
    iput p2, p0, Lh/ct;->b:I

    iget-object v0, p0, Lh/ct;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->b()I

    move-result v0

    invoke-virtual {p0}, Lh/ct;->h()V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    iget-object v2, p0, Lh/ct;->l:Lx/c;

    invoke-virtual {v1, v2, p0}, Lx/k;->a(Lx/c;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v1

    iput-object v1, p0, Lh/ct;->j:Lx/J;

    iget-object v1, p0, Lh/ct;->j:Lx/J;

    invoke-interface {v1, v0}, Lx/J;->c(I)V

    iput v4, p0, Lh/ct;->k:I

    move v0, v3

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_3
        0xe2 -> :sswitch_4
        0xe3 -> :sswitch_5
        0x1f4 -> :sswitch_1
        0x1f7 -> :sswitch_0
    .end sparse-switch
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lh/ct;->g:Lh/eY;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lh/eY;->a(ILax/c;)V

    return-void
.end method

.method protected h()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xe3

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0xcd

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x1ec

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lh/ct;->m:I

    invoke-direct {p0}, Lh/ct;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v5

    :goto_0
    new-instance v0, Lx/c;

    const/16 v2, 0x41f

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lh/ct;->a:Ljava/util/Date;

    iget v5, p0, Lh/ct;->b:I

    invoke-direct/range {v0 .. v5}, Lx/c;-><init>(ILjava/lang/String;Ljava/util/Vector;Ljava/util/Date;I)V

    iput-object v0, p0, Lh/ct;->l:Lx/c;

    return-void

    :cond_0
    move v1, v6

    goto :goto_0
.end method

.method public i()Lu/s;
    .locals 2

    iget-object v0, p0, Lh/ct;->a:Ljava/util/Date;

    iget v1, p0, Lh/ct;->b:I

    invoke-static {v0, v1}, Lu/s;->a(Ljava/util/Date;I)Lu/s;

    move-result-object v0

    return-object v0
.end method
