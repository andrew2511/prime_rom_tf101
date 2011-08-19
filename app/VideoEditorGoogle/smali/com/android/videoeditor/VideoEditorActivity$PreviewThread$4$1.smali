.class Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;)V
    .locals 0
    .parameter

    .prologue
    .line 2071
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Landroid/media/videoeditor/VideoEditor;JLandroid/media/videoeditor/VideoEditor$OverlayData;)V
    .locals 2
    .parameter "videoEditor"
    .parameter "timeMs"
    .parameter "overlayData"

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2000(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$1;

    invoke-direct {v1, p0, p4, p2, p3}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$1;-><init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;Landroid/media/videoeditor/VideoEditor$OverlayData;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2103
    return-void
.end method

.method public onStart(Landroid/media/videoeditor/VideoEditor;)V
    .locals 0
    .parameter "videoEditor"

    .prologue
    .line 2076
    return-void
.end method

.method public onStop(Landroid/media/videoeditor/VideoEditor;)V
    .locals 2
    .parameter "videoEditor"

    .prologue
    .line 2109
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2000(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$2;

    invoke-direct {v1, p0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1$2;-><init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2120
    return-void
.end method
