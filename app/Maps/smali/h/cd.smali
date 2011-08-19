.class Lh/cd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lh/aS;


# direct methods
.method private constructor <init>(Lh/aS;)V
    .locals 0

    iput-object p1, p0, Lh/cd;->a:Lh/aS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lh/aS;Lh/ey;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/cd;-><init>(Lh/aS;)V

    return-void
.end method

.method private a(ILcom/google/googlenav/ui/view/android/L;Lr/c;)V
    .locals 1

    iget-object v0, p0, Lh/cd;->a:Lh/aS;

    invoke-static {v0, p3, p1}, Lh/aS;->a(Lh/aS;Lr/c;I)Lcom/google/googlenav/ui/view/android/g;

    move-result-object v0

    invoke-direct {p0, p2, v0, p1}, Lh/cd;->a(Lcom/google/googlenav/ui/view/android/L;Lcom/google/googlenav/ui/view/android/g;I)V

    invoke-virtual {p2}, Lcom/google/googlenav/ui/view/android/L;->a()V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/view/android/L;Lcom/google/googlenav/ui/view/android/g;I)V
    .locals 1

    invoke-virtual {p1, p3}, Lcom/google/googlenav/ui/view/android/L;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/L;->remove(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, p3}, Lcom/google/googlenav/ui/view/android/L;->insert(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/view/android/L;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/view/android/g;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/g;->b()Lx/q;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lx/q;->a()I

    move-result v2

    invoke-virtual {v1}, Lx/q;->b()I

    move-result v1

    invoke-static {}, Lr/h;->a()Lr/h;

    move-result-object v3

    invoke-virtual {v3}, Lr/h;->b()[Lr/c;

    move-result-object v4

    array-length v5, v4

    if-ge v1, v5, :cond_0

    aget-object v4, v4, v1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v3, v4}, Lr/h;->a(Lr/c;)V

    invoke-direct {p0, v1, v0, v4}, Lh/cd;->a(ILcom/google/googlenav/ui/view/android/L;Lr/c;)V

    iget-object v0, p0, Lh/cd;->a:Lh/aS;

    invoke-static {v0}, Lh/aS;->a(Lh/aS;)Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x1e9

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4}, Lr/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v3, v4}, Lr/h;->b(Lr/c;)V

    invoke-direct {p0, v1, v0, v4}, Lh/cd;->a(ILcom/google/googlenav/ui/view/android/L;Lr/c;)V

    iget-object v0, p0, Lh/cd;->a:Lh/aS;

    invoke-static {v0}, Lh/aS;->a(Lh/aS;)Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x1eb

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4}, Lr/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
