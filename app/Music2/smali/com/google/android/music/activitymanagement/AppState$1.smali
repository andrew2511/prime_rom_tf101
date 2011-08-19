.class Lcom/google/android/music/activitymanagement/AppState$1;
.super Ljava/lang/Object;
.source "AppState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/activitymanagement/AppState;->hideNoMusicView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/activitymanagement/AppState;


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/AppState;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/AppState$1;->this$0:Lcom/google/android/music/activitymanagement/AppState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState$1;->this$0:Lcom/google/android/music/activitymanagement/AppState;

    invoke-static {v0}, Lcom/google/android/music/activitymanagement/AppState;->access$000(Lcom/google/android/music/activitymanagement/AppState;)Lcom/google/android/music/activitymanagement/TopLevelActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState$1;->this$0:Lcom/google/android/music/activitymanagement/AppState;

    invoke-static {v0}, Lcom/google/android/music/activitymanagement/AppState;->access$000(Lcom/google/android/music/activitymanagement/AppState;)Lcom/google/android/music/activitymanagement/TopLevelActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->hideNoMusicView()V

    .line 542
    :cond_0
    return-void
.end method
