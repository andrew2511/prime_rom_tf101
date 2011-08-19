.class Lcom/google/googlenav/ui/aK;
.super Ljava/lang/Object;

# interfaces
.implements Lak/c;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aT;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/aT;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/aK;->a:Lcom/google/googlenav/ui/aT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/aT;Lcom/google/googlenav/ui/ah;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/aK;-><init>(Lcom/google/googlenav/ui/aT;)V

    return-void
.end method

.method private a(IZ)[Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x271

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x270

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    move v0, v5

    :goto_0
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    aput-object v1, v3, v5

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    return-object v3

    :pswitch_1
    const/16 v0, 0x26e

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x26d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    move v0, v5

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x44d

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x44a

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    invoke-static {}, Lac/d;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\nWrong remote strings version.  GMM Server must be hosting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    move v0, v5

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x272

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x26f

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    move v0, v5

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x442

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x441

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    move v0, v5

    goto :goto_0

    :cond_0
    move-object v2, v0

    move v0, v5

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private c(Lak/d;)Z
    .locals 1

    invoke-interface {p1}, Lak/d;->H_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lak/d;->e_()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(IZLjava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    invoke-static {p3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lac/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/aK;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/aT;->f(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    move v0, v4

    :goto_1
    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/aK;->a(IZ)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/aK;->a:Lcom/google/googlenav/ui/aT;

    aget-object p0, v1, v3

    check-cast p0, Ljava/lang/String;

    aget-object v0, v1, v4

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public a(Lak/d;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/aK;->c(Lak/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/aK;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ad()LaU/a;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/W;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/W;-><init>(Lcom/google/googlenav/ui/aK;Lak/d;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(Lak/d;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/aK;->c(Lak/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/aK;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ad()LaU/a;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/V;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/V;-><init>(Lcom/google/googlenav/ui/aK;Lak/d;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
