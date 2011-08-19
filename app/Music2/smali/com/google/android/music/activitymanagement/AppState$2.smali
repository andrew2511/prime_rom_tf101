.class Lcom/google/android/music/activitymanagement/AppState$2;
.super Ljava/lang/Object;
.source "AppState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/activitymanagement/AppState;->setMusicFound(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/activitymanagement/AppState;

.field final synthetic val$musicFound:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/AppState;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/AppState$2;->this$0:Lcom/google/android/music/activitymanagement/AppState;

    iput-boolean p2, p0, Lcom/google/android/music/activitymanagement/AppState$2;->val$musicFound:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState$2;->this$0:Lcom/google/android/music/activitymanagement/AppState;

    invoke-static {v0}, Lcom/google/android/music/activitymanagement/AppState;->access$000(Lcom/google/android/music/activitymanagement/AppState;)Lcom/google/android/music/activitymanagement/TopLevelActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState$2;->this$0:Lcom/google/android/music/activitymanagement/AppState;

    invoke-static {v0}, Lcom/google/android/music/activitymanagement/AppState;->access$000(Lcom/google/android/music/activitymanagement/AppState;)Lcom/google/android/music/activitymanagement/TopLevelActivity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/music/activitymanagement/AppState$2;->val$musicFound:Z

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMusicFound(Z)V

    .line 560
    :cond_0
    return-void
.end method
