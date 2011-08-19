.class Lnet/yostore/aws/view/search/SearchActivity$16;
.super Ljava/lang/Thread;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/search/SearchActivity;->doSearchTop()V
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
    iput-object p1, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    .line 334
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/search/SearchActivity$16;)Lnet/yostore/aws/view/search/SearchActivity;
    .locals 1
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 336
    sput v1, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    .line 337
    sput v1, Lnet/yostore/aws/view/search/SearchActivity;->offset:I

    .line 338
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/search/SearchActivity;->access$24(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 339
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/search/SearchActivity;->access$3(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 340
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/search/SearchActivity;->access$10(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/search/SearchActivity;->access$25(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 373
    :goto_0
    return-void

    .line 342
    :cond_0
    new-instance v0, Lnet/yostore/aws/handler/MearDataHandler;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/search/SearchActivity;->access$9(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/yostore/aws/handler/MearDataHandler;-><init>(Lnet/yostore/aws/api/ApiConfig;)V

    .line 343
    .local v0, mdh:Lnet/yostore/aws/handler/MearDataHandler;
    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->awsl:Ljava/util/List;

    iget-object v2, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/search/SearchActivity;->access$8(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/handler/entity/Search;

    move-result-object v2

    invoke-virtual {v2}, Lnet/yostore/aws/handler/entity/Search;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/search/SearchActivity;->access$8(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/handler/entity/Search;

    move-result-object v3

    invoke-virtual {v3}, Lnet/yostore/aws/handler/entity/Search;->getMark()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    iget-object v5, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/search/SearchActivity;->access$8(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/handler/entity/Search;

    move-result-object v5

    invoke-virtual {v5}, Lnet/yostore/aws/handler/entity/Search;->getExt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lnet/yostore/aws/handler/MearDataHandler;->getFolderCnt(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchCnt:Ljava/util/List;

    .line 345
    sget-object v1, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchCnt:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 346
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    sget-object v1, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchCnt:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v8, v1, :cond_1

    .line 352
    :goto_2
    sget-object v1, Lnet/yostore/aws/view/search/SearchActivity;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    iget-object v2, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/search/SearchActivity;->access$4(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v2

    const-string v3, "1"

    iget-object v4, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/search/SearchActivity;->access$8(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/handler/entity/Search;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/Search;->getSrhopt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/search/SearchActivity;->access$8(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/handler/entity/Search;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/Search;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/search/SearchActivity;->access$8(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/handler/entity/Search;

    move-result-object v5

    invoke-virtual {v5}, Lnet/yostore/aws/handler/entity/Search;->getMark()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v6}, Lnet/yostore/aws/view/search/SearchActivity;->access$8(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/handler/entity/Search;

    move-result-object v6

    invoke-virtual {v6}, Lnet/yostore/aws/handler/entity/Search;->getExt()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/ecareme/mear/Mear;->pageSize:I

    invoke-virtual/range {v1 .. v7}, Lnet/yostore/aws/view/search/SearchHandler;->searchFileDir(Lnet/yostore/aws/view/navigate/BrowseAdapter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 353
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    sget-object v2, Lnet/yostore/aws/view/search/SearchActivity;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    iget v2, v2, Lnet/yostore/aws/view/search/SearchHandler;->searchtotal:I

    invoke-static {v1, v2}, Lnet/yostore/aws/view/search/SearchActivity;->access$26(Lnet/yostore/aws/view/search/SearchActivity;I)V

    .line 355
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/search/SearchActivity;->access$4(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    if-nez v1, :cond_3

    .line 356
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/search/SearchActivity;->access$3(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 357
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    const v4, 0x7f060011

    invoke-virtual {v3, v4}, Lnet/yostore/aws/view/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lnet/yostore/aws/view/search/SearchActivity;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    iget-object v3, v3, Lnet/yostore/aws/view/search/SearchHandler;->errMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/yostore/aws/view/search/SearchActivity;->access$27(Lnet/yostore/aws/view/search/SearchActivity;Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/search/SearchActivity;->access$10(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/search/SearchActivity;->access$28(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 347
    :cond_1
    sget-object v1, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchCnt:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_2

    .line 348
    sput v8, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    goto/16 :goto_2

    .line 346
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 360
    :cond_3
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/search/SearchActivity;->access$4(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    sget-wide v2, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    iput-wide v2, v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    .line 361
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/search/SearchActivity;->access$10(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/view/search/SearchActivity$16$1;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/search/SearchActivity$16$1;-><init>(Lnet/yostore/aws/view/search/SearchActivity$16;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 370
    .end local v8           #i:I
    :cond_4
    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$16;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/search/SearchActivity;->access$3(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0
.end method
