.class Lnet/yostore/aws/view/search/SearchActivity$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/search/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/search/SearchActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/search/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/search/SearchActivity$1;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const v2, 0x7f020050

    const/4 v3, 0x0

    .line 647
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$1;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$1;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/search/SearchActivity;->access$0(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/search/SearchActivity;->access$1(Lnet/yostore/aws/view/search/SearchActivity;Ljava/util/List;)V

    .line 648
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$1;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/search/SearchActivity;->access$2(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 649
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$1;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/search/SearchActivity;->access$2(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    .line 650
    .local v9, pListMenu:[Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$1;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    const v1, 0x7f060090

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v3

    .line 651
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v7, brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/BrowseRaw;>;"
    new-instance v0, Lnet/yostore/aws/handler/entity/BrowseRaw;

    .line 654
    aget-object v1, v9, v3

    .line 656
    const-string v3, "1"

    .line 657
    const-string v4, "-999"

    .line 658
    sget-wide v5, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    .line 653
    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/handler/entity/BrowseRaw;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    .line 652
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$1;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/search/SearchActivity;->access$2(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v8, v0, :cond_0

    .line 673
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$1;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/search/SearchActivity;->access$3(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 674
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$1;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-virtual {v0, v7}, Lnet/yostore/aws/view/search/SearchActivity;->showAddPlaylistMenu(Ljava/util/List;)V

    .line 679
    .end local v7           #brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/BrowseRaw;>;"
    .end local v8           #i:I
    .end local v9           #pListMenu:[Ljava/lang/String;
    :goto_1
    return-void

    .line 662
    .restart local v7       #brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/BrowseRaw;>;"
    .restart local v8       #i:I
    .restart local v9       #pListMenu:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v8, 0x1

    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$1;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/search/SearchActivity;->access$2(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v0, v0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    aput-object v0, v9, v1

    .line 664
    new-instance v0, Lnet/yostore/aws/handler/entity/BrowseRaw;

    .line 665
    add-int/lit8 v1, v8, 0x1

    aget-object v1, v9, v1

    .line 667
    const-string v3, "1"

    .line 668
    iget-object v4, p0, Lnet/yostore/aws/view/search/SearchActivity$1;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/search/SearchActivity;->access$2(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v4, v4, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 669
    sget-wide v5, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    .line 664
    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/handler/entity/BrowseRaw;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    .line 663
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 676
    .end local v7           #brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/BrowseRaw;>;"
    .end local v8           #i:I
    .end local v9           #pListMenu:[Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$1;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/search/SearchActivity;->access$3(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_1
.end method
