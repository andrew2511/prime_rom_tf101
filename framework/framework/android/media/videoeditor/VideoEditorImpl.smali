.class public Landroid/media/videoeditor/VideoEditorImpl;
.super Ljava/lang/Object;
.source "VideoEditorImpl.java"

# interfaces
.implements Landroid/media/videoeditor/VideoEditor;


# static fields
.field private static final ATTR_AFTER_MEDIA_ITEM_ID:Ljava/lang/String; = "after_media_item"

.field private static final ATTR_ASPECT_RATIO:Ljava/lang/String; = "aspect_ratio"

.field private static final ATTR_AUDIO_WAVEFORM_FILENAME:Ljava/lang/String; = "waveform"

.field private static final ATTR_BEFORE_MEDIA_ITEM_ID:Ljava/lang/String; = "before_media_item"

.field private static final ATTR_BEGIN_TIME:Ljava/lang/String; = "begin_time"

.field private static final ATTR_BEHAVIOR:Ljava/lang/String; = "behavior"

.field private static final ATTR_BLENDING:Ljava/lang/String; = "blending"

.field private static final ATTR_COLOR_EFFECT_TYPE:Ljava/lang/String; = "color_type"

.field private static final ATTR_COLOR_EFFECT_VALUE:Ljava/lang/String; = "color_value"

.field private static final ATTR_DIRECTION:Ljava/lang/String; = "direction"

.field private static final ATTR_DUCKED_TRACK_VOLUME:Ljava/lang/String; = "ducking_volume"

.field private static final ATTR_DUCK_ENABLED:Ljava/lang/String; = "ducking_enabled"

.field private static final ATTR_DUCK_THRESHOLD:Ljava/lang/String; = "ducking_threshold"

.field private static final ATTR_DURATION:Ljava/lang/String; = "duration"

.field private static final ATTR_END_RECT_BOTTOM:Ljava/lang/String; = "end_b"

.field private static final ATTR_END_RECT_LEFT:Ljava/lang/String; = "end_l"

.field private static final ATTR_END_RECT_RIGHT:Ljava/lang/String; = "end_r"

.field private static final ATTR_END_RECT_TOP:Ljava/lang/String; = "end_t"

.field private static final ATTR_END_TIME:Ljava/lang/String; = "end_time"

.field private static final ATTR_FILENAME:Ljava/lang/String; = "filename"

.field private static final ATTR_GENERATED_IMAGE_CLIP:Ljava/lang/String; = "generated_image_clip"

.field private static final ATTR_GENERATED_TRANSITION_CLIP:Ljava/lang/String; = "generated_transition_clip"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_INVERT:Ljava/lang/String; = "invert"

.field private static final ATTR_IS_IMAGE_CLIP_GENERATED:Ljava/lang/String; = "is_image_clip_generated"

.field private static final ATTR_IS_TRANSITION_GENERATED:Ljava/lang/String; = "is_transition_generated"

.field private static final ATTR_LOOP:Ljava/lang/String; = "loop"

.field private static final ATTR_MASK:Ljava/lang/String; = "mask"

.field private static final ATTR_MUTED:Ljava/lang/String; = "muted"

.field private static final ATTR_OVERLAY_FRAME_HEIGHT:Ljava/lang/String; = "overlay_frame_height"

.field private static final ATTR_OVERLAY_FRAME_WIDTH:Ljava/lang/String; = "overlay_frame_width"

.field private static final ATTR_OVERLAY_RESIZED_RGB_FRAME_HEIGHT:Ljava/lang/String; = "resized_RGBframe_height"

.field private static final ATTR_OVERLAY_RESIZED_RGB_FRAME_WIDTH:Ljava/lang/String; = "resized_RGBframe_width"

.field private static final ATTR_OVERLAY_RGB_FILENAME:Ljava/lang/String; = "overlay_rgb_filename"

.field private static final ATTR_REGENERATE_PCM:Ljava/lang/String; = "regeneratePCMFlag"

.field private static final ATTR_RENDERING_MODE:Ljava/lang/String; = "rendering_mode"

.field private static final ATTR_START_RECT_BOTTOM:Ljava/lang/String; = "start_b"

.field private static final ATTR_START_RECT_LEFT:Ljava/lang/String; = "start_l"

.field private static final ATTR_START_RECT_RIGHT:Ljava/lang/String; = "start_r"

.field private static final ATTR_START_RECT_TOP:Ljava/lang/String; = "start_t"

.field private static final ATTR_START_TIME:Ljava/lang/String; = "start_time"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_VOLUME:Ljava/lang/String; = "volume"

.field private static final ENGINE_ACCESS_MAX_TIMEOUT_MS:I = 0x1f4

.field private static final PROJECT_FILENAME:Ljava/lang/String; = "videoeditor.xml"

.field private static final TAG:Ljava/lang/String; = "VideoEditorImpl"

.field private static final TAG_AUDIO_TRACK:Ljava/lang/String; = "audio_track"

.field private static final TAG_AUDIO_TRACKS:Ljava/lang/String; = "audio_tracks"

.field private static final TAG_EFFECT:Ljava/lang/String; = "effect"

.field private static final TAG_EFFECTS:Ljava/lang/String; = "effects"

.field private static final TAG_MEDIA_ITEM:Ljava/lang/String; = "media_item"

.field private static final TAG_MEDIA_ITEMS:Ljava/lang/String; = "media_items"

.field private static final TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field private static final TAG_OVERLAYS:Ljava/lang/String; = "overlays"

.field private static final TAG_OVERLAY_USER_ATTRIBUTES:Ljava/lang/String; = "overlay_user_attributes"

.field private static final TAG_PROJECT:Ljava/lang/String; = "project"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "transition"

.field private static final TAG_TRANSITIONS:Ljava/lang/String; = "transitions"


# instance fields
.field private mAspectRatio:I

.field private final mAudioTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mDurationMs:J

.field private final mLock:Ljava/util/concurrent/Semaphore;

.field private mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

.field private final mMallocDebug:Z

.field private final mMediaItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewInProgress:Z

.field private final mProjectPath:Ljava/lang/String;

.field private final mTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .parameter "projectPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    .line 129
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    .line 130
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    .line 138
    iput-boolean v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    .line 149
    const-string v3, "libc.debug.malloc"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, s:Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 151
    iput-boolean v5, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMallocDebug:Z

    .line 153
    :try_start_2c
    const-string v3, "HeapAtStart"

    invoke-static {v3}, Landroid/media/videoeditor/VideoEditorImpl;->dumpHeap(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_31} :catch_55

    .line 160
    :goto_31
    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v5, v5}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    .line 161
    new-instance v3, Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, p1, v4, p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;-><init>(Ljava/lang/String;Ljava/util/concurrent/Semaphore;Landroid/media/videoeditor/VideoEditor;)V

    iput-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    .line 162
    iput-object p1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    .line 163
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "videoeditor.xml"

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .local v1, projectXml:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 166
    :try_start_51
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->load()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_62

    .line 175
    :goto_54
    return-void

    .line 154
    .end local v1           #projectXml:Ljava/io/File;
    :catch_55
    move-exception v3

    move-object v0, v3

    .line 155
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "VideoEditorImpl"

    const-string v4, "dumpHeap returned error in constructor"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 158
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_5f
    iput-boolean v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMallocDebug:Z

    goto :goto_31

    .line 167
    .restart local v1       #projectXml:Ljava/io/File;
    :catch_62
    move-exception v0

    .line 168
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 172
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_70
    const/4 v3, 0x2

    iput v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAspectRatio:I

    .line 173
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    goto :goto_54
.end method

.method private computeTimelineDuration()V
    .registers 8

    .prologue
    .line 1784
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    .line 1785
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1786
    .local v2, mediaItemsCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v2, :cond_39

    .line 1787
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/MediaItem;

    .line 1788
    .local v1, mediaItem:Landroid/media/videoeditor/MediaItem;
    iget-wide v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getTimelineDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    .line 1789
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 1790
    const/4 v3, 0x1

    sub-int v3, v2, v3

    if-ge v0, v3, :cond_36

    .line 1791
    iget-wide v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    .line 1786
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1795
    .end local v1           #mediaItem:Landroid/media/videoeditor/MediaItem;
    :cond_39
    return-void
.end method

.method private static dumpHeap(Ljava/lang/String;)V
    .registers 7
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1937
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1938
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 1939
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 1940
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 1941
    .local v2, state:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 1942
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1947
    .local v0, extDir:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dump"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 1948
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dump"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1952
    :cond_6c
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".dump"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1954
    .local v1, ost:Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Debug;->dumpNativeHeap(Ljava/io/FileDescriptor;)V

    .line 1955
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1957
    .end local v0           #extDir:Ljava/lang/String;
    .end local v1           #ost:Ljava/io/FileOutputStream;
    :cond_98
    return-void
.end method

.method private generateProjectThumbnail()V
    .registers 10

    .prologue
    .line 1804
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "thumbnail.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 1805
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "thumbnail.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1810
    :cond_4b
    iget-object v6, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9f

    .line 1811
    iget-object v6, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaItem;

    .line 1815
    .local v2, mI:Landroid/media/videoeditor/MediaItem;
    const/16 v1, 0x1e0

    .line 1816
    .local v1, height:I
    const/16 v5, 0x356

    .line 1817
    .local v5, width:I
    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getAspectRatio()I

    move-result v6

    packed-switch v6, :pswitch_data_ce

    .line 1835
    :goto_67
    :pswitch_67
    const/4 v3, 0x0

    .line 1837
    .local v3, projectBitmap:Landroid/graphics/Bitmap;
    const-wide/16 v6, 0x1f4

    :try_start_6a
    invoke-virtual {v2, v5, v1, v6, v7}, Landroid/media/videoeditor/MediaItem;->getThumbnail(IIJ)Landroid/graphics/Bitmap;
    :try_end_6d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6a .. :try_end_6d} :catch_ac
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_b5

    move-result-object v3

    .line 1845
    :try_start_6e
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "thumbnail.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1847
    .local v4, stream:Ljava/io/FileOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v3, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1848
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 1849
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9c
    .catchall {:try_start_6e .. :try_end_9c} :catchall_c8
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_9c} :catch_be

    .line 1853
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1856
    .end local v1           #height:I
    .end local v2           #mI:Landroid/media/videoeditor/MediaItem;
    .end local v3           #projectBitmap:Landroid/graphics/Bitmap;
    .end local v4           #stream:Ljava/io/FileOutputStream;
    .end local v5           #width:I
    :cond_9f
    return-void

    .line 1819
    .restart local v1       #height:I
    .restart local v2       #mI:Landroid/media/videoeditor/MediaItem;
    .restart local v5       #width:I
    :pswitch_a0
    const/16 v5, 0x2d0

    .line 1820
    goto :goto_67

    .line 1822
    :pswitch_a3
    const/16 v5, 0x280

    .line 1823
    goto :goto_67

    .line 1825
    :pswitch_a6
    const/16 v5, 0x320

    .line 1826
    goto :goto_67

    .line 1828
    :pswitch_a9
    const/16 v5, 0x24a

    .line 1829
    goto :goto_67

    .line 1838
    .restart local v3       #projectBitmap:Landroid/graphics/Bitmap;
    :catch_ac
    move-exception v0

    .line 1839
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Illegal argument error creating project thumbnail"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1840
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_b5
    move-exception v0

    .line 1841
    .local v0, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "IO Error creating project thumbnail"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1850
    .end local v0           #e:Ljava/io/IOException;
    :catch_be
    move-exception v6

    move-object v0, v6

    .line 1851
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_c0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Error creating project thumbnail"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_c8
    .catchall {:try_start_c0 .. :try_end_c8} :catchall_c8

    .line 1853
    .end local v0           #e:Ljava/io/IOException;
    :catchall_c8
    move-exception v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    throw v6

    .line 1817
    nop

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_67
        :pswitch_a3
        :pswitch_a6
        :pswitch_a9
    .end packed-switch
.end method

.method private load()V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 951
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string/jumbo v23, "videoeditor.xml"

    move-object v0, v10

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    .local v10, file:Ljava/io/File;
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 957
    .local v12, fis:Ljava/io/FileInputStream;
    :try_start_18
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 959
    .local v14, ignoredMediaItems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v19

    .line 960
    .local v19, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v22, "UTF-8"

    move-object/from16 v0, v19

    move-object v1, v12

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 961
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    .line 963
    .local v8, eventType:I
    const/4 v5, 0x0

    .line 964
    .local v5, currentMediaItem:Landroid/media/videoeditor/MediaItem;
    const/4 v6, 0x0

    .line 965
    .local v6, currentOverlay:Landroid/media/videoeditor/Overlay;
    const/16 v20, 0x0

    .line 966
    .local v20, regenerateProjectThumbnail:Z
    :goto_33
    const/16 v22, 0x1

    move v0, v8

    move/from16 v1, v22

    if-eq v0, v1, :cond_291

    .line 967
    packed-switch v8, :pswitch_data_2a0

    .line 1083
    :cond_3d
    :goto_3d
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    goto :goto_33

    .line 969
    :pswitch_42
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 970
    .local v18, name:Ljava/lang/String;
    const-string/jumbo v22, "project"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_93

    .line 971
    const-string v22, ""

    const-string v23, "aspect_ratio"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/videoeditor/VideoEditorImpl;->mAspectRatio:I

    .line 974
    const-string v22, ""

    const-string/jumbo v23, "regeneratePCMFlag"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v16

    .line 977
    .local v16, mRegenPCM:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setAudioflag(Z)V
    :try_end_8b
    .catchall {:try_start_18 .. :try_end_8b} :catchall_8c

    goto :goto_3d

    .line 1092
    .end local v5           #currentMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v6           #currentOverlay:Landroid/media/videoeditor/Overlay;
    .end local v8           #eventType:I
    .end local v14           #ignoredMediaItems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v16           #mRegenPCM:Z
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v20           #regenerateProjectThumbnail:Z
    :catchall_8c
    move-exception v22

    if-eqz v12, :cond_92

    .line 1093
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    :cond_92
    throw v22

    .line 978
    .restart local v5       #currentMediaItem:Landroid/media/videoeditor/MediaItem;
    .restart local v6       #currentOverlay:Landroid/media/videoeditor/Overlay;
    .restart local v8       #eventType:I
    .restart local v14       #ignoredMediaItems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18       #name:Ljava/lang/String;
    .restart local v19       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20       #regenerateProjectThumbnail:Z
    :cond_93
    :try_start_93
    const-string v22, "media_item"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_fe

    .line 979
    const-string v22, ""

    const-string v23, "id"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_ac
    .catchall {:try_start_93 .. :try_end_ac} :catchall_8c

    move-result-object v17

    .line 981
    .local v17, mediaItemId:Ljava/lang/String;
    :try_start_ad
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/media/videoeditor/VideoEditorImpl;->parseMediaItem(Lorg/xmlpull/v1/XmlPullParser;)Landroid/media/videoeditor/MediaItem;

    move-result-object v5

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c1
    .catchall {:try_start_ad .. :try_end_c1} :catchall_8c
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_c1} :catch_c3

    goto/16 :goto_3d

    .line 983
    :catch_c3
    move-exception v22

    move-object/from16 v9, v22

    .line 984
    .local v9, ex:Ljava/lang/Exception;
    :try_start_c6
    const-string v22, "VideoEditorImpl"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot load media item: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 985
    const/4 v5, 0x0

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-nez v22, :cond_f6

    .line 989
    const/16 v20, 0x1

    .line 992
    :cond_f6
    move-object v0, v14

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3d

    .line 994
    .end local v9           #ex:Ljava/lang/Exception;
    .end local v17           #mediaItemId:Ljava/lang/String;
    :cond_fe
    const-string/jumbo v22, "transition"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_108
    .catchall {:try_start_c6 .. :try_end_108} :catchall_8c

    move-result v22

    if-eqz v22, :cond_136

    .line 996
    :try_start_10b
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Landroid/media/videoeditor/VideoEditorImpl;->parseTransition(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Landroid/media/videoeditor/Transition;

    move-result-object v21

    .line 1000
    .local v21, transition:Landroid/media/videoeditor/Transition;
    if-eqz v21, :cond_3d

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_123
    .catchall {:try_start_10b .. :try_end_123} :catchall_8c
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_123} :catch_125

    goto/16 :goto_3d

    .line 1003
    .end local v21           #transition:Landroid/media/videoeditor/Transition;
    :catch_125
    move-exception v22

    move-object/from16 v9, v22

    .line 1004
    .restart local v9       #ex:Ljava/lang/Exception;
    :try_start_128
    const-string v22, "VideoEditorImpl"

    const-string v23, "Cannot load transition"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3d

    .line 1006
    .end local v9           #ex:Ljava/lang/Exception;
    :cond_136
    const-string v22, "overlay"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_13f
    .catchall {:try_start_128 .. :try_end_13f} :catchall_8c

    move-result v22

    if-eqz v22, :cond_163

    .line 1007
    if-eqz v5, :cond_3d

    .line 1009
    :try_start_144
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/media/videoeditor/VideoEditorImpl;->parseOverlay(Lorg/xmlpull/v1/XmlPullParser;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Overlay;

    move-result-object v6

    .line 1010
    invoke-virtual {v5, v6}, Landroid/media/videoeditor/MediaItem;->addOverlay(Landroid/media/videoeditor/Overlay;)V
    :try_end_150
    .catchall {:try_start_144 .. :try_end_150} :catchall_8c
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_150} :catch_152

    goto/16 :goto_3d

    .line 1011
    :catch_152
    move-exception v22

    move-object/from16 v9, v22

    .line 1012
    .restart local v9       #ex:Ljava/lang/Exception;
    :try_start_155
    const-string v22, "VideoEditorImpl"

    const-string v23, "Cannot load overlay"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3d

    .line 1015
    .end local v9           #ex:Ljava/lang/Exception;
    :cond_163
    const-string v22, "overlay_user_attributes"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_191

    .line 1016
    if-eqz v6, :cond_3d

    .line 1017
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 1018
    .local v3, attributesCount:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_176
    if-ge v13, v3, :cond_3d

    .line 1019
    move-object/from16 v0, v19

    move v1, v13

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move v1, v13

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v23

    move-object v0, v6

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/Overlay;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    add-int/lit8 v13, v13, 0x1

    goto :goto_176

    .line 1023
    .end local v3           #attributesCount:I
    .end local v13           #i:I
    :cond_191
    const-string v22, "effect"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_19a
    .catchall {:try_start_155 .. :try_end_19a} :catchall_8c

    move-result v22

    if-eqz v22, :cond_242

    .line 1024
    if-eqz v5, :cond_3d

    .line 1026
    :try_start_19f
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/media/videoeditor/VideoEditorImpl;->parseEffect(Lorg/xmlpull/v1/XmlPullParser;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Effect;

    move-result-object v7

    .line 1027
    .local v7, effect:Landroid/media/videoeditor/Effect;
    invoke-virtual {v5, v7}, Landroid/media/videoeditor/MediaItem;->addEffect(Landroid/media/videoeditor/Effect;)V

    .line 1029
    move-object v0, v7

    instance-of v0, v0, Landroid/media/videoeditor/EffectKenBurns;

    move/from16 v22, v0

    if-eqz v22, :cond_3d

    .line 1030
    const-string v22, ""

    const-string v23, "is_image_clip_generated"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 1033
    .local v15, isImageClipGenerated:Z
    if-eqz v15, :cond_228

    .line 1034
    const-string v22, ""

    const-string v23, "generated_image_clip"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1036
    .local v11, filename:Ljava/lang/String;
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object v1, v11

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_20e

    .line 1037
    move-object v0, v5

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v7, v0

    .end local v7           #effect:Landroid/media/videoeditor/Effect;
    invoke-virtual {v7, v11}, Landroid/media/videoeditor/MediaImageItem;->setGeneratedImageClip(Ljava/lang/String;)V

    .line 1039
    move-object v0, v5

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v7, v0

    const/16 v22, 0x0

    move-object v0, v7

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaImageItem;->setRegenerateClip(Z)V
    :try_end_1fb
    .catchall {:try_start_19f .. :try_end_1fb} :catchall_8c
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1fb} :catch_1fd

    goto/16 :goto_3d

    .line 1054
    .end local v11           #filename:Ljava/lang/String;
    .end local v15           #isImageClipGenerated:Z
    :catch_1fd
    move-exception v22

    move-object/from16 v9, v22

    .line 1055
    .restart local v9       #ex:Ljava/lang/Exception;
    :try_start_200
    const-string v22, "VideoEditorImpl"

    const-string v23, "Cannot load effect"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20c
    .catchall {:try_start_200 .. :try_end_20c} :catchall_8c

    goto/16 :goto_3d

    .line 1042
    .end local v9           #ex:Ljava/lang/Exception;
    .restart local v7       #effect:Landroid/media/videoeditor/Effect;
    .restart local v11       #filename:Ljava/lang/String;
    .restart local v15       #isImageClipGenerated:Z
    :cond_20e
    :try_start_20e
    move-object v0, v5

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v7, v0

    .end local v7           #effect:Landroid/media/videoeditor/Effect;
    const/16 v22, 0x0

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaImageItem;->setGeneratedImageClip(Ljava/lang/String;)V

    .line 1044
    move-object v0, v5

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v7, v0

    const/16 v22, 0x1

    move-object v0, v7

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaImageItem;->setRegenerateClip(Z)V

    goto/16 :goto_3d

    .line 1048
    .end local v11           #filename:Ljava/lang/String;
    .restart local v7       #effect:Landroid/media/videoeditor/Effect;
    :cond_228
    move-object v0, v5

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v7, v0

    .end local v7           #effect:Landroid/media/videoeditor/Effect;
    const/16 v22, 0x0

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaImageItem;->setGeneratedImageClip(Ljava/lang/String;)V

    .line 1050
    move-object v0, v5

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v7, v0

    const/16 v22, 0x1

    move-object v0, v7

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaImageItem;->setRegenerateClip(Z)V
    :try_end_240
    .catchall {:try_start_20e .. :try_end_240} :catchall_8c
    .catch Ljava/lang/Exception; {:try_start_20e .. :try_end_240} :catch_1fd

    goto/16 :goto_3d

    .line 1058
    .end local v15           #isImageClipGenerated:Z
    :cond_242
    :try_start_242
    const-string v22, "audio_track"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_24b
    .catchall {:try_start_242 .. :try_end_24b} :catchall_8c

    move-result v22

    if-eqz v22, :cond_3d

    .line 1060
    :try_start_24e
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/media/videoeditor/VideoEditorImpl;->parseAudioTrack(Lorg/xmlpull/v1/XmlPullParser;)Landroid/media/videoeditor/AudioTrack;

    move-result-object v4

    .line 1061
    .local v4, audioTrack:Landroid/media/videoeditor/AudioTrack;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/VideoEditorImpl;->addAudioTrack(Landroid/media/videoeditor/AudioTrack;)V
    :try_end_25c
    .catchall {:try_start_24e .. :try_end_25c} :catchall_8c
    .catch Ljava/lang/Exception; {:try_start_24e .. :try_end_25c} :catch_25e

    goto/16 :goto_3d

    .line 1062
    .end local v4           #audioTrack:Landroid/media/videoeditor/AudioTrack;
    :catch_25e
    move-exception v22

    move-object/from16 v9, v22

    .line 1063
    .restart local v9       #ex:Ljava/lang/Exception;
    :try_start_261
    const-string v22, "VideoEditorImpl"

    const-string v23, "Cannot load audio track"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3d

    .line 1070
    .end local v9           #ex:Ljava/lang/Exception;
    .end local v18           #name:Ljava/lang/String;
    :pswitch_26f
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1071
    .restart local v18       #name:Ljava/lang/String;
    const-string v22, "media_item"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_282

    .line 1072
    const/4 v5, 0x0

    goto/16 :goto_3d

    .line 1073
    :cond_282
    const-string v22, "overlay"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3d

    .line 1074
    const/4 v6, 0x0

    goto/16 :goto_3d

    .line 1085
    .end local v18           #name:Ljava/lang/String;
    :cond_291
    invoke-direct/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 1087
    if-eqz v20, :cond_299

    .line 1088
    invoke-direct/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V
    :try_end_299
    .catchall {:try_start_261 .. :try_end_299} :catchall_8c

    .line 1092
    :cond_299
    if-eqz v12, :cond_29e

    .line 1093
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 1096
    :cond_29e
    return-void

    .line 967
    nop

    :pswitch_data_2a0
    .packed-switch 0x2
        :pswitch_42
        :pswitch_26f
    .end packed-switch
.end method

.method private lock()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 1891
    const-string v0, "VideoEditorImpl"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1892
    const-string v0, "VideoEditorImpl"

    const-string v1, "lock: grabbing semaphore"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1894
    :cond_15
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1895
    const-string v0, "VideoEditorImpl"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1896
    const-string v0, "VideoEditorImpl"

    const-string v1, "lock: grabbed semaphore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    :cond_29
    return-void
.end method

.method private lock(J)Z
    .registers 8
    .parameter "timeoutMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 1909
    const-string v1, "VideoEditorImpl"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1910
    const-string v1, "VideoEditorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lock: grabbing semaphore with timeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1913
    :cond_26
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 1914
    .local v0, acquireSem:Z
    const-string v1, "VideoEditorImpl"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1915
    const-string v1, "VideoEditorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lock: grabbed semaphore status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    :cond_4e
    return v0
.end method

.method private parseAudioTrack(Lorg/xmlpull/v1/XmlPullParser;)Landroid/media/videoeditor/AudioTrack;
    .registers 22
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1325
    const-string v4, ""

    const-string v5, "id"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1326
    .local v5, audioTrackId:Ljava/lang/String;
    const-string v4, ""

    const-string v6, "filename"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1327
    .local v6, filename:Ljava/lang/String;
    const-string v4, ""

    const-string/jumbo v7, "start_time"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 1328
    .local v7, startTimeMs:J
    const-string v4, ""

    const-string v9, "begin_time"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1329
    .local v9, beginMs:J
    const-string v4, ""

    const-string v11, "end_time"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1330
    .local v11, endMs:J
    const-string v4, ""

    const-string/jumbo v13, "volume"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v13

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1331
    .local v14, volume:I
    const-string v4, ""

    const-string v13, "muted"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v13

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 1332
    .local v15, muted:Z
    const-string v4, ""

    const-string v13, "loop"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v13

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 1333
    .local v13, loop:Z
    const-string v4, ""

    const-string v16, "ducking_enabled"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v16

    .line 1335
    .local v16, duckingEnabled:Z
    const-string v4, ""

    const-string v17, "ducking_threshold"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1337
    .local v17, duckThreshold:I
    const-string v4, ""

    const-string v18, "ducking_volume"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1340
    .local v18, duckedTrackVolume:I
    const-string v4, ""

    const-string/jumbo v19, "waveform"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1341
    .local v19, waveformFilename:Ljava/lang/String;
    new-instance v3, Landroid/media/videoeditor/AudioTrack;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v19}, Landroid/media/videoeditor/AudioTrack;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JJJZIZZIILjava/lang/String;)V

    .line 1350
    .local v3, audioTrack:Landroid/media/videoeditor/AudioTrack;
    return-object v3
.end method

.method private parseEffect(Lorg/xmlpull/v1/XmlPullParser;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Effect;
    .registers 27
    .parameter "parser"
    .parameter "mediaItem"

    .prologue
    .line 1279
    const-string v6, ""

    const-string v7, "id"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1280
    .local v7, effectId:Ljava/lang/String;
    const-string v6, ""

    const-string/jumbo v8, "type"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1281
    .local v23, type:Ljava/lang/String;
    const-string v6, ""

    const-string v8, "duration"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1282
    .local v10, durationMs:J
    const-string v6, ""

    const-string v8, "begin_time"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1285
    .local v8, startTimeMs:J
    const-class v6, Landroid/media/videoeditor/EffectColor;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 1286
    const-string v6, ""

    const-string v12, "color_type"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v12

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1289
    .local v12, colorEffectType:I
    const/4 v6, 0x1

    if-eq v12, v6, :cond_5e

    const/4 v6, 0x2

    if-ne v12, v6, :cond_76

    .line 1291
    :cond_5e
    const-string v6, ""

    const-string v13, "color_value"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v13

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1295
    .local v13, color:I
    :goto_6e
    new-instance v5, Landroid/media/videoeditor/EffectColor;

    move-object/from16 v6, p2

    invoke-direct/range {v5 .. v13}, Landroid/media/videoeditor/EffectColor;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJII)V

    .line 1314
    .end local v12           #colorEffectType:I
    .end local v13           #color:I
    .local v5, effect:Landroid/media/videoeditor/Effect;
    :goto_75
    return-object v5

    .line 1293
    .end local v5           #effect:Landroid/media/videoeditor/Effect;
    .restart local v12       #colorEffectType:I
    :cond_76
    const/4 v13, 0x0

    .restart local v13       #color:I
    goto :goto_6e

    .line 1297
    .end local v12           #colorEffectType:I
    .end local v13           #color:I
    :cond_78
    const-class v6, Landroid/media/videoeditor/EffectKenBurns;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_131

    .line 1298
    new-instance v17, Landroid/graphics/Rect;

    const-string v6, ""

    const-string/jumbo v12, "start_l"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v12

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v12, ""

    const-string/jumbo v13, "start_t"

    move-object/from16 v0, p1

    move-object v1, v12

    move-object v2, v13

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, ""

    const-string/jumbo v14, "start_r"

    move-object/from16 v0, p1

    move-object v1, v13

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const-string v14, ""

    const-string/jumbo v15, "start_b"

    move-object/from16 v0, p1

    move-object v1, v14

    move-object v2, v15

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, v17

    move v1, v6

    move v2, v12

    move v3, v13

    move v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1303
    .local v17, startRect:Landroid/graphics/Rect;
    new-instance v18, Landroid/graphics/Rect;

    const-string v6, ""

    const-string v12, "end_l"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v12

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v12, ""

    const-string v13, "end_t"

    move-object/from16 v0, p1

    move-object v1, v12

    move-object v2, v13

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, ""

    const-string v14, "end_r"

    move-object/from16 v0, p1

    move-object v1, v13

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const-string v14, ""

    const-string v15, "end_b"

    move-object/from16 v0, p1

    move-object v1, v14

    move-object v2, v15

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, v18

    move v1, v6

    move v2, v12

    move v3, v13

    move v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1308
    .local v18, endRect:Landroid/graphics/Rect;
    new-instance v5, Landroid/media/videoeditor/EffectKenBurns;

    move-object v14, v5

    move-object/from16 v15, p2

    move-object/from16 v16, v7

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    invoke-direct/range {v14 .. v22}, Landroid/media/videoeditor/EffectKenBurns;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;JJ)V

    .line 1310
    .restart local v5       #effect:Landroid/media/videoeditor/Effect;
    goto/16 :goto_75

    .line 1311
    .end local v5           #effect:Landroid/media/videoeditor/Effect;
    .end local v17           #startRect:Landroid/graphics/Rect;
    .end local v18           #endRect:Landroid/graphics/Rect;
    :cond_131
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #effectId:Ljava/lang/String;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid effect type: "

    .end local v8           #startTimeMs:J
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private parseMediaItem(Lorg/xmlpull/v1/XmlPullParser;)Landroid/media/videoeditor/MediaItem;
    .registers 32
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1105
    const-string v6, ""

    const-string v7, "id"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1106
    .local v7, mediaItemId:Ljava/lang/String;
    const-string v6, ""

    const-string/jumbo v8, "type"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1107
    .local v28, type:Ljava/lang/String;
    const-string v6, ""

    const-string v8, "filename"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1108
    .local v8, filename:Ljava/lang/String;
    const-string v6, ""

    const-string/jumbo v9, "rendering_mode"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1112
    .local v11, renderingMode:I
    const-class v6, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 1113
    const-string v6, ""

    const-string v9, "duration"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1114
    .local v9, durationMs:J
    new-instance v5, Landroid/media/videoeditor/MediaImageItem;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v11}, Landroid/media/videoeditor/MediaImageItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 1136
    .end local v7           #mediaItemId:Ljava/lang/String;
    .end local v9           #durationMs:J
    .local v5, currentMediaItem:Landroid/media/videoeditor/MediaItem;
    :goto_5c
    return-object v5

    .line 1116
    .end local v5           #currentMediaItem:Landroid/media/videoeditor/MediaItem;
    .restart local v7       #mediaItemId:Ljava/lang/String;
    :cond_5d
    const-class v6, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10f

    .line 1117
    const-string v6, ""

    const-string v9, "begin_time"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 1118
    .local v17, beginMs:J
    const-string v6, ""

    const-string v9, "end_time"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 1119
    .local v19, endMs:J
    const-string v6, ""

    const-string/jumbo v9, "volume"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1120
    .local v21, volume:I
    const-string v6, ""

    const-string v9, "muted"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v22

    .line 1121
    .local v22, muted:Z
    const-string v6, ""

    const-string/jumbo v9, "waveform"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1123
    .local v23, audioWaveformFilename:Ljava/lang/String;
    new-instance v5, Landroid/media/videoeditor/MediaVideoItem;

    move-object v12, v5

    move-object/from16 v13, p0

    move-object v14, v7

    move-object v15, v8

    move/from16 v16, v11

    invoke-direct/range {v12 .. v23}, Landroid/media/videoeditor/MediaVideoItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;IJJIZLjava/lang/String;)V

    .line 1126
    .restart local v5       #currentMediaItem:Landroid/media/videoeditor/MediaItem;
    const-string v6, ""

    const-string v7, "begin_time"

    .end local v7           #mediaItemId:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 1127
    .local v24, beginTimeMs:J
    const-string v6, ""

    const-string v7, "end_time"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    .line 1128
    .local v26, endTimeMs:J
    move-object v0, v5

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/videoeditor/MediaVideoItem;->setExtractBoundaries(JJ)V

    .line 1130
    const-string v6, ""

    const-string/jumbo v7, "volume"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 1131
    .local v29, volumePercent:I
    move-object v0, v5

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaVideoItem;->setVolume(I)V

    goto/16 :goto_5c

    .line 1133
    .end local v5           #currentMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v17           #beginMs:J
    .end local v19           #endMs:J
    .end local v21           #volume:I
    .end local v22           #muted:Z
    .end local v23           #audioWaveformFilename:Ljava/lang/String;
    .end local v24           #beginTimeMs:J
    .end local v26           #endTimeMs:J
    .end local v29           #volumePercent:I
    .restart local v7       #mediaItemId:Ljava/lang/String;
    :cond_10f
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #mediaItemId:Ljava/lang/String;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown media item type: "

    .end local v8           #filename:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private parseOverlay(Lorg/xmlpull/v1/XmlPullParser;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Overlay;
    .registers 20
    .parameter "parser"
    .parameter "mediaItem"

    .prologue
    .line 1234
    const-string v4, ""

    const-string v5, "id"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1235
    .local v5, overlayId:Ljava/lang/String;
    const-string v4, ""

    const-string/jumbo v6, "type"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1236
    .local v16, type:Ljava/lang/String;
    const-string v4, ""

    const-string v6, "duration"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1237
    .local v9, durationMs:J
    const-string v4, ""

    const-string v6, "begin_time"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 1240
    .local v7, startTimeMs:J
    const-class v4, Landroid/media/videoeditor/OverlayFrame;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c8

    .line 1241
    const-string v4, ""

    const-string v6, "filename"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1242
    .local v6, filename:Ljava/lang/String;
    new-instance v3, Landroid/media/videoeditor/OverlayFrame;

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v10}, Landroid/media/videoeditor/OverlayFrame;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 1247
    .local v3, overlay:Landroid/media/videoeditor/Overlay;
    const-string v4, ""

    const-string v5, "overlay_rgb_filename"

    .end local v5           #overlayId:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1248
    .local v13, overlayRgbFileName:Ljava/lang/String;
    if-eqz v13, :cond_c7

    .line 1249
    move-object v0, v3

    check-cast v0, Landroid/media/videoeditor/OverlayFrame;

    move-object v4, v0

    invoke-virtual {v4, v13}, Landroid/media/videoeditor/OverlayFrame;->setFilename(Ljava/lang/String;)V

    .line 1251
    const-string v4, ""

    const-string v5, "overlay_frame_width"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1253
    .local v12, overlayFrameWidth:I
    const-string v4, ""

    const-string v5, "overlay_frame_height"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1256
    .local v11, overlayFrameHeight:I
    move-object v0, v3

    check-cast v0, Landroid/media/videoeditor/OverlayFrame;

    move-object v4, v0

    invoke-virtual {v4, v12}, Landroid/media/videoeditor/OverlayFrame;->setOverlayFrameWidth(I)V

    .line 1257
    move-object v0, v3

    check-cast v0, Landroid/media/videoeditor/OverlayFrame;

    move-object v4, v0

    invoke-virtual {v4, v11}, Landroid/media/videoeditor/OverlayFrame;->setOverlayFrameHeight(I)V

    .line 1259
    const-string v4, ""

    const-string/jumbo v5, "resized_RGBframe_width"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1261
    .local v15, resizedRGBFrameWidth:I
    const-string v4, ""

    const-string/jumbo v5, "resized_RGBframe_height"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1264
    .local v14, resizedRGBFrameHeight:I
    move-object v0, v3

    check-cast v0, Landroid/media/videoeditor/OverlayFrame;

    move-object v4, v0

    invoke-virtual {v4, v15, v14}, Landroid/media/videoeditor/OverlayFrame;->setResizedRGBSize(II)V

    .line 1267
    .end local v11           #overlayFrameHeight:I
    .end local v12           #overlayFrameWidth:I
    .end local v14           #resizedRGBFrameHeight:I
    .end local v15           #resizedRGBFrameWidth:I
    :cond_c7
    return-object v3

    .line 1244
    .end local v3           #overlay:Landroid/media/videoeditor/Overlay;
    .end local v6           #filename:Ljava/lang/String;
    .end local v13           #overlayRgbFileName:Ljava/lang/String;
    .restart local v5       #overlayId:Ljava/lang/String;
    :cond_c8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #overlayId:Ljava/lang/String;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid overlay type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private parseTransition(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Landroid/media/videoeditor/Transition;
    .registers 29
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/videoeditor/Transition;"
        }
    .end annotation

    .prologue
    .line 1148
    .local p2, ignoredMediaItems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v13, ""

    const-string v14, "id"

    move-object/from16 v0, p1

    move-object v1, v13

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1149
    .local v4, transitionId:Ljava/lang/String;
    const-string v13, ""

    const-string/jumbo v14, "type"

    move-object/from16 v0, p1

    move-object v1, v13

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1150
    .local v25, type:Ljava/lang/String;
    const-string v13, ""

    const-string v14, "duration"

    move-object/from16 v0, p1

    move-object v1, v13

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 1151
    .local v7, durationMs:J
    const-string v13, ""

    const-string v14, "behavior"

    move-object/from16 v0, p1

    move-object v1, v13

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1153
    .local v9, behavior:I
    const-string v13, ""

    const-string v14, "before_media_item"

    move-object/from16 v0, p1

    move-object v1, v13

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1155
    .local v22, beforeMediaItemId:Ljava/lang/String;
    if-eqz v22, :cond_75

    .line 1156
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_53

    .line 1158
    const/4 v13, 0x0

    .line 1222
    :goto_52
    return-object v13

    .line 1161
    :cond_53
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/VideoEditorImpl;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v6

    .line 1166
    .local v6, beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    :goto_5b
    const-string v13, ""

    const-string v14, "after_media_item"

    move-object/from16 v0, p1

    move-object v1, v13

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1168
    .local v21, afterMediaItemId:Ljava/lang/String;
    if-eqz v21, :cond_102

    .line 1169
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_77

    .line 1171
    const/4 v13, 0x0

    goto :goto_52

    .line 1163
    .end local v6           #beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v21           #afterMediaItemId:Ljava/lang/String;
    :cond_75
    const/4 v6, 0x0

    .restart local v6       #beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    goto :goto_5b

    .line 1174
    .restart local v21       #afterMediaItemId:Ljava/lang/String;
    :cond_77
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/VideoEditorImpl;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v5

    .line 1180
    .local v5, afterMediaItem:Landroid/media/videoeditor/MediaItem;
    :goto_7f
    const-class v13, Landroid/media/videoeditor/TransitionAlpha;

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_105

    .line 1181
    const-string v13, ""

    const-string v14, "blending"

    move-object/from16 v0, p1

    move-object v1, v13

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1182
    .local v11, blending:I
    const-string v13, ""

    const-string v14, "mask"

    move-object/from16 v0, p1

    move-object v1, v13

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1183
    .local v10, maskFilename:Ljava/lang/String;
    const-string v13, ""

    const-string v14, "invert"

    move-object/from16 v0, p1

    move-object v1, v13

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 1184
    .local v12, invert:Z
    new-instance v3, Landroid/media/videoeditor/TransitionAlpha;

    invoke-direct/range {v3 .. v12}, Landroid/media/videoeditor/TransitionAlpha;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JILjava/lang/String;IZ)V

    .line 1200
    .end local v10           #maskFilename:Ljava/lang/String;
    .end local v11           #blending:I
    .end local v12           #invert:Z
    .local v3, transition:Landroid/media/videoeditor/Transition;
    :goto_bf
    const-string v13, ""

    const-string v14, "is_transition_generated"

    move-object/from16 v0, p1

    move-object v1, v13

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v23

    .line 1202
    .local v23, isTransitionGenerated:Z
    const/4 v13, 0x1

    move/from16 v0, v23

    move v1, v13

    if-ne v0, v1, :cond_f5

    .line 1203
    const-string v13, ""

    const-string v14, "generated_transition_clip"

    move-object/from16 v0, p1

    move-object v1, v13

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1206
    .local v24, transitionFile:Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_17b

    .line 1207
    move-object v0, v3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/Transition;->setFilename(Ljava/lang/String;)V

    .line 1214
    .end local v24           #transitionFile:Ljava/lang/String;
    :cond_f5
    :goto_f5
    if-eqz v6, :cond_fa

    .line 1215
    invoke-virtual {v6, v3}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 1218
    :cond_fa
    if-eqz v5, :cond_ff

    .line 1219
    invoke-virtual {v5, v3}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    :cond_ff
    move-object v13, v3

    .line 1222
    goto/16 :goto_52

    .line 1176
    .end local v3           #transition:Landroid/media/videoeditor/Transition;
    .end local v5           #afterMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v23           #isTransitionGenerated:Z
    :cond_102
    const/4 v5, 0x0

    .restart local v5       #afterMediaItem:Landroid/media/videoeditor/MediaItem;
    goto/16 :goto_7f

    .line 1186
    :cond_105
    const-class v13, Landroid/media/videoeditor/TransitionCrossfade;

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11a

    .line 1187
    new-instance v3, Landroid/media/videoeditor/TransitionCrossfade;

    invoke-direct/range {v3 .. v9}, Landroid/media/videoeditor/TransitionCrossfade;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    .restart local v3       #transition:Landroid/media/videoeditor/Transition;
    goto :goto_bf

    .line 1189
    .end local v3           #transition:Landroid/media/videoeditor/Transition;
    :cond_11a
    const-class v13, Landroid/media/videoeditor/TransitionSliding;

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_149

    .line 1190
    const-string v13, ""

    const-string v14, "direction"

    move-object/from16 v0, p1

    move-object v1, v13

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1191
    .local v20, direction:I
    new-instance v3, Landroid/media/videoeditor/TransitionSliding;

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    move-wide/from16 v17, v7

    move/from16 v19, v9

    invoke-direct/range {v13 .. v20}, Landroid/media/videoeditor/TransitionSliding;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JII)V

    .line 1193
    .restart local v3       #transition:Landroid/media/videoeditor/Transition;
    goto/16 :goto_bf

    .end local v3           #transition:Landroid/media/videoeditor/Transition;
    .end local v20           #direction:I
    :cond_149
    const-class v13, Landroid/media/videoeditor/TransitionFadeBlack;

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15f

    .line 1194
    new-instance v3, Landroid/media/videoeditor/TransitionFadeBlack;

    invoke-direct/range {v3 .. v9}, Landroid/media/videoeditor/TransitionFadeBlack;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    .restart local v3       #transition:Landroid/media/videoeditor/Transition;
    goto/16 :goto_bf

    .line 1197
    .end local v3           #transition:Landroid/media/videoeditor/Transition;
    :cond_15f
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid transition type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1209
    .restart local v3       #transition:Landroid/media/videoeditor/Transition;
    .restart local v23       #isTransitionGenerated:Z
    .restart local v24       #transitionFile:Ljava/lang/String;
    :cond_17b
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/media/videoeditor/Transition;->setFilename(Ljava/lang/String;)V

    goto/16 :goto_f5
.end method

.method private removeAdjacentTransitions(Landroid/media/videoeditor/MediaItem;)V
    .registers 6
    .parameter "mediaItem"

    .prologue
    const/4 v3, 0x0

    .line 1709
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    .line 1710
    .local v0, beginTransition:Landroid/media/videoeditor/Transition;
    if-eqz v0, :cond_1c

    .line 1711
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 1712
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    .line 1714
    :cond_14
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 1715
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1718
    :cond_1c
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v1

    .line 1719
    .local v1, endTransition:Landroid/media/videoeditor/Transition;
    if-eqz v1, :cond_37

    .line 1720
    invoke-virtual {v1}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 1721
    invoke-virtual {v1}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 1723
    :cond_2f
    invoke-virtual {v1}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 1724
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1727
    :cond_37
    invoke-virtual {p1, v3}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 1728
    invoke-virtual {p1, v3}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    .line 1729
    return-void
.end method

.method private declared-synchronized removeMediaItem(Ljava/lang/String;Z)Landroid/media/videoeditor/MediaItem;
    .registers 7
    .parameter "mediaItemId"
    .parameter "flag"

    .prologue
    .line 837
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v0

    .line 839
    .local v0, firstItemString:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/VideoEditorImpl;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v1

    .line 840
    .local v1, mediaItem:Landroid/media/videoeditor/MediaItem;
    if-eqz v1, :cond_25

    .line 841
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 845
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 849
    invoke-direct {p0, v1}, Landroid/media/videoeditor/VideoEditorImpl;->removeAdjacentTransitions(Landroid/media/videoeditor/MediaItem;)V

    .line 850
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 857
    :cond_25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 858
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 860
    :cond_2e
    monitor-exit p0

    return-object v1

    .line 837
    .end local v0           #firstItemString:Ljava/lang/String;
    .end local v1           #mediaItem:Landroid/media/videoeditor/MediaItem;
    :catchall_30
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private removeTransitionAfter(I)V
    .registers 8
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1760
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/MediaItem;

    .line 1761
    .local v1, mediaItem:Landroid/media/videoeditor/MediaItem;
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1762
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/videoeditor/Transition;>;"
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1763
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/Transition;

    .line 1764
    .local v2, t:Landroid/media/videoeditor/Transition;
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v3

    if-ne v3, v1, :cond_10

    .line 1765
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 1766
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1767
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 1768
    invoke-virtual {v1, v5}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    .line 1772
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-ge p1, v3, :cond_46

    .line 1773
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    add-int/lit8 v4, p1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {p0, v5}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 1778
    .end local v2           #t:Landroid/media/videoeditor/Transition;
    :cond_46
    return-void
.end method

.method private removeTransitionBefore(I)V
    .registers 8
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1737
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/MediaItem;

    .line 1738
    .local v1, mediaItem:Landroid/media/videoeditor/MediaItem;
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1739
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/videoeditor/Transition;>;"
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1740
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/Transition;

    .line 1741
    .local v2, t:Landroid/media/videoeditor/Transition;
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v3

    if-ne v3, v1, :cond_10

    .line 1742
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 1743
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1744
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 1745
    invoke-virtual {v1, v5}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 1746
    if-lez p1, :cond_3f

    .line 1747
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    sub-int v4, p1, v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {p0, v5}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    .line 1752
    .end local v2           #t:Landroid/media/videoeditor/Transition;
    :cond_3f
    return-void
.end method

.method private unlock()V
    .registers 3

    .prologue
    .line 1925
    const-string v0, "VideoEditorImpl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1926
    const-string v0, "VideoEditorImpl"

    const-string/jumbo v1, "unlock: releasing semaphore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    :cond_11
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1929
    return-void
.end method


# virtual methods
.method public declared-synchronized addAudioTrack(Landroid/media/videoeditor/AudioTrack;)V
    .registers 5
    .parameter "audioTrack"

    .prologue
    const/4 v2, 0x1

    .line 188
    monitor-enter p0

    if-nez p1, :cond_f

    .line 189
    :try_start_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Audio Track is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_c

    .line 188
    :catchall_c
    move-exception v1

    monitor-exit p0

    throw v1

    .line 192
    :cond_f
    :try_start_f
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1f

    .line 193
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No more tracks can be added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_1f
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 201
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AudioPcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".pcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, audioTrackPCMFilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 213
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setAudioflag(Z)V
    :try_end_6b
    .catchall {:try_start_f .. :try_end_6b} :catchall_c

    .line 216
    :cond_6b
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addMediaItem(Landroid/media/videoeditor/MediaItem;)V
    .registers 6
    .parameter "mediaItem"

    .prologue
    const/4 v3, 0x1

    .line 225
    monitor-enter p0

    if-nez p1, :cond_f

    .line 226
    :try_start_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Media item is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_c

    .line 225
    :catchall_c
    move-exception v1

    monitor-exit p0

    throw v1

    .line 231
    :cond_f
    :try_start_f
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 232
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media item already exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_34
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 240
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 241
    .local v0, mediaItemsCount:I
    if-lez v0, :cond_47

    .line 242
    sub-int v1, v0, v3

    invoke-direct {p0, v1}, Landroid/media/videoeditor/VideoEditorImpl;->removeTransitionAfter(I)V

    .line 248
    :cond_47
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 255
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_5a

    .line 256
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V
    :try_end_5a
    .catchall {:try_start_f .. :try_end_5a} :catchall_c

    .line 258
    :cond_5a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addTransition(Landroid/media/videoeditor/Transition;)V
    .registers 9
    .parameter "transition"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 265
    monitor-enter p0

    if-nez p1, :cond_10

    .line 266
    :try_start_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Null Transition"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 265
    :catchall_d
    move-exception v4

    monitor-exit p0

    throw v4

    .line 269
    :cond_10
    :try_start_10
    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    .line 270
    .local v2, beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    .line 274
    .local v0, afterMediaItem:Landroid/media/videoeditor/MediaItem;
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    if-nez v4, :cond_24

    .line 275
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "No media items are added"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 278
    :cond_24
    if-eqz v0, :cond_4c

    if-eqz v2, :cond_4c

    .line 279
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 280
    .local v1, afterMediaItemIndex:I
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 282
    .local v3, beforeMediaItemIndex:I
    if-eq v1, v5, :cond_38

    if-ne v3, v5, :cond_40

    .line 283
    :cond_38
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Either of the mediaItem is not found in the list"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 287
    :cond_40
    sub-int v4, v3, v6

    if-eq v1, v4, :cond_4c

    .line 288
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "MediaItems are not in sequence"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 292
    .end local v1           #afterMediaItemIndex:I
    .end local v3           #beforeMediaItemIndex:I
    :cond_4c
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 294
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    if-eqz v0, :cond_72

    .line 303
    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v4

    if-eqz v4, :cond_6f

    .line 304
    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 305
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 307
    :cond_6f
    invoke-virtual {v0, p1}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    .line 310
    :cond_72
    if-eqz v2, :cond_8d

    .line 315
    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v4

    if-eqz v4, :cond_8a

    .line 316
    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 317
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 319
    :cond_8a
    invoke-virtual {v2, p1}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 322
    :cond_8d
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V
    :try_end_90
    .catchall {:try_start_10 .. :try_end_90} :catchall_d

    .line 323
    monitor-exit p0

    return-void
.end method

.method public cancelExport(Ljava/lang/String;)V
    .registers 3
    .parameter "filename"

    .prologue
    .line 329
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 330
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->stop(Ljava/lang/String;)V

    .line 332
    :cond_b
    return-void
.end method

.method public clearSurface(Landroid/view/SurfaceHolder;)V
    .registers 5
    .parameter "surfaceHolder"

    .prologue
    .line 1865
    if-nez p1, :cond_a

    .line 1866
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid surface holder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1869
    :cond_a
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 1870
    .local v0, surface:Landroid/view/Surface;
    if-nez v0, :cond_18

    .line 1871
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface could not be retrieved from surface holder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1874
    :cond_18
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_26

    .line 1875
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Surface is not valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1878
    :cond_26
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-eqz v1, :cond_30

    .line 1879
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v1, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->clearPreviewSurface(Landroid/view/Surface;)V

    .line 1883
    :goto_2f
    return-void

    .line 1881
    :cond_30
    const-string v1, "VideoEditorImpl"

    const-string v2, "Native helper was not ready!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method public export(Ljava/lang/String;IIIILandroid/media/videoeditor/VideoEditor$ExportProgressListener;)V
    .registers 10
    .parameter "filename"
    .parameter "height"
    .parameter "bitrate"
    .parameter "audioCodec"
    .parameter "videoCodec"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    packed-switch p4, :pswitch_data_3c

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported audio codec type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, message:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    .end local v0           #message:Ljava/lang/String;
    :pswitch_1c
    packed-switch p5, :pswitch_data_44

    .line 362
    :pswitch_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported video codec type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    .restart local v0       #message:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    .end local v0           #message:Ljava/lang/String;
    :pswitch_38
    invoke-virtual {p0, p1, p2, p3, p6}, Landroid/media/videoeditor/VideoEditorImpl;->export(Ljava/lang/String;IILandroid/media/videoeditor/VideoEditor$ExportProgressListener;)V

    .line 368
    return-void

    .line 341
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1c
    .end packed-switch

    .line 353
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_38
        :pswitch_38
        :pswitch_1f
        :pswitch_38
    .end packed-switch
.end method

.method public export(Ljava/lang/String;IILandroid/media/videoeditor/VideoEditor$ExportProgressListener;)V
    .registers 24
    .parameter "filename"
    .parameter "height"
    .parameter "bitrate"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    if-nez p1, :cond_a

    .line 376
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "export: filename is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 379
    :cond_a
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    .local v18, tempPathFile:Ljava/io/File;
    if-nez v18, :cond_31

    .line 381
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "can not be created"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 384
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_44

    .line 385
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No MediaItems added"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 388
    :cond_44
    sparse-switch p2, :sswitch_data_108

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported height value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 402
    .local v16, message:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v0, v2

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 406
    .end local v16           #message:Ljava/lang/String;
    :sswitch_66
    sparse-switch p3, :sswitch_data_11e

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported bitrate value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 436
    .restart local v16       #message:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v0, v2

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 439
    .end local v16           #message:Ljava/lang/String;
    :sswitch_88
    invoke-direct/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 440
    const-wide/32 v11, 0x17700

    .line 441
    .local v11, audioBitrate:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    move-wide v2, v0

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide v4, v0

    const-wide/32 v6, 0x17700

    add-long/2addr v4, v6

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x1f40

    div-long v14, v2, v4

    .line 442
    .local v14, fileSize:J
    const-wide v2, 0x80000000L

    cmp-long v2, v2, v14

    if-gtz v2, :cond_b1

    .line 443
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Export Size is more than 2GB"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 446
    :cond_b1
    const/16 v17, 0x0

    .line 448
    .local v17, semAcquireDone:Z
    :try_start_b3
    invoke-direct/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->lock()V

    .line 449
    const/16 v17, 0x1

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-object v2, v0

    if-nez v2, :cond_d6

    .line 452
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The video editor is not initialized"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_c7
    .catchall {:try_start_b3 .. :try_end_c7} :catchall_100
    .catch Ljava/lang/InterruptedException; {:try_start_b3 .. :try_end_c7} :catch_c7

    .line 457
    :catch_c7
    move-exception v2

    move-object v13, v2

    .line 458
    .local v13, ex:Ljava/lang/InterruptedException;
    :try_start_c9
    const-string v2, "VideoEditorImpl"

    const-string v3, "Sem acquire NOT successful in export"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catchall {:try_start_c9 .. :try_end_d0} :catchall_100

    .line 460
    if-eqz v17, :cond_d5

    .line 461
    invoke-direct/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    .line 464
    .end local v13           #ex:Ljava/lang/InterruptedException;
    :cond_d5
    :goto_d5
    return-void

    .line 455
    :cond_d6
    :try_start_d6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    move-object v9, v0

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v2 .. v10}, Landroid/media/videoeditor/MediaArtistNativeHelper;->export(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$ExportProgressListener;)V
    :try_end_fa
    .catchall {:try_start_d6 .. :try_end_fa} :catchall_100
    .catch Ljava/lang/InterruptedException; {:try_start_d6 .. :try_end_fa} :catch_c7

    .line 460
    if-eqz v17, :cond_d5

    .line 461
    invoke-direct/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    goto :goto_d5

    .line 460
    :catchall_100
    move-exception v2

    if-eqz v17, :cond_106

    .line 461
    invoke-direct/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    :cond_106
    throw v2

    .line 388
    nop

    :sswitch_data_108
    .sparse-switch
        0x90 -> :sswitch_66
        0x120 -> :sswitch_66
        0x168 -> :sswitch_66
        0x1e0 -> :sswitch_66
        0x2d0 -> :sswitch_66
    .end sparse-switch

    .line 406
    :sswitch_data_11e
    .sparse-switch
        0x6d60 -> :sswitch_88
        0x9c40 -> :sswitch_88
        0xfa00 -> :sswitch_88
        0x17700 -> :sswitch_88
        0x1f400 -> :sswitch_88
        0x2ee00 -> :sswitch_88
        0x3e800 -> :sswitch_88
        0x5dc00 -> :sswitch_88
        0x7d000 -> :sswitch_88
        0xc3500 -> :sswitch_88
        0x1e8480 -> :sswitch_88
        0x4c4b40 -> :sswitch_88
        0x7a1200 -> :sswitch_88
    .end sparse-switch
.end method

.method public generatePreview(Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V
    .registers 8
    .parameter "listener"

    .prologue
    .line 470
    const/4 v1, 0x0

    .line 472
    .local v1, semAcquireDone:Z
    :try_start_1
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->lock()V

    .line 473
    const/4 v1, 0x1

    .line 475
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-nez v2, :cond_20

    .line 476
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The video editor is not initialized"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_41
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_11} :catch_11

    .line 483
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 484
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_13
    const-string v2, "VideoEditorImpl"

    const-string v3, "Sem acquire NOT successful in previewStoryBoard"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_41

    .line 486
    if-eqz v1, :cond_1f

    .line 487
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    .line 490
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_1f
    :goto_1f
    return-void

    .line 479
    :cond_20
    :try_start_20
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_30

    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3b

    .line 480
    :cond_30
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    iget-object v5, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-virtual {v2, v3, v4, v5, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->previewStoryBoard(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V
    :try_end_3b
    .catchall {:try_start_20 .. :try_end_3b} :catchall_41
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_3b} :catch_11

    .line 486
    :cond_3b
    if-eqz v1, :cond_1f

    .line 487
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    goto :goto_1f

    .line 486
    :catchall_41
    move-exception v2

    if-eqz v1, :cond_47

    .line 487
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    :cond_47
    throw v2
.end method

.method public getAllAudioTracks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 496
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    return-object v0
.end method

.method public getAllMediaItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    return-object v0
.end method

.method public getAllTransitions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Transition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    return-object v0
.end method

.method public getAspectRatio()I
    .registers 2

    .prologue
    .line 517
    iget v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAspectRatio:I

    return v0
.end method

.method public getAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;
    .registers 5
    .parameter "audioTrackId"

    .prologue
    .line 524
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/AudioTrack;

    .line 525
    .local v0, at:Landroid/media/videoeditor/AudioTrack;
    invoke-virtual {v0}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v0

    .line 529
    .end local v0           #at:Landroid/media/videoeditor/AudioTrack;
    :goto_1d
    return-object v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 540
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 541
    iget-wide v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    return-wide v0
.end method

.method public declared-synchronized getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;
    .registers 5
    .parameter "mediaItemId"

    .prologue
    .line 555
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/MediaItem;

    .line 556
    .local v1, mediaItem:Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_22

    move-result v2

    if-eqz v2, :cond_7

    move-object v2, v1

    .line 560
    .end local v1           #mediaItem:Landroid/media/videoeditor/MediaItem;
    :goto_1e
    monitor-exit p0

    return-object v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1e

    .line 555
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_22
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 567
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;
    .registers 5
    .parameter "transitionId"

    .prologue
    .line 574
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Transition;

    .line 575
    .local v1, transition:Landroid/media/videoeditor/Transition;
    invoke-virtual {v1}, Landroid/media/videoeditor/Transition;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v1

    .line 579
    .end local v1           #transition:Landroid/media/videoeditor/Transition;
    :goto_1d
    return-object v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public declared-synchronized insertAudioTrack(Landroid/media/videoeditor/AudioTrack;Ljava/lang/String;)V
    .registers 9
    .parameter "audioTrack"
    .parameter "afterAudioTrackId"

    .prologue
    const/4 v4, 0x1

    .line 587
    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_15

    .line 588
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No more tracks can be added"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_12

    .line 587
    :catchall_12
    move-exception v3

    monitor-exit p0

    throw v3

    .line 591
    :cond_15
    if-nez p2, :cond_25

    .line 592
    :try_start_17
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 593
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_12

    .line 607
    :goto_23
    monitor-exit p0

    return-void

    .line 595
    :cond_25
    :try_start_25
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 596
    .local v1, audioTrackCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2c
    if-ge v2, v1, :cond_51

    .line 597
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/AudioTrack;

    .line 598
    .local v0, at:Landroid/media/videoeditor/AudioTrack;
    invoke-virtual {v0}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 599
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 600
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_23

    .line 596
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 605
    .end local v0           #at:Landroid/media/videoeditor/AudioTrack;
    :cond_51
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioTrack not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6a
    .catchall {:try_start_25 .. :try_end_6a} :catchall_12
.end method

.method public declared-synchronized insertMediaItem(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;)V
    .registers 9
    .parameter "mediaItem"
    .parameter "afterMediaItemId"

    .prologue
    .line 613
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 614
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Media item already exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_26

    .line 613
    :catchall_26
    move-exception v3

    monitor-exit p0

    throw v3

    .line 617
    :cond_29
    if-nez p2, :cond_4b

    .line 618
    :try_start_2b
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 619
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3d

    .line 623
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/media/videoeditor/VideoEditorImpl;->removeTransitionBefore(I)V

    .line 626
    :cond_3d
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 627
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 628
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V
    :try_end_49
    .catchall {:try_start_2b .. :try_end_49} :catchall_26

    .line 650
    :goto_49
    monitor-exit p0

    return-void

    .line 630
    :cond_4b
    :try_start_4b
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 631
    .local v1, mediaItemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_52
    if-ge v0, v1, :cond_7d

    .line 632
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaItem;

    .line 633
    .local v2, mi:Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 634
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 638
    invoke-direct {p0, v0}, Landroid/media/videoeditor/VideoEditorImpl;->removeTransitionAfter(I)V

    .line 642
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 643
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    goto :goto_49

    .line 631
    :cond_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 648
    .end local v2           #mi:Landroid/media/videoeditor/MediaItem;
    :cond_7d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaItem not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_96
    .catchall {:try_start_4b .. :try_end_96} :catchall_26
.end method

.method public declared-synchronized moveAudioTrack(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "audioTrackId"
    .parameter "afterAudioTrackId"

    .prologue
    .line 656
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized moveMediaItem(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "mediaItemId"
    .parameter "afterMediaItemId"

    .prologue
    .line 663
    monitor-enter p0

    const/4 v4, 0x1

    :try_start_2
    invoke-direct {p0, p1, v4}, Landroid/media/videoeditor/VideoEditorImpl;->removeMediaItem(Ljava/lang/String;Z)Landroid/media/videoeditor/MediaItem;

    move-result-object v3

    .line 664
    .local v3, moveMediaItem:Landroid/media/videoeditor/MediaItem;
    if-nez v3, :cond_24

    .line 665
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Target MediaItem not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_21

    .line 663
    .end local v3           #moveMediaItem:Landroid/media/videoeditor/MediaItem;
    :catchall_21
    move-exception v4

    monitor-exit p0

    throw v4

    .line 668
    .restart local v3       #moveMediaItem:Landroid/media/videoeditor/MediaItem;
    :cond_24
    if-nez p2, :cond_4e

    .line 669
    :try_start_26
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_46

    .line 670
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 675
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/media/videoeditor/VideoEditorImpl;->removeTransitionBefore(I)V

    .line 680
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 681
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 683
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V
    :try_end_44
    .catchall {:try_start_26 .. :try_end_44} :catchall_21

    .line 708
    :goto_44
    monitor-exit p0

    return-void

    .line 685
    :cond_46
    :try_start_46
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot move media item (it is the only item)"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 688
    :cond_4e
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 689
    .local v1, mediaItemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_55
    if-ge v0, v1, :cond_80

    .line 690
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaItem;

    .line 691
    .local v2, mi:Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 692
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 696
    invoke-direct {p0, v0}, Landroid/media/videoeditor/VideoEditorImpl;->removeTransitionAfter(I)V

    .line 700
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v4, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 701
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    goto :goto_44

    .line 689
    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 706
    .end local v2           #mi:Landroid/media/videoeditor/MediaItem;
    :cond_80
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaItem not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_99
    .catchall {:try_start_46 .. :try_end_99} :catchall_21
.end method

.method public release()V
    .registers 5

    .prologue
    .line 714
    invoke-virtual {p0}, Landroid/media/videoeditor/VideoEditorImpl;->stopPreview()J

    .line 716
    const/4 v1, 0x0

    .line 718
    .local v1, semAcquireDone:Z
    :try_start_4
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->lock()V

    .line 719
    const/4 v1, 0x1

    .line 721
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-eqz v2, :cond_23

    .line 722
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 723
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 724
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 725
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->releaseNativeHelper()V

    .line 726
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_41
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_23} :catch_32

    .line 731
    :cond_23
    if-eqz v1, :cond_28

    .line 732
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    .line 735
    :cond_28
    :goto_28
    iget-boolean v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMallocDebug:Z

    if-eqz v2, :cond_31

    .line 737
    :try_start_2c
    const-string v2, "HeapAtEnd"

    invoke-static {v2}, Landroid/media/videoeditor/VideoEditorImpl;->dumpHeap(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_31} :catch_48

    .line 742
    :cond_31
    :goto_31
    return-void

    .line 728
    :catch_32
    move-exception v2

    move-object v0, v2

    .line 729
    .local v0, ex:Ljava/lang/Exception;
    :try_start_34
    const-string v2, "VideoEditorImpl"

    const-string v3, "Sem acquire NOT successful in export"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_41

    .line 731
    if-eqz v1, :cond_28

    .line 732
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    goto :goto_28

    .line 731
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_41
    move-exception v2

    if-eqz v1, :cond_47

    .line 732
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    :cond_47
    throw v2

    .line 738
    :catch_48
    move-exception v2

    move-object v0, v2

    .line 739
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v2, "VideoEditorImpl"

    const-string v3, "dumpHeap returned error in release"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method public declared-synchronized removeAllMediaItems()V
    .registers 6

    .prologue
    .line 748
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 750
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 755
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Transition;

    .line 756
    .local v1, transition:Landroid/media/videoeditor/Transition;
    invoke-virtual {v1}, Landroid/media/videoeditor/Transition;->invalidate()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_22

    goto :goto_12

    .line 748
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #transition:Landroid/media/videoeditor/Transition;
    :catchall_22
    move-exception v2

    monitor-exit p0

    throw v2

    .line 758
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_25
    :try_start_25
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 760
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    .line 764
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "thumbnail.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 765
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "thumbnail.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_79
    .catchall {:try_start_25 .. :try_end_79} :catchall_22

    .line 768
    :cond_79
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;
    .registers 5
    .parameter "audioTrackId"

    .prologue
    .line 774
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/VideoEditorImpl;->getAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;

    move-result-object v0

    .line 775
    .local v0, audioTrack:Landroid/media/videoeditor/AudioTrack;
    if-eqz v0, :cond_22

    .line 776
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 777
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 778
    invoke-virtual {v0}, Landroid/media/videoeditor/AudioTrack;->invalidate()V

    .line 779
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->invalidatePcmFile()V

    .line 780
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setAudioflag(Z)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_2a

    .line 784
    monitor-exit p0

    return-object v0

    .line 782
    :cond_22
    :try_start_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, " No more audio tracks"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    .line 774
    .end local v0           #audioTrack:Landroid/media/videoeditor/AudioTrack;
    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;
    .registers 11
    .parameter "mediaItemId"

    .prologue
    .line 791
    monitor-enter p0

    :try_start_1
    iget-object v7, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v7}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v1

    .line 792
    .local v1, firstItemString:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/VideoEditorImpl;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v3

    .line 793
    .local v3, mediaItem:Landroid/media/videoeditor/MediaItem;
    if-eqz v3, :cond_59

    .line 794
    iget-object v7, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 798
    iget-object v7, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 799
    instance-of v7, v3, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v7, :cond_2a

    .line 800
    move-object v0, v3

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/media/videoeditor/MediaImageItem;->invalidate()V

    .line 802
    :cond_2a
    invoke-virtual {v3}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v6

    .line 803
    .local v6, overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_53

    .line 804
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_38
    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/videoeditor/Overlay;

    .line 805
    .local v4, overlay:Landroid/media/videoeditor/Overlay;
    instance-of v7, v4, Landroid/media/videoeditor/OverlayFrame;

    if-eqz v7, :cond_38

    .line 806
    move-object v0, v4

    check-cast v0, Landroid/media/videoeditor/OverlayFrame;

    move-object v5, v0

    .line 807
    .local v5, overlayFrame:Landroid/media/videoeditor/OverlayFrame;
    invoke-virtual {v5}, Landroid/media/videoeditor/OverlayFrame;->invalidate()V
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_50

    goto :goto_38

    .line 791
    .end local v1           #firstItemString:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v4           #overlay:Landroid/media/videoeditor/Overlay;
    .end local v5           #overlayFrame:Landroid/media/videoeditor/OverlayFrame;
    .end local v6           #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :catchall_50
    move-exception v7

    monitor-exit p0

    throw v7

    .line 815
    .restart local v1       #firstItemString:Ljava/lang/String;
    .restart local v3       #mediaItem:Landroid/media/videoeditor/MediaItem;
    .restart local v6       #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :cond_53
    :try_start_53
    invoke-direct {p0, v3}, Landroid/media/videoeditor/VideoEditorImpl;->removeAdjacentTransitions(Landroid/media/videoeditor/MediaItem;)V

    .line 816
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 823
    .end local v6           #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :cond_59
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 824
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V

    .line 827
    :cond_62
    instance-of v7, v3, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v7, :cond_6d

    .line 831
    move-object v0, v3

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/media/videoeditor/MediaVideoItem;->invalidate()V
    :try_end_6d
    .catchall {:try_start_53 .. :try_end_6d} :catchall_50

    .line 833
    :cond_6d
    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized removeTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;
    .registers 8
    .parameter "transitionId"

    .prologue
    .line 867
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/VideoEditorImpl;->getTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;

    move-result-object v2

    .line 868
    .local v2, transition:Landroid/media/videoeditor/Transition;
    if-nez v2, :cond_23

    .line 869
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transition not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_20

    .line 867
    .end local v2           #transition:Landroid/media/videoeditor/Transition;
    :catchall_20
    move-exception v3

    monitor-exit p0

    throw v3

    .line 872
    .restart local v2       #transition:Landroid/media/videoeditor/Transition;
    :cond_23
    :try_start_23
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 877
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    .line 878
    .local v0, afterMediaItem:Landroid/media/videoeditor/MediaItem;
    if-eqz v0, :cond_33

    .line 879
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    .line 882
    :cond_33
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v1

    .line 883
    .local v1, beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    if-eqz v1, :cond_3d

    .line 884
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 887
    :cond_3d
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 888
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 889
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V
    :try_end_48
    .catchall {:try_start_23 .. :try_end_48} :catchall_20

    .line 890
    monitor-exit p0

    return-object v2
.end method

.method public renderPreviewFrame(Landroid/view/SurfaceHolder;JLandroid/media/videoeditor/VideoEditor$OverlayData;)J
    .registers 17
    .parameter "surfaceHolder"
    .parameter "timeMs"
    .parameter "overlayData"

    .prologue
    .line 898
    if-nez p1, :cond_a

    .line 899
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface Holder is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 902
    :cond_a
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 903
    .local v1, surface:Landroid/view/Surface;
    if-nez v1, :cond_18

    .line 904
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface could not be retrieved from Surface holder"

    .end local v1           #surface:Landroid/view/Surface;
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    .restart local v1       #surface:Landroid/view/Surface;
    :cond_18
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_26

    .line 908
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Surface is not valid"

    .end local v1           #surface:Landroid/view/Surface;
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 911
    .restart local v1       #surface:Landroid/view/Surface;
    :cond_26
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gez v0, :cond_35

    .line 912
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "requested time not correct"

    .end local v1           #surface:Landroid/view/Surface;
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    .restart local v1       #surface:Landroid/view/Surface;
    :cond_35
    iget-wide v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    cmp-long v0, p2, v2

    if-lez v0, :cond_44

    .line 914
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "requested time more than duration"

    .end local v1           #surface:Landroid/view/Surface;
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    .restart local v1       #surface:Landroid/view/Surface;
    :cond_44
    const-wide/16 v9, 0x0

    .line 918
    .local v9, result:J
    const/4 v11, 0x0

    .line 920
    .local v11, semAcquireDone:Z
    const-wide/16 v2, 0x1f4

    :try_start_49
    invoke-direct {p0, v2, v3}, Landroid/media/videoeditor/VideoEditorImpl;->lock(J)Z

    move-result v11

    .line 921
    if-nez v11, :cond_74

    .line 922
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Timeout waiting for semaphore"

    .end local v1           #surface:Landroid/view/Surface;
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_57
    .catchall {:try_start_49 .. :try_end_57} :catchall_6d
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_57} :catch_57

    .line 936
    :catch_57
    move-exception v0

    move-object v7, v0

    .line 937
    .local v7, ex:Ljava/lang/InterruptedException;
    :try_start_59
    const-string v0, "VideoEditorImpl"

    const-string v1, "The thread was interrupted"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 938
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The thread was interrupted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6d
    .catchall {:try_start_59 .. :try_end_6d} :catchall_6d

    .line 940
    .end local v7           #ex:Ljava/lang/InterruptedException;
    :catchall_6d
    move-exception v0

    if-eqz v11, :cond_73

    .line 941
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    :cond_73
    throw v0

    .line 925
    .restart local v1       #surface:Landroid/view/Surface;
    :cond_74
    :try_start_74
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-nez v0, :cond_80

    .line 926
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The video editor is not initialized"

    .end local v1           #surface:Landroid/view/Surface;
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 929
    .restart local v1       #surface:Landroid/view/Surface;
    :cond_80
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a3

    .line 930
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v8

    .line 931
    .local v8, frame:Landroid/graphics/Rect;
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-wide v2, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/media/videoeditor/MediaArtistNativeHelper;->renderPreviewFrame(Landroid/view/Surface;JIILandroid/media/videoeditor/VideoEditor$OverlayData;)J
    :try_end_9c
    .catchall {:try_start_74 .. :try_end_9c} :catchall_6d
    .catch Ljava/lang/InterruptedException; {:try_start_74 .. :try_end_9c} :catch_57

    move-result-wide v9

    .line 940
    .end local v8           #frame:Landroid/graphics/Rect;
    :goto_9d
    if-eqz v11, :cond_a2

    .line 941
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    .line 944
    :cond_a2
    return-wide v9

    .line 934
    :cond_a3
    const-wide/16 v9, 0x0

    goto :goto_9d
.end method

.method public save()V
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1357
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v22

    .line 1358
    .local v22, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v28, Ljava/io/StringWriter;

    invoke-direct/range {v28 .. v28}, Ljava/io/StringWriter;-><init>()V

    .line 1359
    .local v28, writer:Ljava/io/StringWriter;
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 1360
    const-string v29, "UTF-8"

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1361
    const-string v29, ""

    const-string/jumbo v30, "project"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1362
    const-string v29, ""

    const-string v30, "aspect_ratio"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mAspectRatio:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1365
    const-string v29, ""

    const-string/jumbo v30, "regeneratePCMFlag"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAudioflag()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1368
    const-string v29, ""

    const-string v30, "media_items"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_566

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/videoeditor/MediaItem;

    .line 1370
    .local v15, mediaItem:Landroid/media/videoeditor/MediaItem;
    const-string v29, ""

    const-string v30, "media_item"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1371
    const-string v29, ""

    const-string v30, "id"

    invoke-virtual {v15}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1372
    const-string v29, ""

    const-string/jumbo v30, "type"

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1374
    const-string v29, ""

    const-string v30, "filename"

    invoke-virtual {v15}, Landroid/media/videoeditor/MediaItem;->getFilename()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1375
    const-string v29, ""

    const-string/jumbo v30, "rendering_mode"

    invoke-virtual {v15}, Landroid/media/videoeditor/MediaItem;->getRenderingMode()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1377
    move-object v0, v15

    instance-of v0, v0, Landroid/media/videoeditor/MediaVideoItem;

    move/from16 v29, v0

    if-eqz v29, :cond_2e4

    .line 1378
    move-object v0, v15

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object/from16 v16, v0

    .line 1379
    .local v16, mvi:Landroid/media/videoeditor/MediaVideoItem;
    const-string v29, ""

    const-string v30, "begin_time"

    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1382
    const-string v29, ""

    const-string v30, "end_time"

    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1384
    const-string v29, ""

    const-string/jumbo v30, "volume"

    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/MediaVideoItem;->getVolume()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1386
    const-string v29, ""

    const-string v30, "muted"

    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/MediaVideoItem;->isMuted()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1388
    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/MediaVideoItem;->getAudioWaveformFilename()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_16f

    .line 1389
    const-string v29, ""

    const-string/jumbo v30, "waveform"

    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/MediaVideoItem;->getAudioWaveformFilename()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1397
    .end local v16           #mvi:Landroid/media/videoeditor/MediaVideoItem;
    :cond_16f
    :goto_16f
    invoke-virtual {v15}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v21

    .line 1398
    .local v21, overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_32d

    .line 1399
    const-string v29, ""

    const-string v30, "overlays"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1400
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_18a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_320

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/media/videoeditor/Overlay;

    .line 1401
    .local v19, overlay:Landroid/media/videoeditor/Overlay;
    const-string v29, ""

    const-string v30, "overlay"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1402
    const-string v29, ""

    const-string v30, "id"

    invoke-virtual/range {v19 .. v19}, Landroid/media/videoeditor/Overlay;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1403
    const-string v29, ""

    const-string/jumbo v30, "type"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1405
    const-string v29, ""

    const-string v30, "begin_time"

    invoke-virtual/range {v19 .. v19}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1407
    const-string v29, ""

    const-string v30, "duration"

    invoke-virtual/range {v19 .. v19}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1409
    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/media/videoeditor/OverlayFrame;

    move/from16 v29, v0

    if-eqz v29, :cond_2a5

    .line 1410
    move-object/from16 v0, v19

    check-cast v0, Landroid/media/videoeditor/OverlayFrame;

    move-object/from16 v20, v0

    .line 1411
    .local v20, overlayFrame:Landroid/media/videoeditor/OverlayFrame;
    invoke-virtual/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->getPath()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/OverlayFrame;->save(Ljava/lang/String;)Ljava/lang/String;

    .line 1412
    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getBitmapImageFileName()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_22e

    .line 1413
    const-string v29, ""

    const-string v30, "filename"

    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getBitmapImageFileName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1417
    :cond_22e
    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_2a5

    .line 1418
    const-string v29, ""

    const-string v30, "overlay_rgb_filename"

    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1421
    const-string v29, ""

    const-string v30, "overlay_frame_width"

    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getOverlayFrameWidth()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1423
    const-string v29, ""

    const-string v30, "overlay_frame_height"

    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getOverlayFrameHeight()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1425
    const-string v29, ""

    const-string/jumbo v30, "resized_RGBframe_width"

    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeWidth()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1427
    const-string v29, ""

    const-string/jumbo v30, "resized_RGBframe_height"

    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeHeight()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1437
    .end local v20           #overlayFrame:Landroid/media/videoeditor/OverlayFrame;
    :cond_2a5
    const-string v29, ""

    const-string v30, "overlay_user_attributes"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1438
    invoke-virtual/range {v19 .. v19}, Landroid/media/videoeditor/Overlay;->getUserAttributes()Ljava/util/Map;

    move-result-object v26

    .line 1439
    .local v26, userAttributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_2be
    :goto_2be
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_304

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1440
    .local v17, name:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 1441
    .local v27, value:Ljava/lang/String;
    if-eqz v27, :cond_2be

    .line 1442
    const-string v29, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v17

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2be

    .line 1392
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v17           #name:Ljava/lang/String;
    .end local v19           #overlay:Landroid/media/videoeditor/Overlay;
    .end local v21           #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    .end local v26           #userAttributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27           #value:Ljava/lang/String;
    :cond_2e4
    move-object v0, v15

    instance-of v0, v0, Landroid/media/videoeditor/MediaImageItem;

    move/from16 v29, v0

    if-eqz v29, :cond_16f

    .line 1393
    const-string v29, ""

    const-string v30, "duration"

    invoke-virtual {v15}, Landroid/media/videoeditor/MediaItem;->getTimelineDuration()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_16f

    .line 1445
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v19       #overlay:Landroid/media/videoeditor/Overlay;
    .restart local v21       #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    .restart local v26       #userAttributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_304
    const-string v29, ""

    const-string v30, "overlay_user_attributes"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1447
    const-string v29, ""

    const-string v30, "overlay"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_18a

    .line 1449
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v19           #overlay:Landroid/media/videoeditor/Overlay;
    .end local v26           #userAttributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_320
    const-string v29, ""

    const-string v30, "overlays"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1452
    :cond_32d
    invoke-virtual {v15}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v9

    .line 1453
    .local v9, effects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_557

    .line 1454
    const-string v29, ""

    const-string v30, "effects"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1455
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v9           #effects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .end local v15           #mediaItem:Landroid/media/videoeditor/MediaItem;
    .local v12, i$:Ljava/util/Iterator;
    :goto_348
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_54a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/videoeditor/Effect;

    .line 1456
    .local v8, effect:Landroid/media/videoeditor/Effect;
    const-string v29, ""

    const-string v30, "effect"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1457
    const-string v29, ""

    const-string v30, "id"

    invoke-virtual {v8}, Landroid/media/videoeditor/Effect;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1458
    const-string v29, ""

    const-string/jumbo v30, "type"

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1460
    const-string v29, ""

    const-string v30, "begin_time"

    invoke-virtual {v8}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1462
    const-string v29, ""

    const-string v30, "duration"

    invoke-virtual {v8}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1464
    move-object v0, v8

    instance-of v0, v0, Landroid/media/videoeditor/EffectColor;

    move/from16 v29, v0

    if-eqz v29, :cond_41a

    .line 1465
    move-object v0, v8

    check-cast v0, Landroid/media/videoeditor/EffectColor;

    move-object v7, v0

    .line 1466
    .local v7, colorEffect:Landroid/media/videoeditor/EffectColor;
    const-string v29, ""

    const-string v30, "color_type"

    invoke-virtual {v7}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1468
    invoke-virtual {v7}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_3f4

    invoke-virtual {v7}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_40b

    .line 1470
    :cond_3f4
    const-string v29, ""

    const-string v30, "color_value"

    invoke-virtual {v7}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1505
    .end local v7           #colorEffect:Landroid/media/videoeditor/EffectColor;
    :cond_40b
    :goto_40b
    const-string v29, ""

    const-string v30, "effect"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_348

    .line 1473
    :cond_41a
    move-object v0, v8

    instance-of v0, v0, Landroid/media/videoeditor/EffectKenBurns;

    move/from16 v29, v0

    if-eqz v29, :cond_40b

    .line 1474
    move-object v0, v8

    check-cast v0, Landroid/media/videoeditor/EffectKenBurns;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/media/videoeditor/EffectKenBurns;->getStartRect()Landroid/graphics/Rect;

    move-result-object v23

    .line 1475
    .local v23, startRect:Landroid/graphics/Rect;
    const-string v29, ""

    const-string/jumbo v30, "start_l"

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1477
    const-string v29, ""

    const-string/jumbo v30, "start_t"

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1479
    const-string v29, ""

    const-string/jumbo v30, "start_r"

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1481
    const-string v29, ""

    const-string/jumbo v30, "start_b"

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1484
    move-object v0, v8

    check-cast v0, Landroid/media/videoeditor/EffectKenBurns;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/media/videoeditor/EffectKenBurns;->getEndRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 1485
    .local v10, endRect:Landroid/graphics/Rect;
    const-string v29, ""

    const-string v30, "end_l"

    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1487
    const-string v29, ""

    const-string v30, "end_t"

    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1489
    const-string v29, ""

    const-string v30, "end_r"

    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1491
    const-string v29, ""

    const-string v30, "end_b"

    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1493
    invoke-virtual {v8}, Landroid/media/videoeditor/Effect;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v14

    .line 1494
    .local v14, mItem:Landroid/media/videoeditor/MediaItem;
    move-object v0, v14

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_533

    .line 1495
    const-string v29, ""

    const-string v30, "is_image_clip_generated"

    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1497
    const-string v29, ""

    const-string v30, "generated_image_clip"

    check-cast v14, Landroid/media/videoeditor/MediaImageItem;

    .end local v14           #mItem:Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v14}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_40b

    .line 1500
    .restart local v14       #mItem:Landroid/media/videoeditor/MediaItem;
    :cond_533
    const-string v29, ""

    const-string v30, "is_image_clip_generated"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_40b

    .line 1507
    .end local v8           #effect:Landroid/media/videoeditor/Effect;
    .end local v10           #endRect:Landroid/graphics/Rect;
    .end local v14           #mItem:Landroid/media/videoeditor/MediaItem;
    .end local v23           #startRect:Landroid/graphics/Rect;
    :cond_54a
    const-string v29, ""

    const-string v30, "effects"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1510
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_557
    const-string v29, ""

    const-string v30, "media_item"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_7d

    .line 1512
    .end local v21           #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :cond_566
    const-string v29, ""

    const-string v30, "media_items"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1514
    const-string v29, ""

    const-string/jumbo v30, "transitions"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1516
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_58b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_6ef

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/media/videoeditor/Transition;

    .line 1517
    .local v25, transition:Landroid/media/videoeditor/Transition;
    const-string v29, ""

    const-string/jumbo v30, "transition"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1518
    const-string v29, ""

    const-string v30, "id"

    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/Transition;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1519
    const-string v29, ""

    const-string/jumbo v30, "type"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1520
    const-string v29, ""

    const-string v30, "duration"

    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1521
    const-string v29, ""

    const-string v30, "behavior"

    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/Transition;->getBehavior()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1522
    const-string v29, ""

    const-string v30, "is_transition_generated"

    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/Transition;->isGenerated()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1524
    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/Transition;->isGenerated()Z

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_636

    .line 1525
    const-string v29, ""

    const-string v30, "generated_transition_clip"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/media/videoeditor/Transition;->mFilename:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1527
    :cond_636
    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v4

    .line 1528
    .local v4, afterMediaItem:Landroid/media/videoeditor/MediaItem;
    if-eqz v4, :cond_64f

    .line 1529
    const-string v29, ""

    const-string v30, "after_media_item"

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1532
    :cond_64f
    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v6

    .line 1533
    .local v6, beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    if-eqz v6, :cond_668

    .line 1534
    const-string v29, ""

    const-string v30, "before_media_item"

    invoke-virtual {v6}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1537
    :cond_668
    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/media/videoeditor/TransitionSliding;

    move/from16 v29, v0

    if-eqz v29, :cond_699

    .line 1538
    const-string v29, ""

    const-string v30, "direction"

    check-cast v25, Landroid/media/videoeditor/TransitionSliding;

    .end local v25           #transition:Landroid/media/videoeditor/Transition;
    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/TransitionSliding;->getDirection()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1550
    :cond_689
    :goto_689
    const-string v29, ""

    const-string/jumbo v30, "transition"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_58b

    .line 1540
    .restart local v25       #transition:Landroid/media/videoeditor/Transition;
    :cond_699
    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/media/videoeditor/TransitionAlpha;

    move/from16 v29, v0

    if-eqz v29, :cond_689

    .line 1541
    move-object/from16 v0, v25

    check-cast v0, Landroid/media/videoeditor/TransitionAlpha;

    move-object/from16 v24, v0

    .line 1542
    .local v24, ta:Landroid/media/videoeditor/TransitionAlpha;
    const-string v29, ""

    const-string v30, "blending"

    invoke-virtual/range {v24 .. v24}, Landroid/media/videoeditor/TransitionAlpha;->getBlendingPercent()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1544
    const-string v29, ""

    const-string v30, "invert"

    invoke-virtual/range {v24 .. v24}, Landroid/media/videoeditor/TransitionAlpha;->isInvert()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1546
    invoke-virtual/range {v24 .. v24}, Landroid/media/videoeditor/TransitionAlpha;->getMaskFilename()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_689

    .line 1547
    const-string v29, ""

    const-string v30, "mask"

    invoke-virtual/range {v24 .. v24}, Landroid/media/videoeditor/TransitionAlpha;->getMaskFilename()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_689

    .line 1552
    .end local v4           #afterMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v6           #beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v24           #ta:Landroid/media/videoeditor/TransitionAlpha;
    .end local v25           #transition:Landroid/media/videoeditor/Transition;
    :cond_6ef
    const-string v29, ""

    const-string/jumbo v30, "transitions"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1553
    const-string v29, ""

    const-string v30, "audio_tracks"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_714
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_84d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/videoeditor/AudioTrack;

    .line 1555
    .local v5, at:Landroid/media/videoeditor/AudioTrack;
    const-string v29, ""

    const-string v30, "audio_track"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1556
    const-string v29, ""

    const-string v30, "id"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1557
    const-string v29, ""

    const-string v30, "filename"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getFilename()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1558
    const-string v29, ""

    const-string/jumbo v30, "start_time"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getStartTime()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1559
    const-string v29, ""

    const-string v30, "begin_time"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getBoundaryBeginTime()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1560
    const-string v29, ""

    const-string v30, "end_time"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getBoundaryEndTime()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1561
    const-string v29, ""

    const-string/jumbo v30, "volume"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getVolume()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1562
    const-string v29, ""

    const-string v30, "ducking_enabled"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->isDuckingEnabled()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1564
    const-string v29, ""

    const-string v30, "ducking_volume"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getDuckedTrackVolume()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1566
    const-string v29, ""

    const-string v30, "ducking_threshold"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getDuckingThreshhold()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1568
    const-string v29, ""

    const-string v30, "muted"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->isMuted()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1569
    const-string v29, ""

    const-string v30, "loop"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->isLooping()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1570
    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getAudioWaveformFilename()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_83e

    .line 1571
    const-string v29, ""

    const-string/jumbo v30, "waveform"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getAudioWaveformFilename()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1575
    :cond_83e
    const-string v29, ""

    const-string v30, "audio_track"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_714

    .line 1577
    .end local v5           #at:Landroid/media/videoeditor/AudioTrack;
    :cond_84d
    const-string v29, ""

    const-string v30, "audio_tracks"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1579
    const-string v29, ""

    const-string/jumbo v30, "project"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1580
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1585
    new-instance v18, Ljava/io/FileOutputStream;

    new-instance v29, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->getPath()Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "videoeditor.xml"

    invoke-direct/range {v29 .. v31}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1587
    .local v18, out:Ljava/io/FileOutputStream;
    invoke-virtual/range {v28 .. v28}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1588
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    .line 1589
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    .line 1590
    return-void
.end method

.method public setAspectRatio(I)V
    .registers 10
    .parameter "aspectRatio"

    .prologue
    .line 1596
    iput p1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAspectRatio:I

    .line 1600
    iget-object v6, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 1602
    iget-object v6, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/videoeditor/Transition;

    .line 1603
    .local v5, transition:Landroid/media/videoeditor/Transition;
    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->invalidate()V

    goto :goto_e

    .line 1606
    .end local v5           #transition:Landroid/media/videoeditor/Transition;
    :cond_1e
    iget-object v6, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1608
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/videoeditor/MediaItem;>;"
    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 1609
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/videoeditor/MediaItem;

    .line 1610
    .local v4, t:Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v3

    .line 1611
    .local v3, overlayList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/Overlay;

    .line 1613
    .local v2, overlay:Landroid/media/videoeditor/Overlay;
    check-cast v2, Landroid/media/videoeditor/OverlayFrame;

    .end local v2           #overlay:Landroid/media/videoeditor/Overlay;
    invoke-virtual {v2}, Landroid/media/videoeditor/OverlayFrame;->invalidateGeneratedFiles()V

    goto :goto_38

    .line 1616
    .end local v3           #overlayList:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    .end local v4           #t:Landroid/media/videoeditor/MediaItem;
    :cond_4a
    return-void
.end method

.method public startPreview(Landroid/view/SurfaceHolder;JJZILandroid/media/videoeditor/VideoEditor$PreviewProgressListener;)V
    .registers 20
    .parameter "surfaceHolder"
    .parameter "fromMs"
    .parameter "toMs"
    .parameter "loop"
    .parameter "callbackAfterFrameCount"
    .parameter "listener"

    .prologue
    .line 1625
    if-nez p1, :cond_8

    .line 1626
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1629
    :cond_8
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 1630
    .local v1, surface:Landroid/view/Surface;
    if-nez v1, :cond_16

    .line 1631
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface could not be retrieved from surface holder"

    .end local v1           #surface:Landroid/view/Surface;
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1634
    .restart local v1       #surface:Landroid/view/Surface;
    :cond_16
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1635
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Surface is not valid"

    .end local v1           #surface:Landroid/view/Surface;
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1638
    .restart local v1       #surface:Landroid/view/Surface;
    :cond_24
    if-nez p8, :cond_2c

    .line 1639
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1642
    :cond_2c
    iget-wide v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    cmp-long v0, p2, v2

    if-ltz v0, :cond_3a

    .line 1643
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested time not correct"

    .end local v1           #surface:Landroid/view/Surface;
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1646
    .restart local v1       #surface:Landroid/view/Surface;
    :cond_3a
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gez v0, :cond_48

    .line 1647
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested time not correct"

    .end local v1           #surface:Landroid/view/Surface;
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1650
    .restart local v1       #surface:Landroid/view/Surface;
    :cond_48
    const/4 v10, 0x0

    .line 1651
    .local v10, semAcquireDone:Z
    iget-boolean v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    if-nez v0, :cond_a4

    .line 1653
    const-wide/16 v2, 0x1f4

    :try_start_4f
    invoke-direct {p0, v2, v3}, Landroid/media/videoeditor/VideoEditorImpl;->lock(J)Z

    move-result v10

    .line 1654
    if-nez v10, :cond_73

    .line 1655
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Timeout waiting for semaphore"

    .end local v1           #surface:Landroid/view/Surface;
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5d
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_5d} :catch_5d

    .line 1672
    :catch_5d
    move-exception v0

    move-object v9, v0

    .line 1673
    .local v9, ex:Ljava/lang/InterruptedException;
    const-string v0, "VideoEditorImpl"

    const-string v1, "The thread was interrupted"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1674
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The thread was interrupted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1658
    .end local v9           #ex:Ljava/lang/InterruptedException;
    .restart local v1       #surface:Landroid/view/Surface;
    :cond_73
    :try_start_73
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-nez v0, :cond_7f

    .line 1659
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The video editor is not initialized"

    .end local v1           #surface:Landroid/view/Surface;
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1662
    .restart local v1       #surface:Landroid/view/Surface;
    :cond_7f
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a3

    .line 1663
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    .line 1664
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->previewStoryBoard(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V

    .line 1666
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->doPreview(Landroid/view/Surface;JJZILandroid/media/videoeditor/VideoEditor$PreviewProgressListener;)V
    :try_end_a3
    .catch Ljava/lang/InterruptedException; {:try_start_73 .. :try_end_a3} :catch_5d

    .line 1679
    :cond_a3
    return-void

    .line 1677
    :cond_a4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preview already in progress"

    .end local v1           #surface:Landroid/view/Surface;
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopPreview()J
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1685
    const-wide/16 v0, 0x0

    .line 1686
    .local v0, result:J
    iget-boolean v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    if-eqz v2, :cond_1b

    .line 1688
    :try_start_7
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->stopPreview()J
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_14

    move-result-wide v0

    .line 1693
    iput-boolean v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    .line 1694
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    move-wide v2, v0

    .line 1699
    :goto_13
    return-wide v2

    .line 1693
    :catchall_14
    move-exception v2

    iput-boolean v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    .line 1694
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    throw v2

    .line 1699
    :cond_1b
    const-wide/16 v2, 0x0

    goto :goto_13
.end method

.method updateTimelineDuration()V
    .registers 1

    .prologue
    .line 548
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 549
    return-void
.end method
