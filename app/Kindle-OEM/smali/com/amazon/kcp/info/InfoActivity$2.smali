.class Lcom/amazon/kcp/info/InfoActivity$2;
.super Ljava/lang/Object;
.source "InfoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/info/InfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/info/InfoActivity;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/info/InfoActivity;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/amazon/kcp/info/InfoActivity$2;->this$0:Lcom/amazon/kcp/info/InfoActivity;

    iput-object p2, p0, Lcom/amazon/kcp/info/InfoActivity$2;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/amazon/kcp/info/InfoActivity$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/info/InfoActivity$InfoItem;

    .line 86
    .local v0, item:Lcom/amazon/kcp/info/InfoActivity$InfoItem;
    iget-object v1, p0, Lcom/amazon/kcp/info/InfoActivity$2;->this$0:Lcom/amazon/kcp/info/InfoActivity;

    invoke-static {v1, v0}, Lcom/amazon/kcp/info/InfoActivity;->access$000(Lcom/amazon/kcp/info/InfoActivity;Lcom/amazon/kcp/info/InfoActivity$InfoItem;)V

    .line 87
    return-void
.end method
