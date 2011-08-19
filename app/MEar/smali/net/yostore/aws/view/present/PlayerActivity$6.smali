.class Lnet/yostore/aws/view/present/PlayerActivity$6;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/present/PlayerActivity;->showAddPlaylistMenu(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/present/PlayerActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/present/PlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/present/PlayerActivity$6;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 584
    packed-switch p2, :pswitch_data_0

    .line 591
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 594
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$6;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/present/PlayerActivity$6;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/present/PlayerActivity;->access$7(Lnet/yostore/aws/view/present/PlayerActivity;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    sub-int v2, p2, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lnet/yostore/aws/view/present/PlayerActivity;->access$4(Lnet/yostore/aws/view/present/PlayerActivity;J)V

    .line 599
    :goto_0
    return-void

    .line 586
    .restart local p0
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 587
    iget-object v0, p0, Lnet/yostore/aws/view/present/PlayerActivity$6;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/PlayerActivity;->showCreateNewPlayList(I)V

    goto :goto_0

    .line 584
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
