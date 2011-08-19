.class Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->previewFrame(Lcom/android/videoeditor/service/VideoEditorProject;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

.field final synthetic val$clear:Z

.field final synthetic val$project:Lcom/android/videoeditor/service/VideoEditorProject;

.field final synthetic val$timeMs:J


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;ZLcom/android/videoeditor/service/VideoEditorProject;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1922
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iput-boolean p2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->val$clear:Z

    iput-object p3, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->val$project:Lcom/android/videoeditor/service/VideoEditorProject;

    iput-wide p4, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->val$timeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 1927
    iget-boolean v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->val$clear:Z

    if-eqz v2, :cond_0

    .line 1929
    :try_start_0
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->val$project:Lcom/android/videoeditor/service/VideoEditorProject;

    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v3}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1700(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/service/VideoEditorProject;->clearSurface(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1934
    :goto_0
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v2}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2000(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2$1;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2$1;-><init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1991
    :goto_1
    return-void

    .line 1930
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1931
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "VideoEditorActivity"

    const-string v3, "Surface cannot be cleared"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1948
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v2}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2100(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/VideoEditor$OverlayData;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1955
    .local v1, overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;
    :try_start_2
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->val$project:Lcom/android/videoeditor/service/VideoEditorProject;

    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v3}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1700(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/view/SurfaceHolder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->val$timeMs:J

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->renderPreviewFrame(Landroid/view/SurfaceHolder;JLandroid/media/videoeditor/VideoEditor$OverlayData;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 1957
    const-string v2, "VideoEditorActivity"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1958
    const-string v2, "VideoEditorActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot render preview frame at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->val$timeMs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v4, v4, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v4, v4, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->computeDuration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    :cond_1
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v2}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2100(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1984
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1985
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v2, "VideoEditorActivity"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1986
    const-string v2, "VideoEditorActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "renderPreviewFrame failed at timeMs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->val$timeMs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1988
    :cond_2
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v2}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2100(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1949
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 1950
    .local v0, ex:Ljava/util/NoSuchElementException;
    const-string v2, "VideoEditorActivity"

    const-string v3, "Out of OverlayData elements"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1964
    .end local v0           #ex:Ljava/util/NoSuchElementException;
    .restart local v1       #overlayData:Landroid/media/videoeditor/VideoEditor$OverlayData;
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Landroid/media/videoeditor/VideoEditor$OverlayData;->needsRendering()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1965
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v2}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2000(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2$2;

    invoke-direct {v3, p0, v1}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2$2;-><init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;Landroid/media/videoeditor/VideoEditor$OverlayData;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1981
    :cond_4
    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$2;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v2}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$2100(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method
