.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;
.super Landroid/os/Handler;
.source "TabletStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Lcom/android/systemui/statusbar/tablet/TabletStatusBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 583
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "m"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/16 v5, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 585
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 589
    :sswitch_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ltz v4, :cond_0

    .line 590
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 592
    .local v0, N:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-nez v4, :cond_1

    .line 593
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    if-ge v4, v0, :cond_1

    .line 594
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v4

    sub-int v5, v0, v8

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v6, v6, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    .line 595
    .local v2, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->setBackgroundColor(I)V

    .line 596
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iput v9, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    .line 597
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iput-object v10, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekKey:Landroid/os/IBinder;

    .line 601
    .end local v2           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 602
    .local v3, peekIndex:I
    if-ge v3, v0, :cond_0

    .line 604
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDDummyEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-object v2, v4

    .line 608
    .restart local v2       #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_1
    new-instance v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    iget-object v5, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v6, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {v1, v4, v5, v6}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 612
    .local v1, copy:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekRow:Landroid/view/ViewGroup;

    invoke-static {v4, v1, v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    .line 614
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v4, :cond_2

    .line 615
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    new-instance v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H$1;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    :cond_2
    iget-object v4, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const v5, 0x20ffffff

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setBackgroundColor(I)V

    .line 632
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekRow:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 633
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekRow:Landroid/view/ViewGroup;

    iget-object v5, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 635
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekWindow:Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->setVisibility(I)V

    .line 636
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v4, v7, v8}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->show(ZZ)V

    .line 638
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iput v3, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    .line 639
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v5, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    iput-object v5, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekKey:Landroid/os/IBinder;

    goto/16 :goto_0

    .line 604
    .end local v1           #copy:Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v2           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v4

    sub-int v5, v0, v8

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    move-object v2, v4

    goto :goto_1

    .line 645
    .end local v0           #N:I
    .end local v3           #peekIndex:I
    :sswitch_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekWindow:Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->setVisibility(I)V

    .line 646
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekRow:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 648
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 649
    .restart local v0       #N:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    if-ltz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    if-ge v4, v0, :cond_4

    .line 650
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDDummyEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-object v2, v4

    .line 654
    .restart local v2       #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_2
    iget-object v4, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->setBackgroundColor(I)V

    .line 657
    .end local v2           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iput v9, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    .line 658
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iput-object v10, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekKey:Landroid/os/IBinder;

    goto/16 :goto_0

    .line 650
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v4

    sub-int v5, v0, v8

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget v6, v6, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekIndex:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    move-object v2, v4

    goto :goto_2

    .line 662
    .end local v0           #N:I
    :sswitch_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 663
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekWindow:Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->setVisibility(I)V

    .line 664
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v4, v8, v8}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->show(ZZ)V

    .line 665
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationArea:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 666
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->halt()V

    goto/16 :goto_0

    .line 671
    :sswitch_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 672
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v4, v7, v8}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->show(ZZ)V

    .line 673
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationArea:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 678
    :sswitch_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 679
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    const/high16 v5, 0x40

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->disable(I)V

    .line 680
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->setVisibility(I)V

    .line 681
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->show(ZZ)V

    goto/16 :goto_0

    .line 686
    :sswitch_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 687
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->disable(I)V

    .line 688
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;->show(ZZ)V

    goto/16 :goto_0

    .line 693
    :sswitch_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->openPanel()V

    goto/16 :goto_0

    .line 697
    :sswitch_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->closePanel(Z)V

    goto/16 :goto_0

    .line 701
    :sswitch_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$600(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$600(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->openPanel()V

    goto/16 :goto_0

    .line 705
    :sswitch_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$600(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$600(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->closePanel()V

    goto/16 :goto_0

    .line 709
    :sswitch_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 710
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShadow:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 711
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v4, v8}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V

    goto/16 :goto_0

    .line 715
    :sswitch_b
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 716
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 717
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShadow:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 718
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-static {v4, v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V

    goto/16 :goto_0

    .line 721
    :sswitch_c
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->halt()V

    goto/16 :goto_0

    .line 585
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_0
        0x3eb -> :sswitch_1
        0x3fc -> :sswitch_4
        0x3fd -> :sswitch_5
        0x406 -> :sswitch_a
        0x407 -> :sswitch_b
        0x410 -> :sswitch_6
        0x411 -> :sswitch_7
        0x41a -> :sswitch_8
        0x41b -> :sswitch_9
        0x7d0 -> :sswitch_c
    .end sparse-switch
.end method
