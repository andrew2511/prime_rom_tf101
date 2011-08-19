.class Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;
.super Lcom/google/android/talk/AnimatedAdapter2;
.source "BuddyListFragment.java"

# interfaces
.implements Lcom/google/android/talk/IRosterListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedRosterAdapter"
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/talk/IRosterListAdapter;

.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;Lcom/google/android/talk/IRosterListAdapter;)V
    .locals 4
    .parameter
    .parameter "adapter"

    .prologue
    .line 539
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 540
    move-object v0, p2

    check-cast v0, Landroid/widget/BaseAdapter;

    move-object v1, v0

    invoke-virtual {p1}, Lcom/google/android/talk/fragments/BuddyListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/talk/AnimatedAdapter2;-><init>(Landroid/widget/BaseAdapter;I)V

    .line 542
    iput-object p2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    .line 543
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 1
    .parameter "c"
    .parameter "searchString"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1, p2}, Lcom/google/android/talk/IRosterListAdapter;->changeCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method public getActiveCallState()Lcom/google/android/talk/RosterListAdapter$CallState;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0}, Lcom/google/android/talk/IRosterListAdapter;->getActiveCallState()Lcom/google/android/talk/RosterListAdapter$CallState;

    move-result-object v0

    return-object v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0}, Lcom/google/android/talk/IRosterListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public hasActiveChats()Z
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0}, Lcom/google/android/talk/IRosterListAdapter;->hasActiveChats()Z

    move-result v0

    return v0
.end method

.method public init(JLandroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "accountId"
    .parameter "activity"
    .parameter "runnable"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/talk/IRosterListAdapter;->init(JLandroid/app/Activity;Ljava/lang/Runnable;)V

    .line 559
    return-void
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0}, Lcom/google/android/talk/IRosterListAdapter;->isScrolling()Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/talk/IRosterListAdapter;->onScroll(Landroid/widget/AbsListView;III)V

    .line 608
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1, p2}, Lcom/google/android/talk/IRosterListAdapter;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 612
    return-void
.end method

.method public setAccountId(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1, p2}, Lcom/google/android/talk/IRosterListAdapter;->setAccountId(J)V

    .line 567
    return-void
.end method

.method public setActiveCallState(Lcom/google/android/talk/RosterListAdapter$CallState;)V
    .locals 1
    .parameter "callState"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setActiveCallState(Lcom/google/android/talk/RosterListAdapter$CallState;)V

    .line 571
    return-void
.end method

.method public setFocus(Landroid/content/Intent;)V
    .locals 1
    .parameter "focus"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setFocus(Landroid/content/Intent;)V

    .line 579
    return-void
.end method

.method public setIncludeSelfItem(Z)V
    .locals 1
    .parameter "include"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setIncludeSelfItem(Z)V

    .line 583
    return-void
.end method

.method public setIsOnline(Z)Z
    .locals 1
    .parameter "isOnline"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setIsOnline(Z)Z

    move-result v0

    return v0
.end method

.method public setNarrowLayout(Z)V
    .locals 1
    .parameter "narrow"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setNarrowLayout(Z)V

    .line 591
    return-void
.end method

.method public setNeedForceLoad(Z)V
    .locals 1
    .parameter "forceLoad"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setNeedForceLoad(Z)V

    .line 595
    return-void
.end method

.method public setOnPresenceClickedListener(Lcom/google/android/talk/IRosterListAdapter$PresenceClickHandler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setOnPresenceClickedListener(Lcom/google/android/talk/IRosterListAdapter$PresenceClickHandler;)V

    .line 620
    return-void
.end method

.method public setSelfStatusCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "selfCursor"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/talk/IRosterListAdapter;->setSelfStatusCursor(Landroid/database/Cursor;)V

    .line 599
    return-void
.end method

.method public suppressIndent()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$AnimatedRosterAdapter;->mAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0}, Lcom/google/android/talk/IRosterListAdapter;->suppressIndent()V

    .line 603
    return-void
.end method
