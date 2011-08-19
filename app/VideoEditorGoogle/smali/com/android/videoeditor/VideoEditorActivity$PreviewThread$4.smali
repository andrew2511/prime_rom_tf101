.class Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->startPreviewPlayback(Lcom/android/videoeditor/service/VideoEditorProject;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

.field final synthetic val$fromMs:J

.field final synthetic val$project:Lcom/android/videoeditor/service/VideoEditorProject;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;Lcom/android/videoeditor/service/VideoEditorProject;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2064
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iput-object p2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->val$project:Lcom/android/videoeditor/service/VideoEditorProject;

    iput-wide p3, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->val$fromMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    .line 2070
    :try_start_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->val$project:Lcom/android/videoeditor/service/VideoEditorProject;

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v1}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1700(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->val$fromMs:J

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-instance v8, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;

    invoke-direct {v8, p0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$1;-><init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;)V

    invoke-virtual/range {v0 .. v8}, Lcom/android/videoeditor/service/VideoEditorProject;->startPreview(Landroid/view/SurfaceHolder;JJZILandroid/media/videoeditor/VideoEditor$PreviewProgressListener;)V

    .line 2123
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2000(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$2;

    invoke-direct {v1, p0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$2;-><init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2149
    :goto_0
    return-void

    .line 2131
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 2135
    .local v9, ex:Ljava/lang/Exception;
    const-string v0, "VideoEditorActivity"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2136
    const-string v0, "VideoEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot start preview at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->val$fromMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2139
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2000(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$3;

    invoke-direct {v1, p0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4$3;-><init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
