.class final Lcom/android/contacts/RecentCallsListActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "RecentCallsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/RecentCallsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/RecentCallsListActivity$QueryHandler$CatchingWorkerHandler;
    }
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/contacts/RecentCallsListActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 800
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 801
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/contacts/RecentCallsListActivity;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 803
    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 796
    new-instance v0, Lcom/android/contacts/RecentCallsListActivity$QueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/RecentCallsListActivity$QueryHandler$CatchingWorkerHandler;-><init>(Lcom/android/contacts/RecentCallsListActivity$QueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 807
    iget-object v2, p0, Lcom/android/contacts/RecentCallsListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/RecentCallsListActivity;

    .line 808
    .local v0, activity:Lcom/android/contacts/RecentCallsListActivity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/RecentCallsListActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 809
    iget-object v1, v0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    .line 810
    .local v1, callsAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;
    invoke-virtual {v1, v3}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->setLoading(Z)V

    .line 811
    invoke-virtual {v1, p3}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 812
    invoke-static {v0}, Lcom/android/contacts/RecentCallsListActivity;->access$200(Lcom/android/contacts/RecentCallsListActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 813
    invoke-static {v0}, Lcom/android/contacts/RecentCallsListActivity;->access$300(Lcom/android/contacts/RecentCallsListActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 814
    invoke-static {v0}, Lcom/android/contacts/RecentCallsListActivity;->access$400(Lcom/android/contacts/RecentCallsListActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 816
    :cond_0
    invoke-static {v0}, Lcom/android/contacts/RecentCallsListActivity;->access$500(Lcom/android/contacts/RecentCallsListActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 817
    invoke-static {v0, v3}, Lcom/android/contacts/RecentCallsListActivity;->access$202(Lcom/android/contacts/RecentCallsListActivity;Z)Z

    .line 822
    .end local v1           #callsAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;
    :cond_1
    :goto_0
    return-void

    .line 820
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
