.class Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;
.super Landroid/os/AsyncTask;
.source "LibActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/LibActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "doSearchTopTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private _msg:Landroid/os/Message;

.field final synthetic this$0:Lnet/yostore/aws/view/navigate/LibActivity;


# direct methods
.method private constructor <init>(Lnet/yostore/aws/view/navigate/LibActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 918
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 920
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->_msg:Landroid/os/Message;

    return-void
.end method

.method synthetic constructor <init>(Lnet/yostore/aws/view/navigate/LibActivity;Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 918
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;-><init>(Lnet/yostore/aws/view/navigate/LibActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 12
    .parameter "params"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v11, 0x0

    .line 925
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->publishProgress([Ljava/lang/Object;)V

    .line 926
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    new-instance v2, Lnet/yostore/aws/view/navigate/BrowseAdapter;

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/navigate/LibActivity;->access$1(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030007

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v3, v4, v5}, Lnet/yostore/aws/view/navigate/BrowseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-static {v1, v2}, Lnet/yostore/aws/view/navigate/LibActivity;->access$8(Lnet/yostore/aws/view/navigate/LibActivity;Lnet/yostore/aws/view/navigate/BrowseAdapter;)V

    .line 927
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$9(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    sget-wide v2, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    iput-wide v2, v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    .line 928
    sput v11, Lnet/yostore/aws/view/navigate/LibActivity;->awsIdx:I

    .line 929
    sput v11, Lnet/yostore/aws/view/navigate/LibActivity;->offset:I

    .line 930
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->awsl:Ljava/util/List;

    .line 931
    sget-wide v1, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_0

    .line 932
    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->awsl:Ljava/util/List;

    sget-wide v2, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    :cond_0
    sget-wide v1, Lcom/ecareme/mear/Mear;->import_info_id:J

    cmp-long v1, v1, v6

    if-gez v1, :cond_1

    .line 936
    new-instance v1, Lnet/yostore/aws/handler/entity/ImportInfoBean;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/LibActivity;->access$0(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/yostore/aws/handler/entity/ImportInfoBean;-><init>(Lnet/yostore/aws/api/ApiConfig;)V

    sput-object v1, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    .line 937
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 938
    .local v8, _awsl:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    sget-wide v1, Lcom/ecareme/mear/Mear;->myCollectionFolderId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    sget-wide v1, Lcom/ecareme/mear/Mear;->myBackupFolderId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    sget-wide v1, Lcom/ecareme/mear/Mear;->mySyncFolderId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 941
    sget-object v1, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    invoke-virtual {v1, v8}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->setAwsl(Ljava/util/List;)V

    .line 944
    .end local v8           #_awsl:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    sget-object v1, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    if-eqz v1, :cond_2

    .line 945
    sget-object v1, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->getAwsl()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 946
    const/4 v9, 0x0

    .local v9, a:I
    :goto_0
    sget-object v1, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->getAwsl()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v9, v1, :cond_4

    .line 953
    .end local v9           #a:I
    :cond_2
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$10(Lnet/yostore/aws/view/navigate/LibActivity;)Ljava/lang/String;

    .line 954
    new-instance v0, Lnet/yostore/aws/handler/MearDataHandler;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$0(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/yostore/aws/handler/MearDataHandler;-><init>(Lnet/yostore/aws/api/ApiConfig;)V

    .line 955
    .local v0, mdh:Lnet/yostore/aws/handler/MearDataHandler;
    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->awsl:Ljava/util/List;

    const-string v2, " "

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/navigate/LibActivity;->access$11(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/handler/entity/Search;

    move-result-object v3

    invoke-virtual {v3}, Lnet/yostore/aws/handler/entity/Search;->getMark()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/LibActivity;->access$11(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/handler/entity/Search;

    move-result-object v5

    invoke-virtual {v5}, Lnet/yostore/aws/handler/entity/Search;->getExt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lnet/yostore/aws/handler/MearDataHandler;->getFolderCnt(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->awsCnt:Ljava/util/List;

    .line 957
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->awsCnt:Ljava/util/List;

    if-eqz v1, :cond_3

    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->awsCnt:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v10, v1, :cond_5

    .line 963
    :cond_3
    :goto_2
    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->awsCnt:Ljava/util/List;

    if-eqz v1, :cond_7

    sget v1, Lnet/yostore/aws/view/navigate/LibActivity;->awsIdx:I

    if-nez v1, :cond_7

    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->awsCnt:Ljava/util/List;

    sget v2, Lnet/yostore/aws/view/navigate/LibActivity;->awsIdx:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_7

    .line 965
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->_msg:Landroid/os/Message;

    const/16 v2, 0x5a

    iput v2, v1, Landroid/os/Message;->what:I

    .line 982
    :goto_3
    sput-boolean v11, Lnet/yostore/aws/view/navigate/LibActivity;->isLoading:Z

    .line 983
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->_msg:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 947
    .end local v0           #mdh:Lnet/yostore/aws/handler/MearDataHandler;
    .end local v10           #i:I
    .restart local v9       #a:I
    :cond_4
    sget-object v2, Lnet/yostore/aws/view/navigate/LibActivity;->awsl:Ljava/util/List;

    sget-object v1, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->getAwsl()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 958
    .end local v9           #a:I
    .restart local v0       #mdh:Lnet/yostore/aws/handler/MearDataHandler;
    .restart local v10       #i:I
    :cond_5
    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->awsCnt:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_6

    .line 959
    sput v10, Lnet/yostore/aws/view/navigate/LibActivity;->awsIdx:I

    goto :goto_2

    .line 957
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 968
    :cond_7
    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/LibActivity;->access$9(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v2

    const-string v3, "1"

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/LibActivity;->access$11(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/handler/entity/Search;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/Search;->getSrhopt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/LibActivity;->access$11(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/handler/entity/Search;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/Search;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/LibActivity;->access$11(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/handler/entity/Search;

    move-result-object v5

    invoke-virtual {v5}, Lnet/yostore/aws/handler/entity/Search;->getMark()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v6}, Lnet/yostore/aws/view/navigate/LibActivity;->access$11(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/handler/entity/Search;

    move-result-object v6

    invoke-virtual {v6}, Lnet/yostore/aws/handler/entity/Search;->getExt()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/ecareme/mear/Mear;->pageSize:I

    invoke-virtual/range {v1 .. v7}, Lnet/yostore/aws/view/navigate/LibHandler;->searchFileDir(Lnet/yostore/aws/view/navigate/BrowseAdapter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 969
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    sget-object v2, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    iget v2, v2, Lnet/yostore/aws/view/navigate/LibHandler;->searchtotal:I

    invoke-static {v1, v2}, Lnet/yostore/aws/view/navigate/LibActivity;->access$12(Lnet/yostore/aws/view/navigate/LibActivity;I)V

    .line 971
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$9(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    if-nez v1, :cond_8

    .line 973
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    const v4, 0x7f060011

    invoke-virtual {v3, v4}, Lnet/yostore/aws/view/navigate/LibActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lnet/yostore/aws/view/navigate/LibActivity;->nav:Lnet/yostore/aws/view/navigate/LibHandler;

    iget-object v3, v3, Lnet/yostore/aws/view/navigate/LibHandler;->errMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/yostore/aws/view/navigate/LibActivity;->access$13(Lnet/yostore/aws/view/navigate/LibActivity;Ljava/lang/String;)V

    .line 974
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->_msg:Landroid/os/Message;

    const/16 v2, 0x78

    iput v2, v1, Landroid/os/Message;->what:I

    goto/16 :goto_3

    .line 977
    :cond_8
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$9(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    sget-wide v2, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    iput-wide v2, v1, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    .line 978
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->_msg:Landroid/os/Message;

    const/16 v2, 0x6e

    iput v2, v1, Landroid/os/Message;->what:I

    goto/16 :goto_3
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 999
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->publishProgress([Ljava/lang/Object;)V

    .line 1000
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->_msg:Landroid/os/Message;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1001
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/LibActivity;->access$14(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->_msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1002
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v5, 0x1

    .line 990
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 991
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$1(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/navigate/LibActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    const v4, 0x7f06000d

    invoke-virtual {v3, v4}, Lnet/yostore/aws/view/navigate/LibActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$2(Lnet/yostore/aws/view/navigate/LibActivity;Landroid/app/ProgressDialog;)V

    .line 995
    :goto_0
    return-void

    .line 993
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/LibActivity;->access$3(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/LibActivity$doSearchTopTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
