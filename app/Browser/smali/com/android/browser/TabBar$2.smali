.class Lcom/android/browser/TabBar$2;
.super Ljava/lang/Object;
.source "TabBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/TabBar;->animateTabIn(Lcom/android/browser/Tab;Lcom/android/browser/TabBar$TabView;)V
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
.method constructor <init>(Lcom/android/browser/TabBar;Lcom/android/browser/Tab;Lcom/android/browser/TabBar$TabView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/browser/TabBar$2;->this$0:Lcom/android/browser/TabBar;

    iput-object p2, p0, Lcom/android/browser/TabBar$2;->val$tab:Lcom/android/browser/Tab;

    iput-object p3, p0, Lcom/android/browser/TabBar$2;->val$tv:Lcom/android/browser/TabBar$TabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 596
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/browser/TabBar$2;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v0}, Lcom/android/browser/TabBar;->access$900(Lcom/android/browser/TabBar;)Lcom/android/browser/XLargeUi;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/TabBar$2;->val$tab:Lcom/android/browser/Tab;

    invoke-virtual {v0, v1}, Lcom/android/browser/XLargeUi;->onAddTabCompleted(Lcom/android/browser/Tab;)V

    .line 601
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 605
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/browser/TabBar$2;->this$0:Lcom/android/browser/TabBar;

    invoke-static {v0}, Lcom/android/browser/TabBar;->access$2100(Lcom/android/browser/TabBar;)Lcom/android/browser/TabScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/TabBar$2;->val$tv:Lcom/android/browser/TabBar$TabView;

    invoke-virtual {v0, v1}, Lcom/android/browser/TabScrollView;->addTab(Landroid/view/View;)V

    .line 610
    return-void
.end method
