.class Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2$2;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;

.field final synthetic val$overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;Landroid/media/videoeditor/VideoEditor$OverlayData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1965
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2$2;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;

    iput-object p2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2$2;->val$overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2$2;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1800(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1971
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2$2;->val$overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2$2;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v1}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1800(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/VideoEditor$OverlayData;->renderOverlay(Landroid/graphics/Bitmap;)V

    .line 1972
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2$2;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$1900(Lcom/android/videoeditor/VideoEditorActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 1977
    :goto_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2$2;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2100(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Ljava/util/Queue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2$2;->val$overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1978
    return-void

    .line 1974
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2$2;->val$overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;

    invoke-virtual {v0}, Landroid/media/videoeditor/VideoEditor$OverlayData;->release()V

    goto :goto_0
.end method
