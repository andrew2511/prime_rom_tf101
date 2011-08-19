.class Lcom/splashtop/remote/ServerListView$1;
.super Ljava/lang/Object;
.source "ServerListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splashtop/remote/ServerListView;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/ServerListView;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/ServerListView;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/splashtop/remote/ServerListView$1;->this$0:Lcom/splashtop/remote/ServerListView;

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
    .line 78
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/splashtop/remote/ServerListView$1;->this$0:Lcom/splashtop/remote/ServerListView;

    invoke-static {v1}, Lcom/splashtop/remote/ServerListView;->access$000(Lcom/splashtop/remote/ServerListView;)Lcom/splashtop/remote/ServerListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/splashtop/remote/ServerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/splashtop/remote/bean/MacBean;

    .line 79
    .local v0, mac:Lcom/splashtop/remote/bean/MacBean;
    iget-object v1, p0, Lcom/splashtop/remote/ServerListView$1;->this$0:Lcom/splashtop/remote/ServerListView;

    invoke-static {v1}, Lcom/splashtop/remote/ServerListView;->access$100(Lcom/splashtop/remote/ServerListView;)Lcom/splashtop/remote/ServerListView$ListViewListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/splashtop/remote/ServerListView$ListViewListener;->doHandshakeBeforeConnect(Lcom/splashtop/remote/bean/MacBean;)V

    .line 80
    return-void
.end method
