.class public Lcom/google/android/gm/ConversationsLabelHandler;
.super Ljava/lang/Object;
.source "ConversationsLabelHandler.java"


# instance fields
.field private final mAdapter:Lcom/google/android/gm/LabelSelectorAdapter;

.field private final mChangeList:Lcom/google/android/gm/LabelOperations;

.field private final mConversationInfos:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenuHandler:Lcom/google/android/gm/MenuHandler;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/LabelSelectorAdapter;Ljava/util/Collection;)V
    .locals 1
    .parameter "menuHandler"
    .parameter "adapter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/MenuHandler;",
            "Lcom/google/android/gm/LabelSelectorAdapter;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p3, conversationInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/gm/ConversationsLabelHandler;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    .line 28
    iput-object p2, p0, Lcom/google/android/gm/ConversationsLabelHandler;->mAdapter:Lcom/google/android/gm/LabelSelectorAdapter;

    .line 29
    new-instance v0, Lcom/google/android/gm/LabelOperations;

    invoke-direct {v0}, Lcom/google/android/gm/LabelOperations;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/ConversationsLabelHandler;->mChangeList:Lcom/google/android/gm/LabelOperations;

    .line 30
    iput-object p3, p0, Lcom/google/android/gm/ConversationsLabelHandler;->mConversationInfos:Ljava/util/Collection;

    .line 31
    return-void
.end method


# virtual methods
.method public commit(Lcom/google/android/gm/CommandListener;)V
    .locals 7
    .parameter "commandListener"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gm/ConversationsLabelHandler;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v1, p0, Lcom/google/android/gm/ConversationsLabelHandler;->mChangeList:Lcom/google/android/gm/LabelOperations;

    iget-object v2, p0, Lcom/google/android/gm/ConversationsLabelHandler;->mConversationInfos:Ljava/util/Collection;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x7f0e00a9

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/MenuHandler;->addOrRemoveLabel(Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;ZLcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 75
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gm/ConversationsLabelHandler;->mChangeList:Lcom/google/android/gm/LabelOperations;

    invoke-virtual {v0}, Lcom/google/android/gm/LabelOperations;->clear()V

    .line 65
    return-void
.end method

.method public update(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "label-is-present"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 42
    .local v0, add:Z
    :goto_0
    const-string v2, "label"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/Label;

    .line 44
    .local v1, label:Lcom/google/android/gm/provider/Label;
    const-string v2, "label-is-present"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v2, p0, Lcom/google/android/gm/ConversationsLabelHandler;->mAdapter:Lcom/google/android/gm/LabelSelectorAdapter;

    invoke-virtual {v2}, Lcom/google/android/gm/LabelSelectorAdapter;->notifyDataSetChanged()V

    .line 57
    iget-object v2, p0, Lcom/google/android/gm/ConversationsLabelHandler;->mChangeList:Lcom/google/android/gm/LabelOperations;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gm/LabelOperations;->add(Lcom/google/android/gm/provider/Label;Z)V

    .line 58
    return-void

    .line 41
    .end local v0           #add:Z
    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
