.class Lcom/android/vending/MyDownloadsActivity$ActionBarListener;
.super Ljava/lang/Object;
.source "MyDownloadsActivity.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/MyDownloadsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/MyDownloadsActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/MyDownloadsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 770
    iput-object p1, p0, Lcom/android/vending/MyDownloadsActivity$ActionBarListener;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/MyDownloadsActivity;Lcom/android/vending/MyDownloadsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 770
    invoke-direct {p0, p1}, Lcom/android/vending/MyDownloadsActivity$ActionBarListener;-><init>(Lcom/android/vending/MyDownloadsActivity;)V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 6
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 772
    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity$ActionBarListener;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-static {v2}, Lcom/android/vending/MyDownloadsActivity;->access$800(Lcom/android/vending/MyDownloadsActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 773
    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity$ActionBarListener;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-static {v2}, Lcom/android/vending/MyDownloadsActivity;->access$900(Lcom/android/vending/MyDownloadsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vending/MyDownloadsActivity$ActionBarListener;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-static {v3}, Lcom/android/vending/MyDownloadsActivity;->access$800(Lcom/android/vending/MyDownloadsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 774
    .local v0, launchIdx:I
    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity$ActionBarListener;->this$0:Lcom/android/vending/MyDownloadsActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/vending/MyDownloadsActivity;->access$802(Lcom/android/vending/MyDownloadsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 775
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eq v0, p1, :cond_0

    .line 776
    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity$ActionBarListener;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-virtual {v2}, Lcom/android/vending/MyDownloadsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    move v2, v5

    .line 798
    .end local v0           #launchIdx:I
    :goto_0
    return v2

    .line 783
    :cond_0
    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity$ActionBarListener;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-static {v2}, Lcom/android/vending/MyDownloadsActivity;->access$900(Lcom/android/vending/MyDownloadsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 784
    .local v1, selectedAccount:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity$ActionBarListener;->this$0:Lcom/android/vending/MyDownloadsActivity;

    iget-object v2, v2, Lcom/android/vending/MyDownloadsActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v2}, Lcom/android/vending/VendingApplication;->getCurrentAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 785
    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity$ActionBarListener;->this$0:Lcom/android/vending/MyDownloadsActivity;

    iget-object v2, v2, Lcom/android/vending/MyDownloadsActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v2, v1}, Lcom/android/vending/VendingApplication;->setCurrentAccount(Ljava/lang/String;)V

    .line 790
    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity$ActionBarListener;->this$0:Lcom/android/vending/MyDownloadsActivity;

    const v3, 0x7f0800b3

    invoke-virtual {v2, v3}, Lcom/android/vending/MyDownloadsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 791
    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity$ActionBarListener;->this$0:Lcom/android/vending/MyDownloadsActivity;

    const v3, 0x7f0800df

    invoke-virtual {v2, v3}, Lcom/android/vending/MyDownloadsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 793
    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity$ActionBarListener;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-static {v2}, Lcom/android/vending/MyDownloadsActivity;->access$700(Lcom/android/vending/MyDownloadsActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 794
    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity$ActionBarListener;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-static {v2}, Lcom/android/vending/MyDownloadsActivity;->access$600(Lcom/android/vending/MyDownloadsActivity;)V

    .line 795
    iget-object v2, p0, Lcom/android/vending/MyDownloadsActivity$ActionBarListener;->this$0:Lcom/android/vending/MyDownloadsActivity;

    new-instance v3, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;

    iget-object v4, p0, Lcom/android/vending/MyDownloadsActivity$ActionBarListener;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-direct {v3, v4}, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;-><init>(Lcom/android/vending/MyDownloadsActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/vending/MyDownloadsActivity;->startAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    :cond_1
    move v2, v5

    .line 798
    goto :goto_0
.end method
