.class Lnet/yostore/aws/view/search/SearchActivity$11;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
        "Landroid/widget/AdapterView$OnItemClickListener;"
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
    iput-object p1, p0, Lnet/yostore/aws/view/search/SearchActivity$11;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/search/SearchActivity$11;)Lnet/yostore/aws/view/search/SearchActivity;
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$11;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 223
    sget-object v0, Lnet/yostore/aws/view/search/SearchActivity;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    invoke-virtual {v0}, Lnet/yostore/aws/view/search/SearchHandler;->getFsInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/FsInfo;

    sput-object v0, Lnet/yostore/aws/view/search/SearchActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    .line 224
    const-string v0, "1"

    sget-object v1, Lnet/yostore/aws/view/search/SearchActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    const-string v0, "more"

    sget-object v1, Lnet/yostore/aws/view/search/SearchActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$11;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$11;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    iget-object v2, p0, Lnet/yostore/aws/view/search/SearchActivity$11;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/search/SearchActivity$11;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    const v4, 0x7f06000d

    invoke-virtual {v3, v4}, Lnet/yostore/aws/view/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/search/SearchActivity;->access$20(Lnet/yostore/aws/view/search/SearchActivity;Landroid/app/ProgressDialog;)V

    .line 229
    new-instance v0, Lnet/yostore/aws/view/search/SearchActivity$11$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/search/SearchActivity$11$1;-><init>(Lnet/yostore/aws/view/search/SearchActivity$11;)V

    .line 240
    invoke-virtual {v0}, Lnet/yostore/aws/view/search/SearchActivity$11$1;->start()V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    sget-object v0, Lnet/yostore/aws/view/search/SearchActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v0, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lnet/yostore/aws/view/search/SearchActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v0, v0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    :cond_2
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$11;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-virtual {v0, p3}, Lnet/yostore/aws/view/search/SearchActivity;->updateCurrentPlay(I)V

    goto :goto_0
.end method
