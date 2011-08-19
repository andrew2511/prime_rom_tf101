.class Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver$1;
.super Ljava/lang/Object;
.source "TopLevelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver;->onStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver;

.field final synthetic val$syncActive:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2297
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver$1;->this$1:Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver;

    iput-boolean p2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver$1;->val$syncActive:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2299
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver$1;->this$1:Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver;

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2300
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver$1;->this$1:Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver;

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$1200(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/TopBar;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver$1;->val$syncActive:Z

    invoke-virtual {v0, v1}, Lcom/google/android/music/TopBar;->setSyncStatus(Z)V

    .line 2302
    :cond_0
    return-void
.end method
