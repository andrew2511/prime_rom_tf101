.class Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;
.super Landroid/os/AsyncTask;
.source "MyCloudActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aws/mycloud/view/MyCloudActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "initFetchContentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private isNeedLogin:Z

.field mContext:Landroid/content/Context;

.field mDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/aws/mycloud/view/MyCloudActivity;


# direct methods
.method constructor <init>(Lcom/aws/mycloud/view/MyCloudActivity;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 843
    iput-object p1, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    .line 839
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 845
    iput-boolean v2, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->isNeedLogin:Z

    .line 840
    iput-object p2, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->mContext:Landroid/content/Context;

    .line 841
    const-string v0, ""

    const v1, 0x7f040026

    invoke-virtual {p1, v1}, Lcom/aws/mycloud/view/MyCloudActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1, v3, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->mDialog:Landroid/app/ProgressDialog;

    .line 842
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method private checkFid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "fid"

    .prologue
    .line 966
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->isNeedLogin:Z

    .line 967
    if-nez p1, :cond_1

    const-string p1, ""

    .line 975
    :cond_0
    :goto_0
    return-object p1

    .line 968
    :cond_1
    const-string v0, "ERR:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    const-string v0, "ERR:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 970
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->isNeedLogin:Z

    .line 972
    const-string p1, ""

    goto :goto_0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 849
    iput-boolean v5, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->isNeedLogin:Z

    .line 851
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    const-string v4, "FirstTime"

    invoke-static {v3, v4, v5}, Lcom/aws/mycloud/view/MyCloudActivity;->access$3(Lcom/aws/mycloud/view/MyCloudActivity;Ljava/lang/String;Z)V

    .line 853
    const-string v2, ""

    .line 856
    .local v2, fid:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, v3, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v3}, Lcom/aws/mycloud/helper/FolderRootsConfig;->getMySync(Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v2

    .line 858
    const-string v3, "MyCloudActivity"

    if-nez v2, :cond_0

    const-string v4, "NULL MySync"

    :goto_0
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-direct {p0, v2}, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->checkFid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 860
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, v3, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iput-object v2, v3, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    .line 861
    iget-boolean v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->isNeedLogin:Z

    if-eqz v3, :cond_1

    .line 862
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 945
    :goto_1
    return-object v3

    .line 858
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MySyncFolder==>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 865
    :cond_1
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, v3, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, v3, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 866
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v4, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v4, v4, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v5, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v5, v5, Lcom/aws/mycloud/view/MyCloudActivity;->awsacc:Ljava/io/File;

    invoke-static {v4, v5}, Lcom/aws/mycloud/helper/MySyncFolderHelper;->getFileList(Lnet/yostore/aws/api/ApiConfig;Ljava/io/File;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/aws/mycloud/view/MyCloudActivity;->mySyncList:Ljava/util/List;

    .line 867
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, v3, Lcom/aws/mycloud/view/MyCloudActivity;->mySyncList:Ljava/util/List;

    if-nez v3, :cond_3

    sget-object v3, Lcom/aws/mycloud/helper/MySyncFolderHelper;->STATUS:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 868
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    .line 872
    :cond_2
    const-string v3, "MyCloudActivity"

    const-string v4, "apicfg.mySync empty, skip fetch mySyncList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :cond_3
    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, v3, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v3}, Lcom/aws/mycloud/helper/FolderRootsConfig;->getMEarMeta(Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v2

    .line 882
    const-string v3, "MyCloudActivity"

    if-nez v2, :cond_4

    const-string v4, "NULL MEarMeta"

    :goto_3
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-direct {p0, v2}, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->checkFid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 885
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, v3, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iput-object v2, v3, Lnet/yostore/aws/api/ApiConfig;->mEarMeta:Ljava/lang/String;

    .line 886
    iget-boolean v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->isNeedLogin:Z

    if-eqz v3, :cond_5

    .line 887
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_1

    .line 875
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 876
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 882
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MEarMetaFolder==>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 890
    :cond_5
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, v3, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->mEarMeta:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, v3, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->mEarMeta:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 891
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v4, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v4, v4, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v5, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v5, v5, Lcom/aws/mycloud/view/MyCloudActivity;->awsacc:Ljava/io/File;

    invoke-static {v4, v5}, Lcom/aws/mycloud/helper/MEarPlayListHelper;->getPlayList(Lnet/yostore/aws/api/ApiConfig;Ljava/io/File;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/aws/mycloud/view/MyCloudActivity;->mEarList:Ljava/util/List;

    .line 892
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, v3, Lcom/aws/mycloud/view/MyCloudActivity;->mEarList:Ljava/util/List;

    if-nez v3, :cond_7

    sget-object v3, Lcom/aws/mycloud/helper/MEarPlayListHelper;->STATUS:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 893
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_1

    .line 897
    :cond_6
    const-string v3, "MyCloudActivity"

    const-string v4, "apicfg.mEarMeta empty, skip fetch mEarList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_7
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, v3, Lcom/aws/mycloud/view/MyCloudActivity;->mEarList:Ljava/util/List;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, v3, Lcom/aws/mycloud/view/MyCloudActivity;->mEarList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_9

    .line 900
    :cond_8
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v4, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v4, v4, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v4}, Lcom/aws/mycloud/helper/MEarPlayListHelper;->getFileList(Lnet/yostore/aws/api/ApiConfig;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/aws/mycloud/view/MyCloudActivity;->mEarFileList:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 911
    :cond_9
    :goto_4
    :try_start_3
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, v3, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v3}, Lcom/aws/mycloud/helper/FolderRootsConfig;->getPixWeAlbum(Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v2

    .line 912
    const-string v3, "MyCloudActivity"

    if-nez v2, :cond_a

    const-string v4, "NULL PixWeAlbum"

    :goto_5
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-direct {p0, v2}, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->checkFid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 914
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, v3, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iput-object v2, v3, Lnet/yostore/aws/api/ApiConfig;->pixWeAlbum:Ljava/lang/String;

    .line 915
    iget-boolean v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->isNeedLogin:Z

    if-eqz v3, :cond_b

    .line 916
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v3

    goto/16 :goto_1

    .line 903
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 904
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .end local v0           #e:Ljava/lang/Exception;
    :cond_a
    move-object v4, v2

    .line 912
    goto :goto_5

    .line 919
    :cond_b
    :try_start_4
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, v3, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->pixWeAlbum:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, v3, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->pixWeAlbum:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e

    .line 920
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v4, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v4, v4, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v5, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v5, v5, Lcom/aws/mycloud/view/MyCloudActivity;->awsacc:Ljava/io/File;

    invoke-static {v4, v5}, Lcom/aws/mycloud/helper/PixWeAlbumListHelper;->getAlbumList(Lnet/yostore/aws/api/ApiConfig;Ljava/io/File;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/aws/mycloud/view/MyCloudActivity;->mPixWeList:Ljava/util/List;

    .line 925
    :goto_6
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, v3, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, v3, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d

    .line 926
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, v3, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v3}, Lcom/aws/mycloud/helper/PixWeAlbumListHelper;->ifMySyncFileExists(Lnet/yostore/aws/api/ApiConfig;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 927
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, v3, Lcom/aws/mycloud/view/MyCloudActivity;->mPixWeList:Ljava/util/List;

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v3, Lcom/aws/mycloud/view/MyCloudActivity;->mPixWeList:Ljava/util/List;

    .line 928
    :cond_c
    new-instance v1, Lnet/yostore/aws/api/entity/FolderInfo;

    invoke-direct {v1}, Lnet/yostore/aws/api/entity/FolderInfo;-><init>()V

    .line 929
    .local v1, fi:Lnet/yostore/aws/api/entity/FolderInfo;
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    const v4, 0x7f040043

    invoke-virtual {v3, v4}, Lcom/aws/mycloud/view/MyCloudActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/yostore/aws/api/entity/FolderInfo;->setDisplay(Ljava/lang/String;)V

    .line 930
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, v3, Lcom/aws/mycloud/view/MyCloudActivity;->mPixWeList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 940
    .end local v1           #fi:Lnet/yostore/aws/api/entity/FolderInfo;
    :cond_d
    :goto_7
    :try_start_5
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v3, v3, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v4, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    iget-object v4, v4, Lcom/aws/mycloud/view/MyCloudActivity;->awsacc:Ljava/io/File;

    invoke-virtual {v3, v4}, Lnet/yostore/aws/api/ApiConfig;->setToFile(Ljava/io/File;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 945
    :goto_8
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_1

    .line 923
    :cond_e
    :try_start_6
    const-string v3, "MyCloudActivity"

    const-string v4, "apicfg.pixWeAlbum empty, skip fetch mPixWeList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_6

    .line 935
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 936
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 942
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 943
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 950
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 951
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    invoke-static {v1}, Lcom/aws/mycloud/view/MyCloudActivity;->access$4(Lcom/aws/mycloud/view/MyCloudActivity;)V

    .line 958
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    :goto_1
    return-void

    .line 955
    :cond_0
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->this$0:Lcom/aws/mycloud/view/MyCloudActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/aws/mycloud/view/MyCloudActivity;->gologin(Landroid/view/View;)V

    goto :goto_0

    .line 960
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 961
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
