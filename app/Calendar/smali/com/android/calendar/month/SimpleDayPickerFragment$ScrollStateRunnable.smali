.class public Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;
.super Ljava/lang/Object;
.source "SimpleDayPickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/month/SimpleDayPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScrollStateRunnable"
.end annotation


# instance fields
.field private mNewState:I

.field private mView:Landroid/widget/AbsListView;

.field final synthetic this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;


# direct methods
.method protected constructor <init>(Lcom/android/calendar/month/SimpleDayPickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doScrollStateChange(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget-object v0, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 586
    iput-object p1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    .line 587
    iput p2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->mNewState:I

    .line 588
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget-object v0, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x28

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 589
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0x1f4

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 592
    iget-object v5, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->mNewState:I

    iput v6, v5, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentScrollState:I

    .line 593
    const-string v5, "MonthFragment"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 594
    const-string v5, "MonthFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new scroll state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->mNewState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " old state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget v7, v7, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_0
    iget v5, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->mNewState:I

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget v5, v5, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollState:I

    if-eqz v5, :cond_6

    .line 600
    iget-object v5, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->mNewState:I

    iput v6, v5, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollState:I

    .line 601
    iget-object v5, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v5, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 602
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_2

    .line 623
    .end local v0           #child:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 606
    .restart local v0       #child:Landroid/view/View;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    sget v6, Lcom/android/calendar/month/SimpleDayPickerFragment;->LIST_TOP_OFFSET:I

    sub-int v1, v5, v6

    .line 607
    .local v1, dist:I
    sget v5, Lcom/android/calendar/month/SimpleDayPickerFragment;->LIST_TOP_OFFSET:I

    if-le v1, v5, :cond_1

    .line 608
    const-string v5, "MonthFragment"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 609
    const-string v5, "MonthFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scrolling by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " up? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget-boolean v7, v7, Lcom/android/calendar/month/SimpleDayPickerFragment;->mIsScrollingUp:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_3
    iget-object v5, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 612
    .local v2, firstPosition:I
    iget-object v5, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    .line 613
    .local v3, lastPosition:I
    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    sub-int/2addr v5, v9

    if-eq v3, v5, :cond_4

    move v4, v9

    .line 614
    .local v4, scroll:Z
    :goto_1
    iget-object v5, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget-boolean v5, v5, Lcom/android/calendar/month/SimpleDayPickerFragment;->mIsScrollingUp:Z

    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    .line 615
    iget-object v5, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {v5, v6, v11}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v4           #scroll:Z
    :cond_4
    move v4, v8

    .line 613
    goto :goto_1

    .line 616
    .restart local v4       #scroll:Z
    :cond_5
    iget-object v5, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget-boolean v5, v5, Lcom/android/calendar/month/SimpleDayPickerFragment;->mIsScrollingUp:Z

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    .line 617
    iget-object v5, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v5, v1, v11}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .line 621
    .end local v0           #child:Landroid/view/View;
    .end local v1           #dist:I
    .end local v2           #firstPosition:I
    .end local v3           #lastPosition:I
    .end local v4           #scroll:Z
    :cond_6
    iget-object v5, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->this$0:Lcom/android/calendar/month/SimpleDayPickerFragment;

    iget v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->mNewState:I

    iput v6, v5, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollState:I

    goto :goto_0
.end method
