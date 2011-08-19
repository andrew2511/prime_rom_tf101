.class Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;
.super Landroid/os/AsyncTask;
.source "PlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/present/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "getPlaylistTask"
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

.field private brlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/BrowseRaw;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/yostore/aws/view/present/PlayerActivity;


# direct methods
.method private constructor <init>(Lnet/yostore/aws/view/present/PlayerActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 836
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->_msg:Landroid/os/Message;

    .line 837
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->brlist:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lnet/yostore/aws/view/present/PlayerActivity;Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 834
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;-><init>(Lnet/yostore/aws/view/present/PlayerActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 11
    .parameter "params"

    .prologue
    const v2, 0x7f020050

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 842
    new-array v0, v10, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->publishProgress([Ljava/lang/Object;)V

    .line 843
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/present/PlayerActivity;->access$5(Lnet/yostore/aws/view/present/PlayerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/present/PlayerActivity;->access$6(Lnet/yostore/aws/view/present/PlayerActivity;Ljava/util/List;)V

    .line 844
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$7(Lnet/yostore/aws/view/present/PlayerActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 845
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$7(Lnet/yostore/aws/view/present/PlayerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    .line 846
    .local v8, pListMenu:[Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    const v1, 0x7f060090

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/PlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v3

    .line 847
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->brlist:Ljava/util/List;

    .line 848
    iget-object v9, p0, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->brlist:Ljava/util/List;

    .line 849
    new-instance v0, Lnet/yostore/aws/handler/entity/BrowseRaw;

    .line 850
    aget-object v1, v8, v3

    .line 852
    const-string v3, "1"

    .line 853
    const-string v4, "-999"

    .line 854
    sget-wide v5, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    .line 849
    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/handler/entity/BrowseRaw;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    .line 848
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$7(Lnet/yostore/aws/view/present/PlayerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_0

    .line 870
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 873
    .end local v7           #i:I
    .end local v8           #pListMenu:[Ljava/lang/String;
    :goto_1
    return-object v0

    .line 858
    .restart local v7       #i:I
    .restart local v8       #pListMenu:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v7, 0x1

    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/PlayerActivity;->access$7(Lnet/yostore/aws/view/present/PlayerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v0, v0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    aput-object v0, v8, v1

    .line 859
    iget-object v9, p0, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->brlist:Ljava/util/List;

    .line 860
    new-instance v0, Lnet/yostore/aws/handler/entity/BrowseRaw;

    .line 861
    add-int/lit8 v1, v7, 0x1

    aget-object v1, v8, v1

    .line 863
    const-string v3, "1"

    .line 864
    iget-object v4, p0, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/present/PlayerActivity;->access$7(Lnet/yostore/aws/view/present/PlayerActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v4, v4, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 865
    sget-wide v5, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    .line 860
    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/handler/entity/BrowseRaw;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    .line 859
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 873
    .end local v7           #i:I
    .end local v8           #pListMenu:[Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 892
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 893
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->brlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/PlayerActivity;->showAddPlaylistMenu(Ljava/util/List;)V

    .line 894
    :cond_0
    new-array v0, v2, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->publishProgress([Ljava/lang/Object;)V

    .line 895
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v5, 0x1

    .line 882
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 883
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/present/PlayerActivity;->access$1(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/present/PlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    const v4, 0x7f06000d

    invoke-virtual {v3, v4}, Lnet/yostore/aws/view/present/PlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/present/PlayerActivity;->access$2(Lnet/yostore/aws/view/present/PlayerActivity;Landroid/app/ProgressDialog;)V

    .line 887
    :goto_0
    return-void

    .line 885
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/present/PlayerActivity$getPlaylistTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
