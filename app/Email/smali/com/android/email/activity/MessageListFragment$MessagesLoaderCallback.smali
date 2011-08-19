.class Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessagesLoaderCallback"
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
.field private mMailboxChanging:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageListFragment;Z)V
    .locals 0
    .parameter
    .parameter "mailboxChanging"

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1142
    iput-boolean p2, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->mMailboxChanging:Z

    .line 1143
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
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
    .line 1151
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$600(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessagesAdapter;->createLoader(Landroid/content/Context;J)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 9
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
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1162
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1164
    .local v1, lv:Landroid/widget/ListView;
    iget-boolean v2, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->mMailboxChanging:Z

    if-eqz v2, :cond_1

    .line 1165
    const/4 v0, 0x0

    .line 1174
    .local v0, lss:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$1400(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/email/activity/MessagesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1176
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$1400(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$600(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$1200(Lcom/android/email/activity/MessageListFragment;)I

    move-result v3

    if-le v3, v7, :cond_3

    move v3, v7

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessagesAdapter;->setShowColorChips(Z)V

    .line 1177
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$1400(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1178
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2, v7}, Lcom/android/email/activity/MessageListFragment;->setListShown(Z)V

    .line 1181
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$1500(Lcom/android/email/activity/MessageListFragment;)V

    .line 1182
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$1600(Lcom/android/email/activity/MessageListFragment;)V

    .line 1183
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    .line 1184
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$1700(Lcom/android/email/activity/MessageListFragment;)V

    .line 1185
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$1800(Lcom/android/email/activity/MessageListFragment;)V

    .line 1189
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-boolean v3, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->mMailboxChanging:Z

    invoke-static {v2, v3}, Lcom/android/email/activity/MessageListFragment;->access$1900(Lcom/android/email/activity/MessageListFragment;Z)V

    .line 1193
    if-eqz v0, :cond_0

    .line 1194
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;->restore(Landroid/widget/AbsListView;)V

    .line 1197
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$600(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/email/activity/MessageListFragment;->resetNewMessageCount(Landroid/content/Context;JJ)V

    .line 1200
    iput-boolean v8, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->mMailboxChanging:Z

    .line 1201
    return-void

    .line 1166
    .end local v0           #lss:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1167
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    move-result-object v0

    .line 1168
    .restart local v0       #lss:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/email/activity/MessageListFragment;->access$1302(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/utility/Utility$ListStateSaver;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    goto/16 :goto_0

    .line 1170
    .end local v0           #lss:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    :cond_2
    new-instance v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/widget/AbsListView;)V

    .restart local v0       #lss:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    goto/16 :goto_0

    :cond_3
    move v3, v8

    .line 1176
    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1138
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 1205
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$1400(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessagesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1206
    return-void
.end method
