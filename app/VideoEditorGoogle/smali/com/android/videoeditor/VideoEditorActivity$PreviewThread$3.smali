.class Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$3;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->renderMediaItemFrame(Lcom/android/videoeditor/service/MovieMediaItem;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

.field final synthetic val$mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

.field final synthetic val$timeMs:J


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;Lcom/android/videoeditor/service/MovieMediaItem;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2017
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$3;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iput-object p2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$3;->val$mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    iput-wide p3, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$3;->val$timeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 2023
    :try_start_0
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$3;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$3;->this$1:Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    invoke-static {v2}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$1700(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Landroid/view/SurfaceHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$3;->val$mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$3;->val$timeMs:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/videoeditor/service/VideoEditorProject;->renderMediaItemFrame(Landroid/view/SurfaceHolder;Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 2025
    const-string v1, "VideoEditorActivity"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2026
    const-string v1, "VideoEditorActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot render media item frame at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$3;->val$timeMs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$3;->val$mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2035
    :cond_0
    :goto_0
    return-void

    .line 2030
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2031
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "VideoEditorActivity"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2032
    const-string v1, "VideoEditorActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot render preview frame at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread$3;->val$timeMs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
