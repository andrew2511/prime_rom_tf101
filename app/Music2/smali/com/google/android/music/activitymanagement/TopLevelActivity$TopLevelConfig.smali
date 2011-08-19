.class Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;
.super Ljava/lang/Object;
.source "TopLevelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/activitymanagement/TopLevelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopLevelConfig"
.end annotation


# instance fields
.field public final mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

.field public final mBackgroundConfig:Ljava/lang/Object;

.field public final mNowPlayingBarActive:Z

.field public final mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

.field private final mOnServiceConnectedRunnable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;ZLcom/google/android/music/OfflineMusicManager;Lcom/google/android/music/activitymanagement/AppStateStack;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter "nowPlayingBarActive"
    .parameter "offlineMusicManager"
    .parameter "appStack"
    .parameter "backgroundConfig"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/android/music/OfflineMusicManager;",
            "Lcom/google/android/music/activitymanagement/AppStateStack;",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 979
    .local p6, onServiceConnectedRunnable:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 980
    iput-boolean p2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;->mNowPlayingBarActive:Z

    .line 981
    iput-object p3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 982
    iput-object p4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    .line 983
    iput-object p5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;->mBackgroundConfig:Ljava/lang/Object;

    .line 984
    iput-object p6, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;->mOnServiceConnectedRunnable:Ljava/util/List;

    .line 985
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 975
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;->mOnServiceConnectedRunnable:Ljava/util/List;

    return-object v0
.end method
