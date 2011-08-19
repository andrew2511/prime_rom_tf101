.class Lcom/google/android/music/activitymanagement/TopLevelActivity$8;
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

.field final synthetic val$animateIn:Landroid/view/animation/Animation;

.field final synthetic val$incomingView:Landroid/view/View;

.field final synthetic val$incomingViewGroup:Landroid/view/ViewGroup;

.field final synthetic val$outgoingView:Landroid/view/View;

.field final synthetic val$outgoingViewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1302
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    iput-object p2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;->val$outgoingViewGroup:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;->val$outgoingView:Landroid/view/View;

    iput-object p4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;->val$incomingViewGroup:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;->val$incomingView:Landroid/view/View;

    iput-object p6, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;->val$animateIn:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;->val$outgoingViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;->val$outgoingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1305
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;->val$incomingViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;->val$incomingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1306
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;->val$incomingView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;->val$animateIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1308
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1310
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1312
    return-void
.end method
