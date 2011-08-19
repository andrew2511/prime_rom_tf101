.class Lnet/yostore/aws/view/navigate/LibActivity$5;
.super Ljava/lang/Object;
.source "LibActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/LibActivity;->showAddPlaylistMenu(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/LibActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/LibActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/LibActivity$5;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 654
    packed-switch p2, :pswitch_data_0

    .line 661
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 664
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$5;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/LibActivity$5;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/LibActivity;->access$7(Lnet/yostore/aws/view/navigate/LibActivity;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    sub-int v3, p2, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lnet/yostore/aws/view/navigate/LibActivity;->access$4(Lnet/yostore/aws/view/navigate/LibActivity;J)V

    .line 673
    :goto_0
    return-void

    .line 656
    .restart local p0
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 657
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/LibActivity$5;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/navigate/LibActivity;->showCreateNewPlayList(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 669
    .end local p0
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 670
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LibActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 654
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
