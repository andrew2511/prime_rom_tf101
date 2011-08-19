.class Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$5;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->stopPreviewPlayback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)V
    .locals 0
    .parameter

    .prologue
    .line 2203
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$5;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x3

    .line 2208
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$5;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$5;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorActivity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2210
    :cond_0
    const-string v0, "VideoEditorActivity"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2211
    const-string v0, "VideoEditorActivity"

    const-string v1, "stopPreviewPlayback: Activity is shutting down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$5;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0, v2}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2202(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;I)I

    .line 2215
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$5;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2300(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;Z)V

    .line 2234
    :cond_2
    :goto_0
    return-void

    .line 2216
    :cond_3
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$5;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2200(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 2217
    const-string v0, "VideoEditorActivity"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2218
    const-string v0, "VideoEditorActivity"

    const-string v1, "stopPreviewPlayback: Now PREVIEW_STATE_STARTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    :cond_4
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$5;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2300(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;Z)V

    goto :goto_0

    .line 2222
    :cond_5
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$5;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2200(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 2224
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$5;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2000(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2226
    const-string v0, "VideoEditorActivity"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2227
    const-string v0, "VideoEditorActivity"

    const-string v1, "stopPreviewPlayback: Waiting for PREVIEW_STATE_STARTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2230
    :cond_6
    const-string v0, "VideoEditorActivity"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2231
    const-string v0, "VideoEditorActivity"

    const-string v1, "stopPreviewPlayback: PREVIEW_STATE_STOPPED while waiting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
