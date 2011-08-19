.class public Lcom/google/android/gm/ConversationMenu;
.super Ljava/lang/Object;
.source "ConversationMenu.java"

# interfaces
.implements Lcom/google/android/gm/ConversationController;


# instance fields
.field private final mCommandListener:Lcom/google/android/gm/CommandListener;

.field private final mContext:Landroid/content/Context;

.field private mConversation:Lcom/google/android/gm/ConversationInfo;

.field private final mLayoutImpl:Lcom/google/android/gm/ConversationMenuLayout;

.field private mListContext:Lcom/google/android/gm/ConversationListContext;

.field private final mMenuHandler:Lcom/google/android/gm/MenuHandler;

.field private mPosTracker:Lcom/google/android/gm/ConversationPositionTracker;

.field private final mRootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CommandListener;)V
    .locals 2
    .parameter "context"
    .parameter "container"
    .parameter "handler"
    .parameter "listener"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/android/gm/ConversationMenu;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/google/android/gm/ConversationMenu;->mRootView:Landroid/view/ViewGroup;

    .line 98
    iput-object p3, p0, Lcom/google/android/gm/ConversationMenu;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    .line 99
    iput-object p4, p0, Lcom/google/android/gm/ConversationMenu;->mCommandListener:Lcom/google/android/gm/CommandListener;

    .line 100
    iget-object v0, p0, Lcom/google/android/gm/ConversationMenu;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/ConversationMenu;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v0, p0, v1}, Lcom/google/android/gm/ConversationMenuLayout;->getInstance(Landroid/content/Context;Lcom/google/android/gm/ConversationController;Landroid/view/ViewGroup;)Lcom/google/android/gm/ConversationMenuLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationMenu;->mLayoutImpl:Lcom/google/android/gm/ConversationMenuLayout;

    .line 101
    return-void
.end method

.method private rebuildControls()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/gm/ConversationMenu;->mLayoutImpl:Lcom/google/android/gm/ConversationMenuLayout;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationMenuLayout;->resetLayout()V

    .line 133
    iget-object v0, p0, Lcom/google/android/gm/ConversationMenu;->mLayoutImpl:Lcom/google/android/gm/ConversationMenuLayout;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationMenuLayout;->buildControls()V

    .line 134
    return-void
.end method


# virtual methods
.method public archive()V
    .locals 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gm/ConversationMenu;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gm/ConversationInfo;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gm/ConversationMenu;->mConversation:Lcom/google/android/gm/ConversationInfo;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ConversationMenu;->mCommandListener:Lcom/google/android/gm/CommandListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/MenuHandler;->archive(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    .line 52
    return-void
.end method

.method public bindInfo(Lcom/google/android/gm/ConversationListContext;Lcom/google/android/gm/ConversationInfo;Lcom/google/android/gm/ConversationPositionTracker;)V
    .locals 1
    .parameter "listContext"
    .parameter "conversation"
    .parameter "positionTracker"

    .prologue
    .line 110
    iput-object p2, p0, Lcom/google/android/gm/ConversationMenu;->mConversation:Lcom/google/android/gm/ConversationInfo;

    .line 111
    iput-object p3, p0, Lcom/google/android/gm/ConversationMenu;->mPosTracker:Lcom/google/android/gm/ConversationPositionTracker;

    .line 112
    iget-object v0, p0, Lcom/google/android/gm/ConversationMenu;->mListContext:Lcom/google/android/gm/ConversationListContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationMenu;->mListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ConversationListContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/google/android/gm/ConversationMenu;->mListContext:Lcom/google/android/gm/ConversationListContext;

    .line 114
    iget-object v0, p0, Lcom/google/android/gm/ConversationMenu;->mLayoutImpl:Lcom/google/android/gm/ConversationMenuLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ConversationMenuLayout;->setListContext(Lcom/google/android/gm/ConversationListContext;)V

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gm/ConversationMenu;->rebuildControls()V

    .line 118
    return-void
.end method

.method public delete()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gm/ConversationMenu;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gm/ConversationInfo;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gm/ConversationMenu;->mConversation:Lcom/google/android/gm/ConversationInfo;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ConversationMenu;->mCommandListener:Lcom/google/android/gm/CommandListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/MenuHandler;->delete(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    .line 57
    return-void
.end method

.method public hasNewerConversation()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gm/ConversationMenu;->mPosTracker:Lcom/google/android/gm/ConversationPositionTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationMenu;->mPosTracker:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationPositionTracker;->hasNewer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOlderConversation()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gm/ConversationMenu;->mPosTracker:Lcom/google/android/gm/ConversationPositionTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationMenu;->mPosTracker:Lcom/google/android/gm/ConversationPositionTracker;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationPositionTracker;->hasOlder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showNextConversation()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/gm/ConversationMenu;->mCommandListener:Lcom/google/android/gm/CommandListener;

    const v1, 0x7f0e0045

    invoke-interface {v0, v1}, Lcom/google/android/gm/CommandListener;->onCommandAccepted(I)V

    .line 67
    return-void
.end method

.method public showPreviousConversation()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/gm/ConversationMenu;->mCommandListener:Lcom/google/android/gm/CommandListener;

    const v1, 0x7f0e0044

    invoke-interface {v0, v1}, Lcom/google/android/gm/CommandListener;->onCommandAccepted(I)V

    .line 62
    return-void
.end method

.method public update(Lcom/google/android/gm/ConversationInfo;)V
    .locals 0
    .parameter "conversation"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/gm/ConversationMenu;->mConversation:Lcom/google/android/gm/ConversationInfo;

    .line 125
    invoke-direct {p0}, Lcom/google/android/gm/ConversationMenu;->rebuildControls()V

    .line 126
    return-void
.end method
