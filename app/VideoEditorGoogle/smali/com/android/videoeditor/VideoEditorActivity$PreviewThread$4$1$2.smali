.class Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$2;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;->onStop(Landroid/media/videoeditor/VideoEditor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;)V
    .locals 0
    .parameter

    .prologue
    .line 2109
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$2;->this$3:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$2;->this$3:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2200(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$2;->this$3:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2200(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2116
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$2;->this$3:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2300(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;Z)V

    .line 2118
    :cond_1
    return-void
.end method
