.class public Lnet/yostore/aws/view/navigate/PlayListActivity$PLBroadcastRecv;
.super Landroid/content/BroadcastReceiver;
.source "PlayListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/PlayListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PLBroadcastRecv"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1053
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$PLBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1060
    :try_start_0
    const-string v4, "PlayLists.Updated"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1061
    .local v2, pnull:Ljava/lang/String;
    const-string v4, "PlayList.StatusChanged"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1062
    .local v1, plistid:Ljava/lang/String;
    const-string v4, "SongList.Updated"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1064
    .local v3, slist:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1069
    new-instance v4, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$PLBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    sget-object v6, Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;->TOP:Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;

    invoke-direct {v4, v5, v6}, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Void;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1090
    .end local v1           #plistid:Ljava/lang/String;
    .end local v2           #pnull:Ljava/lang/String;
    .end local v3           #slist:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1071
    .restart local v1       #plistid:Ljava/lang/String;
    .restart local v2       #pnull:Ljava/lang/String;
    .restart local v3       #slist:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 1072
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$PLBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$4(Lnet/yostore/aws/view/navigate/PlayListActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v4

    iget-wide v4, v4, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    sget-wide v6, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1073
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$PLBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$4(Lnet/yostore/aws/view/navigate/PlayListActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->notifyDataSetChanged()V

    .line 1076
    new-instance v4, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$PLBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    sget-object v6, Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;->TOP:Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;

    invoke-direct {v4, v5, v6}, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Void;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1087
    .end local v1           #plistid:Ljava/lang/String;
    .end local v2           #pnull:Ljava/lang/String;
    .end local v3           #slist:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1088
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "PlayListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1078
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #plistid:Ljava/lang/String;
    .restart local v2       #pnull:Ljava/lang/String;
    .restart local v3       #slist:Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_0

    .line 1079
    :try_start_1
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$PLBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$4(Lnet/yostore/aws/view/navigate/PlayListActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v4

    iget-wide v4, v4, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1080
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$PLBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$4(Lnet/yostore/aws/view/navigate/PlayListActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->notifyDataSetChanged()V

    .line 1083
    new-instance v4, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$PLBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    sget-object v6, Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;->HERE:Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;

    invoke-direct {v4, v5, v6}, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;Lnet/yostore/aws/view/navigate/PlayListActivity$NAVI;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Void;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lnet/yostore/aws/view/navigate/PlayListActivity$naviToTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
