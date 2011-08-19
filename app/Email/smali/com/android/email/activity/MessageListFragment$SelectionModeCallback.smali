.class Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionModeCallback"
.end annotation


# instance fields
.field private mAddStar:Landroid/view/MenuItem;

.field mClosedByUser:Z

.field private mMarkRead:Landroid/view/MenuItem;

.field private mMarkUnread:Landroid/view/MenuItem;

.field private mRemoveStar:Landroid/view/MenuItem;

.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClosedByUser:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1265
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 1307
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1323
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1310
    :sswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onMultiToggleRead()V

    goto :goto_0

    .line 1314
    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onMultiToggleFavorite()V

    goto :goto_0

    .line 1317
    :sswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onMultiDelete()V

    goto :goto_0

    .line 1320
    :sswitch_3
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onMultiMove()V

    goto :goto_0

    .line 1307
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f008c -> :sswitch_2
        0x7f0f00e1 -> :sswitch_3
        0x7f0f00e2 -> :sswitch_0
        0x7f0f00e3 -> :sswitch_0
        0x7f0f00e4 -> :sswitch_1
        0x7f0f00e5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 1275
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v1, p1}, Lcom/android/email/activity/MessageListFragment;->access$2102(Lcom/android/email/activity/MessageListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 1277
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1278
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0e0011

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1279
    const v1, 0x7f0f00e2

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkRead:Landroid/view/MenuItem;

    .line 1280
    const v1, 0x7f0f00e3

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkUnread:Landroid/view/MenuItem;

    .line 1281
    const v1, 0x7f0f00e4

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mAddStar:Landroid/view/MenuItem;

    .line 1282
    const v1, 0x7f0f00e5

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mRemoveStar:Landroid/view/MenuItem;

    .line 1284
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/email/activity/MessageListFragment$Callback;->onEnterSelectionMode(Z)V

    .line 1285
    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/email/activity/MessageListFragment$Callback;->onEnterSelectionMode(Z)V

    .line 1332
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListFragment;->access$2102(Lcom/android/email/activity/MessageListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 1333
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClosedByUser:Z

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    .line 1340
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 10
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1290
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListFragment;->getSelectedCount()I

    move-result v1

    .line 1292
    .local v1, num:I
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v3}, Lcom/android/email/activity/MessageListFragment;->access$2100(Lcom/android/email/activity/MessageListFragment;)Landroid/view/ActionMode;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0004

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 1296
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListFragment;->doesSelectionContainNonStarredMessage()Z

    move-result v0

    .line 1297
    .local v0, nonStarExists:Z
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListFragment;->doesSelectionContainReadMessage()Z

    move-result v2

    .line 1298
    .local v2, readExists:Z
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkRead:Landroid/view/MenuItem;

    if-nez v2, :cond_0

    move v4, v8

    :goto_0
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1299
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkUnread:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1300
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mAddStar:Landroid/view/MenuItem;

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1301
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mRemoveStar:Landroid/view/MenuItem;

    if-nez v0, :cond_1

    move v4, v8

    :goto_1
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1302
    return v8

    :cond_0
    move v4, v9

    .line 1298
    goto :goto_0

    :cond_1
    move v4, v9

    .line 1301
    goto :goto_1
.end method
