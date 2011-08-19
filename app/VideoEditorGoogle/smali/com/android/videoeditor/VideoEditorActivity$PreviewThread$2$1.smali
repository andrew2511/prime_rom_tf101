.class Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2$1;
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


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1934
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2$1;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2$1;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1800(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1940
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2$1;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1800(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1941
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2$1;->this$2:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$1900(Lcom/android/videoeditor/VideoEditorActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 1943
    :cond_0
    return-void
.end method
