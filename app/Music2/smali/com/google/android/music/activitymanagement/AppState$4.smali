.class Lcom/google/android/music/activitymanagement/AppState$4;
.super Ljava/lang/Object;
.source "AppState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/activitymanagement/AppState;->asyncCheckForMusic(Landroid/content/Context;)V
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
    .line 579
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/AppState$4;->this$0:Lcom/google/android/music/activitymanagement/AppState;

    iput-object p2, p0, Lcom/google/android/music/activitymanagement/AppState$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/AppState$4;->this$0:Lcom/google/android/music/activitymanagement/AppState;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/AppState$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/AppState;->checkForMusic(Landroid/content/Context;)V

    .line 582
    return-void
.end method
