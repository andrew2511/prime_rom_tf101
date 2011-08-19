.class Lnet/yostore/aws/view/navigate/PlayListActivity$7;
.super Ljava/lang/Object;
.source "PlayListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/PlayListActivity;->showFolderContextMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

.field private final synthetic val$status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/PlayListActivity;Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$7;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    iput-object p2, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$7;->val$status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 795
    packed-switch p2, :pswitch_data_0

    .line 820
    :goto_0
    return-void

    .line 797
    :pswitch_0
    new-instance v1, Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$7;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    sget-object v3, Lnet/yostore/aws/view/navigate/PlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v3, v3, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/navigate/PlayListActivity$folderRemoveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 802
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$7;->val$status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    sget-object v2, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->online:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    if-ne v1, v2, :cond_0

    .line 803
    sget-object v1, Lcom/ecareme/mear/Mear;->plInterface:Lnet/yostore/aws/service/PlayListServiceInterface;

    sget-object v2, Lnet/yostore/aws/view/navigate/PlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lnet/yostore/aws/service/PlayListServiceInterface;->AddOfflinePlaylist(Ljava/lang/String;)V

    goto :goto_0

    .line 807
    :catch_0
    move-exception v1

    goto :goto_0

    .line 805
    :cond_0
    sget-object v1, Lcom/ecareme/mear/Mear;->plInterface:Lnet/yostore/aws/service/PlayListServiceInterface;

    sget-object v2, Lnet/yostore/aws/view/navigate/PlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lnet/yostore/aws/service/PlayListServiceInterface;->DelOfflinePlaylist(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 811
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 814
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 795
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
