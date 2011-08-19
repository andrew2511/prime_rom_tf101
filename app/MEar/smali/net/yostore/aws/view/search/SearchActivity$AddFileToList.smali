.class Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;
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
    name = "AddFileToList"
.end annotation


# instance fields
.field private fi:Lnet/yostore/aws/handler/entity/FsInfo;

.field private list:J

.field final synthetic this$0:Lnet/yostore/aws/view/search/SearchActivity;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/search/SearchActivity;Lnet/yostore/aws/handler/entity/FsInfo;J)V
    .locals 2
    .parameter
    .parameter "fi"
    .parameter "list"

    .prologue
    .line 766
    iput-object p1, p0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    .line 762
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->list:J

    .line 764
    iput-object p2, p0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    .line 765
    iput-wide p3, p0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->list:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 770
    const/4 v13, -0x1

    .line 772
    .local v13, foldercnt:I
    new-instance v2, Lnet/yostore/aws/api/helper/SqlQueryHelper;

    .line 773
    const-string v3, "?"

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    move-object v4, v0

    invoke-static {v4}, Lnet/yostore/aws/view/search/SearchActivity;->access$8(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/handler/entity/Search;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/Search;->getMark()Ljava/lang/String;

    move-result-object v4

    .line 775
    const/4 v5, 0x1

    .line 776
    const/4 v6, 0x0

    .line 777
    sget-object v7, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 778
    const-string v8, ""

    .line 779
    move-object/from16 v0, p0

    iget-wide v0, v0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->list:J

    move-wide v9, v0

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 772
    invoke-direct/range {v2 .. v9}, Lnet/yostore/aws/api/helper/SqlQueryHelper;-><init>(Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    .local v2, apihelper:Lnet/yostore/aws/api/helper/SqlQueryHelper;
    const/4 v14, 0x0

    .line 784
    .local v14, fqresponse:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    move-object v4, v0

    invoke-static {v4}, Lnet/yostore/aws/view/search/SearchActivity;->access$9(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/yostore/aws/api/helper/SqlQueryHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    move-object v14, v0
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    if-nez v14, :cond_1

    .line 786
    const/4 v13, -0x1

    .line 810
    :goto_0
    if-ltz v13, :cond_3

    .line 812
    new-instance v3, Lnet/yostore/aws/api/helper/DirectUploadHelper;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->list:J

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    move-object v5, v0

    invoke-static {v5}, Lcom/ecareme/mear/Mear;->getShortCutDisplay(Lnet/yostore/aws/handler/entity/FsInfo;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x3e7

    const-string v8, ""

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lnet/yostore/aws/api/helper/DirectUploadHelper;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[B)V

    .line 813
    .local v3, helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    const/4 v15, 0x0

    .line 816
    .local v15, response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    move-object v4, v0

    invoke-static {v4}, Lnet/yostore/aws/view/search/SearchActivity;->access$9(Lnet/yostore/aws/view/search/SearchActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/yostore/aws/api/helper/DirectUploadHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lnet/yostore/aws/api/entity/DirectUploadResponse;

    move-object v15, v0

    .line 817
    sget-object v4, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v4}, Lnet/yostore/aws/service/PlayerServiceInterface;->getPlayingFolderId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->list:J

    move-wide v6, v0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 819
    new-instance v10, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-direct {v10}, Lnet/yostore/aws/handler/entity/Mp3Item;-><init>()V

    .line 820
    .local v10, _mp3item:Lnet/yostore/aws/handler/entity/Mp3Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    move-object v4, v0

    iget-object v4, v4, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v10, v4}, Lnet/yostore/aws/handler/entity/Mp3Item;->setShortcutDisplay(Ljava/lang/String;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    move-object v4, v0

    iget-object v4, v4, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Lnet/yostore/aws/handler/entity/Mp3Item;->setShortcutId(J)V

    .line 822
    sget-object v4, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v4, v10}, Lnet/yostore/aws/service/PlayerServiceInterface;->addSongPlaylist(Lnet/yostore/aws/handler/entity/Mp3Item;)V

    .line 824
    .end local v10           #_mp3item:Lnet/yostore/aws/handler/entity/Mp3Item;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    move-object v4, v0

    invoke-static {v4}, Lnet/yostore/aws/view/search/SearchActivity;->access$10(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    move-object v5, v0

    invoke-static {v5}, Lnet/yostore/aws/view/search/SearchActivity;->access$11(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 845
    .end local v3           #helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    .end local v15           #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :goto_1
    return-void

    .line 794
    :cond_1
    :try_start_2
    invoke-virtual {v14}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getStatus()I

    move-result v4

    if-eqz v4, :cond_2

    .line 795
    const/4 v13, -0x1

    goto :goto_0

    .line 801
    :cond_2
    invoke-virtual {v14}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getTotal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v13

    goto/16 :goto_0

    .line 806
    :catch_0
    move-exception v4

    move-object v11, v4

    .line 807
    .local v11, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v11}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto/16 :goto_0

    .line 825
    .end local v11           #e:Lnet/yostore/aws/api/exception/APIException;
    .restart local v3       #helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    .restart local v15       #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :catch_1
    move-exception v4

    move-object v12, v4

    .line 826
    .local v12, e1:Lnet/yostore/aws/api/exception/APIException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    move-object v4, v0

    invoke-static {v4}, Lnet/yostore/aws/view/search/SearchActivity;->access$10(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    move-object v5, v0

    invoke-static {v5}, Lnet/yostore/aws/view/search/SearchActivity;->access$12(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 828
    .end local v12           #e1:Lnet/yostore/aws/api/exception/APIException;
    :catch_2
    move-exception v4

    move-object v11, v4

    .line 832
    .local v11, e:Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    move-object v4, v0

    invoke-static {v4}, Lnet/yostore/aws/view/search/SearchActivity;->access$10(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    move-object v5, v0

    invoke-static {v5}, Lnet/yostore/aws/view/search/SearchActivity;->access$12(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 834
    .end local v11           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v4

    move-object v11, v4

    .line 837
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 840
    .end local v3           #helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    .end local v11           #e:Ljava/lang/Exception;
    .end local v15           #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :cond_3
    const/16 v4, 0x1f4

    if-lt v13, v4, :cond_4

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    move-object v4, v0

    invoke-static {v4}, Lnet/yostore/aws/view/search/SearchActivity;->access$10(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    move-object v5, v0

    invoke-static {v5}, Lnet/yostore/aws/view/search/SearchActivity;->access$13(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 843
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    move-object v4, v0

    invoke-static {v4}, Lnet/yostore/aws/view/search/SearchActivity;->access$10(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/search/SearchActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    move-object v5, v0

    invoke-static {v5}, Lnet/yostore/aws/view/search/SearchActivity;->access$12(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method
