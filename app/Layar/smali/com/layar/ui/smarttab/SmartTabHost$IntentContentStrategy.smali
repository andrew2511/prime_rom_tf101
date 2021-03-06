.class Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;
.super Ljava/lang/Object;
.source "SmartTabHost.java"

# interfaces
.implements Lcom/layar/ui/smarttab/SmartTabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/smarttab/SmartTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentContentStrategy"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private mLaunchedView:Landroid/view/View;

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/layar/ui/smarttab/SmartTabHost;


# direct methods
.method private constructor <init>(Lcom/layar/ui/smarttab/SmartTabHost;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 651
    iput-object p1, p0, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    iput-object p2, p0, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    .line 650
    iput-object p3, p0, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/ui/smarttab/SmartTabHost;Ljava/lang/String;Landroid/content/Intent;Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 648
    invoke-direct {p0, p1, p2, p3}, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;-><init>(Lcom/layar/ui/smarttab/SmartTabHost;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 5

    .prologue
    .line 654
    iget-object v2, p0, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    iget-object v2, v2, Lcom/layar/ui/smarttab/SmartTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    if-nez v2, :cond_0

    .line 655
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Did you forget to call \'public void setup(LocalActivityManager activityGroup)\'?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 657
    :cond_0
    iget-object v2, p0, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    iget-object v2, v2, Lcom/layar/ui/smarttab/SmartTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 658
    iget-object v3, p0, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    .line 657
    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    .line 659
    .local v0, w:Landroid/view/Window;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 660
    .local v1, wd:Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 661
    iget-object v2, p0, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 662
    iget-object v2, p0, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;->this$0:Lcom/layar/ui/smarttab/SmartTabHost;

    invoke-static {v2}, Lcom/layar/ui/smarttab/SmartTabHost;->access$0(Lcom/layar/ui/smarttab/SmartTabHost;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 665
    :cond_1
    iput-object v1, p0, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    .line 673
    iget-object v2, p0, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 674
    iget-object v2, p0, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 675
    iget-object v2, p0, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 676
    iget-object v2, p0, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    .line 677
    const/high16 v3, 0x4

    .line 676
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 679
    :cond_2
    iget-object v2, p0, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    return-object v2

    .line 659
    .end local v1           #wd:Landroid/view/View;
    :cond_3
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 686
    :cond_0
    return-void
.end method
