.class Lcom/google/android/music/TopBar$ActionBarController$2;
.super Ljava/lang/Object;
.source "TopBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/TopBar$ActionBarController;->hideSearchField()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/TopBar$ActionBarController;


# direct methods
.method constructor <init>(Lcom/google/android/music/TopBar$ActionBarController;)V
    .locals 0
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/google/android/music/TopBar$ActionBarController$2;->this$1:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController$2;->this$1:Lcom/google/android/music/TopBar$ActionBarController;

    iget-object v1, p0, Lcom/google/android/music/TopBar$ActionBarController$2;->this$1:Lcom/google/android/music/TopBar$ActionBarController;

    iget-object v1, v1, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v1}, Lcom/google/android/music/TopBar;->access$1600(Lcom/google/android/music/TopBar;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/google/android/music/TopBar$ActionBarController;->access$1800(Lcom/google/android/music/TopBar$ActionBarController;Landroid/view/View;I)V

    .line 638
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController$2;->this$1:Lcom/google/android/music/TopBar$ActionBarController;

    iget-object v0, v0, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v0}, Lcom/google/android/music/TopBar;->access$1600(Lcom/google/android/music/TopBar;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 639
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 640
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 642
    return-void
.end method
