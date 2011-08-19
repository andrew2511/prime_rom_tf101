.class Lcom/android/videoeditor/widgets/MediaLinearLayout$10;
.super Ljava/lang/Object;
.source "MediaLinearLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/MediaLinearLayout;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1667
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$10;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iput-object p2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$10;->val$mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    iput-object p3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$10;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1672
    packed-switch p2, :pswitch_data_0

    .line 1701
    :goto_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$10;->val$activity:Landroid/app/Activity;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 1702
    return-void

    .line 1674
    :pswitch_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$10;->val$mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0, v3}, Lcom/android/videoeditor/service/MovieMediaItem;->setAppRenderingMode(I)V

    .line 1675
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$10;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$10;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$10;->val$mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService;->setMediaItemRenderingMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1682
    :pswitch_1
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$10;->val$mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0, v4}, Lcom/android/videoeditor/service/MovieMediaItem;->setAppRenderingMode(I)V

    .line 1683
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$10;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$10;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$10;->val$mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/android/videoeditor/service/ApiService;->setMediaItemRenderingMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1690
    :pswitch_2
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$10;->val$mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v0, v5}, Lcom/android/videoeditor/service/MovieMediaItem;->setAppRenderingMode(I)V

    .line 1691
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$10;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$10;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$10;->val$mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v5}, Lcom/android/videoeditor/service/ApiService;->setMediaItemRenderingMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1672
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
