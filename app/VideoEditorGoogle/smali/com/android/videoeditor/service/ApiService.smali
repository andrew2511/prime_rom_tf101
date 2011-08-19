.class public Lcom/android/videoeditor/service/ApiService;
.super Landroid/app/Service;
.source "ApiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/service/ApiService$ServiceThread;,
        Lcom/android/videoeditor/service/ApiService$ApiServiceListener;,
        Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;
    }
.end annotation


# static fields
.field public static final ACTION_NO_FRAME_UPDATE:I = 0x67

.field public static final ACTION_UPDATE_FRAME:I = 0x66

.field private static final DEFAULT_AUDIO_TRACK_VOLUME:I = 0x32

.field private static final DUCK_THRESHOLD:I = 0x14

.field private static final DUCK_TRACK_VOLUME:I = 0x41

.field private static final OP_AUDIO_TRACK_ADD:I = 0x1f4

.field private static final OP_AUDIO_TRACK_EXTRACT_AUDIO_WAVEFORM:I = 0x1fc

.field private static final OP_AUDIO_TRACK_EXTRACT_AUDIO_WAVEFORM_STATUS:I = 0x1fd

.field private static final OP_AUDIO_TRACK_REMOVE:I = 0x1f5

.field private static final OP_AUDIO_TRACK_SET_BOUNDARIES:I = 0x1f9

.field private static final OP_AUDIO_TRACK_SET_DUCK:I = 0x1fb

.field private static final OP_AUDIO_TRACK_SET_LOOP:I = 0x1fa

.field private static final OP_AUDIO_TRACK_SET_MUTE:I = 0x1f7

.field private static final OP_AUDIO_TRACK_SET_VOLUME:I = 0x1f6

.field private static final OP_EFFECT_ADD_COLOR:I = 0xc8

.field private static final OP_EFFECT_ADD_IMAGE_KEN_BURNS:I = 0xc9

.field private static final OP_EFFECT_REMOVE:I = 0xca

.field private static final OP_MEDIA_ITEM_ADD_IMAGE_URI:I = 0x65

.field private static final OP_MEDIA_ITEM_ADD_VIDEO_URI:I = 0x64

.field private static final OP_MEDIA_ITEM_EXTRACT_AUDIO_WAVEFORM:I = 0x6d

.field private static final OP_MEDIA_ITEM_EXTRACT_AUDIO_WAVEFORM_STATUS:I = 0x6e

.field private static final OP_MEDIA_ITEM_GET_THUMBNAIL:I = 0x6f

.field private static final OP_MEDIA_ITEM_GET_THUMBNAILS:I = 0x70

.field private static final OP_MEDIA_ITEM_LOAD:I = 0x71

.field private static final OP_MEDIA_ITEM_LOAD_STATUS:I = 0x72

.field private static final OP_MEDIA_ITEM_MOVE:I = 0x66

.field private static final OP_MEDIA_ITEM_REMOVE:I = 0x67

.field private static final OP_MEDIA_ITEM_SET_BOUNDARIES:I = 0x6a

.field private static final OP_MEDIA_ITEM_SET_DURATION:I = 0x69

.field private static final OP_MEDIA_ITEM_SET_MUTE:I = 0x6c

.field private static final OP_MEDIA_ITEM_SET_RENDERING_MODE:I = 0x68

.field private static final OP_MEDIA_ITEM_SET_VOLUME:I = 0x6b

.field private static final OP_OVERLAY_ADD:I = 0x190

.field private static final OP_OVERLAY_REMOVE:I = 0x191

.field private static final OP_OVERLAY_SET_ATTRIBUTES:I = 0x194

.field private static final OP_OVERLAY_SET_DURATION:I = 0x193

.field private static final OP_OVERLAY_SET_START_TIME:I = 0x192

.field private static final OP_TRANSITION_GET_THUMBNAIL:I = 0x132

.field private static final OP_TRANSITION_INSERT_ALPHA:I = 0x12c

.field private static final OP_TRANSITION_INSERT_CROSSFADE:I = 0x12d

.field private static final OP_TRANSITION_INSERT_FADE_BLACK:I = 0x12e

.field private static final OP_TRANSITION_INSERT_SLIDING:I = 0x12f

.field private static final OP_TRANSITION_REMOVE:I = 0x130

.field private static final OP_TRANSITION_SET_DURATION:I = 0x131

.field private static final OP_VIDEO_EDITOR_APPLY_THEME:I = 0xb

.field private static final OP_VIDEO_EDITOR_CANCEL_EXPORT:I = 0x5

.field private static final OP_VIDEO_EDITOR_CREATE:I = 0x1

.field private static final OP_VIDEO_EDITOR_DELETE:I = 0x9

.field private static final OP_VIDEO_EDITOR_EXPORT:I = 0x4

.field private static final OP_VIDEO_EDITOR_EXPORT_STATUS:I = 0x6

.field private static final OP_VIDEO_EDITOR_GENERATE_PREVIEW_PROGRESS:I = 0xc

.field private static final OP_VIDEO_EDITOR_LOAD:I = 0x2

.field private static final OP_VIDEO_EDITOR_LOAD_PROJECTS:I = 0xd

.field private static final OP_VIDEO_EDITOR_RELEASE:I = 0x8

.field private static final OP_VIDEO_EDITOR_SAVE:I = 0x3

.field private static final OP_VIDEO_EDITOR_SET_ASPECT_RATIO:I = 0xa

.field private static final PARAM_ACTION:Ljava/lang/String; = "action"

.field private static final PARAM_ASPECT_RATIO:Ljava/lang/String; = "aspect_ratio"

.field private static final PARAM_ATTRIBUTES:Ljava/lang/String; = "attributes"

.field private static final PARAM_BEGIN_BOUNDARY:Ljava/lang/String; = "b_boundary"

.field private static final PARAM_BITRATE:Ljava/lang/String; = "bitrate"

.field private static final PARAM_COUNT:Ljava/lang/String; = "count"

.field private static final PARAM_DUCK:Ljava/lang/String; = "duck"

.field private static final PARAM_DURATION:Ljava/lang/String; = "duration"

.field private static final PARAM_EFFECT_PARAM:Ljava/lang/String; = "e_param"

.field private static final PARAM_EFFECT_TYPE:Ljava/lang/String; = "e_type"

.field private static final PARAM_END_BOUNDARY:Ljava/lang/String; = "e_boundary"

.field private static final PARAM_END_TIME:Ljava/lang/String; = "e_time"

.field private static final PARAM_EXCEPTION:Ljava/lang/String; = "ex"

.field private static final PARAM_FILENAME:Ljava/lang/String; = "filename"

.field private static final PARAM_HEIGHT:Ljava/lang/String; = "height"

.field private static final PARAM_INTENT:Ljava/lang/String; = "req_intent"

.field private static final PARAM_LOOP:Ljava/lang/String; = "loop"

.field private static final PARAM_MEDIA_ITEM_END_RECT:Ljava/lang/String; = "end_rect"

.field private static final PARAM_MEDIA_ITEM_RENDERING_MODE:Ljava/lang/String; = "rm"

.field private static final PARAM_MEDIA_ITEM_START_RECT:Ljava/lang/String; = "start_rect"

.field private static final PARAM_MOVIES_FILENAMES:Ljava/lang/String; = "movies"

.field private static final PARAM_MOVIE_URI:Ljava/lang/String; = "uri"

.field private static final PARAM_MUTE:Ljava/lang/String; = "mute"

.field private static final PARAM_OP:Ljava/lang/String; = "op"

.field private static final PARAM_PHOTOS_FILENAMES:Ljava/lang/String; = "images"

.field private static final PARAM_PROGRESS_VALUE:Ljava/lang/String; = "prog_value"

.field private static final PARAM_PROJECT_NAME:Ljava/lang/String; = "name"

.field private static final PARAM_PROJECT_PATH:Ljava/lang/String; = "project"

.field private static final PARAM_RELATIVE_STORYBOARD_ITEM_ID:Ljava/lang/String; = "r_item_id"

.field private static final PARAM_REQUEST_ID:Ljava/lang/String; = "rid"

.field private static final PARAM_START_TIME:Ljava/lang/String; = "s_time"

.field private static final PARAM_STORYBOARD_ITEM_ID:Ljava/lang/String; = "item_id"

.field private static final PARAM_THEME:Ljava/lang/String; = "theme"

.field private static final PARAM_TRANSITION_BEHAVIOR:Ljava/lang/String; = "behavior"

.field private static final PARAM_TRANSITION_BLENDING:Ljava/lang/String; = "t_blending"

.field private static final PARAM_TRANSITION_DIRECTION:Ljava/lang/String; = "t_dir"

.field private static final PARAM_TRANSITION_INVERT:Ljava/lang/String; = "t_invert"

.field private static final PARAM_TRANSITION_MASK:Ljava/lang/String; = "t_mask"

.field private static final PARAM_VOLUME:Ljava/lang/String; = "volume"

.field private static final PARAM_WIDTH:Ljava/lang/String; = "width"

.field private static final TAG:Ljava/lang/String; = "VEApiService"

.field private static mGeneratePreviewListener:Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;

.field private static final mIntentPool:Lcom/android/videoeditor/service/IntentPool;

.field private static final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/ApiService$ApiServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPendingIntents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private static mVideoEditor:Landroid/media/videoeditor/VideoEditor;

.field private static mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;


# instance fields
.field private mAudioThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

.field private mHandler:Landroid/os/Handler;

.field private final mStopRunnable:Ljava/lang/Runnable;

.field private mThumbnailThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

.field private mVideoThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/videoeditor/service/ApiService;->mPendingIntents:Ljava/util/Map;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    .line 197
    new-instance v0, Lcom/android/videoeditor/service/IntentPool;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/IntentPool;-><init>(I)V

    sput-object v0, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 207
    new-instance v0, Lcom/android/videoeditor/service/ApiService$1;

    invoke-direct {v0, p0}, Lcom/android/videoeditor/service/ApiService$1;-><init>(Lcom/android/videoeditor/service/ApiService;)V

    iput-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mStopRunnable:Ljava/lang/Runnable;

    .line 5389
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mPendingIntents:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/videoeditor/service/IntentPool;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p6}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/videoeditor/service/ApiService;)Lcom/android/videoeditor/service/ApiService$ServiceThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mVideoThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/videoeditor/service/ApiService;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/videoeditor/service/ApiService;->exportToGallery(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addAudioTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "id"
    .parameter "uri"
    .parameter "loop"

    .prologue
    .line 1679
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1680
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1681
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1682
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1683
    const-string v1, "filename"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1684
    const-string v1, "loop"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1686
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1687
    return-void
.end method

.method public static addEffectColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "effectId"
    .parameter "startTimeMs"
    .parameter "durationMs"
    .parameter "type"
    .parameter "param"

    .prologue
    .line 1502
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1503
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1504
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1505
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1506
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1507
    const-string v1, "s_time"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1508
    const-string v1, "duration"

    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1509
    const-string v1, "e_type"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1510
    const-string v1, "e_param"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1512
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1513
    return-void
.end method

.method public static addEffectKenBurns(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "effectId"
    .parameter "startTimeMs"
    .parameter "durationMs"
    .parameter "startRect"
    .parameter "endRect"

    .prologue
    .line 1530
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1531
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xc9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1532
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1533
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1534
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1535
    const-string v1, "s_time"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1536
    const-string v1, "duration"

    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1537
    const-string v1, "start_rect"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1538
    const-string v1, "end_rect"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1540
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1541
    return-void
.end method

.method public static addMediaItemImageUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IJLjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "afterMediaItemId"
    .parameter "uri"
    .parameter "renderingMode"
    .parameter "durationMs"
    .parameter "themeId"

    .prologue
    .line 1043
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1044
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1045
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1046
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1047
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1048
    const-string v1, "filename"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1049
    const-string v1, "rm"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1050
    const-string v1, "duration"

    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1051
    const-string v1, "theme"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1053
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1054
    return-void
.end method

.method public static addMediaItemVideoUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "afterMediaItemId"
    .parameter "uri"
    .parameter "renderingMode"
    .parameter "themeId"

    .prologue
    .line 1016
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1017
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1018
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1019
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1020
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1021
    const-string v1, "filename"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1022
    const-string v1, "rm"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1023
    const-string v1, "theme"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1025
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1026
    return-void
.end method

.method public static addOverlay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;JJ)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "overlayId"
    .parameter "userAttributes"
    .parameter "startTimeMs"
    .parameter "durationMs"

    .prologue
    .line 1574
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1575
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1576
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1577
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1578
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1579
    const-string v1, "s_time"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1580
    const-string v1, "duration"

    invoke-virtual {v0, v1, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1581
    const-string v1, "attributes"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1583
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1584
    return-void
.end method

.method public static applyTheme(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "theme"

    .prologue
    .line 912
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 913
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 914
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 915
    const-string v1, "theme"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 917
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 918
    return-void
.end method

.method private applyThemeAfterMove(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Landroid/media/videoeditor/MediaItem;ILandroid/media/videoeditor/Transition;Landroid/media/videoeditor/Transition;)V
    .locals 9
    .parameter "videoEditor"
    .parameter "themeId"
    .parameter "movedMediaItem"
    .parameter "originalItemPosition"
    .parameter "beginTransition"
    .parameter "endTransition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5297
    invoke-interface {p1}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v2

    .line 5298
    .local v2, mediaItems:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 5299
    .local v1, mediaItemCount:I
    if-nez v1, :cond_0

    .line 5339
    .end local p4
    .end local p5
    :goto_0
    return-void

    .line 5303
    .restart local p4
    .restart local p5
    :cond_0
    invoke-virtual {p0}, Lcom/android/videoeditor/service/ApiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 5304
    .local v0, context:Landroid/content/Context;
    invoke-static {v0, p2}, Lcom/android/videoeditor/service/MovieTheme;->getTheme(Landroid/content/Context;Ljava/lang/String;)Lcom/android/videoeditor/service/MovieTheme;

    move-result-object v4

    .line 5306
    .local v4, theme:Lcom/android/videoeditor/service/MovieTheme;
    if-nez p4, :cond_2

    .line 5307
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTheme;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eqz p5, :cond_1

    .line 5308
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTheme;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    .end local p4
    check-cast p4, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v6, v0, v7, p4}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v5

    .line 5310
    .local v5, transition:Landroid/media/videoeditor/Transition;
    invoke-interface {p1, v5}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 5338
    .end local v5           #transition:Landroid/media/videoeditor/Transition;
    .end local p5
    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/videoeditor/service/ApiService;->applyThemeToMediaItem(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Landroid/media/videoeditor/MediaItem;)V

    goto :goto_0

    .line 5312
    .restart local p4
    .restart local p5
    :cond_2
    const/4 v6, 0x1

    sub-int v6, v1, v6

    if-ne p4, v6, :cond_3

    .line 5313
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTheme;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eqz p6, :cond_1

    .line 5314
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTheme;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v6

    const/4 v7, 0x1

    sub-int v7, v1, v7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    .end local p4
    check-cast p4, Landroid/media/videoeditor/MediaItem;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, p4, v7}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v5

    .line 5316
    .restart local v5       #transition:Landroid/media/videoeditor/Transition;
    invoke-interface {p1, v5}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    goto :goto_1

    .line 5319
    .end local v5           #transition:Landroid/media/videoeditor/Transition;
    .restart local p4
    :cond_3
    invoke-interface {v2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 5320
    .local v3, newPosition:I
    if-le v3, p4, :cond_4

    .line 5321
    if-eqz p6, :cond_1

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTheme;->getMidTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 5322
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTheme;->getMidTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v6

    const/4 v7, 0x1

    sub-int v7, p4, v7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    .end local p5
    check-cast p5, Landroid/media/videoeditor/MediaItem;

    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    .end local p4
    check-cast p4, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v6, v0, p5, p4}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v5

    .line 5325
    .restart local v5       #transition:Landroid/media/videoeditor/Transition;
    invoke-interface {p1, v5}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    goto :goto_1

    .line 5328
    .end local v5           #transition:Landroid/media/videoeditor/Transition;
    .restart local p4
    .restart local p5
    :cond_4
    if-eqz p5, :cond_1

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTheme;->getMidTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 5329
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTheme;->getMidTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v6

    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    .end local p5
    check-cast p5, Landroid/media/videoeditor/MediaItem;

    add-int/lit8 v7, p4, 0x1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    .end local p4
    check-cast p4, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v6, v0, p5, p4}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v5

    .line 5332
    .restart local v5       #transition:Landroid/media/videoeditor/Transition;
    invoke-interface {p1, v5}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    goto :goto_1
.end method

.method private applyThemeAfterRemove(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;ILandroid/media/videoeditor/Transition;Landroid/media/videoeditor/Transition;)Landroid/media/videoeditor/Transition;
    .locals 9
    .parameter "videoEditor"
    .parameter "themeId"
    .parameter "removedItemPosition"
    .parameter "beginTransition"
    .parameter "endTransition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5249
    invoke-interface {p1}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v2

    .line 5250
    .local v2, mediaItems:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 5251
    .local v1, mediaItemCount:I
    if-nez v1, :cond_0

    move-object v5, v7

    .line 5281
    .end local p0
    :goto_0
    return-object v5

    .line 5255
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lcom/android/videoeditor/service/ApiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 5256
    .local v0, context:Landroid/content/Context;
    invoke-static {v0, p2}, Lcom/android/videoeditor/service/MovieTheme;->getTheme(Landroid/content/Context;Ljava/lang/String;)Lcom/android/videoeditor/service/MovieTheme;

    move-result-object v3

    .line 5258
    .local v3, theme:Lcom/android/videoeditor/service/MovieTheme;
    const/4 v4, 0x0

    .line 5259
    .local v4, transition:Landroid/media/videoeditor/Transition;
    if-nez p3, :cond_2

    .line 5260
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieTheme;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    if-eqz v5, :cond_1

    if-eqz p4, :cond_1

    .line 5261
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieTheme;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v5, v0, v7, p0}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v4

    .line 5263
    invoke-interface {p1, v4}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    :cond_1
    :goto_1
    move-object v5, v4

    .line 5281
    goto :goto_0

    .line 5265
    .restart local p0
    :cond_2
    if-ne p3, v1, :cond_3

    .line 5266
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieTheme;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    if-eqz v5, :cond_1

    if-eqz p5, :cond_1

    .line 5267
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieTheme;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    sub-int v6, v1, v8

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v5, v0, p0, v7}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v4

    .line 5269
    invoke-interface {p1, v4}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    goto :goto_1

    .line 5272
    .restart local p0
    :cond_3
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieTheme;->getMidTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    if-eqz v5, :cond_1

    if-eqz p4, :cond_1

    .line 5273
    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieTheme;->getMidTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v6

    sub-int v5, p3, v8

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/videoeditor/MediaItem;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v6, v0, p0, v5}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v4

    .line 5277
    invoke-interface {p1, v4}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    goto :goto_1
.end method

.method private applyThemeToMediaItem(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Landroid/media/videoeditor/MediaItem;)V
    .locals 37
    .parameter "videoEditor"
    .parameter "themeId"
    .parameter "mediaItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5131
    invoke-interface/range {p1 .. p1}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v28

    .line 5132
    .local v28, mediaItems:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v29

    .line 5133
    .local v29, mediaItemsCount:I
    if-nez v29, :cond_1

    .line 5233
    .end local p1
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 5138
    .restart local p1
    .restart local p2
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v20

    .line 5139
    .local v20, beginTransition:Landroid/media/videoeditor/Transition;
    invoke-virtual/range {p3 .. p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v23

    .line 5141
    .local v23, endTransition:Landroid/media/videoeditor/Transition;
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    .line 5142
    .local v21, context:Landroid/content/Context;
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/videoeditor/service/MovieTheme;->getTheme(Landroid/content/Context;Ljava/lang/String;)Lcom/android/videoeditor/service/MovieTheme;

    move-result-object v35

    .line 5144
    .local v35, theme:Lcom/android/videoeditor/service/MovieTheme;
    const/4 v4, 0x0

    move-object/from16 v0, v28

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/media/videoeditor/MediaItem;

    .line 5145
    .local v24, firstMediaItem:Landroid/media/videoeditor/MediaItem;
    if-nez v20, :cond_2

    .line 5147
    invoke-virtual/range {v35 .. v35}, Lcom/android/videoeditor/service/MovieTheme;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v19

    .line 5148
    .local v19, beginMovieTransition:Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v19, :cond_2

    .line 5149
    move-object/from16 v0, v24

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_2

    .line 5150
    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object v2, v4

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 5157
    .end local v19           #beginMovieTransition:Lcom/android/videoeditor/service/MovieTransition;
    :cond_2
    invoke-virtual/range {v35 .. v35}, Lcom/android/videoeditor/service/MovieTheme;->getMidTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v31

    .line 5158
    .local v31, midMovieTransition:Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v31, :cond_4

    .line 5159
    const/16 v25, 0x0

    .local v25, i:I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v29

    if-ge v0, v1, :cond_4

    .line 5160
    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/media/videoeditor/MediaItem;

    .line 5161
    .local v30, mi:Landroid/media/videoeditor/MediaItem;
    move-object/from16 v0, v30

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_7

    .line 5162
    if-lez v25, :cond_3

    .line 5163
    if-nez v20, :cond_3

    .line 5165
    const/4 v4, 0x1

    sub-int v4, v25, v4

    move-object/from16 v0, v28

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/media/videoeditor/MediaItem;

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 5170
    :cond_3
    const/4 v4, 0x1

    sub-int v4, v29, v4

    move/from16 v0, v25

    move v1, v4

    if-ge v0, v1, :cond_4

    .line 5171
    if-nez v23, :cond_4

    .line 5173
    add-int/lit8 v4, v25, 0x1

    move-object/from16 v0, v28

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/videoeditor/MediaItem;

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    move-object/from16 v2, v30

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 5182
    .end local v25           #i:I
    .end local v30           #mi:Landroid/media/videoeditor/MediaItem;
    :cond_4
    if-nez v23, :cond_5

    .line 5184
    invoke-virtual/range {v35 .. v35}, Lcom/android/videoeditor/service/MovieTheme;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v22

    .line 5185
    .local v22, endMovieTransition:Lcom/android/videoeditor/service/MovieTransition;
    const/4 v4, 0x1

    sub-int v4, v29, v4

    move-object/from16 v0, v28

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/media/videoeditor/MediaItem;

    .line 5186
    .local v27, lastMediaItem:Landroid/media/videoeditor/MediaItem;
    if-eqz v22, :cond_5

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_5

    .line 5187
    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v27

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 5193
    .end local v22           #endMovieTransition:Lcom/android/videoeditor/service/MovieTransition;
    .end local v27           #lastMediaItem:Landroid/media/videoeditor/MediaItem;
    :cond_5
    invoke-virtual/range {v35 .. v35}, Lcom/android/videoeditor/service/MovieTheme;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v32

    .line 5194
    .local v32, movieOverlay:Lcom/android/videoeditor/service/MovieOverlay;
    if-eqz v32, :cond_0

    .line 5195
    move-object/from16 v0, v24

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_0

    .line 5197
    invoke-virtual/range {p3 .. p3}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v34

    .line 5198
    .local v34, overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 5199
    const/4 v4, 0x0

    move-object/from16 v0, v34

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/media/videoeditor/Overlay;

    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/Overlay;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaItem;->removeOverlay(Ljava/lang/String;)Landroid/media/videoeditor/Overlay;

    .line 5204
    :cond_6
    move-object/from16 v0, p3

    instance-of v0, v0, Landroid/media/videoeditor/MediaVideoItem;

    move v4, v0

    if-eqz v4, :cond_8

    .line 5205
    move-object/from16 v0, p3

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaVideoItem;->getWidth()I

    move-result v9

    .line 5206
    .local v9, scaledWidth:I
    move-object/from16 v0, p3

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result v10

    .line 5212
    .local v10, scaledHeight:I
    :goto_2
    new-instance v11, Landroid/media/videoeditor/OverlayFrame;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v32 .. v32}, Lcom/android/videoeditor/service/MovieOverlay;->getType()I

    move-result v6

    invoke-virtual/range {v32 .. v32}, Lcom/android/videoeditor/service/MovieOverlay;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v32 .. v32}, Lcom/android/videoeditor/service/MovieOverlay;->getSubtitle()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v4 .. v10}, Lcom/android/videoeditor/util/ImageUtils;->buildOverlayBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual/range {v32 .. v32}, Lcom/android/videoeditor/service/MovieOverlay;->getStartTime()J

    move-result-wide v15

    invoke-virtual/range {v32 .. v32}, Lcom/android/videoeditor/service/MovieOverlay;->getDuration()J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v6

    invoke-virtual/range {v32 .. v32}, Lcom/android/videoeditor/service/MovieOverlay;->getStartTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v17

    move-object/from16 v12, p3

    invoke-direct/range {v11 .. v18}, Landroid/media/videoeditor/OverlayFrame;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Landroid/graphics/Bitmap;JJ)V

    .line 5221
    .local v11, overlay:Landroid/media/videoeditor/Overlay;
    invoke-virtual/range {v32 .. v32}, Lcom/android/videoeditor/service/MovieOverlay;->buildUserAttributes()Landroid/os/Bundle;

    move-result-object v36

    .line 5222
    .local v36, userAttributes:Landroid/os/Bundle;
    invoke-virtual/range {v36 .. v36}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 5223
    .local v33, name:Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Lcom/android/videoeditor/service/MovieOverlay;->getAttributeType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 5224
    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v11

    move-object/from16 v1, v33

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/OverlayFrame;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 5159
    .end local v9           #scaledWidth:I
    .end local v10           #scaledHeight:I
    .end local v11           #overlay:Landroid/media/videoeditor/Overlay;
    .end local v26           #i$:Ljava/util/Iterator;
    .end local v32           #movieOverlay:Lcom/android/videoeditor/service/MovieOverlay;
    .end local v33           #name:Ljava/lang/String;
    .end local v34           #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    .end local v36           #userAttributes:Landroid/os/Bundle;
    .restart local v25       #i:I
    .restart local v30       #mi:Landroid/media/videoeditor/MediaItem;
    .restart local p1
    .restart local p2
    :cond_7
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_1

    .line 5208
    .end local v25           #i:I
    .end local v30           #mi:Landroid/media/videoeditor/MediaItem;
    .end local p1
    .end local p2
    .restart local v32       #movieOverlay:Lcom/android/videoeditor/service/MovieOverlay;
    .restart local v34       #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :cond_8
    move-object/from16 v0, p3

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v9

    .line 5209
    .restart local v9       #scaledWidth:I
    move-object/from16 v0, p3

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v10

    .restart local v10       #scaledHeight:I
    goto/16 :goto_2

    .line 5227
    .restart local v11       #overlay:Landroid/media/videoeditor/Overlay;
    .restart local v26       #i$:Ljava/util/Iterator;
    .restart local v33       #name:Ljava/lang/String;
    .restart local v36       #userAttributes:Landroid/os/Bundle;
    :cond_9
    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v11

    move-object/from16 v1, v33

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/OverlayFrame;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 5230
    .end local v33           #name:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p3

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaItem;->addOverlay(Landroid/media/videoeditor/Overlay;)V

    goto/16 :goto_0
.end method

.method private applyThemeToMovie(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;)V
    .locals 40
    .parameter "videoEditor"
    .parameter "themeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5009
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    .line 5010
    .local v24, context:Landroid/content/Context;
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/videoeditor/service/MovieTheme;->getTheme(Landroid/content/Context;Ljava/lang/String;)Lcom/android/videoeditor/service/MovieTheme;

    move-result-object v38

    .line 5011
    .local v38, theme:Lcom/android/videoeditor/service/MovieTheme;
    invoke-interface/range {p1 .. p1}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v31

    .line 5014
    .local v31, mediaItems:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v32

    .line 5015
    .local v32, mediaItemsCount:I
    if-lez v32, :cond_5

    .line 5017
    const/16 v28, 0x0

    .local v28, i:I
    :goto_0
    move/from16 v0, v28

    move/from16 v1, v32

    if-ge v0, v1, :cond_2

    .line 5018
    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/media/videoeditor/MediaItem;

    .line 5019
    .local v33, mi:Landroid/media/videoeditor/MediaItem;
    if-nez v28, :cond_0

    .line 5020
    invoke-virtual/range {v33 .. v33}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v23

    .line 5021
    .local v23, beginTransition:Landroid/media/videoeditor/Transition;
    if-eqz v23, :cond_0

    .line 5022
    invoke-virtual/range {v23 .. v23}, Landroid/media/videoeditor/Transition;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->removeTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;

    .line 5026
    .end local v23           #beginTransition:Landroid/media/videoeditor/Transition;
    :cond_0
    invoke-virtual/range {v33 .. v33}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v26

    .line 5027
    .local v26, endTransition:Landroid/media/videoeditor/Transition;
    if-eqz v26, :cond_1

    .line 5028
    invoke-virtual/range {v26 .. v26}, Landroid/media/videoeditor/Transition;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->removeTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;

    .line 5017
    :cond_1
    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .line 5033
    .end local v26           #endTransition:Landroid/media/videoeditor/Transition;
    .end local v33           #mi:Landroid/media/videoeditor/MediaItem;
    :cond_2
    invoke-virtual/range {v38 .. v38}, Lcom/android/videoeditor/service/MovieTheme;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v22

    .line 5034
    .local v22, beginMovieTransition:Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v22, :cond_3

    .line 5035
    const/4 v4, 0x0

    move-object/from16 v0, v31

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/media/videoeditor/MediaItem;

    .line 5036
    .local v27, firstMediaItem:Landroid/media/videoeditor/MediaItem;
    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object v2, v4

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 5041
    .end local v27           #firstMediaItem:Landroid/media/videoeditor/MediaItem;
    :cond_3
    invoke-virtual/range {v38 .. v38}, Lcom/android/videoeditor/service/MovieTheme;->getMidTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v34

    .line 5042
    .local v34, midMovieTransition:Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v34, :cond_4

    .line 5043
    const/16 v28, 0x0

    .end local p2
    :goto_1
    const/4 v4, 0x1

    sub-int v4, v32, v4

    move/from16 v0, v28

    move v1, v4

    if-ge v0, v1, :cond_4

    .line 5044
    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/videoeditor/MediaItem;

    add-int/lit8 v4, v28, 0x1

    move-object/from16 v0, v31

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/videoeditor/MediaItem;

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 5043
    add-int/lit8 v28, v28, 0x1

    goto :goto_1

    .line 5051
    :cond_4
    invoke-virtual/range {v38 .. v38}, Lcom/android/videoeditor/service/MovieTheme;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v25

    .line 5052
    .local v25, endMovieTransition:Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v25, :cond_5

    .line 5053
    const/4 v4, 0x1

    sub-int v4, v32, v4

    move-object/from16 v0, v31

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/media/videoeditor/MediaItem;

    .line 5054
    .local v30, lastMediaItem:Landroid/media/videoeditor/MediaItem;
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v30

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/service/MovieTransition;->buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 5060
    .end local v22           #beginMovieTransition:Lcom/android/videoeditor/service/MovieTransition;
    .end local v25           #endMovieTransition:Lcom/android/videoeditor/service/MovieTransition;
    .end local v28           #i:I
    .end local v30           #lastMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v34           #midMovieTransition:Lcom/android/videoeditor/service/MovieTransition;
    :cond_5
    invoke-virtual/range {v38 .. v38}, Lcom/android/videoeditor/service/MovieTheme;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v35

    .line 5061
    .local v35, movieOverlay:Lcom/android/videoeditor/service/MovieOverlay;
    if-eqz v35, :cond_a

    if-lez v32, :cond_a

    .line 5063
    const/4 v4, 0x0

    move-object/from16 v0, v31

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/videoeditor/MediaItem;

    .line 5064
    .local v12, mediaItem:Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v12}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v37

    .line 5065
    .local v37, overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 5066
    const/4 v4, 0x0

    move-object/from16 v0, v37

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/videoeditor/Overlay;

    invoke-virtual/range {p2 .. p2}, Landroid/media/videoeditor/Overlay;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/media/videoeditor/MediaItem;->removeOverlay(Ljava/lang/String;)Landroid/media/videoeditor/Overlay;

    .line 5071
    :cond_6
    instance-of v4, v12, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v4, :cond_7

    .line 5072
    move-object v0, v12

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/media/videoeditor/MediaVideoItem;->getWidth()I

    move-result v9

    .line 5073
    .local v9, scaledWidth:I
    move-object v0, v12

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result v10

    .line 5079
    .local v10, scaledHeight:I
    :goto_2
    new-instance v11, Landroid/media/videoeditor/OverlayFrame;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v35 .. v35}, Lcom/android/videoeditor/service/MovieOverlay;->getType()I

    move-result v6

    invoke-virtual/range {v35 .. v35}, Lcom/android/videoeditor/service/MovieOverlay;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v35 .. v35}, Lcom/android/videoeditor/service/MovieOverlay;->getSubtitle()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v4 .. v10}, Lcom/android/videoeditor/util/ImageUtils;->buildOverlayBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual/range {v35 .. v35}, Lcom/android/videoeditor/service/MovieOverlay;->getStartTime()J

    move-result-wide v15

    invoke-virtual/range {v35 .. v35}, Lcom/android/videoeditor/service/MovieOverlay;->getDuration()J

    move-result-wide v17

    invoke-direct/range {v11 .. v18}, Landroid/media/videoeditor/OverlayFrame;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Landroid/graphics/Bitmap;JJ)V

    .line 5086
    .local v11, overlay:Landroid/media/videoeditor/Overlay;
    invoke-virtual/range {v35 .. v35}, Lcom/android/videoeditor/service/MovieOverlay;->buildUserAttributes()Landroid/os/Bundle;

    move-result-object v39

    .line 5087
    .local v39, userAttributes:Landroid/os/Bundle;
    invoke-virtual/range {v39 .. v39}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    .line 5088
    .local v36, name:Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Lcom/android/videoeditor/service/MovieOverlay;->getAttributeType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5089
    move-object/from16 v0, v39

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v11

    move-object/from16 v1, v36

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/OverlayFrame;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 5075
    .end local v9           #scaledWidth:I
    .end local v10           #scaledHeight:I
    .end local v11           #overlay:Landroid/media/videoeditor/Overlay;
    .end local v29           #i$:Ljava/util/Iterator;
    .end local v36           #name:Ljava/lang/String;
    .end local v39           #userAttributes:Landroid/os/Bundle;
    :cond_7
    move-object v0, v12

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v9

    .line 5076
    .restart local v9       #scaledWidth:I
    move-object v0, v12

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v10

    .restart local v10       #scaledHeight:I
    goto :goto_2

    .line 5092
    .restart local v11       #overlay:Landroid/media/videoeditor/Overlay;
    .restart local v29       #i$:Ljava/util/Iterator;
    .restart local v36       #name:Ljava/lang/String;
    .restart local v39       #userAttributes:Landroid/os/Bundle;
    :cond_8
    move-object/from16 v0, v39

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v11

    move-object/from16 v1, v36

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/OverlayFrame;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 5095
    .end local v36           #name:Ljava/lang/String;
    :cond_9
    invoke-virtual {v12, v11}, Landroid/media/videoeditor/MediaItem;->addOverlay(Landroid/media/videoeditor/Overlay;)V

    .line 5098
    .end local v9           #scaledWidth:I
    .end local v10           #scaledHeight:I
    .end local v11           #overlay:Landroid/media/videoeditor/Overlay;
    .end local v12           #mediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v29           #i$:Ljava/util/Iterator;
    .end local v37           #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    .end local v39           #userAttributes:Landroid/os/Bundle;
    :cond_a
    invoke-virtual/range {v38 .. v38}, Lcom/android/videoeditor/service/MovieTheme;->getAudioTrack()Lcom/android/videoeditor/service/MovieAudioTrack;

    move-result-object v19

    .line 5099
    .local v19, at:Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v19, :cond_d

    .line 5101
    invoke-interface/range {p1 .. p1}, Landroid/media/videoeditor/VideoEditor;->getAllAudioTracks()Ljava/util/List;

    move-result-object v21

    .line 5102
    .end local p0
    .local v21, audioTracks:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 5103
    const/4 v4, 0x0

    move-object/from16 v0, v21

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/videoeditor/AudioTrack;

    invoke-virtual/range {p0 .. p0}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->removeAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;

    goto :goto_4

    .line 5107
    :cond_b
    new-instance v20, Landroid/media/videoeditor/AudioTrack;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/android/videoeditor/service/MovieAudioTrack;->getRawResourceId()I

    move-result v5

    move-object/from16 v0, v24

    move v1, v5

    invoke-static {v0, v1}, Lcom/android/videoeditor/util/FileUtils;->getAudioTrackFilename(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/media/videoeditor/AudioTrack;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;)V

    .line 5111
    .local v20, audioTrack:Landroid/media/videoeditor/AudioTrack;
    invoke-virtual/range {v19 .. v19}, Lcom/android/videoeditor/service/MovieAudioTrack;->isLooping()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 5112
    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/AudioTrack;->enableLoop()V

    .line 5116
    :cond_c
    const/16 v4, 0x14

    const/16 v5, 0x41

    move-object/from16 v0, v20

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/AudioTrack;->enableDucking(II)V

    .line 5117
    const/16 v4, 0x32

    move-object/from16 v0, v20

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/AudioTrack;->setVolume(I)V

    .line 5118
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->addAudioTrack(Landroid/media/videoeditor/AudioTrack;)V

    .line 5120
    .end local v20           #audioTrack:Landroid/media/videoeditor/AudioTrack;
    .end local v21           #audioTracks:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    :cond_d
    return-void
.end method

.method public static cancelExportVideoEditor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "filename"

    .prologue
    .line 880
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 881
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 883
    const-string v1, "filename"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 885
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 886
    return-void
.end method

.method private completeRequest(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 3546
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/videoeditor/service/ApiService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/videoeditor/service/ApiService$5;-><init>(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3555
    return-void
.end method

.method private completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 9
    .parameter "intent"
    .parameter "videoEditor"
    .parameter "exception"
    .parameter "result"
    .parameter "extraResult"
    .parameter "finalize"

    .prologue
    .line 3530
    iget-object v8, p0, Lcom/android/videoeditor/service/ApiService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/videoeditor/service/ApiService$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p3

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/videoeditor/service/ApiService$4;-><init>(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;Z)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3538
    return-void
.end method

.method private copyAudioTracks(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/MovieAudioTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5378
    .local p1, audioTracks:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5380
    .local v2, movieAudioTracks:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/MovieAudioTrack;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/AudioTrack;

    .line 5381
    .local v0, audioTrack:Landroid/media/videoeditor/AudioTrack;
    new-instance v3, Lcom/android/videoeditor/service/MovieAudioTrack;

    invoke-direct {v3, v0}, Lcom/android/videoeditor/service/MovieAudioTrack;-><init>(Landroid/media/videoeditor/AudioTrack;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5383
    .end local v0           #audioTrack:Landroid/media/videoeditor/AudioTrack;
    :cond_0
    return-object v2
.end method

.method private copyMediaItems(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/service/MovieMediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5349
    .local p1, mediaItems:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 5351
    .local v3, movieMediaItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/MovieMediaItem;>;"
    const/4 v4, 0x0

    .line 5352
    .local v4, prevMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/MediaItem;

    .line 5354
    .local v1, mediaItem:Landroid/media/videoeditor/MediaItem;
    if-eqz v4, :cond_0

    .line 5355
    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v5

    .line 5362
    .local v5, prevTransition:Lcom/android/videoeditor/service/MovieTransition;
    :goto_1
    new-instance v2, Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-direct {v2, v1, v5}, Lcom/android/videoeditor/service/MovieMediaItem;-><init>(Landroid/media/videoeditor/MediaItem;Lcom/android/videoeditor/service/MovieTransition;)V

    .line 5363
    .local v2, movieMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5364
    move-object v4, v2

    .line 5365
    goto :goto_0

    .line 5356
    .end local v2           #movieMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v5           #prevTransition:Lcom/android/videoeditor/service/MovieTransition;
    :cond_0
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 5357
    new-instance v5, Lcom/android/videoeditor/service/MovieTransition;

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/videoeditor/service/MovieTransition;-><init>(Landroid/media/videoeditor/Transition;)V

    .restart local v5       #prevTransition:Lcom/android/videoeditor/service/MovieTransition;
    goto :goto_1

    .line 5359
    .end local v5           #prevTransition:Lcom/android/videoeditor/service/MovieTransition;
    :cond_1
    const/4 v5, 0x0

    .restart local v5       #prevTransition:Lcom/android/videoeditor/service/MovieTransition;
    goto :goto_1

    .line 5367
    .end local v1           #mediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v5           #prevTransition:Lcom/android/videoeditor/service/MovieTransition;
    :cond_2
    return-object v3
.end method

.method public static createVideoEditor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "projectName"
    .parameter "movies"
    .parameter "photos"
    .parameter "themeType"

    .prologue
    .line 800
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 801
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 802
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 803
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 804
    const-string v1, "movies"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 805
    const-string v1, "images"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 806
    const-string v1, "theme"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 808
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 809
    return-void
.end method

.method public static deleteProject(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"

    .prologue
    .line 995
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 996
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 997
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 999
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1000
    return-void
.end method

.method private exportMovie(Landroid/media/videoeditor/VideoEditor;Landroid/content/Intent;)V
    .locals 1
    .parameter "videoEditor"
    .parameter "intent"

    .prologue
    .line 4831
    new-instance v0, Lcom/android/videoeditor/service/ApiService$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/videoeditor/service/ApiService$6;-><init>(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;)V

    invoke-virtual {v0}, Lcom/android/videoeditor/service/ApiService$6;->start()V

    .line 4893
    return-void
.end method

.method private exportToGallery(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .parameter "filename"

    .prologue
    .line 4990
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 4991
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "mime_type"

    const-string v3, "video/mp4"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4992
    const-string v2, "_data"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4994
    invoke-virtual {p0}, Lcom/android/videoeditor/service/ApiService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 4996
    .local v0, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/videoeditor/service/ApiService;->sendBroadcast(Landroid/content/Intent;)V

    .line 4998
    return-object v0
.end method

.method public static exportVideoEditor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "filename"
    .parameter "height"
    .parameter "bitrate"

    .prologue
    .line 836
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 837
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 838
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    const-string v1, "filename"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    const-string v1, "height"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 841
    const-string v1, "bitrate"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 843
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 844
    return-void
.end method

.method public static extractAudioTrackAudioWaveform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "audioTrackId"

    .prologue
    .line 1811
    invoke-static {p1, p2}, Lcom/android/videoeditor/service/ApiService;->isAudioTrackAudioWaveformPending(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1820
    :goto_0
    return-void

    .line 1814
    :cond_0
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1815
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x1fc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1816
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1817
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1819
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    goto :goto_0
.end method

.method private extractAudioTrackAudioWaveform(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Landroid/media/videoeditor/AudioTrack;)V
    .locals 1
    .parameter "intent"
    .parameter "videoEditor"
    .parameter "audioTrack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4932
    new-instance v0, Lcom/android/videoeditor/service/ApiService$8;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/videoeditor/service/ApiService$8;-><init>(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;Landroid/media/videoeditor/AudioTrack;Landroid/media/videoeditor/VideoEditor;)V

    invoke-virtual {p3, v0}, Landroid/media/videoeditor/AudioTrack;->extractAudioWaveform(Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;)V

    .line 4950
    return-void
.end method

.method public static extractMediaItemAudioWaveform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "mediaItemId"

    .prologue
    .line 1270
    invoke-static {p1, p2}, Lcom/android/videoeditor/service/ApiService;->isMediaItemAudioWaveformPending(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1280
    :goto_0
    return-void

    .line 1274
    :cond_0
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1275
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x6d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1276
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1277
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1279
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    goto :goto_0
.end method

.method private extractMediaItemAudioWaveform(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Landroid/media/videoeditor/MediaVideoItem;)V
    .locals 1
    .parameter "intent"
    .parameter "videoEditor"
    .parameter "mediaItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4904
    new-instance v0, Lcom/android/videoeditor/service/ApiService$7;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/videoeditor/service/ApiService$7;-><init>(Lcom/android/videoeditor/service/ApiService;Landroid/content/Intent;Landroid/media/videoeditor/MediaVideoItem;Landroid/media/videoeditor/VideoEditor;)V

    invoke-virtual {p3, v0}, Landroid/media/videoeditor/MediaVideoItem;->extractAudioWaveform(Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;)V

    .line 4921
    return-void
.end method

.method private finalizeRequest(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 4684
    sget-object v4, Lcom/android/videoeditor/service/ApiService;->mPendingIntents:Ljava/util/Map;

    const-string v5, "rid"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4686
    const-string v4, "project"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4687
    .local v3, projectPath:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 4688
    invoke-static {v3}, Lcom/android/videoeditor/service/ApiService;->isProjectEdited(Ljava/lang/String;)Z

    move-result v2

    .line 4689
    .local v2, projectEdited:Z
    if-nez v2, :cond_0

    .line 4690
    sget-object v4, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 4691
    .local v1, listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    invoke-virtual {v1, v3, v2}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onProjectEditState(Ljava/lang/String;Z)V

    goto :goto_0

    .line 4696
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v2           #projectEdited:Z
    :cond_0
    sget-object v4, Lcom/android/videoeditor/service/ApiService;->mPendingIntents:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 4698
    iget-object v4, p0, Lcom/android/videoeditor/service/ApiService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/videoeditor/service/ApiService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4703
    iget-object v4, p0, Lcom/android/videoeditor/service/ApiService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/videoeditor/service/ApiService;->mStopRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4704
    const-string v4, "VEApiService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4705
    const-string v4, "VEApiService"

    const-string v5, "completeRequest: Stopping service in 5000 ms"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4708
    :cond_1
    return-void
.end method

.method public static generateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 753
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/videoeditor/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V
    .locals 5
    .parameter "videoEditor"
    .parameter "updatePreviewFrame"

    .prologue
    .line 4812
    :try_start_0
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mGeneratePreviewListener:Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;

    invoke-interface {p1, v1}, Landroid/media/videoeditor/VideoEditor;->generatePreview(Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V

    .line 4813
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mGeneratePreviewListener:Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;

    if-eqz v1, :cond_0

    .line 4816
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mGeneratePreviewListener:Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const/16 v3, 0x66

    :goto_0
    const/16 v4, 0x64

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;->onProgress(Ljava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4822
    :cond_0
    :goto_1
    return-void

    .line 4816
    :cond_1
    const/16 v3, 0x67

    goto :goto_0

    .line 4819
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4820
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getMediaItemThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "width"
    .parameter "height"
    .parameter "timeMs"

    .prologue
    .line 1145
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1146
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1147
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1148
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    const-string v1, "width"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1150
    const-string v1, "height"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1151
    const-string v1, "s_time"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1153
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1154
    return-void
.end method

.method public static getMediaItemThumbnails(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIJJI)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "width"
    .parameter "height"
    .parameter "startMs"
    .parameter "endMs"
    .parameter "count"

    .prologue
    .line 1170
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1171
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1172
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1173
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1174
    const-string v1, "width"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1175
    const-string v1, "height"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1176
    const-string v1, "s_time"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1177
    const-string v1, "e_time"

    invoke-virtual {v0, v1, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1178
    const-string v1, "count"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1180
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1181
    return-void
.end method

.method private getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;
    .locals 1
    .parameter "projectPath"

    .prologue
    .line 4718
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v0, :cond_0

    .line 4719
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4720
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 4724
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTransitionThumbnails(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "transitionId"
    .parameter "height"

    .prologue
    .line 1454
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1455
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x132

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1456
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1457
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1458
    const-string v1, "height"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1460
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1461
    return-void
.end method

.method private declared-synchronized getVideoEditor(Ljava/lang/String;)Landroid/media/videoeditor/VideoEditor;
    .locals 1
    .parameter "projectPath"

    .prologue
    .line 4735
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    if-eqz v0, :cond_0

    .line 4736
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0}, Landroid/media/videoeditor/VideoEditor;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4737
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4741
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4735
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static insertAlphaTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIIZ)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "afterMediaItemId"
    .parameter "transitionId"
    .parameter "durationMs"
    .parameter "behavior"
    .parameter "maskRawResourceId"
    .parameter "blending"
    .parameter "invert"

    .prologue
    .line 1323
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1324
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1325
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1326
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1327
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1328
    const-string v1, "duration"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1329
    const-string v1, "behavior"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1330
    const-string v1, "t_mask"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1331
    const-string v1, "t_blending"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1332
    const-string v1, "t_invert"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1334
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1335
    return-void
.end method

.method public static insertCrossfadeTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "afterMediaItemId"
    .parameter "transitionId"
    .parameter "durationMs"
    .parameter "behavior"

    .prologue
    .line 1349
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1350
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x12d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1351
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1352
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1353
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1354
    const-string v1, "duration"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1355
    const-string v1, "behavior"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1357
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1358
    return-void
.end method

.method public static insertFadeBlackTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "afterMediaItemId"
    .parameter "transitionId"
    .parameter "durationMs"
    .parameter "behavior"

    .prologue
    .line 1372
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1373
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x12e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1374
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1375
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1376
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1377
    const-string v1, "duration"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1378
    const-string v1, "behavior"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1380
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1381
    return-void
.end method

.method public static insertSlidingTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "afterMediaItemId"
    .parameter "transitionId"
    .parameter "durationMs"
    .parameter "behavior"
    .parameter "direction"

    .prologue
    .line 1397
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1398
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x12f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1399
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1400
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1401
    const-string v1, "duration"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1402
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1403
    const-string v1, "behavior"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1404
    const-string v1, "t_dir"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1406
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1407
    return-void
.end method

.method public static isAudioTrackAudioWaveformPending(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "projectPath"
    .parameter "audioTrackId"

    .prologue
    .line 1832
    sget-object v5, Lcom/android/videoeditor/service/ApiService;->mPendingIntents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1833
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "op"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1834
    .local v3, op:I
    const/16 v5, 0x1fc

    if-ne v3, v5, :cond_0

    .line 1835
    const-string v5, "project"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1836
    .local v4, pp:Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1837
    const-string v5, "item_id"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1838
    .local v2, mid:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1839
    const/4 v5, 0x1

    .line 1845
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mid:Ljava/lang/String;
    .end local v3           #op:I
    .end local v4           #pp:Ljava/lang/String;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static isMediaItemAudioWaveformPending(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "projectPath"
    .parameter "mediaItemId"

    .prologue
    .line 1291
    sget-object v5, Lcom/android/videoeditor/service/ApiService;->mPendingIntents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1292
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "op"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1293
    .local v3, op:I
    const/16 v5, 0x6d

    if-ne v3, v5, :cond_0

    .line 1294
    const-string v5, "project"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1295
    .local v4, pp:Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1296
    const-string v5, "item_id"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1297
    .local v2, mid:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1298
    const/4 v5, 0x1

    .line 1304
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mid:Ljava/lang/String;
    .end local v3           #op:I
    .end local v4           #pp:Ljava/lang/String;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static isProjectEdited(Ljava/lang/String;)Z
    .locals 6
    .parameter "projectPath"

    .prologue
    .line 930
    sget-object v4, Lcom/android/videoeditor/service/ApiService;->mPendingIntents:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :sswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 931
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "op"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 932
    .local v2, op:I
    sparse-switch v2, :sswitch_data_0

    .line 948
    const-string v4, "project"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 949
    .local v3, pp:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 950
    const/4 v4, 0x1

    .line 957
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #op:I
    .end local v3           #pp:Ljava/lang/String;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 932
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xd -> :sswitch_0
        0x6b -> :sswitch_0
        0x6c -> :sswitch_0
        0x6f -> :sswitch_0
        0x70 -> :sswitch_0
        0x71 -> :sswitch_0
        0x132 -> :sswitch_0
        0x1f6 -> :sswitch_0
        0x1f7 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isTransitionThumbnailsPending(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "projectPath"
    .parameter "transitionId"

    .prologue
    .line 1472
    sget-object v5, Lcom/android/videoeditor/service/ApiService;->mPendingIntents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1473
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "op"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1474
    .local v3, op:I
    const/16 v5, 0x132

    if-ne v3, v5, :cond_0

    .line 1475
    const-string v5, "project"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1476
    .local v4, pp:Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1477
    const-string v5, "item_id"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1478
    .local v2, mid:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1479
    const/4 v5, 0x1

    .line 1485
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mid:Ljava/lang/String;
    .end local v3           #op:I
    .end local v4           #pp:Ljava/lang/String;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static isVideoEditorExportPending(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "projectPath"
    .parameter "filename"

    .prologue
    .line 855
    sget-object v5, Lcom/android/videoeditor/service/ApiService;->mPendingIntents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 856
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "op"

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 857
    .local v3, op:I
    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 858
    const-string v5, "project"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 859
    .local v4, pp:Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 860
    const-string v5, "filename"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, fn:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 862
    const/4 v5, 0x1

    .line 868
    .end local v0           #fn:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #op:I
    .end local v4           #pp:Ljava/lang/String;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static loadMediaItem(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 1066
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1067
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x71

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1068
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    const-string v1, "filename"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1070
    const-string v1, "attributes"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1072
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1073
    return-void
.end method

.method public static loadProjects(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 780
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 781
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 783
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 784
    return-void
.end method

.method public static loadVideoEditor(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"

    .prologue
    .line 818
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 819
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 820
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 823
    return-void
.end method

.method public static moveMediaItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "afterMediaItemId"
    .parameter "themeId"

    .prologue
    .line 1086
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1087
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1088
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1089
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1090
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1091
    const-string v1, "theme"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1094
    return-void
.end method

.method private static nextMediaItem(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;
    .locals 5
    .parameter "videoEditor"
    .parameter "mediaItemId"

    .prologue
    .line 4960
    invoke-interface {p0}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v2

    .line 4961
    .local v2, mediaItems:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    if-nez p1, :cond_0

    .line 4962
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 4963
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/videoeditor/MediaItem;

    move-object v4, p0

    .line 4979
    :goto_0
    return-object v4

    .line 4966
    .restart local p0
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 4967
    .local v1, mediaItemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 4968
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/MediaItem;

    .line 4969
    .local v3, mi:Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v3}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4970
    const/4 v4, 0x1

    sub-int v4, v1, v4

    if-ge v0, v4, :cond_2

    .line 4971
    add-int/lit8 v4, v0, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/videoeditor/MediaItem;

    move-object v4, p0

    goto :goto_0

    .line 4967
    .restart local p0
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4979
    .end local v0           #i:I
    .end local v1           #mediaItemCount:I
    .end local v3           #mi:Landroid/media/videoeditor/MediaItem;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static registerListener(Lcom/android/videoeditor/service/ApiService$ApiServiceListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 762
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    return-void
.end method

.method private declared-synchronized releaseEditor()V
    .locals 3

    .prologue
    .line 4748
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    if-eqz v0, :cond_1

    .line 4749
    const-string v0, "VEApiService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4750
    const-string v0, "VEApiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseEditor (current): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v2}, Landroid/media/videoeditor/VideoEditor;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4752
    :cond_0
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0}, Landroid/media/videoeditor/VideoEditor;->release()V

    .line 4753
    const/4 v0, 0x0

    sput-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    .line 4754
    const/4 v0, 0x0

    sput-object v0, Lcom/android/videoeditor/service/ApiService;->mGeneratePreviewListener:Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;

    .line 4756
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4758
    :cond_1
    monitor-exit p0

    return-void

    .line 4748
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized releaseEditor(Ljava/lang/String;)V
    .locals 3
    .parameter "projectPath"

    .prologue
    .line 4766
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    if-eqz v0, :cond_1

    .line 4767
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0}, Landroid/media/videoeditor/VideoEditor;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4768
    const-string v0, "VEApiService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4769
    const-string v0, "VEApiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseEditor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4771
    :cond_0
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0}, Landroid/media/videoeditor/VideoEditor;->release()V

    .line 4772
    const/4 v0, 0x0

    sput-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    .line 4773
    const/4 v0, 0x0

    sput-object v0, Lcom/android/videoeditor/service/ApiService;->mGeneratePreviewListener:Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;

    .line 4775
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4778
    :cond_1
    monitor-exit p0

    return-void

    .line 4766
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized releaseEditorNot(Ljava/lang/String;)Landroid/media/videoeditor/VideoEditor;
    .locals 3
    .parameter "projectPath"

    .prologue
    .line 4788
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    if-eqz v0, :cond_1

    .line 4789
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0}, Landroid/media/videoeditor/VideoEditor;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4790
    const-string v0, "VEApiService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4791
    const-string v0, "VEApiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseEditorNot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v2}, Landroid/media/videoeditor/VideoEditor;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4793
    :cond_0
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0}, Landroid/media/videoeditor/VideoEditor;->release()V

    .line 4794
    const/4 v0, 0x0

    sput-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    .line 4795
    const/4 v0, 0x0

    sput-object v0, Lcom/android/videoeditor/service/ApiService;->mGeneratePreviewListener:Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;

    .line 4797
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4801
    :cond_1
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 4788
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static releaseVideoEditor(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"

    .prologue
    .line 981
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 982
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 983
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 985
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 986
    return-void
.end method

.method public static removeAudioTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "audioTrackId"

    .prologue
    .line 1697
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1698
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x1f5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1699
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1700
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1702
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1703
    return-void
.end method

.method public static removeEffect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "effectId"

    .prologue
    .line 1553
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1554
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xca

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1555
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1556
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1557
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1559
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1560
    return-void
.end method

.method public static removeMediaItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "themeId"

    .prologue
    .line 1106
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1107
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x67

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1108
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1110
    const-string v1, "theme"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1112
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1113
    return-void
.end method

.method public static removeOverlay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "overlayId"

    .prologue
    .line 1596
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1597
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x191

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1598
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1599
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1600
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1602
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1603
    return-void
.end method

.method public static removeTransition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "transitionId"

    .prologue
    .line 1417
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1418
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x130

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1419
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1420
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1422
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1423
    return-void
.end method

.method public static saveVideoEditor(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"

    .prologue
    .line 967
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 968
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 969
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 971
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 972
    return-void
.end method

.method public static setAspectRatio(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "aspectRatio"

    .prologue
    .line 896
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 897
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 898
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 899
    const-string v1, "aspect_ratio"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 901
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 902
    return-void
.end method

.method public static setAudioTrackBoundaries(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "audioTrackId"
    .parameter "beginBoundaryMs"
    .parameter "endBoundaryMs"

    .prologue
    .line 1716
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1717
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x1f9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1718
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1719
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1720
    const-string v1, "b_boundary"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1721
    const-string v1, "e_boundary"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1723
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1724
    return-void
.end method

.method public static setAudioTrackDuck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "audioTrackId"
    .parameter "duck"

    .prologue
    .line 1755
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1756
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x1fb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1757
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1758
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1759
    const-string v1, "duck"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1761
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1762
    return-void
.end method

.method public static setAudioTrackLoop(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "audioTrackId"
    .parameter "loop"

    .prologue
    .line 1736
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1737
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x1fa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1738
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1739
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1740
    const-string v1, "loop"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1742
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1743
    return-void
.end method

.method public static setAudioTrackMute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "audioTrackId"
    .parameter "muted"

    .prologue
    .line 1793
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1794
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x1f7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1795
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1796
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1797
    const-string v1, "mute"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1799
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1800
    return-void
.end method

.method public static setAudioTrackVolume(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "audioTrackId"
    .parameter "volumePercentage"

    .prologue
    .line 1774
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1775
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x1f6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1776
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1777
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1778
    const-string v1, "volume"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1780
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1781
    return-void
.end method

.method public static setMediaItemBoundaries(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "beginBoundaryMs"
    .parameter "endBoundaryMs"

    .prologue
    .line 1213
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1214
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x6a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1215
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1216
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1217
    const-string v1, "b_boundary"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1218
    const-string v1, "e_boundary"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1220
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1221
    return-void
.end method

.method public static setMediaItemDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "durationMs"

    .prologue
    .line 1193
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1194
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1195
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1196
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1197
    const-string v1, "duration"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1199
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1200
    return-void
.end method

.method public static setMediaItemMute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "muted"

    .prologue
    .line 1252
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1253
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x6c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1254
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1255
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1256
    const-string v1, "mute"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1258
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1259
    return-void
.end method

.method public static setMediaItemRenderingMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "renderingMode"

    .prologue
    .line 1124
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1125
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1126
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1127
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1128
    const-string v1, "rm"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1130
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1131
    return-void
.end method

.method public static setMediaItemVolume(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "volumePercentage"

    .prologue
    .line 1233
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1234
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x6b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1235
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1236
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1237
    const-string v1, "volume"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1239
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1240
    return-void
.end method

.method public static setOverlayDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "overlayId"
    .parameter "durationMs"

    .prologue
    .line 1637
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1638
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x193

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1639
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1640
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1641
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1642
    const-string v1, "duration"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1644
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1645
    return-void
.end method

.method public static setOverlayStartTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "overlayId"
    .parameter "startTimeMs"

    .prologue
    .line 1616
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1617
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x192

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1618
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1619
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1620
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1621
    const-string v1, "s_time"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1623
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1624
    return-void
.end method

.method public static setOverlayUserAttributes(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "mediaItemId"
    .parameter "overlayId"
    .parameter "userAttributes"

    .prologue
    .line 1658
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1659
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x194

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1660
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1661
    const-string v1, "r_item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1662
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1663
    const-string v1, "attributes"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1665
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1666
    return-void
.end method

.method public static setTransitionDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter "context"
    .parameter "projectPath"
    .parameter "transitionId"
    .parameter "durationMs"

    .prologue
    .line 1435
    sget-object v1, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    const-class v2, Lcom/android/videoeditor/service/ApiService;

    invoke-virtual {v1, p0, v2}, Lcom/android/videoeditor/service/IntentPool;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1436
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x131

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1437
    const-string v1, "project"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1438
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1439
    const-string v1, "duration"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1441
    invoke-static {p0, v0}, Lcom/android/videoeditor/service/ApiService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 1442
    return-void
.end method

.method private static startCommand(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1857
    const/16 v5, 0x8

    invoke-static {v5}, Lcom/android/videoeditor/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v4

    .line 1858
    .local v4, requestId:Ljava/lang/String;
    const-string v5, "rid"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1859
    sget-object v5, Lcom/android/videoeditor/service/ApiService;->mPendingIntents:Ljava/util/Map;

    invoke-interface {v5, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1861
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1863
    const-string v5, "project"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1864
    .local v3, projectPath:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1865
    invoke-static {v3}, Lcom/android/videoeditor/service/ApiService;->isProjectEdited(Ljava/lang/String;)Z

    move-result v2

    .line 1866
    .local v2, projectEdited:Z
    if-eqz v2, :cond_0

    .line 1867
    sget-object v5, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 1868
    .local v1, listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    invoke-virtual {v1, v3, v2}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onProjectEditState(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1873
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v2           #projectEdited:Z
    :cond_0
    return-object v4
.end method

.method public static unregisterListener(Lcom/android/videoeditor/service/ApiService$ApiServiceListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 771
    sget-object v0, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 772
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 2036
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 1881
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1882
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mHandler:Landroid/os/Handler;

    .line 1884
    new-instance v0, Lcom/android/videoeditor/service/ApiService$ServiceThread;

    iget-object v1, p0, Lcom/android/videoeditor/service/ApiService;->mHandler:Landroid/os/Handler;

    const-string v2, "VideoServiceThread"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/videoeditor/service/ApiService$ServiceThread;-><init>(Lcom/android/videoeditor/service/ApiService;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mVideoThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    .line 1885
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mVideoThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/ApiService$ServiceThread;->start()V

    .line 1887
    new-instance v0, Lcom/android/videoeditor/service/ApiService$ServiceThread;

    iget-object v1, p0, Lcom/android/videoeditor/service/ApiService;->mHandler:Landroid/os/Handler;

    const-string v2, "AudioServiceThread"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/videoeditor/service/ApiService$ServiceThread;-><init>(Lcom/android/videoeditor/service/ApiService;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mAudioThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    .line 1888
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mAudioThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/ApiService$ServiceThread;->start()V

    .line 1890
    new-instance v0, Lcom/android/videoeditor/service/ApiService$ServiceThread;

    iget-object v1, p0, Lcom/android/videoeditor/service/ApiService;->mHandler:Landroid/os/Handler;

    const-string v2, "ThumbnailServiceThread"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/videoeditor/service/ApiService$ServiceThread;-><init>(Lcom/android/videoeditor/service/ApiService;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mThumbnailThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    .line 1891
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mThumbnailThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/ApiService$ServiceThread;->start()V

    .line 1892
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2013
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2015
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mThumbnailThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    if-eqz v0, :cond_0

    .line 2016
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mThumbnailThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/ApiService$ServiceThread;->quit()V

    .line 2017
    iput-object v1, p0, Lcom/android/videoeditor/service/ApiService;->mThumbnailThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    .line 2020
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mAudioThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    if-eqz v0, :cond_1

    .line 2021
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mAudioThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/ApiService$ServiceThread;->quit()V

    .line 2022
    iput-object v1, p0, Lcom/android/videoeditor/service/ApiService;->mAudioThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    .line 2025
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mVideoThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    if-eqz v0, :cond_2

    .line 2026
    iget-object v0, p0, Lcom/android/videoeditor/service/ApiService;->mVideoThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    invoke-virtual {v0}, Lcom/android/videoeditor/service/ApiService$ServiceThread;->quit()V

    .line 2027
    iput-object v1, p0, Lcom/android/videoeditor/service/ApiService;->mVideoThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    .line 2029
    :cond_2
    return-void
.end method

.method public onIntentProcessed(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;Z)V
    .locals 78
    .parameter "intent"
    .parameter "videoEditor"
    .parameter "result"
    .parameter "extraResult"
    .parameter "ex"
    .parameter "finalize"

    .prologue
    .line 3571
    const-string v11, "project"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3572
    .local v6, projectPath:Ljava/lang/String;
    const-string v11, "op"

    const/4 v12, -0x1

    move-object/from16 v0, p1

    move-object v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v68

    .line 3573
    .local v68, op:I
    sparse-switch v68, :sswitch_data_0

    .line 4666
    if-eqz p6, :cond_0

    .line 4667
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4673
    .end local p3
    .end local p4
    :cond_0
    :goto_0
    if-eqz p6, :cond_1

    .line 4674
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/IntentPool;->put(Landroid/content/Intent;)V

    .line 4676
    :cond_1
    return-void

    .line 3575
    .restart local p3
    .restart local p4
    :sswitch_0
    if-eqz p6, :cond_2

    .line 3576
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3579
    :cond_2
    move-object/from16 v0, p3

    check-cast v0, Ljava/util/List;

    move-object/from16 v71, v0

    .line 3580
    .local v71, projects:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/VideoEditorProject;>;"
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .local v61, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 3581
    .local v5, listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object v0, v5

    move-object/from16 v1, v71

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onProjectsLoaded(Ljava/util/List;Ljava/lang/Exception;)V

    goto :goto_1

    .line 3588
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v61           #i$:Ljava/util/Iterator;
    .end local v71           #projects:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/VideoEditorProject;>;"
    :sswitch_1
    if-eqz p6, :cond_3

    .line 3589
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3593
    :cond_3
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v11, :cond_4

    .line 3594
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v11}, Lcom/android/videoeditor/service/VideoEditorProject;->release()V

    .line 3595
    const/4 v11, 0x0

    sput-object v11, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 3598
    :cond_4
    if-eqz p5, :cond_5

    .line 3599
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/android/videoeditor/util/FileUtils;->deleteDir(Ljava/io/File;)Z

    .line 3604
    .end local p3
    :goto_2
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 3605
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    sget-object v7, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz p2, :cond_6

    invoke-interface/range {p2 .. p2}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v11

    move-object v8, v11

    :goto_4
    if-eqz p2, :cond_7

    invoke-interface/range {p2 .. p2}, Landroid/media/videoeditor/VideoEditor;->getAllAudioTracks()Ljava/util/List;

    move-result-object v11

    move-object v9, v11

    :goto_5
    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onVideoEditorCreated(Ljava/lang/String;Lcom/android/videoeditor/service/VideoEditorProject;Ljava/util/List;Ljava/util/List;Ljava/lang/Exception;)V

    goto :goto_3

    .line 3601
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v61           #i$:Ljava/util/Iterator;
    .restart local p3
    :cond_5
    check-cast p3, Lcom/android/videoeditor/service/VideoEditorProject;

    .end local p3
    sput-object p3, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    goto :goto_2

    .line 3605
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .restart local v61       #i$:Ljava/util/Iterator;
    :cond_6
    const/4 v11, 0x0

    move-object v8, v11

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    move-object v9, v11

    goto :goto_5

    .line 3614
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v61           #i$:Ljava/util/Iterator;
    .restart local p3
    :sswitch_2
    if-eqz p6, :cond_8

    .line 3615
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3618
    :cond_8
    if-eqz p3, :cond_a

    .line 3619
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-eqz v11, :cond_9

    .line 3620
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-virtual {v11}, Lcom/android/videoeditor/service/VideoEditorProject;->release()V

    .line 3621
    const/4 v11, 0x0

    sput-object v11, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 3623
    :cond_9
    check-cast p3, Lcom/android/videoeditor/service/VideoEditorProject;

    .end local p3
    sput-object p3, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 3626
    :cond_a
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 3627
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    sget-object v7, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    if-nez p5, :cond_b

    invoke-interface/range {p2 .. p2}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v11

    move-object v8, v11

    :goto_7
    if-nez p5, :cond_c

    invoke-interface/range {p2 .. p2}, Landroid/media/videoeditor/VideoEditor;->getAllAudioTracks()Ljava/util/List;

    move-result-object v11

    move-object v9, v11

    :goto_8
    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onVideoEditorLoaded(Ljava/lang/String;Lcom/android/videoeditor/service/VideoEditorProject;Ljava/util/List;Ljava/util/List;Ljava/lang/Exception;)V

    goto :goto_6

    :cond_b
    const/4 v11, 0x0

    move-object v8, v11

    goto :goto_7

    :cond_c
    const/4 v11, 0x0

    move-object v9, v11

    goto :goto_8

    .line 3636
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v61           #i$:Ljava/util/Iterator;
    .restart local p3
    :sswitch_3
    if-eqz p6, :cond_d

    .line 3637
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3640
    :cond_d
    const-string v11, "aspect_ratio"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v56

    .line 3642
    .local v56, aspectRatio:I
    if-nez p5, :cond_e

    .line 3643
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 3644
    .local v77, videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_e

    .line 3645
    move-object/from16 v0, v77

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setAspectRatio(I)V

    .line 3649
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :cond_e
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 3650
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object v0, v5

    move-object v1, v6

    move/from16 v2, v56

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onVideoEditorAspectRatioSet(Ljava/lang/String;ILjava/lang/Exception;)V

    goto :goto_9

    .line 3657
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v56           #aspectRatio:I
    .end local v61           #i$:Ljava/util/Iterator;
    :sswitch_4
    if-eqz p6, :cond_f

    .line 3658
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3661
    :cond_f
    const-string v11, "theme"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v73

    .line 3662
    .local v73, theme:Ljava/lang/String;
    if-nez p5, :cond_10

    .line 3663
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 3664
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_10

    .line 3665
    move-object/from16 v0, v77

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setTheme(Ljava/lang/String;)V

    .line 3666
    check-cast p3, Ljava/util/List;

    .end local p3
    move-object/from16 v0, v77

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setMediaItems(Ljava/util/List;)V

    .line 3667
    check-cast p4, Ljava/util/List;

    .end local p4
    move-object/from16 v0, v77

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setAudioTracks(Ljava/util/List;)V

    .line 3671
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :cond_10
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 3672
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v73

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onVideoEditorThemeApplied(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_a

    .line 3679
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v61           #i$:Ljava/util/Iterator;
    .end local v73           #theme:Ljava/lang/String;
    .restart local p3
    .restart local p4
    :sswitch_5
    const-string v11, "attributes"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3680
    .local v7, className:Ljava/lang/String;
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3681
    .local v8, itemId:Ljava/lang/String;
    const-string v11, "action"

    const/4 v12, 0x2

    move-object/from16 v0, p1

    move-object v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 3683
    .local v9, action:I
    const-string v11, "prog_value"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 3685
    .local v10, progress:I
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 3686
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    invoke-virtual/range {v5 .. v10}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onVideoEditorGeneratePreviewProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_b

    .line 3694
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v7           #className:Ljava/lang/String;
    .end local v8           #itemId:Ljava/lang/String;
    .end local v9           #action:I
    .end local v10           #progress:I
    .end local v61           #i$:Ljava/util/Iterator;
    :sswitch_6
    if-eqz p5, :cond_0

    .line 3695
    if-eqz p6, :cond_11

    .line 3696
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3699
    :cond_11
    const-string v11, "filename"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3700
    .local v20, filename:Ljava/lang/String;
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 3701
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onVideoEditorExportComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_c

    .line 3710
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v20           #filename:Ljava/lang/String;
    .end local v61           #i$:Ljava/util/Iterator;
    :sswitch_7
    if-eqz p6, :cond_12

    .line 3711
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3714
    :cond_12
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 3715
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    const-string v11, "filename"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v6, v11}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onVideoEditorExportCanceled(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 3723
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v61           #i$:Ljava/util/Iterator;
    :sswitch_8
    if-eqz p6, :cond_13

    .line 3724
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3727
    :cond_13
    const-string v11, "filename"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3728
    .restart local v20       #filename:Ljava/lang/String;
    const-string v11, "ex"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 3729
    const-string v11, "req_intent"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v69

    check-cast v69, Landroid/content/Intent;

    .line 3730
    .local v69, originalIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3731
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    move-object v0, v11

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/IntentPool;->put(Landroid/content/Intent;)V

    .line 3733
    const-string v11, "ex"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v59

    check-cast v59, Ljava/lang/Exception;

    .line 3735
    .local v59, exception:Ljava/lang/Exception;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 3736
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_14

    if-nez v59, :cond_14

    .line 3737
    const-string v11, "uri"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v75

    check-cast v75, Landroid/net/Uri;

    .line 3738
    .local v75, uri:Landroid/net/Uri;
    move-object/from16 v0, v77

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->addExportedMovieUri(Landroid/net/Uri;)V

    .line 3741
    .end local v75           #uri:Landroid/net/Uri;
    :cond_14
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 3742
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    move-object/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onVideoEditorExportComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_e

    .line 3745
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v59           #exception:Ljava/lang/Exception;
    .end local v61           #i$:Ljava/util/Iterator;
    .end local v69           #originalIntent:Landroid/content/Intent;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :cond_15
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 3746
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    const-string v11, "prog_value"

    const/4 v12, -0x1

    move-object/from16 v0, p1

    move-object v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onVideoEditorExportProgress(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_f

    .line 3756
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v20           #filename:Ljava/lang/String;
    .end local v61           #i$:Ljava/util/Iterator;
    :sswitch_9
    if-eqz p6, :cond_16

    .line 3757
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3760
    :cond_16
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 3761
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onVideoEditorSaved(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10

    .line 3767
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v61           #i$:Ljava/util/Iterator;
    :sswitch_a
    if-eqz p6, :cond_17

    .line 3768
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3771
    :cond_17
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 3772
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_18

    .line 3773
    invoke-virtual/range {v77 .. v77}, Lcom/android/videoeditor/service/VideoEditorProject;->release()V

    .line 3774
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v0, v11

    move-object/from16 v1, v77

    if-ne v0, v1, :cond_18

    .line 3775
    const/4 v11, 0x0

    sput-object v11, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 3779
    :cond_18
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 3780
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onVideoEditorReleased(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11

    .line 3787
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v61           #i$:Ljava/util/Iterator;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_b
    if-eqz p6, :cond_19

    .line 3788
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3791
    :cond_19
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 3792
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_1a

    .line 3793
    invoke-virtual/range {v77 .. v77}, Lcom/android/videoeditor/service/VideoEditorProject;->release()V

    .line 3794
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    move-object v0, v11

    move-object/from16 v1, v77

    if-ne v0, v1, :cond_1a

    .line 3795
    const/4 v11, 0x0

    sput-object v11, Lcom/android/videoeditor/service/ApiService;->mVideoProject:Lcom/android/videoeditor/service/VideoEditorProject;

    .line 3799
    :cond_1a
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 3800
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onVideoEditorDeleted(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_12

    .line 3807
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v61           #i$:Ljava/util/Iterator;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_c
    if-eqz p6, :cond_1b

    .line 3808
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3811
    :cond_1b
    const-string v11, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3814
    .local v15, afterMediaItemId:Ljava/lang/String;
    move-object/from16 v0, p3

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object v14, v0

    .line 3815
    .local v14, movieMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 3816
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_1d

    .line 3817
    if-nez p5, :cond_1c

    if-eqz p4, :cond_1c

    .line 3819
    move-object/from16 v0, p4

    check-cast v0, Ljava/lang/Integer;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v0, v77

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setAspectRatio(I)V

    .line 3822
    :cond_1c
    if-nez p5, :cond_1d

    .line 3823
    move-object/from16 v0, v77

    move-object v1, v14

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->insertMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;Ljava/lang/String;)V

    .line 3827
    :cond_1d
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 3828
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-class v16, Landroid/media/videoeditor/MediaVideoItem;

    move-object/from16 v0, p4

    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v17, v0

    move-object v11, v5

    move-object v12, v6

    move-object/from16 v18, p5

    invoke-virtual/range {v11 .. v18}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onMediaItemAdded(Ljava/lang/String;Ljava/lang/String;Lcom/android/videoeditor/service/MovieMediaItem;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/Exception;)V

    goto :goto_13

    .line 3837
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v14           #movieMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v15           #afterMediaItemId:Ljava/lang/String;
    .end local v61           #i$:Ljava/util/Iterator;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_d
    if-eqz p6, :cond_1e

    .line 3838
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3841
    :cond_1e
    const-string v11, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3844
    .restart local v15       #afterMediaItemId:Ljava/lang/String;
    move-object/from16 v0, p3

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object v14, v0

    .line 3845
    .restart local v14       #movieMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 3846
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_20

    .line 3847
    if-nez p5, :cond_1f

    if-eqz p4, :cond_1f

    .line 3849
    move-object/from16 v0, p4

    check-cast v0, Ljava/lang/Integer;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v0, v77

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setAspectRatio(I)V

    .line 3852
    :cond_1f
    if-nez p5, :cond_20

    .line 3853
    move-object/from16 v0, v77

    move-object v1, v14

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->insertMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;Ljava/lang/String;)V

    .line 3857
    :cond_20
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 3858
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-class v16, Landroid/media/videoeditor/MediaImageItem;

    move-object/from16 v0, p4

    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v17, v0

    move-object v11, v5

    move-object v12, v6

    move-object/from16 v18, p5

    invoke-virtual/range {v11 .. v18}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onMediaItemAdded(Ljava/lang/String;Ljava/lang/String;Lcom/android/videoeditor/service/MovieMediaItem;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/Exception;)V

    goto :goto_14

    .line 3869
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v14           #movieMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v15           #afterMediaItemId:Ljava/lang/String;
    .end local v61           #i$:Ljava/util/Iterator;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_e
    const-string v11, "filename"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    .line 3870
    .local v18, data:Landroid/net/Uri;
    const-string v11, "attributes"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3871
    .local v19, mimeType:Ljava/lang/String;
    if-eqz p6, :cond_21

    .line 3872
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3875
    :cond_21
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 3876
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    const/16 v20, 0x0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v21, p5

    invoke-virtual/range {v16 .. v21}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onMediaLoaded(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_15

    .line 3882
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v18           #data:Landroid/net/Uri;
    .end local v19           #mimeType:Ljava/lang/String;
    .end local v61           #i$:Ljava/util/Iterator;
    :sswitch_f
    if-eqz p6, :cond_22

    .line 3883
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3886
    :cond_22
    const-string v11, "req_intent"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v69

    check-cast v69, Landroid/content/Intent;

    .line 3887
    .restart local v69       #originalIntent:Landroid/content/Intent;
    const-string v11, "filename"

    move-object/from16 v0, v69

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    .line 3888
    .restart local v18       #data:Landroid/net/Uri;
    const-string v11, "attributes"

    move-object/from16 v0, v69

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3890
    .restart local v19       #mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3891
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    move-object v0, v11

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/IntentPool;->put(Landroid/content/Intent;)V

    .line 3893
    const-string v11, "filename"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3895
    .restart local v20       #filename:Ljava/lang/String;
    if-nez p5, :cond_23

    if-eqz v20, :cond_23

    .line 3896
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 3897
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v77

    move-object v1, v11

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/service/VideoEditorProject;->addDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3900
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :cond_23
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v21, p5

    .line 3901
    invoke-virtual/range {v16 .. v21}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onMediaLoaded(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_16

    .line 3907
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v18           #data:Landroid/net/Uri;
    .end local v19           #mimeType:Ljava/lang/String;
    .end local v20           #filename:Ljava/lang/String;
    .end local v61           #i$:Ljava/util/Iterator;
    .end local v69           #originalIntent:Landroid/content/Intent;
    :sswitch_10
    if-eqz p6, :cond_24

    .line 3908
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3911
    :cond_24
    if-nez p5, :cond_25

    .line 3912
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 3913
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_25

    .line 3914
    check-cast p3, Ljava/util/List;

    .end local p3
    move-object/from16 v0, v77

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setMediaItems(Ljava/util/List;)V

    .line 3918
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :cond_25
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 3919
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v0, v5

    move-object v1, v6

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onMediaItemMoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_17

    .line 3928
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v61           #i$:Ljava/util/Iterator;
    .restart local p3
    :sswitch_11
    if-eqz p6, :cond_26

    .line 3929
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3932
    :cond_26
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3933
    .local v23, mediaItemId:Ljava/lang/String;
    move-object/from16 v0, p3

    check-cast v0, Lcom/android/videoeditor/service/MovieTransition;

    move-object/from16 v74, v0

    .line 3934
    .local v74, transition:Lcom/android/videoeditor/service/MovieTransition;
    if-nez p5, :cond_27

    .line 3935
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 3936
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_27

    .line 3937
    move-object/from16 v0, v77

    move-object/from16 v1, v23

    move-object/from16 v2, v74

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->removeMediaItem(Ljava/lang/String;Lcom/android/videoeditor/service/MovieTransition;)V

    .line 3941
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :cond_27
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 3942
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v23

    move-object/from16 v3, v74

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onMediaItemRemoved(Ljava/lang/String;Ljava/lang/String;Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/Exception;)V

    goto :goto_18

    .line 3949
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v23           #mediaItemId:Ljava/lang/String;
    .end local v61           #i$:Ljava/util/Iterator;
    .end local v74           #transition:Lcom/android/videoeditor/service/MovieTransition;
    :sswitch_12
    if-eqz p6, :cond_28

    .line 3950
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3953
    :cond_28
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3954
    .restart local v23       #mediaItemId:Ljava/lang/String;
    const-string v11, "rm"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v72

    .line 3957
    .local v72, renderingMode:I
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 3958
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_29

    .line 3959
    move-object/from16 v0, v77

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v62

    .line 3960
    .local v62, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v62, :cond_29

    .line 3961
    const/4 v11, 0x0

    move-object/from16 v0, v77

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 3962
    if-nez p5, :cond_2a

    .line 3963
    move-object/from16 v0, v62

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/MovieMediaItem;->setRenderingMode(I)V

    .line 3970
    .end local v62           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_29
    :goto_19
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 3971
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v23

    move/from16 v3, v72

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onMediaItemRenderingModeSet(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    goto :goto_1a

    .line 3965
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v61           #i$:Ljava/util/Iterator;
    .restart local v62       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_2a
    invoke-virtual/range {v62 .. v62}, Lcom/android/videoeditor/service/MovieMediaItem;->getRenderingMode()I

    move-result v11

    move-object/from16 v0, v62

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/MovieMediaItem;->setAppRenderingMode(I)V

    goto :goto_19

    .line 3979
    .end local v23           #mediaItemId:Ljava/lang/String;
    .end local v62           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v72           #renderingMode:I
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_13
    if-eqz p6, :cond_2b

    .line 3980
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 3983
    :cond_2b
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3985
    .restart local v23       #mediaItemId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 3986
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_2c

    .line 3987
    if-nez p5, :cond_2d

    .line 3988
    check-cast p3, Lcom/android/videoeditor/service/MovieMediaItem;

    .end local p3
    move-object/from16 v0, v77

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->updateMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V

    .line 3998
    :cond_2c
    :goto_1b
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_1c
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 3999
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    const-string v11, "duration"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move-wide v2, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v24

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v26, p5

    invoke-virtual/range {v21 .. v26}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onMediaItemDurationSet(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V

    goto :goto_1c

    .line 3990
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v61           #i$:Ljava/util/Iterator;
    .restart local p3
    :cond_2d
    move-object/from16 v0, v77

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v67

    .line 3991
    .local v67, oldMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v67, :cond_2c

    .line 3992
    const/4 v11, 0x0

    move-object/from16 v0, v77

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 3993
    const-wide/16 v11, 0x0

    invoke-virtual/range {v67 .. v67}, Lcom/android/videoeditor/service/MovieMediaItem;->getDuration()J

    move-result-wide v13

    move-object/from16 v0, v67

    move-wide v1, v11

    move-wide v3, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/service/MovieMediaItem;->setAppExtractBoundaries(JJ)V

    goto :goto_1b

    .line 4007
    .end local v23           #mediaItemId:Ljava/lang/String;
    .end local v67           #oldMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_14
    if-eqz p6, :cond_2e

    .line 4008
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4011
    :cond_2e
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 4013
    .restart local v23       #mediaItemId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 4014
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_2f

    .line 4015
    if-nez p5, :cond_30

    .line 4016
    move-object/from16 v0, p3

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object/from16 v62, v0

    .line 4017
    .restart local v62       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    move-object/from16 v0, v77

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->updateMediaItem(Lcom/android/videoeditor/service/MovieMediaItem;)V

    .line 4029
    .end local v62           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_2f
    :goto_1d
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_1e
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 4030
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    const-string v11, "b_boundary"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move-wide v2, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v24

    const-string v11, "e_boundary"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move-wide v2, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v26

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v28, p5

    invoke-virtual/range {v21 .. v28}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onMediaItemBoundariesSet(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Exception;)V

    goto :goto_1e

    .line 4019
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v61           #i$:Ljava/util/Iterator;
    :cond_30
    move-object/from16 v0, v77

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v67

    .line 4020
    .restart local v67       #oldMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v67, :cond_2f

    .line 4021
    const/4 v11, 0x0

    move-object/from16 v0, v77

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 4022
    invoke-virtual/range {v67 .. v67}, Lcom/android/videoeditor/service/MovieMediaItem;->getBoundaryBeginTime()J

    move-result-wide v11

    invoke-virtual/range {v67 .. v67}, Lcom/android/videoeditor/service/MovieMediaItem;->getBoundaryEndTime()J

    move-result-wide v13

    move-object/from16 v0, v67

    move-wide v1, v11

    move-wide v3, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/service/MovieMediaItem;->setAppExtractBoundaries(JJ)V

    goto :goto_1d

    .line 4039
    .end local v23           #mediaItemId:Ljava/lang/String;
    .end local v67           #oldMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_15
    if-eqz p6, :cond_31

    .line 4040
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4043
    :cond_31
    move-object/from16 v0, p3

    check-cast v0, Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    .line 4044
    .local v27, bitmap:Landroid/graphics/Bitmap;
    const/16 v76, 0x0

    .line 4045
    .local v76, used:Z
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_1f
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_32

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 4046
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v11, "s_time"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move-wide v2, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v28

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v30, p5

    invoke-virtual/range {v24 .. v30}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onMediaItemThumbnail(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;JLjava/lang/Exception;)Z

    move-result v11

    or-int v76, v76, v11

    goto :goto_1f

    .line 4051
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    :cond_32
    if-nez v76, :cond_0

    .line 4052
    if-eqz v27, :cond_0

    .line 4053
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 4061
    .end local v27           #bitmap:Landroid/graphics/Bitmap;
    .end local v61           #i$:Ljava/util/Iterator;
    .end local v76           #used:Z
    :sswitch_16
    if-eqz p6, :cond_33

    .line 4062
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4065
    :cond_33
    check-cast p3, [Landroid/graphics/Bitmap;

    .end local p3
    move-object/from16 v0, p3

    check-cast v0, [Landroid/graphics/Bitmap;

    move-object/from16 v31, v0

    .line 4066
    .local v31, bitmaps:[Landroid/graphics/Bitmap;
    const/16 v76, 0x0

    .line 4067
    .restart local v76       #used:Z
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_20
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_34

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 4068
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v11, "s_time"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move-wide v2, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v32

    const-string v11, "e_time"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move-wide v2, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v34

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v36, p5

    invoke-virtual/range {v28 .. v36}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onMediaItemThumbnails(Ljava/lang/String;Ljava/lang/String;[Landroid/graphics/Bitmap;JJLjava/lang/Exception;)Z

    move-result v11

    or-int v76, v76, v11

    goto :goto_20

    .line 4074
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    :cond_34
    if-nez v76, :cond_0

    .line 4075
    if-eqz v31, :cond_0

    .line 4076
    const/16 v60, 0x0

    .local v60, i:I
    :goto_21
    move-object/from16 v0, v31

    array-length v0, v0

    move v11, v0

    move/from16 v0, v60

    move v1, v11

    if-ge v0, v1, :cond_0

    .line 4077
    aget-object v11, v31, v60

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 4076
    add-int/lit8 v60, v60, 0x1

    goto :goto_21

    .line 4086
    .end local v31           #bitmaps:[Landroid/graphics/Bitmap;
    .end local v60           #i:I
    .end local v61           #i$:Ljava/util/Iterator;
    .end local v76           #used:Z
    .restart local p3
    :sswitch_17
    if-eqz p6, :cond_35

    .line 4087
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4090
    :cond_35
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 4091
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_0

    .line 4092
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 4093
    .restart local v23       #mediaItemId:Ljava/lang/String;
    move-object/from16 v0, v77

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v62

    .line 4094
    .restart local v62       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v62, :cond_0

    .line 4095
    const/4 v11, 0x0

    move-object/from16 v0, v77

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 4096
    if-nez p5, :cond_36

    .line 4097
    const-string v11, "volume"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, v62

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/MovieMediaItem;->setVolume(I)V

    goto/16 :goto_0

    .line 4099
    :cond_36
    invoke-virtual/range {v62 .. v62}, Lcom/android/videoeditor/service/MovieMediaItem;->getVolume()I

    move-result v11

    move-object/from16 v0, v62

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/MovieMediaItem;->setAppVolume(I)V

    goto/16 :goto_0

    .line 4108
    .end local v23           #mediaItemId:Ljava/lang/String;
    .end local v62           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_18
    if-eqz p6, :cond_37

    .line 4109
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4112
    :cond_37
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 4113
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_0

    .line 4114
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 4115
    .restart local v23       #mediaItemId:Ljava/lang/String;
    move-object/from16 v0, v77

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v62

    .line 4116
    .restart local v62       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v62, :cond_0

    .line 4117
    const/4 v11, 0x0

    move-object/from16 v0, v77

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 4118
    if-nez p5, :cond_38

    .line 4119
    const-string v11, "mute"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    move-object/from16 v0, v62

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/MovieMediaItem;->setMute(Z)V

    goto/16 :goto_0

    .line 4121
    :cond_38
    invoke-virtual/range {v62 .. v62}, Lcom/android/videoeditor/service/MovieMediaItem;->isMuted()Z

    move-result v11

    move-object/from16 v0, v62

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/MovieMediaItem;->setAppMute(Z)V

    goto/16 :goto_0

    .line 4130
    .end local v23           #mediaItemId:Ljava/lang/String;
    .end local v62           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_19
    if-eqz p6, :cond_39

    .line 4131
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4134
    :cond_39
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 4135
    .restart local v23       #mediaItemId:Ljava/lang/String;
    const-string v11, "prog_value"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 4137
    .restart local v10       #progress:I
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_22
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 4138
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v23

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onMediaItemExtractAudioWaveformProgress(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_22

    .line 4146
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v10           #progress:I
    .end local v23           #mediaItemId:Ljava/lang/String;
    .end local v61           #i$:Ljava/util/Iterator;
    :sswitch_1a
    if-eqz p6, :cond_3a

    .line 4147
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4150
    :cond_3a
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 4152
    .restart local v23       #mediaItemId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 4153
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-nez p5, :cond_3b

    if-eqz v77, :cond_3b

    .line 4154
    if-eqz p3, :cond_3b

    .line 4155
    move-object/from16 v0, v77

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v62

    .line 4156
    .restart local v62       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    if-eqz v62, :cond_3b

    .line 4157
    const/4 v11, 0x0

    move-object/from16 v0, v77

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 4158
    check-cast p3, Landroid/media/videoeditor/WaveformData;

    .end local p3
    move-object/from16 v0, v62

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/MovieMediaItem;->setWaveformData(Landroid/media/videoeditor/WaveformData;)V

    .line 4163
    .end local v62           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_3b
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_23
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 4164
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v23

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onMediaItemExtractAudioWaveformComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_23

    .line 4174
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v23           #mediaItemId:Ljava/lang/String;
    .end local v61           #i$:Ljava/util/Iterator;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    .restart local p3
    :sswitch_1b
    if-eqz p6, :cond_3c

    .line 4175
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4178
    :cond_3c
    const-string v11, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4182
    .restart local v15       #afterMediaItemId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 4183
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_3e

    .line 4184
    move-object/from16 v0, p3

    check-cast v0, Landroid/media/videoeditor/Transition;

    move-object/from16 v74, v0

    .line 4186
    .local v74, transition:Landroid/media/videoeditor/Transition;
    if-nez p5, :cond_3d

    .line 4187
    new-instance v66, Lcom/android/videoeditor/service/MovieTransition;

    move-object/from16 v0, v66

    move-object/from16 v1, v74

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/MovieTransition;-><init>(Landroid/media/videoeditor/Transition;)V

    .line 4188
    .local v66, movieTransition:Lcom/android/videoeditor/service/MovieTransition;
    move-object/from16 v0, v77

    move-object/from16 v1, v66

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->addTransition(Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;)V

    .line 4196
    .end local v74           #transition:Landroid/media/videoeditor/Transition;
    :goto_24
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_25
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 4197
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v66

    move-object v3, v15

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onTransitionInserted(Ljava/lang/String;Lcom/android/videoeditor/service/MovieTransition;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_25

    .line 4190
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v61           #i$:Ljava/util/Iterator;
    .end local v66           #movieTransition:Lcom/android/videoeditor/service/MovieTransition;
    .restart local v74       #transition:Landroid/media/videoeditor/Transition;
    :cond_3d
    const/16 v66, 0x0

    .restart local v66       #movieTransition:Lcom/android/videoeditor/service/MovieTransition;
    goto :goto_24

    .line 4193
    .end local v66           #movieTransition:Lcom/android/videoeditor/service/MovieTransition;
    .end local v74           #transition:Landroid/media/videoeditor/Transition;
    :cond_3e
    const/16 v66, 0x0

    .restart local v66       #movieTransition:Lcom/android/videoeditor/service/MovieTransition;
    goto :goto_24

    .line 4205
    .end local v15           #afterMediaItemId:Ljava/lang/String;
    .end local v66           #movieTransition:Lcom/android/videoeditor/service/MovieTransition;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_1c
    if-eqz p6, :cond_3f

    .line 4206
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4209
    :cond_3f
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 4211
    .local v34, transitionId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 4212
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_40

    .line 4213
    if-nez p5, :cond_40

    .line 4214
    move-object/from16 v0, v77

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->removeTransition(Ljava/lang/String;)V

    .line 4218
    :cond_40
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_26
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 4219
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v34

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onTransitionRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_26

    .line 4226
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v34           #transitionId:Ljava/lang/String;
    .end local v61           #i$:Ljava/util/Iterator;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_1d
    if-eqz p6, :cond_41

    .line 4227
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4230
    :cond_41
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 4231
    .restart local v34       #transitionId:Ljava/lang/String;
    const-string v11, "duration"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move-wide v2, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v35

    .line 4233
    .local v35, durationMs:J
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 4234
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_42

    .line 4235
    move-object/from16 v0, v77

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getTransition(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v74

    .line 4236
    .local v74, transition:Lcom/android/videoeditor/service/MovieTransition;
    if-eqz v74, :cond_42

    .line 4237
    const/4 v11, 0x0

    move-object/from16 v0, v77

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 4238
    if-nez p5, :cond_43

    .line 4239
    move-object/from16 v0, v74

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/MovieTransition;->setDuration(J)V

    .line 4246
    .end local v74           #transition:Lcom/android/videoeditor/service/MovieTransition;
    :cond_42
    :goto_27
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_28
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object/from16 v32, v5

    move-object/from16 v33, v6

    move-object/from16 v37, p5

    .line 4247
    invoke-virtual/range {v32 .. v37}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onTransitionDurationSet(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V

    goto :goto_28

    .line 4241
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v61           #i$:Ljava/util/Iterator;
    .restart local v74       #transition:Lcom/android/videoeditor/service/MovieTransition;
    :cond_43
    invoke-virtual/range {v74 .. v74}, Lcom/android/videoeditor/service/MovieTransition;->getDuration()J

    move-result-wide v11

    move-object/from16 v0, v74

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/MovieTransition;->setAppDuration(J)V

    goto :goto_27

    .line 4254
    .end local v34           #transitionId:Ljava/lang/String;
    .end local v35           #durationMs:J
    .end local v74           #transition:Lcom/android/videoeditor/service/MovieTransition;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_1e
    if-eqz p6, :cond_44

    .line 4255
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4258
    :cond_44
    check-cast p3, [Landroid/graphics/Bitmap;

    .end local p3
    move-object/from16 v0, p3

    check-cast v0, [Landroid/graphics/Bitmap;

    move-object/from16 v31, v0

    .line 4259
    .restart local v31       #bitmaps:[Landroid/graphics/Bitmap;
    const/16 v76, 0x0

    .line 4260
    .restart local v76       #used:Z
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_29
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_45

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 4261
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v0, v5

    move-object v1, v6

    move-object v2, v11

    move-object/from16 v3, v31

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onTransitionThumbnails(Ljava/lang/String;Ljava/lang/String;[Landroid/graphics/Bitmap;Ljava/lang/Exception;)Z

    move-result v11

    or-int v76, v76, v11

    goto :goto_29

    .line 4266
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    :cond_45
    if-nez v76, :cond_0

    .line 4267
    if-eqz v31, :cond_0

    .line 4268
    const/16 v60, 0x0

    .restart local v60       #i:I
    :goto_2a
    move-object/from16 v0, v31

    array-length v0, v0

    move v11, v0

    move/from16 v0, v60

    move v1, v11

    if-ge v0, v1, :cond_0

    .line 4269
    aget-object v11, v31, v60

    if-eqz v11, :cond_46

    .line 4270
    aget-object v11, v31, v60

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 4268
    :cond_46
    add-int/lit8 v60, v60, 0x1

    goto :goto_2a

    .line 4280
    .end local v31           #bitmaps:[Landroid/graphics/Bitmap;
    .end local v60           #i:I
    .end local v61           #i$:Ljava/util/Iterator;
    .end local v76           #used:Z
    .restart local p3
    :sswitch_1f
    if-eqz p6, :cond_47

    .line 4281
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4284
    :cond_47
    const-string v11, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 4287
    .restart local v23       #mediaItemId:Ljava/lang/String;
    move-object/from16 v0, p3

    check-cast v0, Lcom/android/videoeditor/service/MovieOverlay;

    move-object/from16 v65, v0

    .line 4288
    .local v65, movieOverlay:Lcom/android/videoeditor/service/MovieOverlay;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 4289
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_48

    .line 4290
    if-nez p5, :cond_48

    .line 4291
    move-object/from16 v0, v77

    move-object/from16 v1, v23

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->addOverlay(Ljava/lang/String;Lcom/android/videoeditor/service/MovieOverlay;)V

    .line 4295
    :cond_48
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_2b
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 4296
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v65

    move-object/from16 v3, v23

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onOverlayAdded(Ljava/lang/String;Lcom/android/videoeditor/service/MovieOverlay;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2b

    .line 4303
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v23           #mediaItemId:Ljava/lang/String;
    .end local v61           #i$:Ljava/util/Iterator;
    .end local v65           #movieOverlay:Lcom/android/videoeditor/service/MovieOverlay;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_20
    if-eqz p6, :cond_49

    .line 4304
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4307
    :cond_49
    const-string v11, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 4309
    .restart local v23       #mediaItemId:Ljava/lang/String;
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 4311
    .local v39, overlayId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 4312
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_4a

    .line 4313
    if-nez p5, :cond_4a

    .line 4314
    move-object/from16 v0, v77

    move-object/from16 v1, v23

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->removeOverlay(Ljava/lang/String;Ljava/lang/String;)V

    .line 4318
    :cond_4a
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_2c
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 4319
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v39

    move-object/from16 v3, v23

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onOverlayRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2c

    .line 4326
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v23           #mediaItemId:Ljava/lang/String;
    .end local v39           #overlayId:Ljava/lang/String;
    .end local v61           #i$:Ljava/util/Iterator;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_21
    if-eqz p6, :cond_4b

    .line 4327
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4330
    :cond_4b
    const-string v11, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 4332
    .restart local v23       #mediaItemId:Ljava/lang/String;
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 4333
    .restart local v39       #overlayId:Ljava/lang/String;
    const-string v11, "s_time"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move-wide v2, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v41

    .line 4335
    .local v41, startTimeMs:J
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 4336
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_4c

    .line 4337
    move-object/from16 v0, v77

    move-object/from16 v1, v23

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getOverlay(Ljava/lang/String;Ljava/lang/String;)Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v70

    .line 4338
    .local v70, overlay:Lcom/android/videoeditor/service/MovieOverlay;
    if-eqz v70, :cond_4c

    .line 4339
    const/4 v11, 0x0

    move-object/from16 v0, v77

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 4340
    if-nez p5, :cond_4d

    .line 4341
    move-object/from16 v0, v70

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/MovieOverlay;->setStartTime(J)V

    .line 4348
    .end local v70           #overlay:Lcom/android/videoeditor/service/MovieOverlay;
    :cond_4c
    :goto_2d
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_2e
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object/from16 v37, v5

    move-object/from16 v38, v6

    move-object/from16 v40, v23

    move-object/from16 v43, p5

    .line 4349
    invoke-virtual/range {v37 .. v43}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onOverlayStartTimeSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V

    goto :goto_2e

    .line 4343
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v61           #i$:Ljava/util/Iterator;
    .restart local v70       #overlay:Lcom/android/videoeditor/service/MovieOverlay;
    :cond_4d
    invoke-virtual/range {v70 .. v70}, Lcom/android/videoeditor/service/MovieOverlay;->getStartTime()J

    move-result-wide v11

    move-object/from16 v0, v70

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/MovieOverlay;->setAppStartTime(J)V

    goto :goto_2d

    .line 4357
    .end local v23           #mediaItemId:Ljava/lang/String;
    .end local v39           #overlayId:Ljava/lang/String;
    .end local v41           #startTimeMs:J
    .end local v70           #overlay:Lcom/android/videoeditor/service/MovieOverlay;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_22
    if-eqz p6, :cond_4e

    .line 4358
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4361
    :cond_4e
    const-string v11, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 4363
    .restart local v23       #mediaItemId:Ljava/lang/String;
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 4364
    .restart local v39       #overlayId:Ljava/lang/String;
    const-string v11, "duration"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move-wide v2, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v35

    .line 4366
    .restart local v35       #durationMs:J
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 4367
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_4f

    .line 4368
    move-object/from16 v0, v77

    move-object/from16 v1, v23

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getOverlay(Ljava/lang/String;Ljava/lang/String;)Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v70

    .line 4369
    .restart local v70       #overlay:Lcom/android/videoeditor/service/MovieOverlay;
    if-eqz v70, :cond_4f

    .line 4370
    const/4 v11, 0x0

    move-object/from16 v0, v77

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 4371
    if-nez p5, :cond_50

    .line 4372
    move-object/from16 v0, v70

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/MovieOverlay;->setDuration(J)V

    .line 4379
    .end local v70           #overlay:Lcom/android/videoeditor/service/MovieOverlay;
    :cond_4f
    :goto_2f
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_30
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object/from16 v43, v5

    move-object/from16 v44, v6

    move-object/from16 v45, v39

    move-object/from16 v46, v23

    move-wide/from16 v47, v35

    move-object/from16 v49, p5

    .line 4380
    invoke-virtual/range {v43 .. v49}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onOverlayDurationSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Exception;)V

    goto :goto_30

    .line 4374
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v61           #i$:Ljava/util/Iterator;
    .restart local v70       #overlay:Lcom/android/videoeditor/service/MovieOverlay;
    :cond_50
    invoke-virtual/range {v70 .. v70}, Lcom/android/videoeditor/service/MovieOverlay;->getDuration()J

    move-result-wide v11

    move-object/from16 v0, v70

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/MovieOverlay;->setAppDuration(J)V

    goto :goto_2f

    .line 4388
    .end local v23           #mediaItemId:Ljava/lang/String;
    .end local v35           #durationMs:J
    .end local v39           #overlayId:Ljava/lang/String;
    .end local v70           #overlay:Lcom/android/videoeditor/service/MovieOverlay;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_23
    if-eqz p6, :cond_51

    .line 4389
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4392
    :cond_51
    const-string v11, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 4394
    .restart local v23       #mediaItemId:Ljava/lang/String;
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 4395
    .restart local v39       #overlayId:Ljava/lang/String;
    const-string v11, "attributes"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v47

    .line 4397
    .local v47, userAttributes:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 4398
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_52

    .line 4399
    if-nez p5, :cond_52

    .line 4400
    move-object/from16 v0, v77

    move-object/from16 v1, v23

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->getOverlay(Ljava/lang/String;Ljava/lang/String;)Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v70

    .line 4402
    .restart local v70       #overlay:Lcom/android/videoeditor/service/MovieOverlay;
    if-eqz v70, :cond_52

    .line 4403
    const/4 v11, 0x0

    move-object/from16 v0, v77

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 4404
    move-object/from16 v0, v70

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/MovieOverlay;->updateUserAttributes(Landroid/os/Bundle;)V

    .line 4409
    .end local v70           #overlay:Lcom/android/videoeditor/service/MovieOverlay;
    :cond_52
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_31
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object/from16 v43, v5

    move-object/from16 v44, v6

    move-object/from16 v45, v39

    move-object/from16 v46, v23

    move-object/from16 v48, p5

    .line 4410
    invoke-virtual/range {v43 .. v48}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onOverlayUserAttributesSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Exception;)V

    goto :goto_31

    .line 4419
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v23           #mediaItemId:Ljava/lang/String;
    .end local v39           #overlayId:Ljava/lang/String;
    .end local v47           #userAttributes:Landroid/os/Bundle;
    .end local v61           #i$:Ljava/util/Iterator;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_24
    if-eqz p6, :cond_53

    .line 4420
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4423
    :cond_53
    const-string v11, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 4426
    .restart local v23       #mediaItemId:Ljava/lang/String;
    move-object/from16 v0, p3

    check-cast v0, Lcom/android/videoeditor/service/MovieEffect;

    move-object/from16 v64, v0

    .line 4427
    .local v64, movieEffect:Lcom/android/videoeditor/service/MovieEffect;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 4428
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_54

    .line 4429
    if-nez p5, :cond_54

    .line 4430
    move-object/from16 v0, v77

    move-object/from16 v1, v23

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->addEffect(Ljava/lang/String;Lcom/android/videoeditor/service/MovieEffect;)V

    .line 4434
    :cond_54
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_32
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 4435
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v64

    move-object/from16 v3, v23

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onEffectAdded(Ljava/lang/String;Lcom/android/videoeditor/service/MovieEffect;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_32

    .line 4442
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v23           #mediaItemId:Ljava/lang/String;
    .end local v61           #i$:Ljava/util/Iterator;
    .end local v64           #movieEffect:Lcom/android/videoeditor/service/MovieEffect;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_25
    if-eqz p6, :cond_55

    .line 4443
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4446
    :cond_55
    const-string v11, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 4448
    .restart local v23       #mediaItemId:Ljava/lang/String;
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 4450
    .local v58, effectId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 4451
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_56

    .line 4452
    if-nez p5, :cond_56

    .line 4453
    move-object/from16 v0, v77

    move-object/from16 v1, v23

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/service/VideoEditorProject;->removeEffect(Ljava/lang/String;Ljava/lang/String;)V

    .line 4457
    :cond_56
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_33
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 4458
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v58

    move-object/from16 v3, v23

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onEffectRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_33

    .line 4465
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v23           #mediaItemId:Ljava/lang/String;
    .end local v58           #effectId:Ljava/lang/String;
    .end local v61           #i$:Ljava/util/Iterator;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_26
    if-eqz p6, :cond_57

    .line 4466
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4469
    :cond_57
    move-object/from16 v0, p3

    check-cast v0, Lcom/android/videoeditor/service/MovieAudioTrack;

    move-object/from16 v63, v0

    .line 4470
    .local v63, movieAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 4471
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_58

    .line 4472
    if-nez p5, :cond_58

    .line 4473
    move-object/from16 v0, v77

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->addAudioTrack(Lcom/android/videoeditor/service/MovieAudioTrack;)V

    .line 4477
    :cond_58
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_34
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 4478
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v63

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onAudioTrackAdded(Ljava/lang/String;Lcom/android/videoeditor/service/MovieAudioTrack;Ljava/lang/Exception;)V

    goto :goto_34

    .line 4485
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v61           #i$:Ljava/util/Iterator;
    .end local v63           #movieAudioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_27
    if-eqz p6, :cond_59

    .line 4486
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4489
    :cond_59
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 4491
    .local v50, audioTrackId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 4492
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_5a

    .line 4493
    if-nez p5, :cond_5a

    .line 4494
    move-object/from16 v0, v77

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->removeAudioTrack(Ljava/lang/String;)V

    .line 4498
    :cond_5a
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_35
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 4499
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v50

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onAudioTrackRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_35

    .line 4506
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v50           #audioTrackId:Ljava/lang/String;
    .end local v61           #i$:Ljava/util/Iterator;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_28
    if-eqz p6, :cond_5b

    .line 4507
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4510
    :cond_5b
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 4511
    .restart local v50       #audioTrackId:Ljava/lang/String;
    const-string v11, "b_boundary"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move-wide v2, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v51

    .line 4512
    .local v51, beginBoundary:J
    const-string v11, "e_boundary"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move-wide v2, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v53

    .line 4514
    .local v53, endBoundary:J
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 4515
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_5c

    .line 4516
    if-nez p5, :cond_5c

    .line 4517
    move-object/from16 v0, v77

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getAudioTrack(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieAudioTrack;

    move-result-object v57

    .line 4519
    .local v57, audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v57, :cond_5c

    .line 4520
    const/4 v11, 0x0

    move-object/from16 v0, v77

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 4521
    move-object/from16 v0, v57

    move-wide/from16 v1, v51

    move-wide/from16 v3, v53

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/service/MovieAudioTrack;->setExtractBoundaries(JJ)V

    .line 4526
    .end local v57           #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    :cond_5c
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_36
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object/from16 v48, v5

    move-object/from16 v49, v6

    move-object/from16 v55, p5

    .line 4527
    invoke-virtual/range {v48 .. v55}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onAudioTrackBoundariesSet(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Exception;)V

    goto :goto_36

    .line 4535
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v50           #audioTrackId:Ljava/lang/String;
    .end local v51           #beginBoundary:J
    .end local v53           #endBoundary:J
    .end local v61           #i$:Ljava/util/Iterator;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_29
    if-eqz p6, :cond_5d

    .line 4536
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4539
    :cond_5d
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 4540
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_0

    .line 4541
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 4542
    .restart local v50       #audioTrackId:Ljava/lang/String;
    move-object/from16 v0, v77

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getAudioTrack(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieAudioTrack;

    move-result-object v57

    .line 4543
    .restart local v57       #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v57, :cond_0

    .line 4544
    const/4 v11, 0x0

    move-object/from16 v0, v77

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 4545
    if-nez p5, :cond_5e

    .line 4546
    const-string v11, "loop"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    move-object/from16 v0, v57

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/MovieAudioTrack;->enableLoop(Z)V

    goto/16 :goto_0

    .line 4548
    :cond_5e
    invoke-virtual/range {v57 .. v57}, Lcom/android/videoeditor/service/MovieAudioTrack;->isLooping()Z

    move-result v11

    move-object/from16 v0, v57

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/MovieAudioTrack;->enableAppLoop(Z)V

    goto/16 :goto_0

    .line 4557
    .end local v50           #audioTrackId:Ljava/lang/String;
    .end local v57           #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_2a
    if-eqz p6, :cond_5f

    .line 4558
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4561
    :cond_5f
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 4562
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_0

    .line 4563
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 4564
    .restart local v50       #audioTrackId:Ljava/lang/String;
    move-object/from16 v0, v77

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getAudioTrack(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieAudioTrack;

    move-result-object v57

    .line 4565
    .restart local v57       #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v57, :cond_0

    .line 4566
    const/4 v11, 0x0

    move-object/from16 v0, v77

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 4567
    if-nez p5, :cond_60

    .line 4568
    const-string v11, "duck"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    move-object/from16 v0, v57

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/MovieAudioTrack;->enableDucking(Z)V

    goto/16 :goto_0

    .line 4570
    :cond_60
    invoke-virtual/range {v57 .. v57}, Lcom/android/videoeditor/service/MovieAudioTrack;->isDuckingEnabled()Z

    move-result v11

    move-object/from16 v0, v57

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/MovieAudioTrack;->enableAppDucking(Z)V

    goto/16 :goto_0

    .line 4579
    .end local v50           #audioTrackId:Ljava/lang/String;
    .end local v57           #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_2b
    if-eqz p6, :cond_61

    .line 4580
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4583
    :cond_61
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 4584
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_0

    .line 4585
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 4586
    .restart local v50       #audioTrackId:Ljava/lang/String;
    move-object/from16 v0, v77

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getAudioTrack(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieAudioTrack;

    move-result-object v57

    .line 4587
    .restart local v57       #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v57, :cond_0

    .line 4588
    const/4 v11, 0x0

    move-object/from16 v0, v77

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 4589
    if-nez p5, :cond_62

    .line 4590
    const-string v11, "volume"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, v57

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/MovieAudioTrack;->setVolume(I)V

    goto/16 :goto_0

    .line 4592
    :cond_62
    invoke-virtual/range {v57 .. v57}, Lcom/android/videoeditor/service/MovieAudioTrack;->getVolume()I

    move-result v11

    move-object/from16 v0, v57

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/MovieAudioTrack;->setAppVolume(I)V

    goto/16 :goto_0

    .line 4601
    .end local v50           #audioTrackId:Ljava/lang/String;
    .end local v57           #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_2c
    if-eqz p6, :cond_63

    .line 4602
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4605
    :cond_63
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 4606
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v77, :cond_0

    .line 4607
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 4608
    .restart local v50       #audioTrackId:Ljava/lang/String;
    move-object/from16 v0, v77

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getAudioTrack(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieAudioTrack;

    move-result-object v57

    .line 4609
    .restart local v57       #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v57, :cond_0

    .line 4610
    const/4 v11, 0x0

    move-object/from16 v0, v77

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 4611
    if-nez p5, :cond_64

    .line 4612
    const-string v11, "mute"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    move-object/from16 v0, v57

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/MovieAudioTrack;->setMute(Z)V

    goto/16 :goto_0

    .line 4614
    :cond_64
    invoke-virtual/range {v57 .. v57}, Lcom/android/videoeditor/service/MovieAudioTrack;->isMuted()Z

    move-result v11

    move-object/from16 v0, v57

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/MovieAudioTrack;->setAppMute(Z)V

    goto/16 :goto_0

    .line 4623
    .end local v50           #audioTrackId:Ljava/lang/String;
    .end local v57           #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    .end local v77           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_2d
    if-eqz p6, :cond_65

    .line 4624
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4627
    :cond_65
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 4628
    .restart local v50       #audioTrackId:Ljava/lang/String;
    const-string v11, "prog_value"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 4630
    .restart local v10       #progress:I
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_37
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 4631
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v50

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onAudioTrackExtractAudioWaveformProgress(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_37

    .line 4639
    .end local v5           #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    .end local v10           #progress:I
    .end local v50           #audioTrackId:Ljava/lang/String;
    .end local v61           #i$:Ljava/util/Iterator;
    :sswitch_2e
    if-eqz p6, :cond_66

    .line 4640
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->finalizeRequest(Landroid/content/Intent;)V

    .line 4643
    :cond_66
    const-string v11, "item_id"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 4645
    .restart local v50       #audioTrackId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v77

    .line 4646
    .restart local v77       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-nez p5, :cond_67

    if-eqz v77, :cond_67

    .line 4647
    if-eqz p3, :cond_67

    .line 4648
    move-object/from16 v0, v77

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->getAudioTrack(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieAudioTrack;

    move-result-object v57

    .line 4650
    .restart local v57       #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    if-eqz v57, :cond_67

    .line 4651
    const/4 v11, 0x0

    move-object/from16 v0, v77

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->setClean(Z)V

    .line 4652
    check-cast p3, Landroid/media/videoeditor/WaveformData;

    .end local p3
    move-object/from16 v0, v57

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/service/MovieAudioTrack;->setWaveformData(Landroid/media/videoeditor/WaveformData;)V

    .line 4657
    .end local v57           #audioTrack:Lcom/android/videoeditor/service/MovieAudioTrack;
    :cond_67
    sget-object v11, Lcom/android/videoeditor/service/ApiService;->mListeners:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v61

    .restart local v61       #i$:Ljava/util/Iterator;
    :goto_38
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;

    .line 4658
    .restart local v5       #listener:Lcom/android/videoeditor/service/ApiService$ApiServiceListener;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v50

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService$ApiServiceListener;->onAudioTrackExtractAudioWaveformComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_38

    .line 3573
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_9
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x8 -> :sswitch_a
        0x9 -> :sswitch_b
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0xc -> :sswitch_5
        0xd -> :sswitch_0
        0x64 -> :sswitch_c
        0x65 -> :sswitch_d
        0x66 -> :sswitch_10
        0x67 -> :sswitch_11
        0x68 -> :sswitch_12
        0x69 -> :sswitch_13
        0x6a -> :sswitch_14
        0x6b -> :sswitch_17
        0x6c -> :sswitch_18
        0x6d -> :sswitch_1a
        0x6e -> :sswitch_19
        0x6f -> :sswitch_15
        0x70 -> :sswitch_16
        0x71 -> :sswitch_e
        0x72 -> :sswitch_f
        0xc8 -> :sswitch_24
        0xc9 -> :sswitch_24
        0xca -> :sswitch_25
        0x12c -> :sswitch_1b
        0x12d -> :sswitch_1b
        0x12e -> :sswitch_1b
        0x12f -> :sswitch_1b
        0x130 -> :sswitch_1c
        0x131 -> :sswitch_1d
        0x132 -> :sswitch_1e
        0x190 -> :sswitch_1f
        0x191 -> :sswitch_20
        0x192 -> :sswitch_21
        0x193 -> :sswitch_22
        0x194 -> :sswitch_23
        0x1f4 -> :sswitch_26
        0x1f5 -> :sswitch_27
        0x1f6 -> :sswitch_2b
        0x1f7 -> :sswitch_2c
        0x1f9 -> :sswitch_28
        0x1fa -> :sswitch_29
        0x1fb -> :sswitch_2a
        0x1fc -> :sswitch_2e
        0x1fd -> :sswitch_2d
    .end sparse-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v9, -0x1

    .line 1899
    const-string v8, "op"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1900
    .local v3, op:I
    sparse-switch v3, :sswitch_data_0

    .line 2000
    const-string v8, "VEApiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No thread assigned: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    :goto_0
    const/4 v8, 0x2

    return v8

    .line 1947
    :sswitch_0
    iget-object v8, p0, Lcom/android/videoeditor/service/ApiService;->mVideoThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    invoke-static {v8, p1}, Lcom/android/videoeditor/service/ApiService$ServiceThread;->access$300(Lcom/android/videoeditor/service/ApiService$ServiceThread;Landroid/content/Intent;)V

    goto :goto_0

    .line 1952
    :sswitch_1
    iget-object v8, p0, Lcom/android/videoeditor/service/ApiService;->mThumbnailThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    invoke-static {v8, p1}, Lcom/android/videoeditor/service/ApiService$ServiceThread;->access$300(Lcom/android/videoeditor/service/ApiService$ServiceThread;Landroid/content/Intent;)V

    goto :goto_0

    .line 1958
    :sswitch_2
    const-string v8, "project"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1959
    .local v6, projectPath:Ljava/lang/String;
    const-string v8, "item_id"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1961
    .local v1, mediaItemId:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/videoeditor/service/ApiService;->mThumbnailThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    invoke-static {v8}, Lcom/android/videoeditor/service/ApiService$ServiceThread;->access$400(Lcom/android/videoeditor/service/ApiService$ServiceThread;)Ljava/util/Queue;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 1962
    .local v7, qIntent:Landroid/content/Intent;
    const-string v8, "op"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1963
    .local v4, opi:I
    if-ne v4, v3, :cond_0

    .line 1964
    const-string v8, "project"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1965
    .local v5, pp:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1966
    const-string v8, "item_id"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1967
    .local v2, mid:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1968
    iget-object v8, p0, Lcom/android/videoeditor/service/ApiService;->mThumbnailThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    invoke-static {v8, v7}, Lcom/android/videoeditor/service/ApiService$ServiceThread;->access$500(Lcom/android/videoeditor/service/ApiService$ServiceThread;Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1969
    const-string v8, "VEApiService"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1970
    const-string v8, "VEApiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Canceled op: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for media item: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    :cond_1
    sget-object v8, Lcom/android/videoeditor/service/ApiService;->mPendingIntents:Ljava/util/Map;

    const-string v9, "rid"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1976
    sget-object v8, Lcom/android/videoeditor/service/ApiService;->mIntentPool:Lcom/android/videoeditor/service/IntentPool;

    invoke-virtual {v8, v7}, Lcom/android/videoeditor/service/IntentPool;->put(Landroid/content/Intent;)V

    .line 1984
    .end local v2           #mid:Ljava/lang/String;
    .end local v4           #opi:I
    .end local v5           #pp:Ljava/lang/String;
    .end local v7           #qIntent:Landroid/content/Intent;
    :cond_2
    iget-object v8, p0, Lcom/android/videoeditor/service/ApiService;->mThumbnailThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    invoke-static {v8, p1}, Lcom/android/videoeditor/service/ApiService$ServiceThread;->access$300(Lcom/android/videoeditor/service/ApiService$ServiceThread;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1995
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mediaItemId:Ljava/lang/String;
    .end local v6           #projectPath:Ljava/lang/String;
    :sswitch_3
    iget-object v8, p0, Lcom/android/videoeditor/service/ApiService;->mAudioThread:Lcom/android/videoeditor/service/ApiService$ServiceThread;

    invoke-static {v8, p1}, Lcom/android/videoeditor/service/ApiService$ServiceThread;->access$300(Lcom/android/videoeditor/service/ApiService$ServiceThread;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1900
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xd -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6b -> :sswitch_3
        0x6c -> :sswitch_3
        0x6d -> :sswitch_0
        0x6e -> :sswitch_0
        0x6f -> :sswitch_2
        0x70 -> :sswitch_2
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
        0x12c -> :sswitch_0
        0x12d -> :sswitch_0
        0x12e -> :sswitch_0
        0x12f -> :sswitch_0
        0x130 -> :sswitch_0
        0x131 -> :sswitch_0
        0x132 -> :sswitch_1
        0x190 -> :sswitch_0
        0x191 -> :sswitch_0
        0x192 -> :sswitch_0
        0x193 -> :sswitch_0
        0x194 -> :sswitch_0
        0x1f4 -> :sswitch_0
        0x1f5 -> :sswitch_0
        0x1f6 -> :sswitch_3
        0x1f7 -> :sswitch_3
        0x1f9 -> :sswitch_0
        0x1fa -> :sswitch_3
        0x1fb -> :sswitch_3
        0x1fc -> :sswitch_0
        0x1fd -> :sswitch_0
    .end sparse-switch
.end method

.method public processIntent(Landroid/content/Intent;)V
    .locals 129
    .parameter "intent"

    .prologue
    .line 2045
    const-string v5, "op"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v119

    .line 2046
    .local v119, op:I
    const/4 v7, 0x0

    .line 2048
    .local v7, videoEditor:Landroid/media/videoeditor/VideoEditor;
    :try_start_0
    const-string v5, "project"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v124

    .line 2050
    .local v124, projectPath:Ljava/lang/String;
    sparse-switch v119, :sswitch_data_0

    .line 2059
    move-object/from16 v0, p0

    move-object/from16 v1, v124

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getVideoEditor(Ljava/lang/String;)Landroid/media/videoeditor/VideoEditor;

    move-result-object v7

    .line 2060
    if-nez v7, :cond_0

    .line 2061
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid project path: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " for operation: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v119

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3511
    .end local v124           #projectPath:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object/from16 v94, v5

    .line 3512
    .local v94, ex:Ljava/lang/Exception;
    invoke-virtual/range {v94 .. v94}, Ljava/lang/Exception;->printStackTrace()V

    .line 3513
    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x1

    move-object/from16 v91, p0

    move-object/from16 v92, p1

    move-object/from16 v93, v7

    invoke-direct/range {v91 .. v97}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 3515
    .end local v94           #ex:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 2068
    .restart local v124       #projectPath:Ljava/lang/String;
    :cond_0
    :sswitch_0
    sparse-switch v119, :sswitch_data_1

    .line 3508
    :try_start_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unhandled operation: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v119

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2070
    :sswitch_1
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2071
    const-string v5, "VEApiService"

    const-string v6, "OP_LOAD_PROJECTS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2075
    .local v9, projects:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/VideoEditorProject;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/videoeditor/util/FileUtils;->getProjectsRootDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v102

    .line 2076
    .local v102, dir:Ljava/io/File;
    invoke-virtual/range {v102 .. v102}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v106

    .line 2077
    .local v106, files:[Ljava/io/File;
    if-eqz v106, :cond_4

    .line 2079
    const/16 v108, 0x0

    .local v108, i:I
    :goto_1
    move-object/from16 v0, v106

    array-length v0, v0

    move v5, v0

    move/from16 v0, v108

    move v1, v5

    if-ge v0, v1, :cond_3

    .line 2080
    aget-object v5, v106, v108

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2081
    aget-object v5, v106, v108

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v123

    .line 2083
    .local v123, pp:Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_2
    move-object v0, v5

    move-object/from16 v1, v123

    invoke-static {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->fromXml(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2079
    .end local v123           #pp:Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v108, v108, 0x1

    goto :goto_1

    .line 2084
    .restart local v123       #pp:Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object/from16 v94, v5

    .line 2085
    .local v94, ex:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processIntent: Project file not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v123

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    new-instance v5, Ljava/io/File;

    move-object v0, v5

    move-object/from16 v1, v123

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/videoeditor/util/FileUtils;->deleteDir(Ljava/io/File;)Z

    goto :goto_2

    .line 2087
    .end local v94           #ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    move-object/from16 v94, v5

    .line 2088
    .local v94, ex:Ljava/lang/Exception;
    invoke-virtual/range {v94 .. v94}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 2093
    .end local v94           #ex:Ljava/lang/Exception;
    .end local v123           #pp:Ljava/lang/String;
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 2095
    new-instance v5, Lcom/android/videoeditor/service/ApiService$2;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService$2;-><init>(Lcom/android/videoeditor/service/ApiService;)V

    invoke-static {v9, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2113
    .end local v108           #i:I
    :cond_4
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 2118
    .end local v9           #projects:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/VideoEditorProject;>;"
    .end local v102           #dir:Ljava/io/File;
    .end local v106           #files:[Ljava/io/File;
    :sswitch_2
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2119
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_VIDEO_EDITOR_CREATE: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 2124
    :cond_5
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->releaseEditor()V

    .line 2126
    invoke-static/range {v124 .. v124}, Landroid/media/videoeditor/VideoEditorFactory;->create(Ljava/lang/String;)Landroid/media/videoeditor/VideoEditor;

    move-result-object v7

    .line 2129
    const-string v5, "movies"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v117

    .line 2130
    .local v117, movies:[Ljava/lang/String;
    const/16 v108, 0x0

    .restart local v108       #i:I
    :goto_3
    move-object/from16 v0, v117

    array-length v0, v0

    move v5, v0

    move/from16 v0, v108

    move v1, v5

    if-ge v0, v1, :cond_6

    .line 2131
    new-instance v10, Landroid/media/videoeditor/MediaVideoItem;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v117, v108

    const/4 v8, 0x0

    invoke-direct {v10, v7, v5, v6, v8}, Landroid/media/videoeditor/MediaVideoItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2134
    .local v10, mediaItem:Landroid/media/videoeditor/MediaItem;
    invoke-interface {v7, v10}, Landroid/media/videoeditor/VideoEditor;->addMediaItem(Landroid/media/videoeditor/MediaItem;)V

    .line 2130
    add-int/lit8 v108, v108, 0x1

    goto :goto_3

    .line 2138
    .end local v10           #mediaItem:Landroid/media/videoeditor/MediaItem;
    :cond_6
    const-string v5, "images"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v122

    .line 2139
    .local v122, photos:[Ljava/lang/String;
    const/16 v108, 0x0

    :goto_4
    move-object/from16 v0, v122

    array-length v0, v0

    move v5, v0

    move/from16 v0, v108

    move v1, v5

    if-ge v0, v1, :cond_7

    .line 2140
    new-instance v10, Landroid/media/videoeditor/MediaImageItem;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v12

    aget-object v13, v122, v108

    invoke-static {}, Lcom/android/videoeditor/util/MediaItemUtils;->getDefaultImageDuration()J

    move-result-wide v14

    const/16 v16, 0x0

    move-object v11, v7

    invoke-direct/range {v10 .. v16}, Landroid/media/videoeditor/MediaImageItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 2144
    .restart local v10       #mediaItem:Landroid/media/videoeditor/MediaItem;
    invoke-interface {v7, v10}, Landroid/media/videoeditor/VideoEditor;->addMediaItem(Landroid/media/videoeditor/MediaItem;)V

    .line 2139
    add-int/lit8 v108, v108, 0x1

    goto :goto_4

    .line 2148
    .end local v10           #mediaItem:Landroid/media/videoeditor/MediaItem;
    :cond_7
    const-string v5, "name"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2149
    .local v14, projectName:Ljava/lang/String;
    const-string v5, "theme"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2150
    .local v23, themeId:Ljava/lang/String;
    if-eqz v23, :cond_8

    .line 2151
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->applyThemeToMovie(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;)V

    .line 2155
    :cond_8
    invoke-interface {v7}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v112

    .line 2156
    .local v112, mediaItems:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    invoke-interface/range {v112 .. v112}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 2157
    const/4 v5, 0x0

    move-object/from16 v0, v112

    move v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v5}, Landroid/media/videoeditor/MediaItem;->getAspectRatio()I

    move-result v5

    invoke-interface {v7, v5}, Landroid/media/videoeditor/VideoEditor;->setAspectRatio(I)V

    .line 2161
    :cond_9
    new-instance v11, Lcom/android/videoeditor/service/VideoEditorProject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x14

    const/16 v22, 0x0

    const/16 v24, 0x0

    move-object v12, v7

    move-object/from16 v13, v124

    invoke-direct/range {v11 .. v24}, Lcom/android/videoeditor/service/VideoEditorProject;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JJJILandroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V

    .line 2164
    .local v11, videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    invoke-interface {v7}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->copyMediaItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/android/videoeditor/service/VideoEditorProject;->setMediaItems(Ljava/util/List;)V

    .line 2166
    invoke-interface {v7}, Landroid/media/videoeditor/VideoEditor;->getAllAudioTracks()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->copyAudioTracks(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/android/videoeditor/service/VideoEditorProject;->setAudioTracks(Ljava/util/List;)V

    .line 2170
    sput-object v7, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    .line 2171
    new-instance v5, Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, v124

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;-><init>(Lcom/android/videoeditor/service/ApiService;Ljava/lang/String;)V

    sput-object v5, Lcom/android/videoeditor/service/ApiService;->mGeneratePreviewListener:Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;

    .line 2174
    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, v7

    move-object/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2175
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2176
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 2177
    .end local v11           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    .end local v14           #projectName:Ljava/lang/String;
    .end local v23           #themeId:Ljava/lang/String;
    .end local v108           #i:I
    .end local v112           #mediaItems:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    .end local v117           #movies:[Ljava/lang/String;
    .end local v122           #photos:[Ljava/lang/String;
    :catch_3
    move-exception v5

    move-object/from16 v94, v5

    .line 2178
    .restart local v94       #ex:Ljava/lang/Exception;
    if-eqz v7, :cond_a

    .line 2179
    :try_start_5
    invoke-interface {v7}, Landroid/media/videoeditor/VideoEditor;->release()V

    .line 2180
    const/4 v7, 0x0

    .line 2182
    :cond_a
    throw v94

    .line 2189
    .end local v94           #ex:Ljava/lang/Exception;
    :sswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, v124

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->releaseEditorNot(Ljava/lang/String;)Landroid/media/videoeditor/VideoEditor;

    move-result-object v7

    .line 2191
    if-nez v7, :cond_d

    .line 2192
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2193
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_VIDEO_EDITOR_LOAD: Loading: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 2197
    :cond_b
    const/4 v5, 0x0

    :try_start_6
    move-object/from16 v0, v124

    move v1, v5

    invoke-static {v0, v1}, Landroid/media/videoeditor/VideoEditorFactory;->load(Ljava/lang/String;Z)Landroid/media/videoeditor/VideoEditor;

    move-result-object v7

    .line 2200
    move-object v0, v7

    move-object/from16 v1, v124

    invoke-static {v0, v1}, Lcom/android/videoeditor/service/VideoEditorProject;->fromXml(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v11

    .line 2202
    .restart local v11       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    invoke-interface {v7}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->copyMediaItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/android/videoeditor/service/VideoEditorProject;->setMediaItems(Ljava/util/List;)V

    .line 2204
    invoke-interface {v7}, Landroid/media/videoeditor/VideoEditor;->getAllAudioTracks()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->copyAudioTracks(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/android/videoeditor/service/VideoEditorProject;->setAudioTracks(Ljava/util/List;)V

    .line 2207
    sput-object v7, Lcom/android/videoeditor/service/ApiService;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    .line 2208
    new-instance v5, Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, v124

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;-><init>(Lcom/android/videoeditor/service/ApiService;Ljava/lang/String;)V

    sput-object v5, Lcom/android/videoeditor/service/ApiService;->mGeneratePreviewListener:Lcom/android/videoeditor/service/ApiService$ServiceMediaProcessingProgressListener;

    .line 2211
    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, v7

    move-object/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2212
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2213
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 2214
    .end local v11           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :catch_4
    move-exception v5

    move-object/from16 v94, v5

    .line 2215
    .restart local v94       #ex:Ljava/lang/Exception;
    if-eqz v7, :cond_c

    .line 2216
    :try_start_7
    invoke-interface {v7}, Landroid/media/videoeditor/VideoEditor;->release()V

    .line 2217
    const/4 v7, 0x0

    .line 2219
    :cond_c
    throw v94

    .line 2222
    .end local v94           #ex:Ljava/lang/Exception;
    :cond_d
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2223
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_VIDEO_EDITOR_LOAD: Was already loaded: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    :cond_e
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, v7

    invoke-direct/range {v15 .. v21}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 2232
    :sswitch_4
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2233
    const-string v5, "VEApiService"

    const-string v6, "OP_VIDEO_EDITOR_SET_ASPECT_RATIO"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    :cond_f
    const-string v5, "aspect_ratio"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v7, v5}, Landroid/media/videoeditor/VideoEditor;->setAspectRatio(I)V

    .line 2239
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, v7

    invoke-direct/range {v15 .. v21}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2240
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2241
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2246
    :sswitch_5
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2247
    const-string v5, "VEApiService"

    const-string v6, "OP_VIDEO_EDITOR_APPLY_THEME"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    :cond_10
    const-string v5, "theme"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->applyThemeToMovie(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;)V

    .line 2253
    invoke-interface {v7}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->copyMediaItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    .line 2255
    .local v19, mediaItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/MovieMediaItem;>;"
    invoke-interface {v7}, Landroid/media/videoeditor/VideoEditor;->getAllAudioTracks()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->copyAudioTracks(Ljava/util/List;)Ljava/util/List;

    move-result-object v20

    .line 2258
    .local v20, audioTracks:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/MovieAudioTrack;>;"
    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, v7

    invoke-direct/range {v15 .. v21}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2259
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2260
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2265
    .end local v19           #mediaItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/MovieMediaItem;>;"
    .end local v20           #audioTracks:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/MovieAudioTrack;>;"
    :sswitch_6
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2266
    const-string v5, "VEApiService"

    const-string v6, "OP_VIDEO_EDITOR_EXPORT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    :cond_11
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->exportMovie(Landroid/media/videoeditor/VideoEditor;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2274
    :sswitch_7
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2275
    const-string v5, "VEApiService"

    const-string v6, "OP_VIDEO_EDITOR_CANCEL_EXPORT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    :cond_12
    const-string v5, "filename"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Landroid/media/videoeditor/VideoEditor;->cancelExport(Ljava/lang/String;)V

    .line 2280
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    move-object/from16 v24, p0

    move-object/from16 v25, p1

    move-object/from16 v26, v7

    invoke-direct/range {v24 .. v30}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 2285
    :sswitch_8
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2286
    const-string v5, "VEApiService"

    const-string v6, "OP_VIDEO_EDITOR_EXPORT_STATUS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    :cond_13
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    move-object/from16 v24, p0

    move-object/from16 v25, p1

    move-object/from16 v26, v7

    invoke-direct/range {v24 .. v30}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 2294
    :sswitch_9
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2295
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_VIDEO_EDITOR_SAVE: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    :cond_14
    invoke-interface {v7}, Landroid/media/videoeditor/VideoEditor;->save()V

    .line 2300
    move-object/from16 v0, p0

    move-object/from16 v1, v124

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->getProject(Ljava/lang/String;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v11

    .line 2301
    .restart local v11       #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    if-eqz v11, :cond_15

    .line 2302
    invoke-virtual {v11}, Lcom/android/videoeditor/service/VideoEditorProject;->saveToXml()V

    .line 2305
    :cond_15
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    move-object/from16 v24, p0

    move-object/from16 v25, p1

    move-object/from16 v26, v7

    invoke-direct/range {v24 .. v30}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 2310
    .end local v11           #videoProject:Lcom/android/videoeditor/service/VideoEditorProject;
    :sswitch_a
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 2311
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_VIDEO_EDITOR_RELEASE: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v124

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->releaseEditor(Ljava/lang/String;)V

    .line 2316
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    move-object/from16 v24, p0

    move-object/from16 v25, p1

    move-object/from16 v26, v7

    invoke-direct/range {v24 .. v30}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 2321
    :sswitch_b
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2322
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_VIDEO_EDITOR_DELETE: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v124

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->releaseEditor(Ljava/lang/String;)V

    .line 2327
    new-instance v5, Ljava/io/File;

    move-object v0, v5

    move-object/from16 v1, v124

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/videoeditor/util/FileUtils;->deleteDir(Ljava/io/File;)Z

    .line 2329
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    move-object/from16 v24, p0

    move-object/from16 v25, p1

    move-object/from16 v26, v7

    invoke-direct/range {v24 .. v30}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 2334
    :sswitch_c
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 2335
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_MEDIA_ITEM_ADD_VIDEO_URI: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    :cond_18
    const-string v5, "filename"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v25

    check-cast v25, Landroid/net/Uri;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 2340
    .local v25, data:Landroid/net/Uri;
    const/16 v35, 0x0

    .line 2342
    .local v35, filename:Ljava/lang/String;
    const/16 v101, 0x0

    .line 2344
    .local v101, cursor:Landroid/database/Cursor;
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v26, v5

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v24 .. v29}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v101

    .line 2346
    invoke-interface/range {v101 .. v101}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2347
    const/4 v5, 0x0

    move-object/from16 v0, v101

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v35

    .line 2350
    :cond_19
    if-eqz v101, :cond_1a

    .line 2351
    :try_start_9
    invoke-interface/range {v101 .. v101}, Landroid/database/Cursor;->close()V

    .line 2355
    :cond_1a
    if-nez v35, :cond_1c

    .line 2356
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Media file not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2350
    :catchall_0
    move-exception v5

    if-eqz v101, :cond_1b

    .line 2351
    invoke-interface/range {v101 .. v101}, Landroid/database/Cursor;->close()V

    :cond_1b
    throw v5

    .line 2359
    :cond_1c
    new-instance v10, Landroid/media/videoeditor/MediaVideoItem;

    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "rm"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    move-object v0, v10

    move-object v1, v7

    move-object v2, v5

    move-object/from16 v3, v35

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/videoeditor/MediaVideoItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2364
    .restart local v10       #mediaItem:Landroid/media/videoeditor/MediaItem;
    const-string v5, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v10, v5}, Landroid/media/videoeditor/VideoEditor;->insertMediaItem(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;)V

    .line 2369
    invoke-interface {v7}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1e

    .line 2370
    invoke-virtual {v10}, Landroid/media/videoeditor/MediaItem;->getAspectRatio()I

    move-result v5

    invoke-interface {v7, v5}, Landroid/media/videoeditor/VideoEditor;->setAspectRatio(I)V

    .line 2371
    invoke-interface {v7}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    .line 2377
    .local v31, aspectRatio:Ljava/lang/Integer;
    :goto_5
    const-string v5, "theme"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2378
    .restart local v23       #themeId:Ljava/lang/String;
    if-eqz v23, :cond_1d

    .line 2379
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, v23

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService;->applyThemeToMediaItem(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Landroid/media/videoeditor/MediaItem;)V

    .line 2382
    :cond_1d
    const/16 v29, 0x0

    new-instance v30, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object/from16 v0, v30

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/MovieMediaItem;-><init>(Landroid/media/videoeditor/MediaItem;)V

    const/16 v32, 0x0

    move-object/from16 v26, p0

    move-object/from16 v27, p1

    move-object/from16 v28, v7

    invoke-direct/range {v26 .. v32}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2384
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2385
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2373
    .end local v23           #themeId:Ljava/lang/String;
    .end local v31           #aspectRatio:Ljava/lang/Integer;
    :cond_1e
    const/16 v31, 0x0

    .restart local v31       #aspectRatio:Ljava/lang/Integer;
    goto :goto_5

    .line 2390
    .end local v10           #mediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v25           #data:Landroid/net/Uri;
    .end local v31           #aspectRatio:Ljava/lang/Integer;
    .end local v35           #filename:Ljava/lang/String;
    .end local v101           #cursor:Landroid/database/Cursor;
    :sswitch_d
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 2391
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_MEDIA_ITEM_ADD_IMAGE_URI: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    :cond_1f
    const-string v5, "filename"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v25

    check-cast v25, Landroid/net/Uri;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 2396
    .restart local v25       #data:Landroid/net/Uri;
    const/16 v35, 0x0

    .line 2398
    .restart local v35       #filename:Ljava/lang/String;
    const/16 v101, 0x0

    .line 2400
    .restart local v101       #cursor:Landroid/database/Cursor;
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v26, v5

    const/4 v5, 0x1

    const-string v6, "mime_type"

    aput-object v6, v26, v5

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v24 .. v29}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v101

    .line 2403
    invoke-interface/range {v101 .. v101}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 2404
    const/4 v5, 0x0

    move-object/from16 v0, v101

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 2405
    const/4 v5, 0x1

    move-object/from16 v0, v101

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v115

    .line 2406
    .local v115, mimeType:Ljava/lang/String;
    const-string v5, "image/jpeg"

    move-object v0, v5

    move-object/from16 v1, v115

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v5

    if-eqz v5, :cond_20

    .line 2408
    :try_start_b
    new-instance v120, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gallery_image_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v120

    move-object/from16 v1, v124

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    .local v120, outputFile:Ljava/io/File;
    move-object/from16 v0, v35

    move-object/from16 v1, v120

    invoke-static {v0, v1}, Lcom/android/videoeditor/util/ImageUtils;->transformJpeg(Ljava/lang/String;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 2411
    invoke-virtual/range {v120 .. v120}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    move-result-object v35

    .line 2420
    .end local v115           #mimeType:Ljava/lang/String;
    .end local v120           #outputFile:Ljava/io/File;
    :cond_20
    :goto_6
    if-eqz v101, :cond_21

    .line 2421
    :try_start_c
    invoke-interface/range {v101 .. v101}, Landroid/database/Cursor;->close()V

    .line 2425
    :cond_21
    if-nez v35, :cond_23

    .line 2426
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Media file not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 2413
    .restart local v115       #mimeType:Ljava/lang/String;
    :catch_5
    move-exception v5

    move-object/from16 v94, v5

    .line 2415
    .restart local v94       #ex:Ljava/lang/Exception;
    :try_start_d
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not transform JPEG: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v94

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_6

    .line 2420
    .end local v94           #ex:Ljava/lang/Exception;
    .end local v115           #mimeType:Ljava/lang/String;
    :catchall_1
    move-exception v5

    if-eqz v101, :cond_22

    .line 2421
    :try_start_e
    invoke-interface/range {v101 .. v101}, Landroid/database/Cursor;->close()V

    :cond_22
    throw v5

    .line 2429
    :cond_23
    new-instance v10, Landroid/media/videoeditor/MediaImageItem;

    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v5, "duration"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v36

    const-string v5, "rm"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    move-object/from16 v32, v10

    move-object/from16 v33, v7

    invoke-direct/range {v32 .. v38}, Landroid/media/videoeditor/MediaImageItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 2435
    .restart local v10       #mediaItem:Landroid/media/videoeditor/MediaItem;
    const-string v5, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v10, v5}, Landroid/media/videoeditor/VideoEditor;->insertMediaItem(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;)V

    .line 2440
    invoke-interface {v7}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_25

    .line 2441
    invoke-virtual {v10}, Landroid/media/videoeditor/MediaItem;->getAspectRatio()I

    move-result v5

    invoke-interface {v7, v5}, Landroid/media/videoeditor/VideoEditor;->setAspectRatio(I)V

    .line 2442
    invoke-interface {v7}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    .line 2448
    .restart local v31       #aspectRatio:Ljava/lang/Integer;
    :goto_7
    const-string v5, "theme"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2449
    .restart local v23       #themeId:Ljava/lang/String;
    if-eqz v23, :cond_24

    .line 2450
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, v23

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService;->applyThemeToMediaItem(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Landroid/media/videoeditor/MediaItem;)V

    .line 2453
    :cond_24
    const/16 v29, 0x0

    new-instance v30, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object/from16 v0, v30

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/MovieMediaItem;-><init>(Landroid/media/videoeditor/MediaItem;)V

    const/16 v32, 0x0

    move-object/from16 v26, p0

    move-object/from16 v27, p1

    move-object/from16 v28, v7

    invoke-direct/range {v26 .. v32}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2455
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2456
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2444
    .end local v23           #themeId:Ljava/lang/String;
    .end local v31           #aspectRatio:Ljava/lang/Integer;
    :cond_25
    const/16 v31, 0x0

    .restart local v31       #aspectRatio:Ljava/lang/Integer;
    goto :goto_7

    .line 2461
    .end local v10           #mediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v25           #data:Landroid/net/Uri;
    .end local v31           #aspectRatio:Ljava/lang/Integer;
    .end local v35           #filename:Ljava/lang/String;
    .end local v101           #cursor:Landroid/database/Cursor;
    :sswitch_e
    const-string v5, "filename"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v25

    check-cast v25, Landroid/net/Uri;

    .line 2462
    .restart local v25       #data:Landroid/net/Uri;
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 2463
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_MEDIA_ITEM_LOAD: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    :cond_26
    move-object/from16 v126, p1

    .line 2467
    .local v126, requestIntent:Landroid/content/Intent;
    new-instance v5, Lcom/android/videoeditor/service/ApiService$3;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, v124

    move-object/from16 v3, v126

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/videoeditor/service/ApiService$3;-><init>(Lcom/android/videoeditor/service/ApiService;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-virtual {v5}, Lcom/android/videoeditor/service/ApiService$3;->start()V

    goto/16 :goto_0

    .line 2547
    .end local v25           #data:Landroid/net/Uri;
    .end local v126           #requestIntent:Landroid/content/Intent;
    :sswitch_f
    const-string v5, "req_intent"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v41

    check-cast v41, Landroid/content/Intent;

    .line 2548
    .local v41, originalIntent:Landroid/content/Intent;
    const-string v5, "ex"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 2549
    const-string v5, "ex"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v39

    check-cast v39, Ljava/lang/Exception;

    .line 2551
    .local v39, exception:Ljava/lang/Exception;
    const/16 v40, 0x0

    const/16 v42, 0x1

    move-object/from16 v36, p0

    move-object/from16 v37, p1

    move-object/from16 v38, v7

    invoke-direct/range {v36 .. v42}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 2554
    .end local v39           #exception:Ljava/lang/Exception;
    :cond_27
    const/16 v45, 0x0

    const-string v5, "filename"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    const/16 v48, 0x1

    move-object/from16 v42, p0

    move-object/from16 v43, p1

    move-object/from16 v44, v7

    move-object/from16 v47, v41

    invoke-direct/range {v42 .. v48}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 2561
    .end local v41           #originalIntent:Landroid/content/Intent;
    :sswitch_10
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v111

    .line 2562
    .local v111, mediaItemId:Ljava/lang/String;
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 2563
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_MEDIA_ITEM_MOVE: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    :cond_28
    invoke-interface {v7}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v112

    .line 2568
    .restart local v112       #mediaItems:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    invoke-interface/range {v112 .. v112}, Ljava/util/List;->size()I

    move-result v113

    .line 2569
    .local v113, mediaItemsCount:I
    const/16 v46, -0x1

    .line 2570
    .local v46, movedItemPosition:I
    const/16 v45, 0x0

    .line 2571
    .local v45, movedMediaItem:Landroid/media/videoeditor/MediaItem;
    const/16 v108, 0x0

    .restart local v108       #i:I
    :goto_8
    move/from16 v0, v108

    move/from16 v1, v113

    if-ge v0, v1, :cond_29

    .line 2572
    move-object/from16 v0, v112

    move/from16 v1, v108

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/media/videoeditor/MediaItem;

    .line 2573
    .local v114, mi:Landroid/media/videoeditor/MediaItem;
    invoke-virtual/range {v114 .. v114}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 2574
    move-object/from16 v45, v114

    .line 2575
    move/from16 v46, v108

    .line 2580
    .end local v114           #mi:Landroid/media/videoeditor/MediaItem;
    :cond_29
    const/4 v5, -0x1

    move/from16 v0, v46

    move v1, v5

    if-ne v0, v1, :cond_2b

    .line 2581
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Moved MediaItem not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2571
    .restart local v114       #mi:Landroid/media/videoeditor/MediaItem;
    :cond_2a
    add-int/lit8 v108, v108, 0x1

    goto :goto_8

    .line 2585
    .end local v114           #mi:Landroid/media/videoeditor/MediaItem;
    :cond_2b
    invoke-virtual/range {v45 .. v45}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v47

    .line 2586
    .local v47, beginTransition:Landroid/media/videoeditor/Transition;
    invoke-virtual/range {v45 .. v45}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v48

    .line 2588
    .local v48, endTransition:Landroid/media/videoeditor/Transition;
    const-string v5, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 2590
    .local v98, afterMediaItemId:Ljava/lang/String;
    move-object v0, v7

    move-object/from16 v1, v111

    move-object/from16 v2, v98

    invoke-interface {v0, v1, v2}, Landroid/media/videoeditor/VideoEditor;->moveMediaItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    const-string v5, "theme"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2594
    .restart local v23       #themeId:Ljava/lang/String;
    if-eqz v23, :cond_2c

    move-object/from16 v42, p0

    move-object/from16 v43, v7

    move-object/from16 v44, v23

    .line 2596
    invoke-direct/range {v42 .. v48}, Lcom/android/videoeditor/service/ApiService;->applyThemeAfterMove(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Landroid/media/videoeditor/MediaItem;ILandroid/media/videoeditor/Transition;Landroid/media/videoeditor/Transition;)V

    .line 2600
    :cond_2c
    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/ApiService;->copyMediaItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v53

    .line 2601
    .local v53, mediaItemsCopy:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/MovieMediaItem;>;"
    const/16 v52, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    move-object/from16 v49, p0

    move-object/from16 v50, p1

    move-object/from16 v51, v7

    invoke-direct/range {v49 .. v55}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2602
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2603
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2608
    .end local v23           #themeId:Ljava/lang/String;
    .end local v45           #movedMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v46           #movedItemPosition:I
    .end local v47           #beginTransition:Landroid/media/videoeditor/Transition;
    .end local v48           #endTransition:Landroid/media/videoeditor/Transition;
    .end local v53           #mediaItemsCopy:Ljava/util/List;,"Ljava/util/List<Lcom/android/videoeditor/service/MovieMediaItem;>;"
    .end local v98           #afterMediaItemId:Ljava/lang/String;
    .end local v108           #i:I
    .end local v111           #mediaItemId:Ljava/lang/String;
    .end local v112           #mediaItems:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    .end local v113           #mediaItemsCount:I
    :sswitch_11
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v111

    .line 2609
    .restart local v111       #mediaItemId:Ljava/lang/String;
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 2610
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_MEDIA_ITEM_REMOVE: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    :cond_2d
    invoke-interface {v7}, Landroid/media/videoeditor/VideoEditor;->getAllMediaItems()Ljava/util/List;

    move-result-object v112

    .line 2615
    .restart local v112       #mediaItems:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    invoke-interface/range {v112 .. v112}, Ljava/util/List;->size()I

    move-result v113

    .line 2616
    .restart local v113       #mediaItemsCount:I
    const/16 v57, -0x1

    .line 2617
    .local v57, removedItemPosition:I
    const/16 v125, 0x0

    .line 2618
    .local v125, removedMediaItem:Landroid/media/videoeditor/MediaItem;
    const/16 v108, 0x0

    .restart local v108       #i:I
    :goto_9
    move/from16 v0, v108

    move/from16 v1, v113

    if-ge v0, v1, :cond_2e

    .line 2619
    move-object/from16 v0, v112

    move/from16 v1, v108

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v5}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 2620
    move-object/from16 v0, v112

    move/from16 v1, v108

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v125

    .end local v125           #removedMediaItem:Landroid/media/videoeditor/MediaItem;
    check-cast v125, Landroid/media/videoeditor/MediaItem;

    .line 2621
    .restart local v125       #removedMediaItem:Landroid/media/videoeditor/MediaItem;
    move/from16 v57, v108

    .line 2626
    :cond_2e
    if-nez v125, :cond_30

    .line 2627
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MediaItem not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2618
    :cond_2f
    add-int/lit8 v108, v108, 0x1

    goto :goto_9

    .line 2630
    :cond_30
    invoke-virtual/range {v125 .. v125}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v47

    .line 2631
    .restart local v47       #beginTransition:Landroid/media/videoeditor/Transition;
    invoke-virtual/range {v125 .. v125}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v48

    .line 2633
    .restart local v48       #endTransition:Landroid/media/videoeditor/Transition;
    move-object v0, v7

    move-object/from16 v1, v111

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->removeMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    .line 2636
    const/16 v62, 0x0

    .line 2637
    .local v62, movieTransition:Lcom/android/videoeditor/service/MovieTransition;
    const-string v5, "theme"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2638
    .restart local v23       #themeId:Ljava/lang/String;
    if-eqz v23, :cond_31

    invoke-interface/range {v112 .. v112}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_31

    move-object/from16 v54, p0

    move-object/from16 v55, v7

    move-object/from16 v56, v23

    move-object/from16 v58, v47

    move-object/from16 v59, v48

    .line 2639
    invoke-direct/range {v54 .. v59}, Lcom/android/videoeditor/service/ApiService;->applyThemeAfterRemove(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;ILandroid/media/videoeditor/Transition;Landroid/media/videoeditor/Transition;)Landroid/media/videoeditor/Transition;

    move-result-object v78

    .line 2641
    .local v78, transition:Landroid/media/videoeditor/Transition;
    if-eqz v78, :cond_31

    .line 2642
    new-instance v62, Lcom/android/videoeditor/service/MovieTransition;

    .end local v62           #movieTransition:Lcom/android/videoeditor/service/MovieTransition;
    move-object/from16 v0, v62

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/MovieTransition;-><init>(Landroid/media/videoeditor/Transition;)V

    .line 2646
    .end local v78           #transition:Landroid/media/videoeditor/Transition;
    .restart local v62       #movieTransition:Lcom/android/videoeditor/service/MovieTransition;
    :cond_31
    const/16 v61, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    move-object/from16 v58, p0

    move-object/from16 v59, p1

    move-object/from16 v60, v7

    invoke-direct/range {v58 .. v64}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2647
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2648
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2653
    .end local v23           #themeId:Ljava/lang/String;
    .end local v47           #beginTransition:Landroid/media/videoeditor/Transition;
    .end local v48           #endTransition:Landroid/media/videoeditor/Transition;
    .end local v57           #removedItemPosition:I
    .end local v62           #movieTransition:Lcom/android/videoeditor/service/MovieTransition;
    .end local v108           #i:I
    .end local v111           #mediaItemId:Ljava/lang/String;
    .end local v112           #mediaItems:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    .end local v113           #mediaItemsCount:I
    .end local v125           #removedMediaItem:Landroid/media/videoeditor/MediaItem;
    :sswitch_12
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v111

    .line 2654
    .restart local v111       #mediaItemId:Ljava/lang/String;
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 2655
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_MEDIA_ITEM_SET_RENDERING_MODE: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    :cond_32
    move-object v0, v7

    move-object/from16 v1, v111

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v10

    .line 2659
    .restart local v10       #mediaItem:Landroid/media/videoeditor/MediaItem;
    if-nez v10, :cond_33

    .line 2660
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MediaItem not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2662
    :cond_33
    const-string v5, "rm"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v10, v5}, Landroid/media/videoeditor/MediaItem;->setRenderingMode(I)V

    .line 2665
    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    move-object/from16 v63, p0

    move-object/from16 v64, p1

    move-object/from16 v65, v7

    invoke-direct/range {v63 .. v69}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2666
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2667
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2672
    .end local v10           #mediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v111           #mediaItemId:Ljava/lang/String;
    :sswitch_13
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v111

    .line 2673
    .restart local v111       #mediaItemId:Ljava/lang/String;
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 2674
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_MEDIA_ITEM_SET_DURATION: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    :cond_34
    move-object v0, v7

    move-object/from16 v1, v111

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v10

    check-cast v10, Landroid/media/videoeditor/MediaImageItem;

    .line 2679
    .local v10, mediaItem:Landroid/media/videoeditor/MediaImageItem;
    if-nez v10, :cond_35

    .line 2680
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MediaItem not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2683
    :cond_35
    const-string v5, "duration"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v103

    .line 2684
    .local v103, durationMs:J
    move-object v0, v10

    move-wide/from16 v1, v103

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/MediaImageItem;->setDuration(J)V

    .line 2686
    invoke-virtual {v10}, Landroid/media/videoeditor/MediaImageItem;->getAllEffects()Ljava/util/List;

    move-result-object v105

    .line 2687
    .local v105, effects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    invoke-interface/range {v105 .. v105}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v109

    .local v109, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v109 .. v109}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface/range {v109 .. v109}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/media/videoeditor/Effect;

    .line 2688
    .local v82, effect:Landroid/media/videoeditor/Effect;
    move-object/from16 v0, v82

    move-wide/from16 v1, v103

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/Effect;->setDuration(J)V

    goto :goto_a

    .line 2691
    .end local v82           #effect:Landroid/media/videoeditor/Effect;
    :cond_36
    const/16 v66, 0x0

    new-instance v67, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object/from16 v0, v67

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/MovieMediaItem;-><init>(Landroid/media/videoeditor/MediaItem;)V

    const/16 v68, 0x0

    const/16 v69, 0x0

    move-object/from16 v63, p0

    move-object/from16 v64, p1

    move-object/from16 v65, v7

    invoke-direct/range {v63 .. v69}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2693
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2694
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2699
    .end local v10           #mediaItem:Landroid/media/videoeditor/MediaImageItem;
    .end local v103           #durationMs:J
    .end local v105           #effects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .end local v109           #i$:Ljava/util/Iterator;
    .end local v111           #mediaItemId:Ljava/lang/String;
    :sswitch_14
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v111

    .line 2700
    .restart local v111       #mediaItemId:Ljava/lang/String;
    move-object v0, v7

    move-object/from16 v1, v111

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v10

    check-cast v10, Landroid/media/videoeditor/MediaVideoItem;

    .line 2702
    .local v10, mediaItem:Landroid/media/videoeditor/MediaVideoItem;
    if-nez v10, :cond_37

    .line 2703
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MediaItem not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2706
    :cond_37
    const-string v5, "b_boundary"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v8, "e_boundary"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    move-object v1, v8

    move-wide v2, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v10, v5, v6, v8, v9}, Landroid/media/videoeditor/MediaVideoItem;->setExtractBoundaries(JJ)V

    .line 2709
    invoke-virtual {v10}, Landroid/media/videoeditor/MediaVideoItem;->getAllOverlays()Ljava/util/List;

    move-result-object v121

    .line 2710
    .local v121, overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface/range {v121 .. v121}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_38

    .line 2712
    const/4 v5, 0x0

    move-object/from16 v0, v121

    move v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Landroid/media/videoeditor/Overlay;

    .line 2713
    .local v90, overlay:Landroid/media/videoeditor/Overlay;
    invoke-virtual/range {v90 .. v90}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v5

    invoke-virtual {v10}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v8

    cmp-long v5, v5, v8

    if-gez v5, :cond_39

    .line 2714
    invoke-virtual {v10}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v5

    move-object/from16 v0, v90

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/Overlay;->setStartTime(J)V

    .line 2715
    invoke-virtual/range {v90 .. v90}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v5

    invoke-virtual {v10}, Landroid/media/videoeditor/MediaVideoItem;->getTimelineDuration()J

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    move-object/from16 v0, v90

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/Overlay;->setDuration(J)V

    .line 2726
    .end local v90           #overlay:Landroid/media/videoeditor/Overlay;
    :cond_38
    :goto_b
    const/16 v66, 0x0

    new-instance v67, Lcom/android/videoeditor/service/MovieMediaItem;

    move-object/from16 v0, v67

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/MovieMediaItem;-><init>(Landroid/media/videoeditor/MediaItem;)V

    const/16 v68, 0x0

    const/16 v69, 0x0

    move-object/from16 v63, p0

    move-object/from16 v64, p1

    move-object/from16 v65, v7

    invoke-direct/range {v63 .. v69}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2728
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2729
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2717
    .restart local v90       #overlay:Landroid/media/videoeditor/Overlay;
    :cond_39
    invoke-virtual/range {v90 .. v90}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v5

    invoke-virtual/range {v90 .. v90}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v8

    add-long/2addr v5, v8

    invoke-virtual {v10}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v8

    cmp-long v5, v5, v8

    if-lez v5, :cond_38

    .line 2719
    invoke-virtual {v10}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v5

    invoke-virtual {v10}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v8

    invoke-virtual/range {v90 .. v90}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v11

    sub-long/2addr v8, v11

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    move-object/from16 v0, v90

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/Overlay;->setStartTime(J)V

    .line 2721
    invoke-virtual {v10}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v5

    invoke-virtual/range {v90 .. v90}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v8

    sub-long/2addr v5, v8

    move-object/from16 v0, v90

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/Overlay;->setDuration(J)V

    goto :goto_b

    .line 2735
    .end local v10           #mediaItem:Landroid/media/videoeditor/MediaVideoItem;
    .end local v90           #overlay:Landroid/media/videoeditor/Overlay;
    .end local v111           #mediaItemId:Ljava/lang/String;
    .end local v121           #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :sswitch_15
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v111

    .line 2736
    .restart local v111       #mediaItemId:Ljava/lang/String;
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 2737
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_MEDIA_ITEM_GET_THUMBNAIL: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    :cond_3a
    move-object v0, v7

    move-object/from16 v1, v111

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v10

    .line 2741
    .local v10, mediaItem:Landroid/media/videoeditor/MediaItem;
    if-nez v10, :cond_3b

    .line 2742
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MediaItem not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2745
    :cond_3b
    const-string v5, "width"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "height"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v8, "s_time"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    move-object v1, v8

    move-wide v2, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v10, v5, v6, v8, v9}, Landroid/media/videoeditor/MediaItem;->getThumbnail(IIJ)Landroid/graphics/Bitmap;

    move-result-object v67

    .line 2750
    .local v67, thumbnail:Landroid/graphics/Bitmap;
    const/16 v66, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x1

    move-object/from16 v63, p0

    move-object/from16 v64, p1

    move-object/from16 v65, v7

    invoke-direct/range {v63 .. v69}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 2756
    .end local v10           #mediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v67           #thumbnail:Landroid/graphics/Bitmap;
    .end local v111           #mediaItemId:Ljava/lang/String;
    :sswitch_16
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v111

    .line 2757
    .restart local v111       #mediaItemId:Ljava/lang/String;
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 2758
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_MEDIA_ITEM_GET_THUMBNAILS: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    :cond_3c
    move-object v0, v7

    move-object/from16 v1, v111

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v10

    .line 2762
    .restart local v10       #mediaItem:Landroid/media/videoeditor/MediaItem;
    if-nez v10, :cond_3d

    .line 2763
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MediaItem not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2766
    :cond_3d
    const-string v5, "width"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v69

    const-string v5, "height"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v70

    const-string v5, "s_time"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v71

    const-string v5, "e_time"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v73

    const-string v5, "count"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v75

    move-object/from16 v68, v10

    invoke-virtual/range {v68 .. v75}, Landroid/media/videoeditor/MediaItem;->getThumbnailList(IIJJI)[Landroid/graphics/Bitmap;

    move-result-object v72

    .line 2773
    .local v72, thumbnails:[Landroid/graphics/Bitmap;
    const/16 v71, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x1

    move-object/from16 v68, p0

    move-object/from16 v69, p1

    move-object/from16 v70, v7

    invoke-direct/range {v68 .. v74}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 2778
    .end local v10           #mediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v72           #thumbnails:[Landroid/graphics/Bitmap;
    .end local v111           #mediaItemId:Ljava/lang/String;
    :sswitch_17
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v111

    .line 2779
    .restart local v111       #mediaItemId:Ljava/lang/String;
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 2780
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_MEDIA_ITEM_SET_VOLUME: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    :cond_3e
    move-object v0, v7

    move-object/from16 v1, v111

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v10

    .line 2784
    .restart local v10       #mediaItem:Landroid/media/videoeditor/MediaItem;
    if-eqz v10, :cond_3f

    instance-of v5, v10, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v5, :cond_3f

    .line 2785
    check-cast v10, Landroid/media/videoeditor/MediaVideoItem;

    .end local v10           #mediaItem:Landroid/media/videoeditor/MediaItem;
    const-string v5, "volume"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v10, v5}, Landroid/media/videoeditor/MediaVideoItem;->setVolume(I)V

    .line 2787
    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    move-object/from16 v73, p0

    move-object/from16 v74, p1

    move-object/from16 v75, v7

    invoke-direct/range {v73 .. v79}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2788
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2789
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2791
    .restart local v10       #mediaItem:Landroid/media/videoeditor/MediaItem;
    :cond_3f
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MediaItem not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2797
    .end local v10           #mediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v111           #mediaItemId:Ljava/lang/String;
    :sswitch_18
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v111

    .line 2798
    .restart local v111       #mediaItemId:Ljava/lang/String;
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 2799
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_MEDIA_ITEM_SET_MUTE: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    :cond_40
    move-object v0, v7

    move-object/from16 v1, v111

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v10

    .line 2803
    .restart local v10       #mediaItem:Landroid/media/videoeditor/MediaItem;
    if-eqz v10, :cond_41

    instance-of v5, v10, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v5, :cond_41

    .line 2804
    check-cast v10, Landroid/media/videoeditor/MediaVideoItem;

    .end local v10           #mediaItem:Landroid/media/videoeditor/MediaItem;
    const-string v5, "mute"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v10, v5}, Landroid/media/videoeditor/MediaVideoItem;->setMute(Z)V

    .line 2807
    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    move-object/from16 v73, p0

    move-object/from16 v74, p1

    move-object/from16 v75, v7

    invoke-direct/range {v73 .. v79}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2808
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2809
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2811
    .restart local v10       #mediaItem:Landroid/media/videoeditor/MediaItem;
    :cond_41
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MediaItem not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2817
    .end local v10           #mediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v111           #mediaItemId:Ljava/lang/String;
    :sswitch_19
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v111

    .line 2818
    .restart local v111       #mediaItemId:Ljava/lang/String;
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 2819
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_MEDIA_ITEM_EXTRACT_AUDIO_WAVEFORM: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    :cond_42
    move-object v0, v7

    move-object/from16 v1, v111

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v10

    .line 2823
    .restart local v10       #mediaItem:Landroid/media/videoeditor/MediaItem;
    if-eqz v10, :cond_44

    instance-of v5, v10, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v5, :cond_44

    .line 2824
    move-object v0, v10

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object/from16 v116, v0

    .line 2825
    .local v116, movieMediaItem:Landroid/media/videoeditor/MediaVideoItem;
    invoke-virtual/range {v116 .. v116}, Landroid/media/videoeditor/MediaVideoItem;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v77

    .line 2826
    .local v77, waveformData:Landroid/media/videoeditor/WaveformData;
    if-nez v77, :cond_43

    .line 2827
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move-object/from16 v3, v116

    invoke-direct {v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService;->extractMediaItemAudioWaveform(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Landroid/media/videoeditor/MediaVideoItem;)V

    .line 2828
    const/16 v76, 0x0

    invoke-virtual/range {v116 .. v116}, Landroid/media/videoeditor/MediaVideoItem;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v77

    .end local v77           #waveformData:Landroid/media/videoeditor/WaveformData;
    const/16 v78, 0x0

    const/16 v79, 0x1

    move-object/from16 v73, p0

    move-object/from16 v74, p1

    move-object/from16 v75, v7

    invoke-direct/range {v73 .. v79}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 2831
    .restart local v77       #waveformData:Landroid/media/videoeditor/WaveformData;
    :cond_43
    const/16 v76, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x1

    move-object/from16 v73, p0

    move-object/from16 v74, p1

    move-object/from16 v75, v7

    invoke-direct/range {v73 .. v79}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 2834
    .end local v77           #waveformData:Landroid/media/videoeditor/WaveformData;
    .end local v116           #movieMediaItem:Landroid/media/videoeditor/MediaVideoItem;
    :cond_44
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MediaItem not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2840
    .end local v10           #mediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v111           #mediaItemId:Ljava/lang/String;
    :sswitch_1a
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 2841
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_TRANSITION_INSERT_ALPHA: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    :cond_45
    const-string v5, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 2848
    .restart local v98       #afterMediaItemId:Ljava/lang/String;
    if-eqz v98, :cond_46

    .line 2849
    move-object v0, v7

    move-object/from16 v1, v98

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v80

    .line 2854
    .local v80, afterMediaItem:Landroid/media/videoeditor/MediaItem;
    :goto_c
    const-string v5, "t_mask"

    const v6, 0x7f050001

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v110

    .line 2857
    .local v110, maskRawResourceId:I
    move-object v0, v7

    move-object/from16 v1, v98

    invoke-static {v0, v1}, Lcom/android/videoeditor/service/ApiService;->nextMediaItem(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v81

    .line 2858
    .local v81, beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    new-instance v78, Landroid/media/videoeditor/TransitionAlpha;

    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v79

    const-string v5, "duration"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v82

    const-string v5, "behavior"

    const/4 v6, 0x2

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v84

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v110

    invoke-static {v0, v1}, Lcom/android/videoeditor/util/FileUtils;->getMaskFilename(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v85

    const-string v5, "t_blending"

    const/16 v6, 0x64

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v86

    const-string v5, "t_invert"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v87

    invoke-direct/range {v78 .. v87}, Landroid/media/videoeditor/TransitionAlpha;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JILjava/lang/String;IZ)V

    .line 2868
    .restart local v78       #transition:Landroid/media/videoeditor/Transition;
    move-object v0, v7

    move-object/from16 v1, v78

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 2870
    const/16 v85, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    move-object/from16 v82, p0

    move-object/from16 v83, p1

    move-object/from16 v84, v7

    move-object/from16 v86, v78

    invoke-direct/range {v82 .. v88}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2871
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2872
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2851
    .end local v78           #transition:Landroid/media/videoeditor/Transition;
    .end local v80           #afterMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v81           #beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v110           #maskRawResourceId:I
    :cond_46
    const/16 v80, 0x0

    .restart local v80       #afterMediaItem:Landroid/media/videoeditor/MediaItem;
    goto/16 :goto_c

    .line 2877
    .end local v80           #afterMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v98           #afterMediaItemId:Ljava/lang/String;
    :sswitch_1b
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 2878
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_TRANSITION_INSERT_CROSSFADE: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    :cond_47
    const-string v5, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 2885
    .restart local v98       #afterMediaItemId:Ljava/lang/String;
    if-eqz v98, :cond_48

    .line 2886
    move-object v0, v7

    move-object/from16 v1, v98

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v80

    .line 2891
    .restart local v80       #afterMediaItem:Landroid/media/videoeditor/MediaItem;
    :goto_d
    move-object v0, v7

    move-object/from16 v1, v98

    invoke-static {v0, v1}, Lcom/android/videoeditor/service/ApiService;->nextMediaItem(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v81

    .line 2892
    .restart local v81       #beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    new-instance v78, Landroid/media/videoeditor/TransitionCrossfade;

    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v79

    const-string v5, "duration"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v82

    const-string v5, "behavior"

    const/4 v6, 0x2

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v84

    invoke-direct/range {v78 .. v84}, Landroid/media/videoeditor/TransitionCrossfade;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    .line 2898
    .restart local v78       #transition:Landroid/media/videoeditor/Transition;
    move-object v0, v7

    move-object/from16 v1, v78

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 2900
    const/16 v85, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    move-object/from16 v82, p0

    move-object/from16 v83, p1

    move-object/from16 v84, v7

    move-object/from16 v86, v78

    invoke-direct/range {v82 .. v88}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2901
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2902
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2888
    .end local v78           #transition:Landroid/media/videoeditor/Transition;
    .end local v80           #afterMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v81           #beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    :cond_48
    const/16 v80, 0x0

    .restart local v80       #afterMediaItem:Landroid/media/videoeditor/MediaItem;
    goto :goto_d

    .line 2907
    .end local v80           #afterMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v98           #afterMediaItemId:Ljava/lang/String;
    :sswitch_1c
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 2908
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_TRANSITION_INSERT_FADE_TO_BLACK: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    :cond_49
    const-string v5, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 2915
    .restart local v98       #afterMediaItemId:Ljava/lang/String;
    if-eqz v98, :cond_4a

    .line 2916
    move-object v0, v7

    move-object/from16 v1, v98

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v80

    .line 2921
    .restart local v80       #afterMediaItem:Landroid/media/videoeditor/MediaItem;
    :goto_e
    move-object v0, v7

    move-object/from16 v1, v98

    invoke-static {v0, v1}, Lcom/android/videoeditor/service/ApiService;->nextMediaItem(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v81

    .line 2922
    .restart local v81       #beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    new-instance v78, Landroid/media/videoeditor/TransitionFadeBlack;

    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v79

    const-string v5, "duration"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v82

    const-string v5, "behavior"

    const/4 v6, 0x2

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v84

    invoke-direct/range {v78 .. v84}, Landroid/media/videoeditor/TransitionFadeBlack;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    .line 2928
    .restart local v78       #transition:Landroid/media/videoeditor/Transition;
    move-object v0, v7

    move-object/from16 v1, v78

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 2930
    const/16 v85, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    move-object/from16 v82, p0

    move-object/from16 v83, p1

    move-object/from16 v84, v7

    move-object/from16 v86, v78

    invoke-direct/range {v82 .. v88}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2931
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2932
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2918
    .end local v78           #transition:Landroid/media/videoeditor/Transition;
    .end local v80           #afterMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v81           #beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    :cond_4a
    const/16 v80, 0x0

    .restart local v80       #afterMediaItem:Landroid/media/videoeditor/MediaItem;
    goto :goto_e

    .line 2937
    .end local v80           #afterMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v98           #afterMediaItemId:Ljava/lang/String;
    :sswitch_1d
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 2938
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_TRANSITION_INSERT_SLIDING: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    :cond_4b
    const-string v5, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 2945
    .restart local v98       #afterMediaItemId:Ljava/lang/String;
    if-eqz v98, :cond_4c

    .line 2946
    move-object v0, v7

    move-object/from16 v1, v98

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v80

    .line 2951
    .restart local v80       #afterMediaItem:Landroid/media/videoeditor/MediaItem;
    :goto_f
    move-object v0, v7

    move-object/from16 v1, v98

    invoke-static {v0, v1}, Lcom/android/videoeditor/service/ApiService;->nextMediaItem(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v81

    .line 2952
    .restart local v81       #beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    new-instance v78, Landroid/media/videoeditor/TransitionSliding;

    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v79

    const-string v5, "duration"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v82

    const-string v5, "behavior"

    const/4 v6, 0x2

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v84

    const-string v5, "t_dir"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v85

    invoke-direct/range {v78 .. v85}, Landroid/media/videoeditor/TransitionSliding;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JII)V

    .line 2960
    .restart local v78       #transition:Landroid/media/videoeditor/Transition;
    move-object v0, v7

    move-object/from16 v1, v78

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->addTransition(Landroid/media/videoeditor/Transition;)V

    .line 2962
    const/16 v85, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    move-object/from16 v82, p0

    move-object/from16 v83, p1

    move-object/from16 v84, v7

    move-object/from16 v86, v78

    invoke-direct/range {v82 .. v88}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2963
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2964
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2948
    .end local v78           #transition:Landroid/media/videoeditor/Transition;
    .end local v80           #afterMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v81           #beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    :cond_4c
    const/16 v80, 0x0

    .restart local v80       #afterMediaItem:Landroid/media/videoeditor/MediaItem;
    goto :goto_f

    .line 2969
    .end local v80           #afterMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v98           #afterMediaItemId:Ljava/lang/String;
    :sswitch_1e
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 2970
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_TRANSITION_REMOVE: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    :cond_4d
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Landroid/media/videoeditor/VideoEditor;->removeTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;

    .line 2976
    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    move-object/from16 v82, p0

    move-object/from16 v83, p1

    move-object/from16 v84, v7

    invoke-direct/range {v82 .. v88}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2977
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2978
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2983
    :sswitch_1f
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v127

    .line 2984
    .local v127, transitionId:Ljava/lang/String;
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 2985
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_TRANSITION_SET_DURATION: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v127

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    :cond_4e
    move-object v0, v7

    move-object/from16 v1, v127

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->getTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;

    move-result-object v78

    .line 2989
    .restart local v78       #transition:Landroid/media/videoeditor/Transition;
    if-nez v78, :cond_4f

    .line 2990
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transition not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v127

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2993
    :cond_4f
    const-string v5, "duration"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    move-object/from16 v0, v78

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/Transition;->setDuration(J)V

    .line 2995
    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    move-object/from16 v82, p0

    move-object/from16 v83, p1

    move-object/from16 v84, v7

    invoke-direct/range {v82 .. v88}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2996
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 2997
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3002
    .end local v78           #transition:Landroid/media/videoeditor/Transition;
    .end local v127           #transitionId:Ljava/lang/String;
    :sswitch_20
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v127

    .line 3003
    .restart local v127       #transitionId:Ljava/lang/String;
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 3004
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_TRANSITION_GET_THUMBNAIL: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v127

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    :cond_50
    move-object v0, v7

    move-object/from16 v1, v127

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->getTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;

    move-result-object v78

    .line 3008
    .restart local v78       #transition:Landroid/media/videoeditor/Transition;
    if-nez v78, :cond_51

    .line 3009
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transition not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v127

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3013
    :cond_51
    const-string v5, "height"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v107

    .line 3014
    .local v107, height:I
    invoke-virtual/range {v78 .. v78}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v80

    .line 3015
    .restart local v80       #afterMediaItem:Landroid/media/videoeditor/MediaItem;
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [Landroid/graphics/Bitmap;

    move-object/from16 v72, v0

    .line 3016
    .restart local v72       #thumbnails:[Landroid/graphics/Bitmap;
    if-eqz v80, :cond_52

    .line 3017
    const/4 v5, 0x0

    invoke-virtual/range {v80 .. v80}, Landroid/media/videoeditor/MediaItem;->getWidth()I

    move-result v6

    mul-int v6, v6, v107

    invoke-virtual/range {v80 .. v80}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v8

    div-int/2addr v6, v8

    invoke-virtual/range {v80 .. v80}, Landroid/media/videoeditor/MediaItem;->getTimelineDuration()J

    move-result-wide v8

    move-object/from16 v0, v80

    move v1, v6

    move/from16 v2, v107

    move-wide v3, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/videoeditor/MediaItem;->getThumbnail(IIJ)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v72, v5

    .line 3024
    :goto_10
    invoke-virtual/range {v78 .. v78}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v81

    .line 3025
    .restart local v81       #beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    if-eqz v81, :cond_53

    .line 3026
    const/4 v5, 0x1

    invoke-virtual/range {v81 .. v81}, Landroid/media/videoeditor/MediaItem;->getWidth()I

    move-result v6

    mul-int v6, v6, v107

    invoke-virtual/range {v81 .. v81}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v8

    div-int/2addr v6, v8

    const-wide/16 v8, 0x0

    move-object/from16 v0, v81

    move v1, v6

    move/from16 v2, v107

    move-wide v3, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/videoeditor/MediaItem;->getThumbnail(IIJ)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v72, v5

    .line 3033
    :goto_11
    const/16 v71, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x1

    move-object/from16 v68, p0

    move-object/from16 v69, p1

    move-object/from16 v70, v7

    invoke-direct/range {v68 .. v74}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 3021
    .end local v81           #beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    :cond_52
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v72, v5

    goto :goto_10

    .line 3030
    .restart local v81       #beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    :cond_53
    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v72, v5

    goto :goto_11

    .line 3038
    .end local v72           #thumbnails:[Landroid/graphics/Bitmap;
    .end local v78           #transition:Landroid/media/videoeditor/Transition;
    .end local v80           #afterMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v81           #beforeMediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v107           #height:I
    .end local v127           #transitionId:Ljava/lang/String;
    :sswitch_21
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 3039
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_EFFECT_ADD_COLOR: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    :cond_54
    const-string v5, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v10

    .line 3045
    .restart local v10       #mediaItem:Landroid/media/videoeditor/MediaItem;
    if-nez v10, :cond_55

    .line 3046
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MediaItem not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3051
    :cond_55
    invoke-virtual {v10}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v105

    .line 3052
    .restart local v105       #effects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    invoke-interface/range {v105 .. v105}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v109

    .restart local v109       #i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface/range {v109 .. v109}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface/range {v109 .. v109}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/media/videoeditor/Effect;

    .line 3053
    .restart local v82       #effect:Landroid/media/videoeditor/Effect;
    invoke-virtual/range {v82 .. v82}, Landroid/media/videoeditor/Effect;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/media/videoeditor/MediaItem;->removeEffect(Ljava/lang/String;)Landroid/media/videoeditor/Effect;

    goto :goto_12

    .line 3056
    .end local v82           #effect:Landroid/media/videoeditor/Effect;
    :cond_56
    new-instance v82, Landroid/media/videoeditor/EffectColor;

    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v84

    const-string v5, "s_time"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v85

    const-string v5, "duration"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v87

    const-string v5, "e_type"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v89

    const-string v5, "e_param"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v90

    move-object/from16 v83, v10

    invoke-direct/range {v82 .. v90}, Landroid/media/videoeditor/EffectColor;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJII)V

    .line 3062
    .restart local v82       #effect:Landroid/media/videoeditor/Effect;
    move-object v0, v10

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaItem;->addEffect(Landroid/media/videoeditor/Effect;)V

    .line 3064
    const/16 v86, 0x0

    new-instance v87, Lcom/android/videoeditor/service/MovieEffect;

    move-object/from16 v0, v87

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/MovieEffect;-><init>(Landroid/media/videoeditor/Effect;)V

    const/16 v88, 0x0

    const/16 v89, 0x0

    move-object/from16 v83, p0

    move-object/from16 v84, p1

    move-object/from16 v85, v7

    invoke-direct/range {v83 .. v89}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 3066
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 3067
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3072
    .end local v10           #mediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v82           #effect:Landroid/media/videoeditor/Effect;
    .end local v105           #effects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .end local v109           #i$:Ljava/util/Iterator;
    :sswitch_22
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 3073
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_EFFECT_ADD_IMAGE_KEN_BURNS: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    :cond_57
    const-string v5, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v10

    .line 3079
    .restart local v10       #mediaItem:Landroid/media/videoeditor/MediaItem;
    if-nez v10, :cond_58

    .line 3080
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MediaItem not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3085
    :cond_58
    invoke-virtual {v10}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v105

    .line 3086
    .restart local v105       #effects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    invoke-interface/range {v105 .. v105}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v109

    .restart local v109       #i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface/range {v109 .. v109}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-interface/range {v109 .. v109}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/media/videoeditor/Effect;

    .line 3087
    .restart local v82       #effect:Landroid/media/videoeditor/Effect;
    invoke-virtual/range {v82 .. v82}, Landroid/media/videoeditor/Effect;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/media/videoeditor/MediaItem;->removeEffect(Ljava/lang/String;)Landroid/media/videoeditor/Effect;

    goto :goto_13

    .line 3090
    .end local v82           #effect:Landroid/media/videoeditor/Effect;
    :cond_59
    new-instance v82, Landroid/media/videoeditor/EffectKenBurns;

    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v84

    const-string v5, "start_rect"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v85

    check-cast v85, Landroid/graphics/Rect;

    const-string v5, "end_rect"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v86

    check-cast v86, Landroid/graphics/Rect;

    const-string v5, "s_time"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v87

    const-string v5, "duration"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v89

    move-object/from16 v83, v10

    invoke-direct/range {v82 .. v90}, Landroid/media/videoeditor/EffectKenBurns;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;JJ)V

    .line 3096
    .restart local v82       #effect:Landroid/media/videoeditor/Effect;
    move-object v0, v10

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaItem;->addEffect(Landroid/media/videoeditor/Effect;)V

    .line 3098
    const/16 v86, 0x0

    new-instance v87, Lcom/android/videoeditor/service/MovieEffect;

    move-object/from16 v0, v87

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/MovieEffect;-><init>(Landroid/media/videoeditor/Effect;)V

    const/16 v88, 0x0

    const/16 v89, 0x0

    move-object/from16 v83, p0

    move-object/from16 v84, p1

    move-object/from16 v85, v7

    invoke-direct/range {v83 .. v89}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 3100
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 3101
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3106
    .end local v10           #mediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v82           #effect:Landroid/media/videoeditor/Effect;
    .end local v105           #effects:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .end local v109           #i$:Ljava/util/Iterator;
    :sswitch_23
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 3107
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_EFFECT_REMOVE: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    :cond_5a
    const-string v5, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v10

    .line 3113
    .restart local v10       #mediaItem:Landroid/media/videoeditor/MediaItem;
    if-nez v10, :cond_5b

    .line 3114
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MediaItem not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3118
    :cond_5b
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/media/videoeditor/MediaItem;->removeEffect(Ljava/lang/String;)Landroid/media/videoeditor/Effect;

    .line 3120
    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    move-object/from16 v83, p0

    move-object/from16 v84, p1

    move-object/from16 v85, v7

    invoke-direct/range {v83 .. v89}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 3121
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 3122
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3127
    .end local v10           #mediaItem:Landroid/media/videoeditor/MediaItem;
    :sswitch_24
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 3128
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_OVERLAY_ADD: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    :cond_5c
    const-string v5, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v10

    .line 3134
    .restart local v10       #mediaItem:Landroid/media/videoeditor/MediaItem;
    if-nez v10, :cond_5d

    .line 3135
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MediaItem not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3140
    :cond_5d
    invoke-virtual {v10}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v121

    .line 3141
    .restart local v121       #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface/range {v121 .. v121}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v109

    .restart local v109       #i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface/range {v109 .. v109}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface/range {v109 .. v109}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Landroid/media/videoeditor/Overlay;

    .line 3142
    .restart local v90       #overlay:Landroid/media/videoeditor/Overlay;
    invoke-virtual/range {v90 .. v90}, Landroid/media/videoeditor/Overlay;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/media/videoeditor/MediaItem;->removeOverlay(Ljava/lang/String;)Landroid/media/videoeditor/Overlay;

    goto :goto_14

    .line 3146
    .end local v90           #overlay:Landroid/media/videoeditor/Overlay;
    :cond_5e
    instance-of v5, v10, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v5, :cond_5f

    .line 3147
    move-object v0, v10

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/media/videoeditor/MediaVideoItem;->getWidth()I

    move-result v88

    .line 3148
    .local v88, scaledWidth:I
    move-object v0, v10

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result v89

    .line 3154
    .local v89, scaledHeight:I
    :goto_15
    const-string v5, "attributes"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v128

    .line 3156
    .local v128, userAttributes:Landroid/os/Bundle;
    invoke-static/range {v128 .. v128}, Lcom/android/videoeditor/service/MovieOverlay;->getType(Landroid/os/Bundle;)I

    move-result v85

    .line 3157
    .local v85, overlayType:I
    invoke-static/range {v128 .. v128}, Lcom/android/videoeditor/service/MovieOverlay;->getTitle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v86

    .line 3158
    .local v86, title:Ljava/lang/String;
    invoke-static/range {v128 .. v128}, Lcom/android/videoeditor/service/MovieOverlay;->getSubtitle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v87

    .line 3160
    .local v87, subTitle:Ljava/lang/String;
    new-instance v90, Landroid/media/videoeditor/OverlayFrame;

    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v83

    const/16 v84, 0x0

    invoke-static/range {v83 .. v89}, Lcom/android/videoeditor/util/ImageUtils;->buildOverlayBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v93

    const-string v5, "s_time"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v94

    const-string v5, "duration"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v96

    move-object/from16 v91, v10

    invoke-direct/range {v90 .. v97}, Landroid/media/videoeditor/OverlayFrame;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Landroid/graphics/Bitmap;JJ)V

    .line 3168
    .local v90, overlay:Landroid/media/videoeditor/OverlayFrame;
    invoke-virtual/range {v128 .. v128}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v109

    :goto_16
    invoke-interface/range {v109 .. v109}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface/range {v109 .. v109}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v118

    check-cast v118, Ljava/lang/String;

    .line 3169
    .local v118, name:Ljava/lang/String;
    invoke-static/range {v118 .. v118}, Lcom/android/videoeditor/service/MovieOverlay;->getAttributeType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 3170
    move-object/from16 v0, v128

    move-object/from16 v1, v118

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v90

    move-object/from16 v1, v118

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/OverlayFrame;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 3150
    .end local v85           #overlayType:I
    .end local v86           #title:Ljava/lang/String;
    .end local v87           #subTitle:Ljava/lang/String;
    .end local v88           #scaledWidth:I
    .end local v89           #scaledHeight:I
    .end local v90           #overlay:Landroid/media/videoeditor/OverlayFrame;
    .end local v118           #name:Ljava/lang/String;
    .end local v128           #userAttributes:Landroid/os/Bundle;
    :cond_5f
    move-object v0, v10

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v88

    .line 3151
    .restart local v88       #scaledWidth:I
    move-object v0, v10

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v89

    .restart local v89       #scaledHeight:I
    goto/16 :goto_15

    .line 3173
    .restart local v85       #overlayType:I
    .restart local v86       #title:Ljava/lang/String;
    .restart local v87       #subTitle:Ljava/lang/String;
    .restart local v90       #overlay:Landroid/media/videoeditor/OverlayFrame;
    .restart local v118       #name:Ljava/lang/String;
    .restart local v128       #userAttributes:Landroid/os/Bundle;
    :cond_60
    move-object/from16 v0, v128

    move-object/from16 v1, v118

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v90

    move-object/from16 v1, v118

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/OverlayFrame;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 3176
    .end local v118           #name:Ljava/lang/String;
    :cond_61
    move-object v0, v10

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaItem;->addOverlay(Landroid/media/videoeditor/Overlay;)V

    .line 3178
    const/16 v94, 0x0

    new-instance v95, Lcom/android/videoeditor/service/MovieOverlay;

    move-object/from16 v0, v95

    move-object/from16 v1, v90

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/MovieOverlay;-><init>(Landroid/media/videoeditor/Overlay;)V

    const/16 v96, 0x0

    const/16 v97, 0x0

    move-object/from16 v91, p0

    move-object/from16 v92, p1

    move-object/from16 v93, v7

    invoke-direct/range {v91 .. v97}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 3180
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 3181
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3186
    .end local v10           #mediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v85           #overlayType:I
    .end local v86           #title:Ljava/lang/String;
    .end local v87           #subTitle:Ljava/lang/String;
    .end local v88           #scaledWidth:I
    .end local v89           #scaledHeight:I
    .end local v90           #overlay:Landroid/media/videoeditor/OverlayFrame;
    .end local v109           #i$:Ljava/util/Iterator;
    .end local v121           #overlays:Ljava/util/List;,"Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    .end local v128           #userAttributes:Landroid/os/Bundle;
    :sswitch_25
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 3187
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_OVERLAY_REMOVE: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    :cond_62
    const-string v5, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v10

    .line 3193
    .restart local v10       #mediaItem:Landroid/media/videoeditor/MediaItem;
    if-nez v10, :cond_63

    .line 3194
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MediaItem not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3198
    :cond_63
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/media/videoeditor/MediaItem;->removeOverlay(Ljava/lang/String;)Landroid/media/videoeditor/Overlay;

    .line 3200
    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    move-object/from16 v91, p0

    move-object/from16 v92, p1

    move-object/from16 v93, v7

    invoke-direct/range {v91 .. v97}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 3201
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 3202
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3207
    .end local v10           #mediaItem:Landroid/media/videoeditor/MediaItem;
    :sswitch_26
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 3208
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_OVERLAY_SET_START_TIME: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3212
    :cond_64
    const-string v5, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v10

    .line 3214
    .restart local v10       #mediaItem:Landroid/media/videoeditor/MediaItem;
    if-nez v10, :cond_65

    .line 3215
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MediaItem not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3219
    :cond_65
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/media/videoeditor/MediaItem;->getOverlay(Ljava/lang/String;)Landroid/media/videoeditor/Overlay;

    move-result-object v90

    .line 3221
    .local v90, overlay:Landroid/media/videoeditor/Overlay;
    if-nez v90, :cond_66

    .line 3222
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Overlay not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3226
    :cond_66
    const-string v5, "s_time"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    move-object/from16 v0, v90

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/Overlay;->setStartTime(J)V

    .line 3228
    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    move-object/from16 v91, p0

    move-object/from16 v92, p1

    move-object/from16 v93, v7

    invoke-direct/range {v91 .. v97}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 3229
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 3230
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3235
    .end local v10           #mediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v90           #overlay:Landroid/media/videoeditor/Overlay;
    :sswitch_27
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 3236
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_OVERLAY_SET_DURATION: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    :cond_67
    const-string v5, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v10

    .line 3242
    .restart local v10       #mediaItem:Landroid/media/videoeditor/MediaItem;
    if-nez v10, :cond_68

    .line 3243
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MediaItem not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3247
    :cond_68
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/media/videoeditor/MediaItem;->getOverlay(Ljava/lang/String;)Landroid/media/videoeditor/Overlay;

    move-result-object v90

    .line 3249
    .restart local v90       #overlay:Landroid/media/videoeditor/Overlay;
    if-nez v90, :cond_69

    .line 3250
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Overlay not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3254
    :cond_69
    const-string v5, "duration"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    move-object/from16 v0, v90

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/Overlay;->setDuration(J)V

    .line 3256
    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    move-object/from16 v91, p0

    move-object/from16 v92, p1

    move-object/from16 v93, v7

    invoke-direct/range {v91 .. v97}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 3257
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 3258
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3263
    .end local v10           #mediaItem:Landroid/media/videoeditor/MediaItem;
    .end local v90           #overlay:Landroid/media/videoeditor/Overlay;
    :sswitch_28
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 3264
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_OVERLAY_SET_ATTRIBUTES: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    :cond_6a
    const-string v5, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Landroid/media/videoeditor/VideoEditor;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v10

    .line 3270
    .restart local v10       #mediaItem:Landroid/media/videoeditor/MediaItem;
    if-nez v10, :cond_6b

    .line 3271
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MediaItem not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "r_item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3275
    :cond_6b
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/media/videoeditor/MediaItem;->getOverlay(Ljava/lang/String;)Landroid/media/videoeditor/Overlay;

    move-result-object v90

    .line 3277
    .restart local v90       #overlay:Landroid/media/videoeditor/Overlay;
    if-nez v90, :cond_6c

    .line 3278
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Overlay not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3283
    :cond_6c
    instance-of v5, v10, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v5, :cond_6d

    .line 3284
    move-object v0, v10

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/media/videoeditor/MediaVideoItem;->getWidth()I

    move-result v88

    .line 3285
    .restart local v88       #scaledWidth:I
    check-cast v10, Landroid/media/videoeditor/MediaVideoItem;

    .end local v10           #mediaItem:Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v10}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result v89

    .line 3291
    .restart local v89       #scaledHeight:I
    :goto_17
    const-string v5, "attributes"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v128

    .line 3292
    .restart local v128       #userAttributes:Landroid/os/Bundle;
    invoke-static/range {v128 .. v128}, Lcom/android/videoeditor/service/MovieOverlay;->getType(Landroid/os/Bundle;)I

    move-result v85

    .line 3293
    .restart local v85       #overlayType:I
    invoke-static/range {v128 .. v128}, Lcom/android/videoeditor/service/MovieOverlay;->getTitle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v86

    .line 3294
    .restart local v86       #title:Ljava/lang/String;
    invoke-static/range {v128 .. v128}, Lcom/android/videoeditor/service/MovieOverlay;->getSubtitle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v87

    .line 3296
    .restart local v87       #subTitle:Ljava/lang/String;
    move-object/from16 v0, v90

    check-cast v0, Landroid/media/videoeditor/OverlayFrame;

    move-object/from16 v91, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v83

    const/16 v84, 0x0

    invoke-static/range {v83 .. v89}, Lcom/android/videoeditor/util/ImageUtils;->buildOverlayBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, v91

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/OverlayFrame;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3300
    invoke-virtual/range {v128 .. v128}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v109

    .restart local v109       #i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v109 .. v109}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-interface/range {v109 .. v109}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v118

    check-cast v118, Ljava/lang/String;

    .line 3301
    .restart local v118       #name:Ljava/lang/String;
    invoke-static/range {v118 .. v118}, Lcom/android/videoeditor/service/MovieOverlay;->getAttributeType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 3302
    move-object/from16 v0, v128

    move-object/from16 v1, v118

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v90

    move-object/from16 v1, v118

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/Overlay;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 3287
    .end local v85           #overlayType:I
    .end local v86           #title:Ljava/lang/String;
    .end local v87           #subTitle:Ljava/lang/String;
    .end local v88           #scaledWidth:I
    .end local v89           #scaledHeight:I
    .end local v109           #i$:Ljava/util/Iterator;
    .end local v118           #name:Ljava/lang/String;
    .end local v128           #userAttributes:Landroid/os/Bundle;
    .restart local v10       #mediaItem:Landroid/media/videoeditor/MediaItem;
    :cond_6d
    move-object v0, v10

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v88

    .line 3288
    .restart local v88       #scaledWidth:I
    check-cast v10, Landroid/media/videoeditor/MediaImageItem;

    .end local v10           #mediaItem:Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v10}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v89

    .restart local v89       #scaledHeight:I
    goto :goto_17

    .line 3305
    .restart local v85       #overlayType:I
    .restart local v86       #title:Ljava/lang/String;
    .restart local v87       #subTitle:Ljava/lang/String;
    .restart local v109       #i$:Ljava/util/Iterator;
    .restart local v118       #name:Ljava/lang/String;
    .restart local v128       #userAttributes:Landroid/os/Bundle;
    :cond_6e
    move-object/from16 v0, v128

    move-object/from16 v1, v118

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v90

    move-object/from16 v1, v118

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/Overlay;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 3309
    .end local v118           #name:Ljava/lang/String;
    :cond_6f
    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    move-object/from16 v91, p0

    move-object/from16 v92, p1

    move-object/from16 v93, v7

    invoke-direct/range {v91 .. v97}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 3310
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 3311
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3316
    .end local v85           #overlayType:I
    .end local v86           #title:Ljava/lang/String;
    .end local v87           #subTitle:Ljava/lang/String;
    .end local v88           #scaledWidth:I
    .end local v89           #scaledHeight:I
    .end local v90           #overlay:Landroid/media/videoeditor/Overlay;
    .end local v109           #i$:Ljava/util/Iterator;
    .end local v128           #userAttributes:Landroid/os/Bundle;
    :sswitch_29
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 3317
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_AUDIO_TRACK_ADD: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    :cond_70
    const-string v5, "filename"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v25

    check-cast v25, Landroid/net/Uri;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 3322
    .restart local v25       #data:Landroid/net/Uri;
    const/16 v35, 0x0

    .line 3324
    .restart local v35       #filename:Ljava/lang/String;
    const/16 v101, 0x0

    .line 3326
    .restart local v101       #cursor:Landroid/database/Cursor;
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/service/ApiService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v26, v5

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v24 .. v29}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v101

    .line 3328
    invoke-interface/range {v101 .. v101}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_71

    .line 3329
    const/4 v5, 0x0

    move-object/from16 v0, v101

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    move-result-object v35

    .line 3332
    :cond_71
    if-eqz v101, :cond_72

    .line 3333
    :try_start_10
    invoke-interface/range {v101 .. v101}, Landroid/database/Cursor;->close()V

    .line 3337
    :cond_72
    if-nez v35, :cond_74

    .line 3338
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Media file not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3332
    :catchall_2
    move-exception v5

    if-eqz v101, :cond_73

    .line 3333
    invoke-interface/range {v101 .. v101}, Landroid/database/Cursor;->close()V

    :cond_73
    throw v5

    .line 3341
    :cond_74
    new-instance v99, Landroid/media/videoeditor/AudioTrack;

    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v99

    move-object v1, v7

    move-object v2, v5

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Landroid/media/videoeditor/AudioTrack;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;)V

    .line 3343
    .local v99, audioTrack:Landroid/media/videoeditor/AudioTrack;
    const/16 v5, 0x14

    const/16 v6, 0x41

    move-object/from16 v0, v99

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/AudioTrack;->enableDucking(II)V

    .line 3344
    const/16 v5, 0x32

    move-object/from16 v0, v99

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/AudioTrack;->setVolume(I)V

    .line 3345
    const-string v5, "loop"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 3346
    invoke-virtual/range {v99 .. v99}, Landroid/media/videoeditor/AudioTrack;->enableLoop()V

    .line 3351
    :goto_19
    move-object v0, v7

    move-object/from16 v1, v99

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->addAudioTrack(Landroid/media/videoeditor/AudioTrack;)V

    .line 3353
    const/16 v94, 0x0

    new-instance v95, Lcom/android/videoeditor/service/MovieAudioTrack;

    move-object/from16 v0, v95

    move-object/from16 v1, v99

    invoke-direct {v0, v1}, Lcom/android/videoeditor/service/MovieAudioTrack;-><init>(Landroid/media/videoeditor/AudioTrack;)V

    const/16 v96, 0x0

    const/16 v97, 0x0

    move-object/from16 v91, p0

    move-object/from16 v92, p1

    move-object/from16 v93, v7

    invoke-direct/range {v91 .. v97}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 3356
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 3357
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3348
    :cond_75
    invoke-virtual/range {v99 .. v99}, Landroid/media/videoeditor/AudioTrack;->disableLoop()V

    goto :goto_19

    .line 3362
    .end local v25           #data:Landroid/net/Uri;
    .end local v35           #filename:Ljava/lang/String;
    .end local v99           #audioTrack:Landroid/media/videoeditor/AudioTrack;
    .end local v101           #cursor:Landroid/database/Cursor;
    :sswitch_2a
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 3363
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_AUDIO_TRACK_REMOVE: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "item_id"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3367
    :cond_76
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Landroid/media/videoeditor/VideoEditor;->removeAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;

    .line 3369
    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    move-object/from16 v91, p0

    move-object/from16 v92, p1

    move-object/from16 v93, v7

    invoke-direct/range {v91 .. v97}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 3370
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 3371
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3376
    :sswitch_2b
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v100

    .line 3377
    .local v100, audioTrackId:Ljava/lang/String;
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 3378
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_AUDIO_TRACK_SET_BOUNDARIES: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    :cond_77
    move-object v0, v7

    move-object/from16 v1, v100

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->getAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;

    move-result-object v99

    .line 3382
    .restart local v99       #audioTrack:Landroid/media/videoeditor/AudioTrack;
    if-nez v99, :cond_78

    .line 3383
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AudioTrack not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3387
    :cond_78
    const-string v5, "b_boundary"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v8, "e_boundary"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v8

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, v99

    move-wide v1, v5

    move-wide v3, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/videoeditor/AudioTrack;->setExtractBoundaries(JJ)V

    .line 3390
    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    move-object/from16 v91, p0

    move-object/from16 v92, p1

    move-object/from16 v93, v7

    invoke-direct/range {v91 .. v97}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 3391
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 3392
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3397
    .end local v99           #audioTrack:Landroid/media/videoeditor/AudioTrack;
    .end local v100           #audioTrackId:Ljava/lang/String;
    :sswitch_2c
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v100

    .line 3398
    .restart local v100       #audioTrackId:Ljava/lang/String;
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 3399
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_AUDIO_TRACK_SET_LOOP: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    :cond_79
    move-object v0, v7

    move-object/from16 v1, v100

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->getAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;

    move-result-object v99

    .line 3403
    .restart local v99       #audioTrack:Landroid/media/videoeditor/AudioTrack;
    if-nez v99, :cond_7a

    .line 3404
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AudioTrack not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3408
    :cond_7a
    const-string v5, "loop"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 3409
    invoke-virtual/range {v99 .. v99}, Landroid/media/videoeditor/AudioTrack;->enableLoop()V

    .line 3414
    :goto_1a
    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    move-object/from16 v91, p0

    move-object/from16 v92, p1

    move-object/from16 v93, v7

    invoke-direct/range {v91 .. v97}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 3415
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 3416
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3411
    :cond_7b
    invoke-virtual/range {v99 .. v99}, Landroid/media/videoeditor/AudioTrack;->disableLoop()V

    goto :goto_1a

    .line 3421
    .end local v99           #audioTrack:Landroid/media/videoeditor/AudioTrack;
    .end local v100           #audioTrackId:Ljava/lang/String;
    :sswitch_2d
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v100

    .line 3422
    .restart local v100       #audioTrackId:Ljava/lang/String;
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 3423
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_AUDIO_TRACK_SET_DUCK: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3426
    :cond_7c
    move-object v0, v7

    move-object/from16 v1, v100

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->getAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;

    move-result-object v99

    .line 3427
    .restart local v99       #audioTrack:Landroid/media/videoeditor/AudioTrack;
    if-nez v99, :cond_7d

    .line 3428
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AudioTrack not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3432
    :cond_7d
    const-string v5, "duck"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 3433
    const/16 v5, 0x14

    const/16 v6, 0x41

    move-object/from16 v0, v99

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/media/videoeditor/AudioTrack;->enableDucking(II)V

    .line 3438
    :goto_1b
    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    move-object/from16 v91, p0

    move-object/from16 v92, p1

    move-object/from16 v93, v7

    invoke-direct/range {v91 .. v97}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 3439
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 3440
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3435
    :cond_7e
    invoke-virtual/range {v99 .. v99}, Landroid/media/videoeditor/AudioTrack;->disableDucking()V

    goto :goto_1b

    .line 3445
    .end local v99           #audioTrack:Landroid/media/videoeditor/AudioTrack;
    .end local v100           #audioTrackId:Ljava/lang/String;
    :sswitch_2e
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v100

    .line 3446
    .restart local v100       #audioTrackId:Ljava/lang/String;
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 3447
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_AUDIO_TRACK_SET_VOLUME: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    :cond_7f
    move-object v0, v7

    move-object/from16 v1, v100

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->getAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;

    move-result-object v99

    .line 3451
    .restart local v99       #audioTrack:Landroid/media/videoeditor/AudioTrack;
    if-nez v99, :cond_80

    .line 3452
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AudioTrack not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3456
    :cond_80
    const-string v5, "volume"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, v99

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/AudioTrack;->setVolume(I)V

    .line 3458
    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    move-object/from16 v91, p0

    move-object/from16 v92, p1

    move-object/from16 v93, v7

    invoke-direct/range {v91 .. v97}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 3459
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 3460
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3465
    .end local v99           #audioTrack:Landroid/media/videoeditor/AudioTrack;
    .end local v100           #audioTrackId:Ljava/lang/String;
    :sswitch_2f
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v100

    .line 3466
    .restart local v100       #audioTrackId:Ljava/lang/String;
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 3467
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_AUDIO_TRACK_SET_MUTE: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    :cond_81
    move-object v0, v7

    move-object/from16 v1, v100

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->getAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;

    move-result-object v99

    .line 3471
    .restart local v99       #audioTrack:Landroid/media/videoeditor/AudioTrack;
    if-nez v99, :cond_82

    .line 3472
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AudioTrack not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3476
    :cond_82
    const-string v5, "mute"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    move-object/from16 v0, v99

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/AudioTrack;->setMute(Z)V

    .line 3478
    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    move-object/from16 v91, p0

    move-object/from16 v92, p1

    move-object/from16 v93, v7

    invoke-direct/range {v91 .. v97}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 3479
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/videoeditor/service/ApiService;->generatePreview(Landroid/media/videoeditor/VideoEditor;Z)V

    .line 3480
    invoke-direct/range {p0 .. p1}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3485
    .end local v99           #audioTrack:Landroid/media/videoeditor/AudioTrack;
    .end local v100           #audioTrackId:Ljava/lang/String;
    :sswitch_30
    const-string v5, "item_id"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v100

    .line 3486
    .restart local v100       #audioTrackId:Ljava/lang/String;
    const-string v5, "VEApiService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 3487
    const-string v5, "VEApiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_AUDIO_TRACK_EXTRACT_AUDIO_WAVEFORM: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3490
    :cond_83
    move-object v0, v7

    move-object/from16 v1, v100

    invoke-interface {v0, v1}, Landroid/media/videoeditor/VideoEditor;->getAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;

    move-result-object v99

    .line 3491
    .restart local v99       #audioTrack:Landroid/media/videoeditor/AudioTrack;
    if-nez v99, :cond_84

    .line 3492
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AudioTrack not found: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3496
    :cond_84
    invoke-virtual/range {v99 .. v99}, Landroid/media/videoeditor/AudioTrack;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v77

    .line 3497
    .restart local v77       #waveformData:Landroid/media/videoeditor/WaveformData;
    if-nez v77, :cond_85

    .line 3498
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move-object/from16 v3, v99

    invoke-direct {v0, v1, v2, v3}, Lcom/android/videoeditor/service/ApiService;->extractAudioTrackAudioWaveform(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Landroid/media/videoeditor/AudioTrack;)V

    .line 3499
    const/16 v94, 0x0

    invoke-virtual/range {v99 .. v99}, Landroid/media/videoeditor/AudioTrack;->getWaveformData()Landroid/media/videoeditor/WaveformData;

    move-result-object v95

    const/16 v96, 0x0

    const/16 v97, 0x1

    move-object/from16 v91, p0

    move-object/from16 v92, p1

    move-object/from16 v93, v7

    invoke-direct/range {v91 .. v97}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 3502
    :cond_85
    const/16 v94, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x1

    move-object/from16 v91, p0

    move-object/from16 v92, p1

    move-object/from16 v93, v7

    move-object/from16 v95, v77

    invoke-direct/range {v91 .. v97}, Lcom/android/videoeditor/service/ApiService;->completeRequest(Landroid/content/Intent;Landroid/media/videoeditor/VideoEditor;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_0

    .line 2050
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch

    .line 2068
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_9
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x8 -> :sswitch_a
        0x9 -> :sswitch_b
        0xa -> :sswitch_4
        0xb -> :sswitch_5
        0xd -> :sswitch_1
        0x64 -> :sswitch_c
        0x65 -> :sswitch_d
        0x66 -> :sswitch_10
        0x67 -> :sswitch_11
        0x68 -> :sswitch_12
        0x69 -> :sswitch_13
        0x6a -> :sswitch_14
        0x6b -> :sswitch_17
        0x6c -> :sswitch_18
        0x6d -> :sswitch_19
        0x6f -> :sswitch_15
        0x70 -> :sswitch_16
        0x71 -> :sswitch_e
        0x72 -> :sswitch_f
        0xc8 -> :sswitch_21
        0xc9 -> :sswitch_22
        0xca -> :sswitch_23
        0x12c -> :sswitch_1a
        0x12d -> :sswitch_1b
        0x12e -> :sswitch_1c
        0x12f -> :sswitch_1d
        0x130 -> :sswitch_1e
        0x131 -> :sswitch_1f
        0x132 -> :sswitch_20
        0x190 -> :sswitch_24
        0x191 -> :sswitch_25
        0x192 -> :sswitch_26
        0x193 -> :sswitch_27
        0x194 -> :sswitch_28
        0x1f4 -> :sswitch_29
        0x1f5 -> :sswitch_2a
        0x1f6 -> :sswitch_2e
        0x1f7 -> :sswitch_2f
        0x1f9 -> :sswitch_2b
        0x1fa -> :sswitch_2c
        0x1fb -> :sswitch_2d
        0x1fc -> :sswitch_30
    .end sparse-switch
.end method
