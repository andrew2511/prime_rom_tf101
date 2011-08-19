.class Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;
.super Landroid/os/AsyncTask;
.source "LibActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/LibActivity;
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

.field final synthetic this$0:Lnet/yostore/aws/view/navigate/LibActivity;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/navigate/LibActivity;Lnet/yostore/aws/handler/entity/FsInfo;J)V
    .locals 2
    .parameter
    .parameter "fi"
    .parameter "list"

    .prologue
    .line 1014
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    .line 1010
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1007
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    .line 1008
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->list:J

    .line 1009
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->_msg:Landroid/os/Message;

    .line 1011
    iput-object p2, p0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    .line 1012
    iput-wide p3, p0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->list:J

    .line 1013
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->_msg:Landroid/os/Message;

    const/16 v1, 0xa0

    iput v1, v0, Landroid/os/Message;->what:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 17
    .parameter "arg0"

    .prologue
    .line 1019
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->publishProgress([Ljava/lang/Object;)V

    .line 1020
    const/4 v13, -0x1

    .line 1022
    .local v13, foldercnt:I
    new-instance v2, Lnet/yostore/aws/api/helper/SqlQueryHelper;

    .line 1023
    const-string v3, ":"

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    move-object v4, v0

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/LibActivity;->access$11(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/handler/entity/Search;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/Search;->getMark()Ljava/lang/String;

    move-result-object v4

    .line 1025
    const/4 v5, 0x1

    .line 1026
    const/4 v6, 0x0

    .line 1027
    sget-object v7, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 1028
    const-string v8, ""

    .line 1029
    move-object/from16 v0, p0

    iget-wide v0, v0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->list:J

    move-wide v9, v0

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 1022
    invoke-direct/range {v2 .. v9}, Lnet/yostore/aws/api/helper/SqlQueryHelper;-><init>(Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    .local v2, apihelper:Lnet/yostore/aws/api/helper/SqlQueryHelper;
    const/4 v14, 0x0

    .line 1034
    .local v14, fqresponse:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    move-object v4, v0

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/LibActivity;->access$0(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/yostore/aws/api/helper/SqlQueryHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    move-object v14, v0
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1035
    if-nez v14, :cond_1

    .line 1036
    const/4 v13, -0x1

    .line 1060
    :goto_0
    if-ltz v13, :cond_3

    sget v4, Lcom/ecareme/mear/Mear;->pageSize:I

    if-ge v13, v4, :cond_3

    .line 1061
    new-instance v3, Lnet/yostore/aws/api/helper/DirectUploadHelper;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->list:J

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    move-object v5, v0

    invoke-static {v5}, Lcom/ecareme/mear/Mear;->getShortCutDisplay(Lnet/yostore/aws/handler/entity/FsInfo;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x3e7

    const-string v8, ""

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lnet/yostore/aws/api/helper/DirectUploadHelper;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[B)V

    .line 1062
    .local v3, helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    const/4 v15, 0x0

    .line 1065
    .local v15, response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    move-object v4, v0

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/LibActivity;->access$0(Lnet/yostore/aws/view/navigate/LibActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/yostore/aws/api/helper/DirectUploadHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lnet/yostore/aws/api/entity/DirectUploadResponse;

    move-object v15, v0

    .line 1066
    sget-object v4, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v4}, Lnet/yostore/aws/service/PlayerServiceInterface;->getPlayingFolderId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->list:J

    move-wide v6, v0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1068
    new-instance v10, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-direct {v10}, Lnet/yostore/aws/handler/entity/Mp3Item;-><init>()V

    .line 1069
    .local v10, _mp3item:Lnet/yostore/aws/handler/entity/Mp3Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    move-object v4, v0

    iget-object v4, v4, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v10, v4}, Lnet/yostore/aws/handler/entity/Mp3Item;->setDisplay(Ljava/lang/String;)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    move-object v4, v0

    iget-object v4, v4, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Lnet/yostore/aws/handler/entity/Mp3Item;->setRealfileId(J)V

    .line 1071
    sget-object v4, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v4, v10}, Lnet/yostore/aws/service/PlayerServiceInterface;->insertSongPlaylist(Lnet/yostore/aws/handler/entity/Mp3Item;)V

    .line 1073
    .end local v10           #_mp3item:Lnet/yostore/aws/handler/entity/Mp3Item;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->_msg:Landroid/os/Message;

    move-object v4, v0

    const/16 v5, 0x96

    iput v5, v4, Landroid/os/Message;->what:I
    :try_end_1
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1100
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

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->publishProgress([Ljava/lang/Object;)V

    .line 1101
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 1044
    :cond_1
    :try_start_2
    invoke-virtual {v14}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getStatus()I

    move-result v4

    if-eqz v4, :cond_2

    .line 1045
    const/4 v13, -0x1

    goto/16 :goto_0

    .line 1051
    :cond_2
    invoke-virtual {v14}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getTotal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v13

    goto/16 :goto_0

    .line 1075
    .restart local v3       #helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    .restart local v15       #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :catch_0
    move-exception v4

    move-object v12, v4

    .line 1076
    .local v12, e1:Lnet/yostore/aws/api/exception/APIException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->_msg:Landroid/os/Message;

    move-object v4, v0

    const/16 v5, 0xa0

    iput v5, v4, Landroid/os/Message;->what:I

    goto :goto_1

    .line 1079
    .end local v12           #e1:Lnet/yostore/aws/api/exception/APIException;
    :catch_1
    move-exception v4

    move-object v11, v4

    .line 1083
    .local v11, e:Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->_msg:Landroid/os/Message;

    move-object v4, v0

    const/16 v5, 0xa0

    iput v5, v4, Landroid/os/Message;->what:I

    goto :goto_1

    .line 1086
    .end local v11           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v4

    move-object v11, v4

    .line 1089
    .local v11, e:Ljava/lang/Exception;
    const-string v4, "LibActivity"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->_msg:Landroid/os/Message;

    move-object v4, v0

    const/16 v5, 0xa0

    iput v5, v4, Landroid/os/Message;->what:I

    goto :goto_1

    .line 1093
    .end local v3           #helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    .end local v11           #e:Ljava/lang/Exception;
    .end local v15           #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :cond_3
    sget v4, Lcom/ecareme/mear/Mear;->pageSize:I

    if-lt v13, v4, :cond_4

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->_msg:Landroid/os/Message;

    move-object v4, v0

    const/16 v5, 0xaa

    iput v5, v4, Landroid/os/Message;->what:I

    goto :goto_1

    .line 1097
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->_msg:Landroid/os/Message;

    move-object v4, v0

    const/16 v5, 0xa0

    iput v5, v4, Landroid/os/Message;->what:I

    goto :goto_1

    .line 1056
    :catch_3
    move-exception v4

    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1117
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/LibActivity;->access$14(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->_msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1118
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 1108
    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$1(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/LibActivity;->access$1(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/navigate/LibActivity;->access$1(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06000d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$2(Lnet/yostore/aws/view/navigate/LibActivity;Landroid/app/ProgressDialog;)V

    .line 1113
    :goto_0
    return-void

    .line 1111
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/LibActivity$AddFileToList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
