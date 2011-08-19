.class Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailboxListLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountChanging:Z

.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxListFragment;Z)V
    .locals 0
    .parameter
    .parameter "accountChanging"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-boolean p2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->mAccountChanging:Z

    .line 353
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MailboxListFragment;->access$200(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MailboxesAdapter;->createLoader(Landroid/content/Context;JI)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 7
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 369
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$200(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/email/activity/MailboxListFragment;->access$302(Lcom/android/email/activity/MailboxListFragment;J)J

    .line 372
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 374
    .local v1, lv:Landroid/widget/ListView;
    iget-boolean v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->mAccountChanging:Z

    if-eqz v2, :cond_1

    .line 375
    const/4 v0, 0x0

    .line 383
    .local v0, lss:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 386
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$500(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/email/activity/MailboxesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 387
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v2, v5}, Lcom/android/email/activity/MailboxListFragment;->setListShown(Z)V

    .line 400
    :goto_1
    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;->restore(Landroid/widget/AbsListView;)V

    .line 405
    :cond_0
    iput-boolean v5, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->mAccountChanging:Z

    .line 406
    return-void

    .line 376
    .end local v0           #lss:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$400(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 377
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$400(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    move-result-object v0

    .line 378
    .restart local v0       #lss:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v2, v6}, Lcom/android/email/activity/MailboxListFragment;->access$402(Lcom/android/email/activity/MailboxListFragment;Lcom/android/emailcommon/utility/Utility$ListStateSaver;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    goto :goto_0

    .line 380
    .end local v0           #lss:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    :cond_2
    new-instance v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/widget/AbsListView;)V

    .restart local v0       #lss:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    goto :goto_0

    .line 390
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$500(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/email/activity/MailboxesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 391
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$500(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 392
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->setListShown(Z)V

    .line 396
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-boolean v3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->mAccountChanging:Z

    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->access$600(Lcom/android/email/activity/MailboxListFragment;Z)V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 348
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$500(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 411
    return-void
.end method
