.class Lnet/yostore/aws/view/search/SearchActivity$12;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/search/SearchActivity;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/search/SearchActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/search/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/search/SearchActivity$12;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-object v0, Lnet/yostore/aws/view/search/SearchActivity;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    invoke-virtual {v0}, Lnet/yostore/aws/view/search/SearchHandler;->getFsInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/FsInfo;

    sput-object v0, Lnet/yostore/aws/view/search/SearchActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    .line 252
    const-string v0, "1"

    sget-object v1, Lnet/yostore/aws/view/search/SearchActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    const-string v0, "more"

    sget-object v1, Lnet/yostore/aws/view/search/SearchActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    sget-object v0, Lnet/yostore/aws/view/search/SearchActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v0, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/yostore/aws/view/search/SearchActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v0, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$12;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-virtual {v0, p3}, Lnet/yostore/aws/view/search/SearchActivity;->showFileContextMenu(I)V

    .line 262
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
