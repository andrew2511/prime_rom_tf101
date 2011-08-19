.class Lnet/yostore/aws/view/present/MusicActivity$7;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/present/MusicActivity;->initControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/present/MusicActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/present/MusicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/present/MusicActivity$7;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 253
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$7;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/present/MusicActivity;->pre:Landroid/widget/ImageButton;

    invoke-static {}, Lnet/yostore/aws/view/present/MusicActivity;->access$6()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 254
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$7;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/present/MusicActivity;->plist:Lnet/yostore/aws/handler/entity/PlayList;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$7;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/present/MusicActivity;->plist:Lnet/yostore/aws/handler/entity/PlayList;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/PlayList;->getPrevPlayItem()Lnet/yostore/aws/handler/entity/PlayItem;

    move-result-object v0

    .line 256
    .local v0, pi:Lnet/yostore/aws/handler/entity/PlayItem;
    if-eqz v0, :cond_1

    .line 257
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$7;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/present/MusicActivity;->play:Landroid/widget/ImageButton;

    invoke-static {}, Lnet/yostore/aws/view/present/MusicActivity;->access$0()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 258
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$7;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v2, p0, Lnet/yostore/aws/view/present/MusicActivity$7;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    const v3, 0x7f06009e

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/present/MusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lnet/yostore/aws/view/present/MusicActivity;->access$1(Lnet/yostore/aws/view/present/MusicActivity;Lnet/yostore/aws/handler/entity/PlayItem;Ljava/lang/String;)V

    .line 264
    .end local v0           #pi:Lnet/yostore/aws/handler/entity/PlayItem;
    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$7;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/present/MusicActivity;->pre:Landroid/widget/ImageButton;

    invoke-static {}, Lnet/yostore/aws/view/present/MusicActivity;->access$7()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 265
    return-void

    .line 261
    .restart local v0       #pi:Lnet/yostore/aws/handler/entity/PlayItem;
    :cond_1
    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$7;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v2, p0, Lnet/yostore/aws/view/present/MusicActivity$7;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    const v3, 0x7f06009b

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/present/MusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
