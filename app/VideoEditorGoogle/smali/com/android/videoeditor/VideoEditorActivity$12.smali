.class Lcom/android/videoeditor/VideoEditorActivity$12;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 850
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$12;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$12;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->removeDialog(I)V

    .line 856
    return-void
.end method