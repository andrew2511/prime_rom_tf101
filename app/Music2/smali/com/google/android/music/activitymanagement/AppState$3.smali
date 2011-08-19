.class Lcom/google/android/music/activitymanagement/AppState$3;
.super Ljava/lang/Object;
.source "AppState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/activitymanagement/AppState;->setPlaylistsFound(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/activitymanagement/AppState;

.field final synthetic val$playlistsFound:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/AppState;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 569
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/AppState$3;->this$0:Lcom/google/android/music/activitymanagement/AppState;

    iput-boolean p2, p0, Lcom/google/android/music/activitymanagement/AppState$3;->val$playlistsFound:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState$3;->this$0:Lcom/google/android/music/activitymanagement/AppState;

    invoke-static {v0}, Lcom/google/android/music/activitymanagement/AppState;->access$000(Lcom/google/android/music/activitymanagement/AppState;)Lcom/google/android/music/activitymanagement/TopLevelActivity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/music/activitymanagement/AppState$3;->val$playlistsFound:Z

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setPlaylistsFound(Z)V

    .line 572
    return-void
.end method
