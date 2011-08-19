.class public Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
.super Ljava/lang/Object;
.source "ApiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/service/ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApiServiceListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioTrackAdded(Ljava/lang/String;Lcom/android/videoeditor/service/MovieAudioTrack;Ljava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "audioTrack"
    .parameter "exception"

    .prologue
    .line 700
    return-void
.end method

.method public onAudioTrackBoundariesSet(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "audioTrackId"
    .parameter "beginBoundaryMs"
    .parameter "endBoundaryMs"
    .parameter "exception"

    .prologue
    .line 724
    return-void
.end method

.method public onAudioTrackExtractAudioWaveformComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "audioTrackId"
    .parameter "exception"

    .prologue
    .line 746
    return-void
.end method

.method public onAudioTrackExtractAudioWaveformProgress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "projectPath"
    .parameter "audioTrackId"
    .parameter "progress"

    .prologue
    .line 735
    return-void
.end method

.method public onAudioTrackRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "audioTrackId"
    .parameter "exception"

    .prologue
    .line 711
    return-void
.end method

.method public onEffectAdded(Ljava/lang/String;Lcom/android/videoeditor/service/MovieEffect;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "effect"
    .parameter "mediaItemId"
    .parameter "exception"

    .prologue
    .line 677
    return-void
.end method

.method public onEffectRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "effectId"
    .parameter "mediaItemId"
    .parameter "exception"

    .prologue
    .line 689
    return-void
.end method

.method public onMediaItemAdded(Ljava/lang/String;Ljava/lang/String;Lcom/android/videoeditor/service/MovieMediaItem;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "mediaItem"
    .parameter "afterMediaId"
    .parameter
    .parameter "aspectRatio"
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
    .line 422
    .local p5, mediaItemClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    return-void
.end method

.method public onMediaItemBoundariesSet(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "beginBoundaryMs"
    .parameter "endBoundaryMs"
    .parameter "exception"

    .prologue
    .line 497
    return-void
.end method

.method public onMediaItemDurationSet(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "durationMs"
    .parameter "exception"

    .prologue
    .line 484
    return-void
.end method

.method public onMediaItemExtractAudioWaveformComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "exception"

    .prologue
    .line 552
    return-void
.end method

.method public onMediaItemExtractAudioWaveformProgress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "progress"

    .prologue
    .line 541
    return-void
.end method

.method public onMediaItemMoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "afterMediaItemId"
    .parameter "exception"

    .prologue
    .line 447
    return-void
.end method

.method public onMediaItemRemoved(Ljava/lang/String;Ljava/lang/String;Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "transition"
    .parameter "exception"

    .prologue
    .line 460
    return-void
.end method

.method public onMediaItemRenderingModeSet(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "renderingMode"
    .parameter "exception"

    .prologue
    .line 472
    return-void
.end method

.method public onMediaItemThumbnail(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;JLjava/lang/Exception;)Z
    .locals 1
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "thumbnail"
    .parameter "timeMs"
    .parameter "exception"

    .prologue
    .line 512
    const/4 v0, 0x0

    return v0
.end method

.method public onMediaItemThumbnails(Ljava/lang/String;Ljava/lang/String;[Landroid/graphics/Bitmap;JJLjava/lang/Exception;)Z
    .locals 1
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "thumbnails"
    .parameter "startMs"
    .parameter "endMs"
    .parameter "exception"

    .prologue
    .line 529
    const/4 v0, 0x0

    return v0
.end method

.method public onMediaLoaded(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "mediaIUri"
    .parameter "mimeType"
    .parameter "filename"
    .parameter "exception"

    .prologue
    .line 435
    return-void
.end method

.method public onOverlayAdded(Ljava/lang/String;Lcom/android/videoeditor/service/MovieOverlay;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "overlay"
    .parameter "mediaItemId"
    .parameter "exception"

    .prologue
    .line 614
    return-void
.end method

.method public onOverlayDurationSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "overlayId"
    .parameter "mediaItemId"
    .parameter "durationMs"
    .parameter "exception"

    .prologue
    .line 652
    return-void
.end method

.method public onOverlayRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "overlayId"
    .parameter "mediaItemId"
    .parameter "exception"

    .prologue
    .line 626
    return-void
.end method

.method public onOverlayStartTimeSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "overlayId"
    .parameter "mediaItemId"
    .parameter "startTimeMs"
    .parameter "exception"

    .prologue
    .line 639
    return-void
.end method

.method public onOverlayUserAttributesSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "overlayId"
    .parameter "mediaItemId"
    .parameter "userAttributes"
    .parameter "exception"

    .prologue
    .line 665
    return-void
.end method

.method public onProjectEditState(Ljava/lang/String;Z)V
    .locals 0
    .parameter "projectPath"
    .parameter "projectEdited"

    .prologue
    .line 287
    return-void
.end method

.method public onProjectsLoaded(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/VideoEditorProject;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, projects:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/VideoEditorProject;>;"
    return-void
.end method

.method public onTransitionDurationSet(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "transitionId"
    .parameter "durationMs"
    .parameter "exception"

    .prologue
    .line 587
    return-void
.end method

.method public onTransitionInserted(Ljava/lang/String;Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "transition"
    .parameter "afterMediaId"
    .parameter "exception"

    .prologue
    .line 564
    return-void
.end method

.method public onTransitionRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "transitionId"
    .parameter "exception"

    .prologue
    .line 575
    return-void
.end method

.method public onTransitionThumbnails(Ljava/lang/String;Ljava/lang/String;[Landroid/graphics/Bitmap;Ljava/lang/Exception;)Z
    .locals 1
    .parameter "projectPath"
    .parameter "transitionId"
    .parameter "thumbnails"
    .parameter "exception"

    .prologue
    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoEditorAspectRatioSet(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "aspectRatio"
    .parameter "exception"

    .prologue
    .line 324
    return-void
.end method

.method public onVideoEditorCreated(Ljava/lang/String;Lcom/android/videoeditor/service/VideoEditorProject;Ljava/util/List;Ljava/util/List;Ljava/lang/Exception;)V
    .locals 0
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
    .line 300
    .local p3, mediaItems:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    .local p4, audioTracks:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    return-void
.end method

.method public onVideoEditorDeleted(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "exception"

    .prologue
    .line 406
    return-void
.end method

.method public onVideoEditorExportCanceled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "projectPath"
    .parameter "filename"

    .prologue
    .line 379
    return-void
.end method

.method public onVideoEditorExportComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "filename"
    .parameter "exception"

    .prologue
    .line 370
    return-void
.end method

.method public onVideoEditorExportProgress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "projectPath"
    .parameter "filename"
    .parameter "progress"

    .prologue
    .line 359
    return-void
.end method

.method public onVideoEditorGeneratePreviewProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "projectPath"
    .parameter "className"
    .parameter "itemId"
    .parameter "action"
    .parameter "progress"

    .prologue
    .line 348
    return-void
.end method

.method public onVideoEditorLoaded(Ljava/lang/String;Lcom/android/videoeditor/service/VideoEditorProject;Ljava/util/List;Ljava/util/List;Ljava/lang/Exception;)V
    .locals 0
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
    .line 313
    .local p3, mediaItems:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    .local p4, audioTracks:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    return-void
.end method

.method public onVideoEditorReleased(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "exception"

    .prologue
    .line 397
    return-void
.end method

.method public onVideoEditorSaved(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "exception"

    .prologue
    .line 388
    return-void
.end method

.method public onVideoEditorThemeApplied(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "projectPath"
    .parameter "theme"
    .parameter "exception"

    .prologue
    .line 335
    return-void
.end method
