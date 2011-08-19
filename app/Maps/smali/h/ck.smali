.class Lh/ck;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lh/dC;


# direct methods
.method private constructor <init>(Lh/dC;)V
    .locals 0

    iput-object p1, p0, Lh/ck;->a:Lh/dC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lh/dC;Lh/av;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/ck;-><init>(Lh/dC;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x43

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/q;->b()Lx/q;

    move-result-object v0

    invoke-virtual {v0}, Lx/q;->a()I

    move-result v1

    invoke-virtual {v0}, Lx/q;->b()I

    move-result v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    const/4 v1, 0x3

    iput v1, v0, Lh/dC;->k:I

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v0}, Lh/dC;->a(Lh/dC;)Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->K()Ljava/util/Vector;

    move-result-object v0

    if-le v2, v7, :cond_1

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    const-string v1, "f"

    const-string v3, "r"

    invoke-static {v4, v1, v3}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v1}, Lh/dC;->a(Lh/dC;)Li/aE;

    move-result-object v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    invoke-virtual {v1, v0}, Li/aE;->g(Li/x;)V

    :cond_1
    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-virtual {v0}, Lh/dC;->v()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v0}, Lh/dC;->a(Lh/dC;)Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->J()Ljava/util/Vector;

    move-result-object v0

    if-le v2, v7, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v1}, Lh/dC;->a(Lh/dC;)Li/aE;

    move-result-object v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    invoke-virtual {v1, v0}, Li/aE;->h(Li/x;)V

    :cond_2
    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-virtual {v0}, Lh/dC;->v()V

    goto :goto_0

    :pswitch_3
    const-string v0, "f"

    const-string v1, "l"

    invoke-static {v4, v0, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-virtual {v0}, Lh/dC;->v()V

    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v0}, Lh/dC;->b(Lh/dC;)Lcom/google/googlenav/bL;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/bL;->N()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v0}, Lh/dC;->a(Lh/dC;)Li/aE;

    move-result-object v0

    invoke-virtual {v0, v5}, Li/aE;->d(I)V

    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v0}, Lh/dC;->b(Lh/dC;)Lcom/google/googlenav/bL;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/google/googlenav/bL;->g(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v0}, Lh/dC;->b(Lh/dC;)Lcom/google/googlenav/bL;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/googlenav/bL;->g(Z)V

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "f"

    const-string v1, "b"

    invoke-static {v4, v0, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-virtual {v0}, Lh/dC;->v()V

    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v0}, Lh/dC;->a(Lh/dC;)Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->E()Li/aQ;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v0}, Lh/dC;->b(Lh/dC;)Lcom/google/googlenav/bL;

    move-result-object v0

    invoke-interface {v0, v6, v6, v6}, Lcom/google/googlenav/bL;->a(Lf/h;Lf/l;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v1}, Lh/dC;->a(Lh/dC;)Li/aE;

    move-result-object v1

    invoke-virtual {v1, v0}, Li/aE;->h(Li/x;)V

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "f"

    const-string v1, "t"

    invoke-static {v4, v0, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v0}, Lh/dC;->b(Lh/dC;)Lcom/google/googlenav/bL;

    move-result-object v0

    iget-object v1, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v1}, Lh/dC;->b(Lh/dC;)Lcom/google/googlenav/bL;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/bL;->M()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v5

    :goto_1
    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Z)V

    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-virtual {v0}, Lh/dC;->v()V

    goto/16 :goto_0

    :cond_5
    move v1, v3

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v0}, Lh/dC;->b(Lh/dC;)Lcom/google/googlenav/bL;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/bL;->I()I

    move-result v0

    if-eq v0, v5, :cond_6

    const-string v0, "f"

    const-string v1, "s"

    invoke-static {v4, v0, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v0}, Lh/dC;->b(Lh/dC;)Lcom/google/googlenav/bL;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/google/googlenav/bL;->b(I)Z

    :goto_2
    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-virtual {v0}, Lh/dC;->v()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v0}, Lh/dC;->b(Lh/dC;)Lcom/google/googlenav/bL;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/googlenav/bL;->b(I)Z

    goto :goto_2

    :pswitch_7
    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v0}, Lh/dC;->b(Lh/dC;)Lcom/google/googlenav/bL;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/bL;->I()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const-string v0, "f"

    const-string v1, "n"

    invoke-static {v4, v0, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v0}, Lh/dC;->b(Lh/dC;)Lcom/google/googlenav/bL;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->b(I)Z

    :goto_3
    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-virtual {v0}, Lh/dC;->v()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v0}, Lh/dC;->b(Lh/dC;)Lcom/google/googlenav/bL;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/googlenav/bL;->b(I)Z

    goto :goto_3

    :pswitch_8
    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v0}, Lh/dC;->b(Lh/dC;)Lcom/google/googlenav/bL;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/bL;->J()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "f"

    const-string v1, "c"

    invoke-static {v4, v0, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v0}, Lh/dC;->b(Lh/dC;)Lcom/google/googlenav/bL;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/google/googlenav/bL;->d(Z)V

    :goto_4
    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-virtual {v0}, Lh/dC;->v()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v0}, Lh/dC;->b(Lh/dC;)Lcom/google/googlenav/bL;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/googlenav/bL;->d(Z)V

    goto :goto_4

    :pswitch_9
    invoke-virtual {v0}, Lx/q;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/s;

    iget-object v1, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v1}, Lh/dC;->a(Lh/dC;)Li/aE;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/aE;->d(Ljava/lang/String;)Li/x;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, "f"

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v1}, Lh/dC;->a(Lh/dC;)Li/aE;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Li/aE;->a(Lcom/google/googlenav/layer/s;Z)Li/n;

    :goto_5
    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-virtual {v0}, Lh/dC;->v()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v0}, Lh/dC;->a(Lh/dC;)Li/aE;

    move-result-object v0

    invoke-virtual {v0, v1}, Li/aE;->h(Li/x;)V

    goto :goto_5

    :pswitch_a
    const-string v0, "f"

    const/16 v1, 0x3ed

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    iget-object v1, p0, Lh/ck;->a:Lh/dC;

    invoke-static {v1}, Lh/dC;->a(Lh/dC;)Li/aE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/dC;->b(Li/aE;)Lcom/google/googlenav/ui/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bv;->b()V

    iget-object v0, p0, Lh/ck;->a:Lh/dC;

    invoke-virtual {v0}, Lh/dC;->v()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method
