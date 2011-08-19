.class public Li/c;
.super Li/aw;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/bm;Lcom/google/googlenav/layer/s;Lf/x;I)V
    .locals 1

    invoke-direct/range {p0 .. p8}, Li/aw;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/bm;Lcom/google/googlenav/layer/s;Lf/x;I)V

    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Lcom/google/googlenav/bm;->b(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Li/c;->b(B)V

    return-void
.end method


# virtual methods
.method protected Y_()V
    .locals 0

    return-void
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 4

    const/16 v3, 0x1c

    invoke-virtual {p0}, Li/c;->bN()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Li/c;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    invoke-virtual {v0}, Lh/l;->c()Lh/fc;

    move-result-object v1

    invoke-virtual {v1}, Lh/fc;->a()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_1

    invoke-super {p0}, Li/aw;->d()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lh/l;->d()Lh/fc;

    iget-object v0, p0, Li/c;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0, p0}, Li/aE;->h(Li/x;)V

    if-ne v1, v3, :cond_2

    iget-object v0, p0, Li/c;->g:Lcom/google/googlenav/ui/aT;

    const-string v1, "recent"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Li/c;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->I()Li/x;

    move-result-object p0

    invoke-virtual {p0}, Li/x;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    check-cast p0, Li/q;

    invoke-virtual {p0}, Li/q;->O()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
