.class Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;
.super Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
.source "VideoEditorBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/VideoEditorBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;


# direct methods
.method private constructor <init>(Lcom/android/videoeditor/VideoEditorBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-direct {p0}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/videoeditor/VideoEditorBaseActivity;Lcom/android/videoeditor/VideoEditorBaseActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;-><init>(Lcom/android/videoeditor/VideoEditorBaseActivity;)V

    return-void
.end method


# virtual methods
.method public onAudioTrackAdded(Ljava/lang/String;Lcom/android/videoeditor/service/MovieAudioTrack;Ljava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "audioTrack"
    .parameter "exception"

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 810
    if-eqz p3, :cond_2

    .line 811
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090048

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 814
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getAudioTrackLayout()Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->addAudioTrack(Lcom/android/videoeditor/service/MovieAudioTrack;)Landroid/view/View;

    goto :goto_0
.end method

.method public onAudioTrackBoundariesSet(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "audioTrackId"
    .parameter "beginBoundaryMs"
    .parameter "endBoundaryMs"
    .parameter "exception"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 856
    if-eqz p7, :cond_2

    .line 857
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f09004a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 861
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getAudioTrackLayout()Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->updateAudioTrack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAudioTrackExtractAudioWaveformComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "projectPath"
    .parameter "audioTrackId"
    .parameter "exception"

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 894
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 898
    if-nez p3, :cond_0

    .line 899
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getAudioTrackLayout()Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->setWaveformExtractionComplete(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAudioTrackExtractAudioWaveformProgress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "projectPath"
    .parameter "audioTrackId"
    .parameter "progress"

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getAudioTrackLayout()Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->setWaveformExtractionProgress(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onAudioTrackRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "audioTrackId"
    .parameter "exception"

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 833
    if-eqz p3, :cond_2

    .line 834
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090049

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 837
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getAudioTrackLayout()Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->removeAudioTrack(Ljava/lang/String;)Landroid/view/View;

    goto :goto_0
.end method

.method public onEffectAdded(Ljava/lang/String;Lcom/android/videoeditor/service/MovieEffect;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "effect"
    .parameter "mediaItemId"
    .parameter "exception"

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 763
    if-eqz p4, :cond_2

    .line 764
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090046

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 767
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1, p3}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->updateMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V

    goto :goto_0
.end method

.method public onEffectRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "effectId"
    .parameter "mediaItemId"
    .parameter "exception"

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 786
    if-eqz p4, :cond_2

    .line 787
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090047

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 791
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1, p3}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->updateMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V

    goto :goto_0
.end method

.method public onMediaItemAdded(Ljava/lang/String;Ljava/lang/String;Lcom/android/videoeditor/service/MovieMediaItem;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "mediaItem"
    .parameter "afterMediaItemId"
    .parameter
    .parameter "newAspectRatio"
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/videoeditor/service/MovieMediaItem;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, mediaItemClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .line 330
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 338
    if-eqz p7, :cond_3

    .line 339
    invoke-virtual {p5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090037

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090038

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 348
    :cond_3
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->insertMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getOverlayLayout()Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->insertMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;Ljava/lang/String;)V

    .line 351
    if-eqz p6, :cond_4

    .line 353
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->setAspectRatio(I)V

    .line 356
    :cond_4
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->updateTimelineDuration()V

    goto :goto_0
.end method

.method public onMediaItemBoundariesSet(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Exception;)V
    .locals 4
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "beginBoundaryMs"
    .parameter "endBoundaryMs"
    .parameter "exception"

    .prologue
    .line 492
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v1, :cond_0

    .line 500
    if-eqz p7, :cond_2

    .line 501
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v2, 0x7f09003d

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 504
    :cond_2
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1, p2}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 505
    .local v0, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->updateMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V

    .line 506
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getOverlayLayout()Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->updateMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V

    .line 510
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->updateTimelineDuration()V

    goto :goto_0
.end method

.method public onMediaItemDurationSet(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 4
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "durationMs"
    .parameter "exception"

    .prologue
    .line 464
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v1, :cond_0

    .line 472
    if-eqz p5, :cond_2

    .line 473
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v2, 0x7f09003c

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 476
    :cond_2
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1, p2}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v0

    .line 478
    .local v0, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->updateMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V

    .line 479
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getOverlayLayout()Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->updateMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V

    .line 481
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->updateTimelineDuration()V

    goto :goto_0
.end method

.method public onMediaItemMoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "afterMediaItemId"
    .parameter "exception"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 397
    if-eqz p4, :cond_2

    .line 398
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090039

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addMediaItems(Ljava/util/List;)V

    .line 403
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getOverlayLayout()Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->addMediaItems(Ljava/util/List;)V

    .line 405
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->updateTimelineDuration()V

    goto :goto_0
.end method

.method public onMediaItemRemoved(Ljava/lang/String;Ljava/lang/String;Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "transition"
    .parameter "exception"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 424
    if-eqz p4, :cond_2

    .line 425
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f09003a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeMediaItem(Ljava/lang/String;Lcom/android/videoeditor/service/MovieTransition;)Landroid/view/View;

    .line 430
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getOverlayLayout()Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->removeMediaItem(Ljava/lang/String;)Landroid/view/View;

    .line 432
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->updateTimelineDuration()V

    goto :goto_0
.end method

.method public onMediaItemRenderingModeSet(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "renderingMode"
    .parameter "exception"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 451
    if-eqz p4, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f09003b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onMediaItemThumbnails(Ljava/lang/String;Ljava/lang/String;[Landroid/graphics/Bitmap;JJLjava/lang/Exception;)Z
    .locals 7
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "thumbnails"
    .parameter "startMs"
    .parameter "endMs"
    .parameter "exception"

    .prologue
    const/4 v1, 0x0

    .line 521
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 532
    :goto_0
    return v0

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez v0, :cond_1

    move v0, v1

    .line 526
    goto :goto_0

    .line 529
    :cond_1
    if-eqz p8, :cond_2

    move v0, v1

    .line 530
    goto :goto_0

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move-wide v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->setMediaItemThumbnails(Ljava/lang/String;[Landroid/graphics/Bitmap;JJ)Z

    move-result v0

    goto :goto_0
.end method

.method public onMediaLoaded(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "mediaIUri"
    .parameter "mimeType"
    .parameter "filename"
    .parameter "exception"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 374
    if-eqz p5, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f09004c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onOverlayAdded(Ljava/lang/String;Lcom/android/videoeditor/service/MovieOverlay;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "overlay"
    .parameter "mediaItemId"
    .parameter "exception"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 650
    if-eqz p4, :cond_2

    .line 651
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090041

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 654
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->invalidateCAB()V

    .line 655
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getOverlayLayout()Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->addOverlay(Ljava/lang/String;Lcom/android/videoeditor/service/MovieOverlay;)V

    goto :goto_0
.end method

.method public onOverlayDurationSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "overlayId"
    .parameter "mediaItemId"
    .parameter "durationMs"
    .parameter "exception"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 718
    if-eqz p6, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090043

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onOverlayRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "overlayId"
    .parameter "mediaItemId"
    .parameter "exception"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 674
    if-eqz p4, :cond_2

    .line 675
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090042

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 678
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getOverlayLayout()Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->removeOverlay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOverlayStartTimeSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "overlayId"
    .parameter "mediaItemId"
    .parameter "startTimeMs"
    .parameter "exception"

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 697
    if-eqz p6, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090044

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onOverlayUserAttributesSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "overlayId"
    .parameter "mediaItemId"
    .parameter "userAttributes"
    .parameter "exception"

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 739
    if-eqz p5, :cond_2

    .line 740
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090045

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 744
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getOverlayLayout()Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p3, p2, p4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->updateOverlayAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onProjectEditState(Ljava/lang/String;Z)V
    .locals 1
    .parameter "projectPath"
    .parameter "projectEdited"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->access$100(Lcom/android/videoeditor/VideoEditorBaseActivity;)Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-static {v0, p2}, Lcom/android/videoeditor/VideoEditorBaseActivity;->access$102(Lcom/android/videoeditor/VideoEditorBaseActivity;Z)Z

    .line 86
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0, p2}, Lcom/android/videoeditor/VideoEditorBaseActivity;->onProjectEditStateChange(Z)V

    goto :goto_0
.end method

.method public onTransitionDurationSet(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "transitionId"
    .parameter "durationMs"
    .parameter "exception"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 602
    if-eqz p5, :cond_2

    .line 603
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090040

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 606
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->updateTransition(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getOverlayLayout()Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->refresh()V

    .line 609
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->updateTimelineDuration()V

    goto :goto_0
.end method

.method public onTransitionInserted(Ljava/lang/String;Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "transition"
    .parameter "afterMediaId"
    .parameter "exception"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 552
    if-eqz p4, :cond_2

    .line 553
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f09003e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)Landroid/view/View;

    .line 558
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->updateTimelineDuration()V

    goto :goto_0
.end method

.method public onTransitionRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "transitionId"
    .parameter "exception"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 577
    if-eqz p3, :cond_2

    .line 578
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f09003f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 581
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->removeTransition(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->updateTimelineDuration()V

    goto :goto_0
.end method

.method public onTransitionThumbnails(Ljava/lang/String;Ljava/lang/String;[Landroid/graphics/Bitmap;Ljava/lang/Exception;)Z
    .locals 2
    .parameter "projectPath"
    .parameter "transitionId"
    .parameter "thumbnails"
    .parameter "exception"

    .prologue
    const/4 v1, 0x0

    .line 620
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 631
    :goto_0
    return v0

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez v0, :cond_1

    move v0, v1

    .line 625
    goto :goto_0

    .line 628
    :cond_1
    if-eqz p4, :cond_2

    move v0, v1

    .line 629
    goto :goto_0

    .line 631
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->setTransitionThumbnails(Ljava/lang/String;[Landroid/graphics/Bitmap;)Z

    move-result v0

    goto :goto_0
.end method

.method public onVideoEditorAspectRatioSet(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "aspectRatio"
    .parameter "exception"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 162
    if-eqz p3, :cond_2

    .line 163
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090031

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0, p2}, Lcom/android/videoeditor/VideoEditorBaseActivity;->setAspectRatio(I)V

    goto :goto_0
.end method

.method public onVideoEditorCreated(Ljava/lang/String;Lcom/android/videoeditor/service/VideoEditorProject;Ljava/util/List;Ljava/util/List;Ljava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "project"
    .parameter
    .parameter
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/videoeditor/service/VideoEditorProject;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, mediaItems:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    .local p4, audioTracks:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    const/4 v2, 0x1

    .line 97
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 102
    :cond_0
    if-eqz p5, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/VideoEditorBaseActivity;->enterDisabledState(I)V

    .line 108
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f09002f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->enterReadyState()V

    .line 113
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iput-object p2, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 114
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0, v2}, Lcom/android/videoeditor/VideoEditorBaseActivity;->initializeFromProject(Z)V

    goto :goto_0
.end method

.method public onVideoEditorDeleted(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "exception"

    .prologue
    .line 316
    if-eqz p2, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090036

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 320
    :cond_0
    return-void
.end method

.method public onVideoEditorExportComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "filename"
    .parameter "exception"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mPendingExportFilename:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->onExportComplete()V

    .line 276
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mPendingExportFilename:Ljava/lang/String;

    .line 278
    if-eqz p3, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090033

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onVideoEditorExportProgress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "projectPath"
    .parameter "filename"
    .parameter "progress"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mPendingExportFilename:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0, p3}, Lcom/android/videoeditor/VideoEditorBaseActivity;->onExportProgress(I)V

    goto :goto_0
.end method

.method public onVideoEditorGeneratePreviewProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .parameter "projectPath"
    .parameter "className"
    .parameter "itemId"
    .parameter "action"
    .parameter "progress"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 213
    const-string v0, "VideoEditorBase"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    const-string v0, "VideoEditorBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoEditorGeneratePreviewProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_2
    if-nez p2, :cond_3

    .line 218
    const/16 v0, 0x66

    if-ne p4, v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->showPreviewFrame()Z

    goto :goto_0

    .line 221
    :cond_3
    const-class v0, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p5}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->onGeneratePreviewMediaItemProgress(Ljava/lang/String;II)V

    goto :goto_0

    .line 223
    :cond_4
    const-class v0, Landroid/media/videoeditor/Transition;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 224
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p5}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->onGeneratePreviewTransitionProgress(Ljava/lang/String;II)V

    goto :goto_0

    .line 225
    :cond_5
    const-class v0, Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 226
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getAudioTrackLayout()Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p5}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->onGeneratePreviewProgress(Ljava/lang/String;II)V

    goto :goto_0

    .line 228
    :cond_6
    const-string v0, "VideoEditorBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported storyboard item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onVideoEditorLoaded(Ljava/lang/String;Lcom/android/videoeditor/service/VideoEditorProject;Ljava/util/List;Ljava/util/List;Ljava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "project"
    .parameter
    .parameter
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/videoeditor/service/VideoEditorProject;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    .local p3, mediaItems:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    .local p4, audioTracks:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    if-nez p5, :cond_2

    if-nez p2, :cond_3

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v2, 0x7f090003

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/VideoEditorBaseActivity;->enterDisabledState(I)V

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 140
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_3
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iput-object p2, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 142
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/VideoEditorBaseActivity;->initializeFromProject(Z)V

    goto :goto_0
.end method

.method public onVideoEditorReleased(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "exception"

    .prologue
    .line 305
    if-eqz p2, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090035

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 309
    :cond_0
    return-void
.end method

.method public onVideoEditorSaved(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "exception"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    if-eqz p2, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090034

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onVideoEditorThemeApplied(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "projectPath"
    .parameter "theme"
    .parameter "exception"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProjectPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v0, v0, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 186
    if-eqz p3, :cond_2

    .line 187
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    const v1, 0x7f090032

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getMediaLayout()Lcom/android/videoeditor/widgets/MediaLinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->addMediaItems(Ljava/util/List;)V

    .line 191
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getOverlayLayout()Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->addMediaItems(Ljava/util/List;)V

    .line 192
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->getAudioTrackLayout()Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    iget-object v1, v1, Lcom/android/videoeditor/VideoEditorBaseActivity;->mProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getAudioTracks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/AudioTrackLinearLayout;->addAudioTracks(Ljava/util/List;)V

    .line 194
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorBaseActivity$ServiceListener;->this$0:Lcom/android/videoeditor/VideoEditorBaseActivity;

    invoke-virtual {v0}, Lcom/android/videoeditor/VideoEditorBaseActivity;->updateTimelineDuration()V

    goto :goto_0
.end method
