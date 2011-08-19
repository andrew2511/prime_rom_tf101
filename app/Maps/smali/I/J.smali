.class LI/J;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:LI/c;


# direct methods
.method private constructor <init>(LI/c;)V
    .locals 0

    iput-object p1, p0, LI/J;->a:LI/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LI/c;LI/g;)V
    .locals 0

    invoke-direct {p0, p1}, LI/J;-><init>(LI/c;)V

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

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, LI/J;->a:LI/c;

    invoke-static {v1}, LI/c;->a(LI/c;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LI/J;->a:LI/c;

    invoke-static {v1}, LI/c;->a(LI/c;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    const/4 v4, -0x1

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_1
    return-void
.end method
