.class Lnet/yostore/aws/view/present/PlayerActivity$4;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/present/PlayerActivity;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/present/PlayerActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/present/PlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/present/PlayerActivity$4;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 451
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity$4;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2, p3}, Lnet/yostore/aws/service/PlayerServiceInterface;->getSong(I)Lnet/yostore/aws/handler/entity/Mp3Item;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/yostore/aws/view/present/PlayerActivity;->access$15(Lnet/yostore/aws/view/present/PlayerActivity;Lnet/yostore/aws/handler/entity/Mp3Item;)V

    .line 452
    new-instance v1, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v1}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>()V

    sput-object v1, Lnet/yostore/aws/view/present/PlayerActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    .line 453
    sget-object v1, Lnet/yostore/aws/view/present/PlayerActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, p0, Lnet/yostore/aws/view/present/PlayerActivity$4;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/present/PlayerActivity;->access$16(Lnet/yostore/aws/view/present/PlayerActivity;)Lnet/yostore/aws/handler/entity/Mp3Item;

    move-result-object v2

    invoke-virtual {v2}, Lnet/yostore/aws/handler/entity/Mp3Item;->getDisplay()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 454
    sget-object v1, Lnet/yostore/aws/view/present/PlayerActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, p0, Lnet/yostore/aws/view/present/PlayerActivity$4;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/present/PlayerActivity;->access$16(Lnet/yostore/aws/view/present/PlayerActivity;)Lnet/yostore/aws/handler/entity/Mp3Item;

    move-result-object v2

    invoke-virtual {v2}, Lnet/yostore/aws/handler/entity/Mp3Item;->getRealfileId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 455
    sget-object v1, Lnet/yostore/aws/view/present/PlayerActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, p0, Lnet/yostore/aws/view/present/PlayerActivity$4;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/present/PlayerActivity;->access$16(Lnet/yostore/aws/view/present/PlayerActivity;)Lnet/yostore/aws/handler/entity/Mp3Item;

    move-result-object v2

    invoke-virtual {v2}, Lnet/yostore/aws/handler/entity/Mp3Item;->getAttribute()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Ljava/lang/String;

    .line 456
    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity$4;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-virtual {v1, p3}, Lnet/yostore/aws/view/present/PlayerActivity;->showFileContextMenu(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 467
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 457
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 458
    .local v0, e:Landroid/os/DeadObjectException;
    :try_start_1
    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity$4;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/present/PlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/DeadObjectException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 459
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 461
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity$4;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/present/PlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 462
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 465
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
