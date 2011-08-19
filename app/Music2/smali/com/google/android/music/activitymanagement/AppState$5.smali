.class Lcom/google/android/music/activitymanagement/AppState$5;
.super Ljava/lang/Object;
.source "AppState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/activitymanagement/AppState;->asyncCheckForPlaylists(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/activitymanagement/AppState;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/AppState;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/AppState$5;->this$0:Lcom/google/android/music/activitymanagement/AppState;

    iput-object p2, p0, Lcom/google/android/music/activitymanagement/AppState$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState$5;->this$0:Lcom/google/android/music/activitymanagement/AppState;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/AppState$5;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/AppState;->checkForPlaylists(Landroid/content/Context;)V

    .line 603
    return-void
.end method
