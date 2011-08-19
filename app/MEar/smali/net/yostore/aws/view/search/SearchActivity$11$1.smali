.class Lnet/yostore/aws/view/search/SearchActivity$11$1;
.super Ljava/lang/Thread;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/search/SearchActivity$11;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/yostore/aws/view/search/SearchActivity$11;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/search/SearchActivity$11;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/search/SearchActivity$11$1;->this$1:Lnet/yostore/aws/view/search/SearchActivity$11;

    .line 229
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 231
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$11$1;->this$1:Lnet/yostore/aws/view/search/SearchActivity$11;

    invoke-static {v0}, Lnet/yostore/aws/view/search/SearchActivity$11;->access$0(Lnet/yostore/aws/view/search/SearchActivity$11;)Lnet/yostore/aws/view/search/SearchActivity;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$11$1;->this$1:Lnet/yostore/aws/view/search/SearchActivity$11;

    invoke-static {v1}, Lnet/yostore/aws/view/search/SearchActivity$11;->access$0(Lnet/yostore/aws/view/search/SearchActivity$11;)Lnet/yostore/aws/view/search/SearchActivity;

    move-result-object v1

    invoke-static {v1}, Lnet/yostore/aws/view/search/SearchActivity;->access$21(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/view/search/SearchHandler$ROOT;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/search/SearchActivity$11$1;->this$1:Lnet/yostore/aws/view/search/SearchActivity$11;

    invoke-static {v2}, Lnet/yostore/aws/view/search/SearchActivity$11;->access$0(Lnet/yostore/aws/view/search/SearchActivity$11;)Lnet/yostore/aws/view/search/SearchActivity;

    move-result-object v2

    invoke-static {v2}, Lnet/yostore/aws/view/search/SearchActivity;->access$9(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/search/SearchActivity$11$1;->this$1:Lnet/yostore/aws/view/search/SearchActivity$11;

    invoke-static {v3}, Lnet/yostore/aws/view/search/SearchActivity$11;->access$0(Lnet/yostore/aws/view/search/SearchActivity$11;)Lnet/yostore/aws/view/search/SearchActivity;

    move-result-object v3

    invoke-static {v3}, Lnet/yostore/aws/view/search/SearchActivity;->access$22(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lnet/yostore/aws/view/search/SearchHandler;->getInstance(Landroid/content/Context;Lnet/yostore/aws/view/search/SearchHandler$ROOT;Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)Lnet/yostore/aws/view/search/SearchHandler;

    move-result-object v0

    sput-object v0, Lnet/yostore/aws/view/search/SearchActivity;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    .line 235
    sget-object v0, Lnet/yostore/aws/view/search/SearchActivity;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$11$1;->this$1:Lnet/yostore/aws/view/search/SearchActivity$11;

    invoke-static {v1}, Lnet/yostore/aws/view/search/SearchActivity$11;->access$0(Lnet/yostore/aws/view/search/SearchActivity$11;)Lnet/yostore/aws/view/search/SearchActivity;

    move-result-object v1

    invoke-static {v1}, Lnet/yostore/aws/view/search/SearchActivity;->access$4(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    const-string v2, "1"

    iget-object v3, p0, Lnet/yostore/aws/view/search/SearchActivity$11$1;->this$1:Lnet/yostore/aws/view/search/SearchActivity$11;

    invoke-static {v3}, Lnet/yostore/aws/view/search/SearchActivity$11;->access$0(Lnet/yostore/aws/view/search/SearchActivity$11;)Lnet/yostore/aws/view/search/SearchActivity;

    move-result-object v3

    invoke-static {v3}, Lnet/yostore/aws/view/search/SearchActivity;->access$8(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/handler/entity/Search;

    move-result-object v3

    invoke-virtual {v3}, Lnet/yostore/aws/handler/entity/Search;->getSrhopt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lnet/yostore/aws/view/search/SearchActivity$11$1;->this$1:Lnet/yostore/aws/view/search/SearchActivity$11;

    invoke-static {v3}, Lnet/yostore/aws/view/search/SearchActivity$11;->access$0(Lnet/yostore/aws/view/search/SearchActivity$11;)Lnet/yostore/aws/view/search/SearchActivity;

    move-result-object v3

    invoke-static {v3}, Lnet/yostore/aws/view/search/SearchActivity;->access$8(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/handler/entity/Search;

    move-result-object v3

    invoke-virtual {v3}, Lnet/yostore/aws/handler/entity/Search;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/view/search/SearchActivity$11$1;->this$1:Lnet/yostore/aws/view/search/SearchActivity$11;

    invoke-static {v4}, Lnet/yostore/aws/view/search/SearchActivity$11;->access$0(Lnet/yostore/aws/view/search/SearchActivity$11;)Lnet/yostore/aws/view/search/SearchActivity;

    move-result-object v4

    invoke-static {v4}, Lnet/yostore/aws/view/search/SearchActivity;->access$8(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/handler/entity/Search;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/Search;->getMark()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnet/yostore/aws/view/search/SearchActivity$11$1;->this$1:Lnet/yostore/aws/view/search/SearchActivity$11;

    invoke-static {v5}, Lnet/yostore/aws/view/search/SearchActivity$11;->access$0(Lnet/yostore/aws/view/search/SearchActivity$11;)Lnet/yostore/aws/view/search/SearchActivity;

    move-result-object v5

    invoke-static {v5}, Lnet/yostore/aws/view/search/SearchActivity;->access$8(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/handler/entity/Search;

    move-result-object v5

    invoke-virtual {v5}, Lnet/yostore/aws/handler/entity/Search;->getExt()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/ecareme/mear/Mear;->pageSize:I

    invoke-virtual/range {v0 .. v6}, Lnet/yostore/aws/view/search/SearchHandler;->searchFileDir(Lnet/yostore/aws/view/navigate/BrowseAdapter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 238
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$11$1;->this$1:Lnet/yostore/aws/view/search/SearchActivity$11;

    invoke-static {v0}, Lnet/yostore/aws/view/search/SearchActivity$11;->access$0(Lnet/yostore/aws/view/search/SearchActivity$11;)Lnet/yostore/aws/view/search/SearchActivity;

    move-result-object v0

    invoke-static {v0}, Lnet/yostore/aws/view/search/SearchActivity;->access$10(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$11$1;->this$1:Lnet/yostore/aws/view/search/SearchActivity$11;

    invoke-static {v1}, Lnet/yostore/aws/view/search/SearchActivity$11;->access$0(Lnet/yostore/aws/view/search/SearchActivity$11;)Lnet/yostore/aws/view/search/SearchActivity;

    move-result-object v1

    invoke-static {v1}, Lnet/yostore/aws/view/search/SearchActivity;->access$23(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    return-void
.end method
