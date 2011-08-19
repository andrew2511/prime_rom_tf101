.class Lcom/android/videoeditor/VideoEditorActivity$13;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/VideoEditorActivity;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 864
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$13;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iput-object p2, p0, Lcom/android/videoeditor/VideoEditorActivity$13;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$13;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$13;->val$bundle:Landroid/os/Bundle;

    const-string v2, "path"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/videoeditor/service/ApiService;->deleteProject(Landroid/content/Context;Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$13;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->removeDialog(I)V

    .line 873
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$13;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorActivity;->finish()V

    .line 874
    return-void
.end method
