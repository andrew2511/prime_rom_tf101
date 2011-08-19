.class Lcom/google/android/music/activitymanagement/TopLevelActivity$6;
.super Ljava/lang/Object;
.source "TopLevelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/activitymanagement/TopLevelActivity;->setUIVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$6;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    iput-boolean p2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$6;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1047
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    iget-boolean v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$6;->val$visible:Z

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->setUIVisible(Z)V

    .line 1048
    return-void
.end method
