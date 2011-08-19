.class Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$5;
.super Ljava/lang/Object;
.source "AWSBrowseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    .line 227
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
    .line 230
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$4(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Lnet/yostore/aws/handler/NavigateHandler;

    move-result-object v0

    invoke-virtual {v0}, Lnet/yostore/aws/handler/NavigateHandler;->getFsInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/FsInfo;

    sput-object v0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    .line 231
    const-string v0, "1"

    sget-object v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$5;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-virtual {v0, p3}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->showFolderContextMenu(I)V

    .line 235
    :cond_0
    return-void
.end method
