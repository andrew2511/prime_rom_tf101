.class Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener$2;
.super Ljava/lang/Thread;
.source "BrowseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener$2;->this$1:Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener;

    .line 166
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 170
    :try_start_0
    sget-object v1, Lcom/ecareme/mear/Mear;->plInterface:Lnet/yostore/aws/service/PlayListServiceInterface;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener$2;->this$1:Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener;

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener;->access$0(Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener;)Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;

    move-result-object v2

    iget-object v2, v2, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lnet/yostore/aws/service/PlayListServiceInterface;->DelOfflinePlaylist(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 175
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 177
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 180
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
