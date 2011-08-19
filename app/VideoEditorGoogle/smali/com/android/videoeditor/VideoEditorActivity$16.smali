.class Lcom/android/videoeditor/VideoEditorActivity$16;
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


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 900
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$16;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 905
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    const v1, 0x7f08000c

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 907
    .local v0, tv:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$16;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->setProjectName(Ljava/lang/String;)V

    .line 908
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$16;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-virtual {v1}, Lcom/android/videoeditor/VideoEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 909
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$16;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/VideoEditorActivity;->removeDialog(I)V

    .line 910
    return-void
.end method
