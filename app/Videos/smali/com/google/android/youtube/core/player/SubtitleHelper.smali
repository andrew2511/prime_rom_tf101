.class public Lcom/google/android/youtube/core/player/SubtitleHelper;
.super Ljava/lang/Object;
.source "SubtitleHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/model/SubtitleTrack;",
        "Lcom/google/android/youtube/core/model/Subtitle;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SOURCE_LANGUAGE_CODE:Ljava/lang/String; = "en"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final activityCallback:Lcom/google/android/youtube/core/async/ActivityCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/ActivityCallback",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            "Lcom/google/android/youtube/core/model/Subtitle;",
            ">;"
        }
    .end annotation
.end field

.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

.field private languageCode:Ljava/lang/String;

.field private final preferences:Landroid/content/SharedPreferences;

.field private final subtitleOverlay:Lcom/google/android/youtube/core/player/SubtitleOverlay;

.field private final subtitleRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            "Lcom/google/android/youtube/core/model/Subtitle;",
            ">;"
        }
    .end annotation
.end field

.field private final subtitleTracksRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/player/SubtitleOverlay;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V
    .locals 1
    .parameter "activity"
    .parameter "preferences"
    .parameter "subtitleOverlay"
    .parameter "controllerOverlay"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/SharedPreferences;",
            "Lcom/google/android/youtube/core/player/SubtitleOverlay;",
            "Lcom/google/android/youtube/core/player/ControllerOverlay;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            ">;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            "Lcom/google/android/youtube/core/model/Subtitle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p5, subtitleTracksRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/lang/String;Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;>;"
    .local p6, subtitleRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/model/Subtitle;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->activity:Landroid/app/Activity;

    .line 54
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->preferences:Landroid/content/SharedPreferences;

    .line 55
    invoke-static {p5}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->subtitleTracksRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 56
    invoke-static {p6}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->subtitleRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 57
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/SubtitleOverlay;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->subtitleOverlay:Lcom/google/android/youtube/core/player/SubtitleOverlay;

    .line 58
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/ControllerOverlay;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    .line 59
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    invoke-direct {v0, p1, p0}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->activityCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/player/SubtitleHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/youtube/core/player/SubtitleHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->languageCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/player/SubtitleHelper;)Lcom/google/android/youtube/core/async/ActivityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->activityCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/core/player/SubtitleHelper;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->subtitleRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/core/player/SubtitleHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/SubtitleHelper;->hideSubtitle()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/youtube/core/player/SubtitleHelper;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/core/player/SubtitleHelper;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->adapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/youtube/core/player/SubtitleHelper;Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->adapter:Landroid/widget/ArrayAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/youtube/core/player/SubtitleHelper;)Lcom/google/android/youtube/core/player/SubtitleOverlay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->subtitleOverlay:Lcom/google/android/youtube/core/player/SubtitleOverlay;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/youtube/core/player/SubtitleHelper;)Lcom/google/android/youtube/core/player/ControllerOverlay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/youtube/core/player/SubtitleHelper;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private hideSubtitle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->subtitleOverlay:Lcom/google/android/youtube/core/player/SubtitleOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->setSubtitle(Lcom/google/android/youtube/core/model/Subtitle;)V

    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setShowCC(Z)V

    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setCC(Z)V

    .line 67
    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/youtube/core/model/Video;)V
    .locals 5
    .parameter "video"

    .prologue
    .line 80
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/SubtitleHelper;->hideSubtitle()V

    .line 82
    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->captionTracksUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setShowCC(Z)V

    .line 88
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "subtitles_size"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, sizeString:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 91
    .local v0, size:I
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->subtitleOverlay:Lcom/google/android/youtube/core/player/SubtitleOverlay;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->setFontSizeLevel(I)V

    .line 93
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "subtitles_language_code"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->languageCode:Ljava/lang/String;

    .line 94
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->languageCode:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializing to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->languageCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->subtitleTracksRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    new-instance v4, Lcom/google/android/youtube/core/player/SubtitleHelper$1;

    invoke-direct {v4, p0}, Lcom/google/android/youtube/core/player/SubtitleHelper$1;-><init>(Lcom/google/android/youtube/core/player/SubtitleHelper;)V

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_0
.end method

.method public onButtonClick(Ljava/lang/String;)V
    .locals 4
    .parameter "videoId"

    .prologue
    .line 138
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->languageCode:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->subtitleTracksRequester:Lcom/google/android/youtube/core/async/Requester;

    new-instance v1, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/google/android/youtube/core/player/SubtitleHelper$2;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/core/player/SubtitleHelper$2;-><init>(Lcom/google/android/youtube/core/player/SubtitleHelper;)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 168
    return-void
.end method

.method public onError(Lcom/google/android/youtube/core/model/SubtitleTrack;Ljava/lang/Exception;)V
    .locals 1
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 75
    const-string v0, "error retrieving subtitle"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/SubtitleHelper;->hideSubtitle()V

    .line 77
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    check-cast p1, Lcom/google/android/youtube/core/model/SubtitleTrack;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/SubtitleHelper;->onError(Lcom/google/android/youtube/core/model/SubtitleTrack;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/model/Subtitle;)V
    .locals 2
    .parameter "request"
    .parameter "response"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->subtitleOverlay:Lcom/google/android/youtube/core/player/SubtitleOverlay;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->setSubtitle(Lcom/google/android/youtube/core/model/Subtitle;)V

    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setCC(Z)V

    .line 72
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    check-cast p1, Lcom/google/android/youtube/core/model/SubtitleTrack;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Subtitle;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/SubtitleHelper;->onResponse(Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/model/Subtitle;)V

    return-void
.end method

.method protected showDialog()V
    .locals 4

    .prologue
    .line 172
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0094

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper;->adapter:Landroid/widget/ArrayAdapter;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/youtube/core/player/SubtitleHelper$3;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/core/player/SubtitleHelper$3;-><init>(Lcom/google/android/youtube/core/player/SubtitleHelper;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 193
    return-void
.end method
