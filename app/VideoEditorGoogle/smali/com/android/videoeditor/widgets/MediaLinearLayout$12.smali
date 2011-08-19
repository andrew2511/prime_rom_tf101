.class Lcom/android/videoeditor/widgets/MediaLinearLayout$12;
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

.field final synthetic val$transition:Lcom/android/videoeditor/service/MovieTransition;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/app/Activity;Lcom/android/videoeditor/service/MovieTransition;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1728
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$12;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iput-object p2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$12;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$12;->val$transition:Lcom/android/videoeditor/service/MovieTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$12;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1300(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1734
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$12;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1300(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1735
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$12;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1302(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 1737
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$12;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1600(Lcom/android/videoeditor/widgets/MediaLinearLayout;)V

    .line 1738
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$12;->val$activity:Landroid/app/Activity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 1740
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$12;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$12;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$12;->val$transition:Lcom/android/videoeditor/service/MovieTransition;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->removeTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    return-void
.end method
