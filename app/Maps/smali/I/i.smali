.class LI/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:LI/h;


# direct methods
.method constructor <init>(LI/h;)V
    .locals 0

    iput-object p1, p0, LI/i;->a:LI/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, LI/i;->a:LI/h;

    invoke-static {v0}, LI/h;->a(LI/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    iget-object v1, p0, LI/i;->a:LI/h;

    invoke-static {v1}, LI/h;->b(LI/h;)LI/r;

    move-result-object v1

    invoke-interface {v1, v0}, LI/r;->a(Landroid/location/Address;)V

    return-void
.end method
