.class Lcom/google/android/music/TopBar$ActionBarController$1;
.super Ljava/lang/Object;
.source "TopBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/TopBar$ActionBarController;->showSearchField()V
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
    .line 603
    iput-object p1, p0, Lcom/google/android/music/TopBar$ActionBarController$1;->this$1:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 605
    iget-object v1, p0, Lcom/google/android/music/TopBar$ActionBarController$1;->this$1:Lcom/google/android/music/TopBar$ActionBarController;

    iget-object v1, v1, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v1}, Lcom/google/android/music/TopBar;->access$1600(Lcom/google/android/music/TopBar;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 606
    iget-object v1, p0, Lcom/google/android/music/TopBar$ActionBarController$1;->this$1:Lcom/google/android/music/TopBar$ActionBarController;

    iget-object v1, v1, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v1}, Lcom/google/android/music/TopBar;->access$1600(Lcom/google/android/music/TopBar;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 607
    iget-object v1, p0, Lcom/google/android/music/TopBar$ActionBarController$1;->this$1:Lcom/google/android/music/TopBar$ActionBarController;

    iget-object v1, v1, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v1}, Lcom/google/android/music/TopBar;->access$1700(Lcom/google/android/music/TopBar;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 609
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 611
    iget-object v1, p0, Lcom/google/android/music/TopBar$ActionBarController$1;->this$1:Lcom/google/android/music/TopBar$ActionBarController;

    iget-object v1, v1, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v1}, Lcom/google/android/music/TopBar;->access$1600(Lcom/google/android/music/TopBar;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 613
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 614
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/google/android/music/TopBar$ActionBarController$1;->this$1:Lcom/google/android/music/TopBar$ActionBarController;

    iget-object v1, p0, Lcom/google/android/music/TopBar$ActionBarController$1;->this$1:Lcom/google/android/music/TopBar$ActionBarController;

    iget-object v1, v1, Lcom/google/android/music/TopBar$ActionBarController;->this$0:Lcom/google/android/music/TopBar;

    invoke-static {v1}, Lcom/google/android/music/TopBar;->access$1600(Lcom/google/android/music/TopBar;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/music/TopBar$ActionBarController;->access$1800(Lcom/google/android/music/TopBar$ActionBarController;Landroid/view/View;I)V

    .line 618
    return-void
.end method
