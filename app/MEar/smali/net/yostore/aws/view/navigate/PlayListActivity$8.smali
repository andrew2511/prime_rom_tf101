.class Lnet/yostore/aws/view/navigate/PlayListActivity$8;
.super Ljava/lang/Object;
.source "PlayListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/PlayListActivity;->showFileContextMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

.field private final synthetic val$mp3Inf:Lnet/yostore/aws/handler/entity/Mp3Info;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/PlayListActivity;Lnet/yostore/aws/handler/entity/Mp3Info;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$8;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    iput-object p2, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$8;->val$mp3Inf:Lnet/yostore/aws/handler/entity/Mp3Info;

    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 833
    packed-switch p2, :pswitch_data_0

    .line 841
    :goto_0
    return-void

    .line 835
    :pswitch_0
    new-instance v0, Lnet/yostore/aws/view/navigate/PlayListActivity$fileRemoveTask;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$8;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    sget-object v2, Lnet/yostore/aws/view/navigate/PlayListActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/view/navigate/PlayListActivity$fileRemoveTask;-><init>(Lnet/yostore/aws/view/navigate/PlayListActivity;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity$fileRemoveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 838
    :pswitch_1
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$8;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$5(Lnet/yostore/aws/view/navigate/PlayListActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$8;->val$mp3Inf:Lnet/yostore/aws/handler/entity/Mp3Info;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/Mp3Info;->getDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ecareme/mear/Mear;->shareMusicContent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 833
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
