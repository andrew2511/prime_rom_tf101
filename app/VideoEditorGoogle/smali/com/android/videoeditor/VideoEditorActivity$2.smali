.class Lcom/android/videoeditor/VideoEditorActivity$2;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 237
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddMediaItem(Ljava/lang/String;)V
    .locals 3
    .parameter "afterMediaItemId"

    .prologue
    const/4 v2, 0x1

    .line 256
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v1, p1}, Lcom/android/videoeditor/VideoEditorActivity;->access$202(Lcom/android/videoeditor/VideoEditorActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 260
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-virtual {v1, v0, v2}, Lcom/android/videoeditor/VideoEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 262
    return-void
.end method

.method public onRequestMovePlayhead(JZ)V
    .locals 1
    .parameter "scrollToTime"
    .parameter "smooth"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/videoeditor/VideoEditorActivity;->movePlayhead(J)V

    .line 250
    return-void
.end method

.method public onRequestScrollBy(IZ)V
    .locals 1
    .parameter "scrollBy"
    .parameter "smooth"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$100(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->appScrollBy(IZ)V

    .line 243
    return-void
.end method

.method public onTrimMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;J)V
    .locals 5
    .parameter "mediaItem"
    .parameter "timeMs"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorActivity;->updateTimelineDuration()V

    .line 276
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$300(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$300(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$400(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->isVideoClip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$300(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->renderMediaItemFrame(Lcom/android/videoeditor/service/MovieMediaItem;J)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$300(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v2, v2, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {p1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemBeginTime(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v4, v4, Lcom/android/videoeditor/VideoEditorActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItemCount()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->previewFrame(Lcom/android/videoeditor/service/VideoEditorProject;JZ)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onTrimMediaItemBegin(Lcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 2
    .parameter "mediaItem"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->onProjectEditStateChange(Z)V

    .line 269
    return-void
.end method

.method public onTrimMediaItemEnd(Lcom/android/videoeditor/service/MovieMediaItem;J)V
    .locals 2
    .parameter "mediaItem"
    .parameter "timeMs"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorActivity;->onProjectEditStateChange(Z)V

    .line 296
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$500(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/TimelineRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/TimelineRelativeLayout;->invalidate()V

    .line 297
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$2;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorActivity;->showPreviewFrame()Z

    .line 298
    return-void
.end method
