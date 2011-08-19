.class Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;
.super Landroid/os/AsyncTask;
.source "PlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/present/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddFileToList"
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
.field _msg:Landroid/os/Message;

.field private fi:Lnet/yostore/aws/handler/entity/FsInfo;

.field private list:J

.field final synthetic this$0:Lnet/yostore/aws/view/present/PlayerActivity;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/present/PlayerActivity;Lnet/yostore/aws/handler/entity/FsInfo;J)V
    .locals 2
    .parameter
    .parameter "fi"
    .parameter "list"

    .prologue
    .line 907
    iput-object p1, p0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    .line 903
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 900
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    .line 901
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->list:J

    .line 902
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->_msg:Landroid/os/Message;

    .line 904
    iput-object p2, p0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    .line 905
    iput-wide p3, p0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->list:J

    .line 906
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->_msg:Landroid/os/Message;

    const/16 v1, 0xa0

    iput v1, v0, Landroid/os/Message;->what:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 17
    .parameter "arg0"

    .prologue
    .line 912
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->publishProgress([Ljava/lang/Object;)V

    .line 913
    const/4 v13, -0x1

    .line 915
    .local v13, foldercnt:I
    new-instance v2, Lnet/yostore/aws/api/helper/SqlQueryHelper;

    .line 916
    const-string v3, "?"

    .line 917
    const/4 v4, 0x0

    .line 918
    const/4 v5, 0x1

    .line 919
    const/4 v6, 0x0

    .line 920
    sget-object v7, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 921
    const-string v8, ""

    .line 922
    move-object/from16 v0, p0

    iget-wide v0, v0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->list:J

    move-wide v9, v0

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 915
    invoke-direct/range {v2 .. v9}, Lnet/yostore/aws/api/helper/SqlQueryHelper;-><init>(Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    .local v2, apihelper:Lnet/yostore/aws/api/helper/SqlQueryHelper;
    const/4 v14, 0x0

    .line 927
    .local v14, fqresponse:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    move-object v4, v0

    invoke-static {v4}, Lnet/yostore/aws/view/present/PlayerActivity;->access$0(Lnet/yostore/aws/view/present/PlayerActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/yostore/aws/api/helper/SqlQueryHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    move-object v14, v0
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    if-nez v14, :cond_1

    .line 929
    const/4 v13, -0x1

    .line 953
    :goto_0
    if-ltz v13, :cond_3

    sget v4, Lcom/ecareme/mear/Mear;->pageSize:I

    if-ge v13, v4, :cond_3

    .line 954
    new-instance v3, Lnet/yostore/aws/api/helper/DirectUploadHelper;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->list:J

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    move-object v5, v0

    invoke-static {v5}, Lcom/ecareme/mear/Mear;->getShortCutDisplay(Lnet/yostore/aws/handler/entity/FsInfo;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x3e7

    const-string v8, ""

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lnet/yostore/aws/api/helper/DirectUploadHelper;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[B)V

    .line 955
    .local v3, helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    const/4 v15, 0x0

    .line 958
    .local v15, response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    move-object v4, v0

    invoke-static {v4}, Lnet/yostore/aws/view/present/PlayerActivity;->access$0(Lnet/yostore/aws/view/present/PlayerActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/yostore/aws/api/helper/DirectUploadHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lnet/yostore/aws/api/entity/DirectUploadResponse;

    move-object v15, v0

    .line 959
    sget-object v4, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v4}, Lnet/yostore/aws/service/PlayerServiceInterface;->getPlayingFolderId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->list:J

    move-wide v6, v0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 961
    new-instance v10, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-direct {v10}, Lnet/yostore/aws/handler/entity/Mp3Item;-><init>()V

    .line 962
    .local v10, _mp3item:Lnet/yostore/aws/handler/entity/Mp3Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    move-object v4, v0

    iget-object v4, v4, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v10, v4}, Lnet/yostore/aws/handler/entity/Mp3Item;->setDisplay(Ljava/lang/String;)V

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    move-object v4, v0

    iget-object v4, v4, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Lnet/yostore/aws/handler/entity/Mp3Item;->setRealfileId(J)V

    .line 964
    sget-object v4, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v4, v10}, Lnet/yostore/aws/service/PlayerServiceInterface;->insertSongPlaylist(Lnet/yostore/aws/handler/entity/Mp3Item;)V

    .line 966
    .end local v10           #_mp3item:Lnet/yostore/aws/handler/entity/Mp3Item;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->_msg:Landroid/os/Message;

    move-object v4, v0

    const/16 v5, 0x96

    iput v5, v4, Landroid/os/Message;->what:I
    :try_end_1
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 993
    .end local v3           #helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    .end local v15           #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :goto_1
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->publishProgress([Ljava/lang/Object;)V

    .line 994
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 937
    :cond_1
    :try_start_2
    invoke-virtual {v14}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getStatus()I

    move-result v4

    if-eqz v4, :cond_2

    .line 938
    const/4 v13, -0x1

    goto/16 :goto_0

    .line 944
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

    .line 949
    :catch_0
    move-exception v4

    move-object v11, v4

    .line 950
    .local v11, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v11}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto/16 :goto_0

    .line 968
    .end local v11           #e:Lnet/yostore/aws/api/exception/APIException;
    .restart local v3       #helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    .restart local v15       #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :catch_1
    move-exception v4

    move-object v12, v4

    .line 969
    .local v12, e1:Lnet/yostore/aws/api/exception/APIException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->_msg:Landroid/os/Message;

    move-object v4, v0

    const/16 v5, 0xa0

    iput v5, v4, Landroid/os/Message;->what:I

    goto :goto_1

    .line 972
    .end local v12           #e1:Lnet/yostore/aws/api/exception/APIException;
    :catch_2
    move-exception v4

    move-object v11, v4

    .line 976
    .local v11, e:Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->_msg:Landroid/os/Message;

    move-object v4, v0

    const/16 v5, 0xa0

    iput v5, v4, Landroid/os/Message;->what:I

    goto :goto_1

    .line 979
    .end local v11           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v4

    move-object v11, v4

    .line 982
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->_msg:Landroid/os/Message;

    move-object v4, v0

    const/16 v5, 0xa0

    iput v5, v4, Landroid/os/Message;->what:I

    goto :goto_1

    .line 986
    .end local v3           #helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    .end local v11           #e:Ljava/lang/Exception;
    .end local v15           #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :cond_3
    sget v4, Lcom/ecareme/mear/Mear;->pageSize:I

    if-lt v13, v4, :cond_4

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->_msg:Landroid/os/Message;

    move-object v4, v0

    const/16 v5, 0xaa

    iput v5, v4, Landroid/os/Message;->what:I

    goto :goto_1

    .line 990
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->_msg:Landroid/os/Message;

    move-object v4, v0

    const/16 v5, 0xa0

    iput v5, v4, Landroid/os/Message;->what:I

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1008
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$8(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->_msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1009
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 1000
    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 1001
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/present/PlayerActivity;->access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/present/PlayerActivity;->access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/present/PlayerActivity;->access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06000d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/present/PlayerActivity;->access$2(Lnet/yostore/aws/view/present/PlayerActivity;Landroid/app/ProgressDialog;)V

    .line 1005
    :goto_0
    return-void

    .line 1003
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$3(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/app/ProgressDialog;

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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/present/PlayerActivity$AddFileToList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
