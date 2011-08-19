.class public Lcom/google/android/gm/LabelListPopupWindow;
.super Ljava/lang/Object;
.source "LabelListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mActivity:Landroid/app/Activity;

.field private final mAdapter:Lcom/google/android/gm/LabelSelectorAdapter;

.field private final mCommandListener:Lcom/google/android/gm/CommandListener;

.field private final mLabelHandler:Lcom/google/android/gm/ConversationsLabelHandler;

.field private final mLabels:Lcom/google/android/gm/provider/LabelList;

.field private final mMenuHandler:Lcom/google/android/gm/MenuHandler;

.field private final mPopup:Landroid/widget/ListPopupWindow;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gm/CommandListener;Ljava/lang/String;Landroid/view/View;Lcom/google/android/gm/ConversationSelectionSet;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/provider/LabelList;)V
    .locals 8
    .parameter "activity"
    .parameter "commandListener"
    .parameter "account"
    .parameter "target"
    .parameter "selectionSet"
    .parameter "menuHandler"
    .parameter "labels"

    .prologue
    const/4 v7, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/android/gm/LabelListPopupWindow;->mActivity:Landroid/app/Activity;

    .line 48
    iput-object p3, p0, Lcom/google/android/gm/LabelListPopupWindow;->mAccount:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/google/android/gm/LabelListPopupWindow;->mCommandListener:Lcom/google/android/gm/CommandListener;

    .line 50
    iput-object p6, p0, Lcom/google/android/gm/LabelListPopupWindow;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    .line 51
    iput-object p7, p0, Lcom/google/android/gm/LabelListPopupWindow;->mLabels:Lcom/google/android/gm/provider/LabelList;

    .line 52
    new-instance v2, Lcom/google/android/gm/LabelSelectorAdapter;

    iget-object v3, p0, Lcom/google/android/gm/LabelListPopupWindow;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/gm/LabelListPopupWindow;->mLabels:Lcom/google/android/gm/provider/LabelList;

    invoke-virtual {p5}, Lcom/google/android/gm/ConversationSelectionSet;->getLabels()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gm/LabelListPopupWindow;->mAccount:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gm/LabelSelectorAdapter;-><init>(Landroid/content/Context;Lcom/google/android/gm/provider/LabelList;Ljava/util/Map;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gm/LabelListPopupWindow;->mAdapter:Lcom/google/android/gm/LabelSelectorAdapter;

    .line 53
    new-instance v2, Lcom/google/android/gm/ConversationsLabelHandler;

    iget-object v3, p0, Lcom/google/android/gm/LabelListPopupWindow;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v4, p0, Lcom/google/android/gm/LabelListPopupWindow;->mAdapter:Lcom/google/android/gm/LabelSelectorAdapter;

    invoke-virtual {p5}, Lcom/google/android/gm/ConversationSelectionSet;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gm/ConversationsLabelHandler;-><init>(Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/LabelSelectorAdapter;Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/android/gm/LabelListPopupWindow;->mLabelHandler:Lcom/google/android/gm/ConversationsLabelHandler;

    .line 56
    new-instance v2, Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/google/android/gm/LabelListPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/gm/LabelListPopupWindow;->mPopup:Landroid/widget/ListPopupWindow;

    .line 58
    iget-object v2, p0, Lcom/google/android/gm/LabelListPopupWindow;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 59
    iget-object v2, p0, Lcom/google/android/gm/LabelListPopupWindow;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 61
    iget-object v2, p0, Lcom/google/android/gm/LabelListPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    .local v0, resources:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/google/android/gm/LabelListPopupWindow;->mPopup:Landroid/widget/ListPopupWindow;

    const v3, 0x7f0c001d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 64
    iget-object v2, p0, Lcom/google/android/gm/LabelListPopupWindow;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/google/android/gm/LabelListPopupWindow;->mAdapter:Lcom/google/android/gm/LabelSelectorAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object v2, p0, Lcom/google/android/gm/LabelListPopupWindow;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, p4}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 69
    iget-object v2, p0, Lcom/google/android/gm/LabelListPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040029

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 70
    .local v1, v:Landroid/view/View;
    const v2, 0x7f0e0071

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v2, 0x7f0e0068

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v2, p0, Lcom/google/android/gm/LabelListPopupWindow;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 73
    iget-object v2, p0, Lcom/google/android/gm/LabelListPopupWindow;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 75
    iget-object v2, p0, Lcom/google/android/gm/LabelListPopupWindow;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gm/LabelListPopupWindow;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 92
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 97
    .local v0, which:I
    const v1, 0x7f0e0068

    if-ne v0, v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/google/android/gm/LabelListPopupWindow;->mLabelHandler:Lcom/google/android/gm/ConversationsLabelHandler;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationsLabelHandler;->reset()V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gm/LabelListPopupWindow;->dismiss()V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const v1, 0x7f0e0071

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/google/android/gm/LabelListPopupWindow;->mCommandListener:Lcom/google/android/gm/CommandListener;

    const v2, 0x7f0e00a9

    invoke-interface {v1, v2}, Lcom/google/android/gm/CommandListener;->onCommandAccepted(I)V

    .line 102
    iget-object v1, p0, Lcom/google/android/gm/LabelListPopupWindow;->mLabelHandler:Lcom/google/android/gm/ConversationsLabelHandler;

    iget-object v2, p0, Lcom/google/android/gm/LabelListPopupWindow;->mCommandListener:Lcom/google/android/gm/CommandListener;

    invoke-virtual {v1, v2}, Lcom/google/android/gm/ConversationsLabelHandler;->commit(Lcom/google/android/gm/CommandListener;)V

    .line 103
    iget-object v1, p0, Lcom/google/android/gm/LabelListPopupWindow;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/gm/LabelListPopupWindow;->mLabelHandler:Lcom/google/android/gm/ConversationsLabelHandler;

    iget-object v1, p0, Lcom/google/android/gm/LabelListPopupWindow;->mAdapter:Lcom/google/android/gm/LabelSelectorAdapter;

    invoke-virtual {v1, p3}, Lcom/google/android/gm/LabelSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Map;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/ConversationsLabelHandler;->update(Ljava/util/Map;)V

    .line 111
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/gm/LabelListPopupWindow;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 84
    iget-object v0, p0, Lcom/google/android/gm/LabelListPopupWindow;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 85
    return-void
.end method
