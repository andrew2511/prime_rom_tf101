.class Lcom/google/android/music/activitymanagement/TopLevelActivity$7;
.super Ljava/lang/Object;
.source "TopLevelActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/activitymanagement/TopLevelActivity;->animateViews(Lcom/google/android/music/activitymanagement/AppState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

.field final synthetic val$newView:Lcom/google/android/music/activitymanagement/AppState;


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/activitymanagement/AppState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$7;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    iput-object p2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$7;->val$newView:Lcom/google/android/music/activitymanagement/AppState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$7;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$800(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/BackgroundView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/BackgroundView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$7;->val$newView:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/AppState;->isUseSystemBackground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$7;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$800(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/BackgroundView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/music/BackgroundView;->setVisibility(I)V

    .line 1287
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1292
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1296
    return-void
.end method
