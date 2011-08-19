.class Lnet/yostore/aws/view/present/MusicActivity$10;
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
    iput-object p1, p0, Lnet/yostore/aws/view/present/MusicActivity$10;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 303
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity$10;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v0, v0, Lnet/yostore/aws/view/present/MusicActivity;->plist:Lnet/yostore/aws/handler/entity/PlayList;

    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$10;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/present/MusicActivity;->plist:Lnet/yostore/aws/handler/entity/PlayList;

    iget-boolean v1, v1, Lnet/yostore/aws/handler/entity/PlayList;->isLoop:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lnet/yostore/aws/handler/entity/PlayList;->isLoop:Z

    .line 304
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity$10;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v0, v0, Lnet/yostore/aws/view/present/MusicActivity;->plist:Lnet/yostore/aws/handler/entity/PlayList;

    iget-boolean v0, v0, Lnet/yostore/aws/handler/entity/PlayList;->isLoop:Z

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity$10;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v0, v0, Lnet/yostore/aws/view/present/MusicActivity;->loop:Landroid/widget/ImageButton;

    invoke-static {}, Lnet/yostore/aws/view/present/MusicActivity;->access$10()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 306
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity$10;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$10;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    const v2, 0x7f0600a0

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/present/MusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 312
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 303
    goto :goto_0

    .line 309
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity$10;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v0, v0, Lnet/yostore/aws/view/present/MusicActivity;->loop:Landroid/widget/ImageButton;

    invoke-static {}, Lnet/yostore/aws/view/present/MusicActivity;->access$11()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 310
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity$10;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$10;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    const v2, 0x7f0600a1

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/present/MusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
