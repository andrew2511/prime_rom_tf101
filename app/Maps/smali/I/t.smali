.class LI/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:LI/p;

.field private b:Lcom/google/googlenav/ui/br;


# direct methods
.method private constructor <init>(LI/p;)V
    .locals 0

    iput-object p1, p0, LI/t;->a:LI/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LI/p;LI/K;)V
    .locals 0

    invoke-direct {p0, p1}, LI/t;-><init>(LI/p;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method protected a(Landroid/widget/AdapterView;I)V
    .locals 4

    const/4 v3, 0x0

    instance-of v1, p1, Lcom/google/googlenav/ui/android/GmmGridView;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/ui/android/GmmGridView;

    move-object v1, v0

    invoke-virtual {v1, p2}, Lcom/google/googlenav/ui/android/GmmGridView;->a(I)V

    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    if-eqz v1, :cond_4

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/br;

    iput-object v1, p0, LI/t;->b:Lcom/google/googlenav/ui/br;

    iget-object v1, p0, LI/t;->b:Lcom/google/googlenav/ui/br;

    instance-of v1, v1, Lcom/google/googlenav/ui/bx;

    if-eqz v1, :cond_5

    iget-object v1, p0, LI/t;->b:Lcom/google/googlenav/ui/br;

    check-cast v1, Lcom/google/googlenav/ui/bx;

    iget-object v2, v1, Lcom/google/googlenav/ui/bx;->J:Lcom/google/googlenav/ui/z;

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/google/googlenav/ui/bx;->J:Lcom/google/googlenav/ui/z;

    invoke-interface {v1}, Lcom/google/googlenav/ui/z;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    iput-object v1, p0, LI/t;->b:Lcom/google/googlenav/ui/br;

    :cond_2
    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/google/googlenav/ui/bx;->t:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v1, v1, Lcom/google/googlenav/ui/bx;->t:Ljava/lang/String;

    :goto_1
    iget-object v2, p0, LI/t;->a:LI/p;

    invoke-static {v2}, LI/p;->a(LI/p;)Lcom/google/googlenav/ui/view/android/e;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Lcom/google/googlenav/ui/view/android/e;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-static {v1}, Lcom/google/googlenav/ui/aV;->b([Lcom/google/googlenav/ui/aI;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    iput-object v3, p0, LI/t;->b:Lcom/google/googlenav/ui/br;

    :cond_5
    move-object v1, v3

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, LI/t;->a:LI/p;

    invoke-virtual {v0}, LI/p;->f()Lx/B;

    move-result-object v0

    iget-object v0, v0, Lx/B;->d:Lx/G;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0}, LI/t;->a()V

    return-void

    :pswitch_1
    iget-object v1, p0, LI/t;->a:LI/p;

    iget-object v0, v0, Lx/G;->l:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v1, v0}, LI/p;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, LI/t;->a:LI/p;

    iget-object v0, v0, Lx/G;->m:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v1, v0}, LI/p;->a(Lcom/google/googlenav/ui/br;)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, LI/t;->a:LI/p;

    const/16 v1, 0xed

    invoke-static {v0, v1}, LI/p;->a(LI/p;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, LI/t;->a:LI/p;

    const/16 v1, 0xec

    invoke-static {v0, v1}, LI/p;->a(LI/p;I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, LI/t;->a:LI/p;

    invoke-static {v0}, LI/p;->a(LI/p;)Lcom/google/googlenav/ui/view/android/e;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0f01f9
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    invoke-virtual {p0, p1, p3}, LI/t;->a(Landroid/widget/AdapterView;I)V

    iget-object v0, p0, LI/t;->b:Lcom/google/googlenav/ui/br;

    if-eqz v0, :cond_0

    iget-object v0, p0, LI/t;->a:LI/p;

    iget-object v1, p0, LI/t;->b:Lcom/google/googlenav/ui/br;

    invoke-virtual {v0, v1}, LI/p;->a(Lcom/google/googlenav/ui/br;)Z

    :cond_0
    invoke-virtual {p0}, LI/t;->a()V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2

    invoke-virtual {p0, p1, p3}, LI/t;->a(Landroid/widget/AdapterView;I)V

    const/4 v0, 0x0

    iget-object v1, p0, LI/t;->b:Lcom/google/googlenav/ui/br;

    if-eqz v1, :cond_0

    iget-object v1, p0, LI/t;->b:Lcom/google/googlenav/ui/br;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/br;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, LI/t;->a:LI/p;

    iget-object v1, p0, LI/t;->b:Lcom/google/googlenav/ui/br;

    invoke-virtual {v0, v1}, LI/p;->b(Lcom/google/googlenav/ui/br;)Z

    move-result v0

    :cond_0
    invoke-virtual {p0}, LI/t;->a()V

    return v0
.end method
