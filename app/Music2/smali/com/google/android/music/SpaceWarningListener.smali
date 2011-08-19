.class public Lcom/google/android/music/SpaceWarningListener;
.super Ljava/lang/Object;
.source "SpaceWarningListener.java"

# interfaces
.implements Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;


# instance fields
.field private mActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;


# direct methods
.method public constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V
    .locals 0
    .parameter "activityManager"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/google/android/music/SpaceWarningListener;->mActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 14
    return-void
.end method


# virtual methods
.method public onAvailableSpaceChanged(JJZ)V
    .locals 2
    .parameter "totalSpace"
    .parameter "freeSpace"
    .parameter "availabilityTransition"

    .prologue
    .line 19
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/google/android/music/SpaceWarningListener;->mActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->displayOverfullWarning()V

    .line 24
    :cond_0
    return-void
.end method
