.class public Lcom/google/android/gm/SelectedConversationsActionMenu;
.super Ljava/lang/Object;
.source "SelectedConversationsActionMenu.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;


# instance fields
.field private final mAccount:Ljava/lang/String;

.field mActionMode:Landroid/view/ActionMode;

.field private mActivated:Z

.field private final mActivity:Landroid/app/Activity;

.field private final mCommandListener:Lcom/google/android/gm/CommandListener;

.field private mLabelSelectorView:Landroid/view/View;

.field private final mListContext:Lcom/google/android/gm/ConversationListContext;

.field protected final mMenuHandler:Lcom/google/android/gm/MenuHandler;

.field protected final mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gm/CommandListener;Lcom/google/android/gm/ConversationListContext;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/ConversationSelectionSet;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "commandListener"
    .parameter "listContext"
    .parameter "handler"
    .parameter "selectionSet"
    .parameter "account"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivated:Z

    .line 58
    iput-object p4, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    .line 59
    iput-object p5, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    .line 60
    iput-object p3, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mListContext:Lcom/google/android/gm/ConversationListContext;

    .line 61
    iput-object p1, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivity:Landroid/app/Activity;

    .line 62
    iput-object p2, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mCommandListener:Lcom/google/android/gm/CommandListener;

    .line 63
    iput-object p6, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mAccount:Ljava/lang/String;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/SelectedConversationsActionMenu;)Lcom/google/android/gm/CommandListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mCommandListener:Lcom/google/android/gm/CommandListener;

    return-object v0
.end method

.method private updateCount()V
    .locals 5

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d0135

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v4}, Lcom/google/android/gm/ConversationSelectionSet;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 192
    :cond_0
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivated:Z

    .line 199
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 202
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivated:Z

    .line 211
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 213
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/google/android/gm/SelectedConversationsActionMenu;->deactivate()V

    .line 226
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/ConversationSelectionSet;->removeObserver(Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;)V

    .line 227
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationSelectionSet;->clear()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mLabelSelectorView:Landroid/view/View;

    .line 229
    return-void
.end method

.method public fadeOnDestructiveCommand()V
    .locals 3

    .prologue
    .line 232
    iget-object v2, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationInfo;

    .line 233
    .local v0, conversation:Lcom/google/android/gm/ConversationInfo;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gm/ConversationInfo;->setFaded(Z)V

    goto :goto_0

    .line 235
    .end local v0           #conversation:Lcom/google/android/gm/ConversationInfo;
    :cond_0
    return-void
.end method

.method public isActivated()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivated:Z

    return v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/google/android/gm/MenuHandler;->shouldDisplayAutoAdvanceDialog(Landroid/content/Context;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    move-object v6, p2

    .line 76
    .local v6, menuItem:Landroid/view/MenuItem;
    new-instance v7, Lcom/google/android/gm/SelectedConversationsActionMenu$1;

    invoke-direct {v7, p0, v6}, Lcom/google/android/gm/SelectedConversationsActionMenu$1;-><init>(Lcom/google/android/gm/SelectedConversationsActionMenu;Landroid/view/MenuItem;)V

    .line 85
    .local v7, operation:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v7}, Lcom/google/android/gm/MenuHandler;->displayAutoAdvanceDialogAndPerformAction(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 87
    const/4 v0, 0x1

    .line 89
    .end local v6           #menuItem:Landroid/view/MenuItem;
    .end local v7           #operation:Ljava/lang/Runnable;
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v1, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationSelectionSet;->getLabels()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mCommandListener:Lcom/google/android/gm/CommandListener;

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/MenuHandler;->onMenuItemSelected(Landroid/view/MenuItem;Ljava/util/Collection;Ljava/util/Map;ZLcom/google/android/gm/CommandListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mLabelSelectorView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 99
    new-instance v0, Lcom/google/android/gm/LabelListPopupWindow;

    iget-object v1, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mCommandListener:Lcom/google/android/gm/CommandListener;

    iget-object v3, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mAccount:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mLabelSelectorView:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    iget-object v6, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v7, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mAccount:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/google/android/gm/provider/LabelManager;->getLabelList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)Lcom/google/android/gm/provider/LabelList;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gm/LabelListPopupWindow;-><init>(Landroid/app/Activity;Lcom/google/android/gm/CommandListener;Ljava/lang/String;Landroid/view/View;Lcom/google/android/gm/ConversationSelectionSet;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/provider/LabelList;)V

    invoke-virtual {v0}, Lcom/google/android/gm/LabelListPopupWindow;->show()V

    .line 105
    :cond_0
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 109
    iget-object v3, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v3, p0}, Lcom/google/android/gm/ConversationSelectionSet;->addObserver(Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;)V

    .line 110
    iget-object v3, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 111
    .local v0, inflater:Landroid/view/MenuInflater;
    const v3, 0x7f11000d

    invoke-virtual {v0, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 112
    iput-object p1, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    .line 114
    const v3, 0x7f0e00a9

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 115
    .local v1, labelSelector:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 119
    iget-object v3, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 120
    .local v2, viewInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mLabelSelectorView:Landroid/view/View;

    .line 121
    iget-object v3, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mLabelSelectorView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v3, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mLabelSelectorView:Landroid/view/View;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 125
    .end local v2           #viewInflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/SelectedConversationsActionMenu;->updateCount()V

    .line 126
    const/4 v3, 0x1

    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActionMode:Landroid/view/ActionMode;

    .line 147
    iget-boolean v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mActivated:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/google/android/gm/SelectedConversationsActionMenu;->destroy()V

    .line 150
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationSelectionSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 153
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying action menu, with non-empty conversation set. Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationSelectionSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationSelectionSet;->clear()V

    .line 159
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v1, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationSelectionSet;->getLabels()Ljava/util/Map;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gm/SelectedConversationsActionMenu;->mListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/MenuHandler;->onPrepareMenu(Landroid/view/Menu;Ljava/util/Map;Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public onSetBecomeUnempty(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 164
    return-void
.end method

.method public onSetChanged(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 1
    .parameter "set"

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/google/android/gm/ConversationSelectionSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/SelectedConversationsActionMenu;->updateCount()V

    goto :goto_0
.end method

.method public onSetEmpty(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/android/gm/SelectedConversationsActionMenu;->destroy()V

    .line 169
    return-void
.end method
