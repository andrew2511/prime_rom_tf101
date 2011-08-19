.class LI/N;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:LI/q;


# direct methods
.method private constructor <init>(LI/q;)V
    .locals 0

    iput-object p1, p0, LI/N;->a:LI/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LI/q;LI/I;)V
    .locals 0

    invoke-direct {p0, p1}, LI/N;-><init>(LI/q;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/view/android/q;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/q;->b()Lx/q;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lx/q;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, LI/N;->a:LI/q;

    invoke-static {v2, v1}, LI/q;->a(LI/q;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, LI/N;->a:LI/q;

    invoke-static {v1}, LI/q;->b(LI/q;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LI/N;->a:LI/q;

    invoke-static {v1}, LI/q;->b(LI/q;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    const/4 v4, -0x1

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method
