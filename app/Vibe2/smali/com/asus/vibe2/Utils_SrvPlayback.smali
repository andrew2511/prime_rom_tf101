.class public Lcom/asus/vibe2/Utils_SrvPlayback;
.super Ljava/lang/Object;
.source "Utils_SrvPlayback.java"


# static fields
.field private static mBoundService:Lcom/asus/vibe2/Srv_Playback;

.field private static mConnection:Landroid/content/ServiceConnection;

.field private static mPanelController:Lcom/asus/vibe2/Utils_PanelController;

.field private static mRegisteredActivityClients:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/asus/vibe2/Utils_SrvPlayback;->mRegisteredActivityClients:Ljava/util/HashSet;

    .line 21
    sput-object v1, Lcom/asus/vibe2/Utils_SrvPlayback;->mBoundService:Lcom/asus/vibe2/Srv_Playback;

    .line 22
    sput-object v1, Lcom/asus/vibe2/Utils_SrvPlayback;->mPanelController:Lcom/asus/vibe2/Utils_PanelController;

    .line 24
    new-instance v0, Lcom/asus/vibe2/Utils_SrvPlayback$1;

    invoke-direct {v0}, Lcom/asus/vibe2/Utils_SrvPlayback$1;-><init>()V

    sput-object v0, Lcom/asus/vibe2/Utils_SrvPlayback;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/asus/vibe2/Srv_Playback;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/asus/vibe2/Utils_SrvPlayback;->mBoundService:Lcom/asus/vibe2/Srv_Playback;

    return-object v0
.end method

.method static synthetic access$002(Lcom/asus/vibe2/Srv_Playback;)Lcom/asus/vibe2/Srv_Playback;
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    sput-object p0, Lcom/asus/vibe2/Utils_SrvPlayback;->mBoundService:Lcom/asus/vibe2/Srv_Playback;

    return-object p0
.end method

.method public static doBindService(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/asus/vibe2/Srv_Playback;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 38
    sget-object v0, Lcom/asus/vibe2/Utils_SrvPlayback;->mRegisteredActivityClients:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lcom/asus/vibe2/Utils_SrvPlayback;->mRegisteredActivityClients:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/asus/vibe2/Srv_Playback;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/asus/vibe2/Utils_SrvPlayback;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 42
    :cond_0
    return-void
.end method

.method public static doUnbindService(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 45
    sget-object v0, Lcom/asus/vibe2/Utils_SrvPlayback;->mRegisteredActivityClients:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/asus/vibe2/Utils_SrvPlayback;->mBoundService:Lcom/asus/vibe2/Srv_Playback;

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/asus/vibe2/Utils_SrvPlayback;->mRegisteredActivityClients:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/asus/vibe2/Utils_SrvPlayback;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 49
    :cond_0
    return-void
.end method

.method public static getPlayerState()I
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/asus/vibe2/Utils_SrvPlayback;->mBoundService:Lcom/asus/vibe2/Srv_Playback;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/asus/vibe2/Utils_SrvPlayback;->mBoundService:Lcom/asus/vibe2/Srv_Playback;

    invoke-virtual {v0}, Lcom/asus/vibe2/Srv_Playback;->getPlayerState()I

    move-result v0

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getPlayingUri()Lcom/asus/vibe/item/VibeUri;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/asus/vibe2/Utils_SrvPlayback;->mBoundService:Lcom/asus/vibe2/Srv_Playback;

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/asus/vibe2/Utils_SrvPlayback;->mBoundService:Lcom/asus/vibe2/Srv_Playback;

    invoke-virtual {v0}, Lcom/asus/vibe2/Srv_Playback;->getPlayingUri()Lcom/asus/vibe/item/VibeUri;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static play(Lcom/asus/vibe/item/VibeParam;)V
    .locals 1
    .parameter "param"

    .prologue
    .line 52
    sget-object v0, Lcom/asus/vibe2/Utils_SrvPlayback;->mBoundService:Lcom/asus/vibe2/Srv_Playback;

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/asus/vibe2/Utils_SrvPlayback;->mBoundService:Lcom/asus/vibe2/Srv_Playback;

    invoke-virtual {v0, p0}, Lcom/asus/vibe2/Srv_Playback;->play(Lcom/asus/vibe/item/VibeParam;)V

    .line 55
    :cond_0
    return-void
.end method

.method public static stop()V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/asus/vibe2/Utils_SrvPlayback;->mBoundService:Lcom/asus/vibe2/Srv_Playback;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/asus/vibe2/Utils_SrvPlayback;->mBoundService:Lcom/asus/vibe2/Srv_Playback;

    invoke-virtual {v0}, Lcom/asus/vibe2/Srv_Playback;->stop()V

    .line 61
    :cond_0
    return-void
.end method

.method public static updateNowPlaying(Landroid/content/Context;Landroid/view/View;)V
    .locals 7
    .parameter "context"
    .parameter "rootView"

    .prologue
    const/4 v6, 0x0

    .line 92
    sget-object v4, Lcom/asus/vibe2/Utils_SrvPlayback;->mBoundService:Lcom/asus/vibe2/Srv_Playback;

    if-nez v4, :cond_1

    .line 93
    sget-object v4, Lcom/asus/vibe2/Utils_SrvPlayback;->mPanelController:Lcom/asus/vibe2/Utils_PanelController;

    if-eqz v4, :cond_0

    .line 94
    sget-object v4, Lcom/asus/vibe2/Utils_SrvPlayback;->mPanelController:Lcom/asus/vibe2/Utils_PanelController;

    invoke-virtual {v4}, Lcom/asus/vibe2/Utils_PanelController;->release()V

    .line 95
    sput-object v6, Lcom/asus/vibe2/Utils_SrvPlayback;->mPanelController:Lcom/asus/vibe2/Utils_PanelController;

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-static {}, Lcom/asus/vibe2/Utils_SrvPlayback;->getPlayingUri()Lcom/asus/vibe/item/VibeUri;

    move-result-object v3

    .line 101
    .local v3, playingUri:Lcom/asus/vibe/item/VibeUri;
    sget-object v4, Lcom/asus/vibe2/Utils_SrvPlayback;->mBoundService:Lcom/asus/vibe2/Srv_Playback;

    invoke-virtual {v4}, Lcom/asus/vibe2/Srv_Playback;->getIsLive()Z

    move-result v1

    .line 102
    .local v1, isLive:Z
    invoke-static {}, Lcom/asus/vibe2/Utils_SrvPlayback;->getPlayerState()I

    move-result v2

    .line 103
    .local v2, playerState:I
    if-eqz v2, :cond_2

    if-nez v3, :cond_4

    .line 104
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 105
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 106
    .local v0, fadeOut:Landroid/view/animation/Animation;
    new-instance v4, Lcom/asus/vibe2/Utils_SrvPlayback$2;

    invoke-direct {v4, p1}, Lcom/asus/vibe2/Utils_SrvPlayback$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 110
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 113
    .end local v0           #fadeOut:Landroid/view/animation/Animation;
    :cond_3
    sget-object v4, Lcom/asus/vibe2/Utils_SrvPlayback;->mPanelController:Lcom/asus/vibe2/Utils_PanelController;

    if-eqz v4, :cond_0

    .line 114
    sget-object v4, Lcom/asus/vibe2/Utils_SrvPlayback;->mPanelController:Lcom/asus/vibe2/Utils_PanelController;

    invoke-virtual {v4}, Lcom/asus/vibe2/Utils_PanelController;->release()V

    .line 115
    sput-object v6, Lcom/asus/vibe2/Utils_SrvPlayback;->mPanelController:Lcom/asus/vibe2/Utils_PanelController;

    goto :goto_0

    .line 118
    :cond_4
    sget-object v4, Lcom/asus/vibe2/Utils_SrvPlayback;->mPanelController:Lcom/asus/vibe2/Utils_PanelController;

    if-nez v4, :cond_5

    .line 119
    new-instance v4, Lcom/asus/vibe2/Utils_PanelController;

    invoke-direct {v4}, Lcom/asus/vibe2/Utils_PanelController;-><init>()V

    sput-object v4, Lcom/asus/vibe2/Utils_SrvPlayback;->mPanelController:Lcom/asus/vibe2/Utils_PanelController;

    .line 121
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 122
    sget-object v4, Lcom/asus/vibe2/Utils_SrvPlayback;->mPanelController:Lcom/asus/vibe2/Utils_PanelController;

    sget-object v5, Lcom/asus/vibe2/Utils_SrvPlayback;->mBoundService:Lcom/asus/vibe2/Srv_Playback;

    invoke-virtual {v4, p0, p1, v5, v1}, Lcom/asus/vibe2/Utils_PanelController;->bind(Landroid/content/Context;Landroid/view/View;Lcom/asus/vibe2/Srv_Playback;Z)V

    goto :goto_0
.end method
