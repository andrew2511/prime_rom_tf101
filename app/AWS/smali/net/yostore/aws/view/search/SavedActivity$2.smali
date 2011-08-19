.class Lnet/yostore/aws/view/search/SavedActivity$2;
.super Ljava/lang/Object;
.source "SavedActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/search/SavedActivity;->initList()V
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
.field final synthetic this$0:Lnet/yostore/aws/view/search/SavedActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/search/SavedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/search/SavedActivity$2;->this$0:Lnet/yostore/aws/view/search/SavedActivity;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 192
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lnet/yostore/aws/view/search/SavedActivity;->ctx:Landroid/content/Context;

    const-class v2, Lnet/yostore/aws/view/search/ResultActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 194
    const-string v2, "skey"

    new-instance v3, Lnet/yostore/aws/handler/entity/Search;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SavedActivity$2;->this$0:Lnet/yostore/aws/view/search/SavedActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/search/SavedActivity;->access$2(Lnet/yostore/aws/view/search/SavedActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-direct {v3, v1}, Lnet/yostore/aws/handler/entity/Search;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lnet/yostore/aws/handler/entity/Search;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    iget-object v1, p0, Lnet/yostore/aws/view/search/SavedActivity$2;->this$0:Lnet/yostore/aws/view/search/SavedActivity;

    invoke-virtual {v1, v0}, Lnet/yostore/aws/view/search/SavedActivity;->startActivity(Landroid/content/Intent;)V

    .line 198
    return-void
.end method
