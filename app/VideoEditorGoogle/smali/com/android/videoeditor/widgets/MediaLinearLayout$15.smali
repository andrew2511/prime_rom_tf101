.class Lcom/android/videoeditor/widgets/MediaLinearLayout$15;
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
.method constructor <init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/app/Activity;Lcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1772
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$15;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iput-object p2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$15;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$15;->val$mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$15;->val$activity:Landroid/app/Activity;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 1779
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$15;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$15;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$15;->val$mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$15;->val$mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getEffect()Lcom/android/videoeditor/service/MovieEffect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieEffect;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService;->removeEffect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$15;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$15;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 1785
    :cond_0
    return-void
.end method
