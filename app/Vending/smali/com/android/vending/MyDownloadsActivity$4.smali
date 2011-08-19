.class Lcom/android/vending/MyDownloadsActivity$4;
.super Ljava/lang/Object;
.source "MyDownloadsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/MyDownloadsActivity;->accountListUpdate(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/MyDownloadsActivity;

.field final synthetic val$accounts:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/vending/MyDownloadsActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 712
    iput-object p1, p0, Lcom/android/vending/MyDownloadsActivity$4;->this$0:Lcom/android/vending/MyDownloadsActivity;

    iput-object p2, p0, Lcom/android/vending/MyDownloadsActivity$4;->val$accounts:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 714
    iget-object v3, p0, Lcom/android/vending/MyDownloadsActivity$4;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-virtual {v3}, Lcom/android/vending/MyDownloadsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 715
    .local v0, ab:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 717
    .local v2, currentTab:Landroid/app/ActionBar$Tab;
    iget-object v3, p0, Lcom/android/vending/MyDownloadsActivity$4;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-static {v3}, Lcom/android/vending/MyDownloadsActivity;->access$500(Lcom/android/vending/MyDownloadsActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->clear()V

    .line 718
    iget-object v3, p0, Lcom/android/vending/MyDownloadsActivity$4;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-static {v3}, Lcom/android/vending/MyDownloadsActivity;->access$500(Lcom/android/vending/MyDownloadsActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vending/MyDownloadsActivity$4;->val$accounts:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 720
    iget-object v3, p0, Lcom/android/vending/MyDownloadsActivity$4;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-static {v3}, Lcom/android/vending/MyDownloadsActivity;->access$600(Lcom/android/vending/MyDownloadsActivity;)V

    .line 722
    if-eqz v2, :cond_0

    .line 723
    invoke-virtual {v2}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 724
    .local v1, account:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/vending/MyDownloadsActivity$4;->val$accounts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 725
    iget-object v3, p0, Lcom/android/vending/MyDownloadsActivity$4;->val$accounts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 737
    .end local v1           #account:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/vending/MyDownloadsActivity$4;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-static {v3}, Lcom/android/vending/MyDownloadsActivity;->access$700(Lcom/android/vending/MyDownloadsActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 738
    new-instance v3, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;

    iget-object v4, p0, Lcom/android/vending/MyDownloadsActivity$4;->this$0:Lcom/android/vending/MyDownloadsActivity;

    invoke-direct {v3, v4}, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;-><init>(Lcom/android/vending/MyDownloadsActivity;)V

    invoke-virtual {v3}, Lcom/android/vending/MyDownloadsActivity$MyDownloadsLoader;->start()V

    .line 740
    :cond_1
    return-void

    .line 726
    .restart local v1       #account:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/vending/MyDownloadsActivity$4;->val$accounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 727
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 729
    :cond_3
    invoke-virtual {v0}, Landroid/app/ActionBar;->removeAllTabs()V

    goto :goto_0
.end method
