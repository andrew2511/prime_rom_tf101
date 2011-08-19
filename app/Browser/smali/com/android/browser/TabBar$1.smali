.class Lcom/android/browser/TabBar$1;
.super Ljava/lang/Object;
.source "TabBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/TabBar;->animateTabOut(Lcom/android/browser/Tab;Lcom/android/browser/TabBar$TabView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/TabBar;

.field final synthetic val$tab:Lcom/android/browser/Tab;

.field final synthetic val$tv:Lcom/android/browser/TabBar$TabView;


# direct methods
.method constructor <init>(Lcom/android/browser/TabBar;Lcom/android/browser/TabBar$TabView;Lcom/android/browser/Tab;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/browser/TabBar$1;->this$0:Lcom/android/browser/TabBar;

    iput-object p2, p0, Lcom/android/browser/TabBar$1;->val$tv:Lcom/android/browser/TabBar$TabView;

    iput-object p3, p0, Lcom/android/browser/TabBar$1;->val$tab:Lcom/android/browser/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 568
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/browser/TabBar$1;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v0}, Lcom/android/browser/TabBar;->access$2100(Lcom/android/browser/TabBar;)Lcom/android/browser/TabScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/TabBar$1;->val$tv:Lcom/android/browser/TabBar$TabView;

    invoke-virtual {v0, v1}, Lcom/android/browser/TabScrollView;->removeTab(Landroid/view/View;)V

    .line 573
    iget-object v0, p0, Lcom/android/browser/TabBar$1;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v0}, Lcom/android/browser/TabBar;->access$2200(Lcom/android/browser/TabBar;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/TabBar$1;->val$tab:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    iget-object v0, p0, Lcom/android/browser/TabBar$1;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v0}, Lcom/android/browser/TabBar;->access$900(Lcom/android/browser/TabBar;)Lcom/android/browser/XLargeUi;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/TabBar$1;->val$tab:Lcom/android/browser/Tab;

    invoke-virtual {v0, v1}, Lcom/android/browser/XLargeUi;->onRemoveTabCompleted(Lcom/android/browser/Tab;)V

    .line 575
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 579
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 583
    return-void
.end method
