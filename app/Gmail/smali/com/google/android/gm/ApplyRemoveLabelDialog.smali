.class public Lcom/google/android/gm/ApplyRemoveLabelDialog;
.super Landroid/app/AlertDialog;
.source "ApplyRemoveLabelDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private final mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/google/android/gm/LabelSelectorAdapter;

.field private final mCommandListener:Lcom/google/android/gm/CommandListener;

.field private mConversationInfos:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelHandler:Lcom/google/android/gm/ConversationsLabelHandler;

.field private final mListView:Landroid/widget/ListView;

.field private final mMenuHandler:Lcom/google/android/gm/MenuHandler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CommandListener;)V
    .locals 7
    .parameter "activity"
    .parameter "menuHandler"
    .parameter "commandListener"

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object p1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mActivity:Landroid/app/Activity;

    .line 63
    iput-object p2, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    .line 64
    iput-object p3, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mCommandListener:Lcom/google/android/gm/CommandListener;

    .line 66
    const v0, 0x7f0d0081

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ApplyRemoveLabelDialog;->setTitle(I)V

    .line 67
    invoke-virtual {p0, p0}, Lcom/google/android/gm/ApplyRemoveLabelDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 68
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mActivity:Landroid/app/Activity;

    const v3, 0x104000a

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/google/android/gm/ApplyRemoveLabelDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 70
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mActivity:Landroid/app/Activity;

    const/high16 v3, 0x104

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/google/android/gm/ApplyRemoveLabelDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ApplyRemoveLabelDialog;->setInverseBackgroundForced(Z)V

    .line 74
    iget-object v0, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mActivity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 76
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f040004

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mListView:Landroid/widget/ListView;

    .line 77
    iget-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mListView:Landroid/widget/ListView;

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/ApplyRemoveLabelDialog;->setView(Landroid/view/View;IIII)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/ApplyRemoveLabelDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/gm/ApplyRemoveLabelDialog;->onSelectLabel(I)V

    return-void
.end method

.method private onSelectLabel(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mLabelHandler:Lcom/google/android/gm/ConversationsLabelHandler;

    iget-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mAdapter:Lcom/google/android/gm/LabelSelectorAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/gm/LabelSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Map;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/ConversationsLabelHandler;->update(Ljava/util/Map;)V

    .line 121
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 129
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mLabelHandler:Lcom/google/android/gm/ConversationsLabelHandler;

    if-nez v0, :cond_0

    .line 134
    const-string v0, "Gmail"

    const-string v1, "null LabelHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mLabelHandler:Lcom/google/android/gm/ConversationsLabelHandler;

    iget-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mCommandListener:Lcom/google/android/gm/CommandListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationsLabelHandler;->commit(Lcom/google/android/gm/CommandListener;)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mLabelHandler:Lcom/google/android/gm/ConversationsLabelHandler;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationsLabelHandler;->reset()V

    goto :goto_0
.end method

.method public onPrepare(Ljava/lang/String;Ljava/util/Map;Ljava/util/Collection;)V
    .locals 5
    .parameter "account"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p2, currentLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    .local p3, conversationInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    :cond_0
    const-string v1, "Gmail"

    const-string v2, "No conversations, dismissing ApplyRemoveLabelDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gm/ApplyRemoveLabelDialog;->dismiss()V

    .line 115
    :goto_0
    return-void

    .line 94
    :cond_1
    iput-object p3, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mConversationInfos:Ljava/util/Collection;

    .line 95
    iput-object p1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mAccount:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/google/android/gm/provider/LabelManager;->getLabelList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)Lcom/google/android/gm/provider/LabelList;

    move-result-object v0

    .line 99
    .local v0, labels:Lcom/google/android/gm/provider/LabelList;
    new-instance v1, Lcom/google/android/gm/LabelSelectorAdapter;

    invoke-virtual {p0}, Lcom/google/android/gm/ApplyRemoveLabelDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mAccount:Ljava/lang/String;

    invoke-direct {v1, v2, v0, p2, v3}, Lcom/google/android/gm/LabelSelectorAdapter;-><init>(Landroid/content/Context;Lcom/google/android/gm/provider/LabelList;Ljava/util/Map;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mAdapter:Lcom/google/android/gm/LabelSelectorAdapter;

    .line 100
    new-instance v1, Lcom/google/android/gm/ConversationsLabelHandler;

    iget-object v2, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v3, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mAdapter:Lcom/google/android/gm/LabelSelectorAdapter;

    iget-object v4, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mConversationInfos:Ljava/util/Collection;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gm/ConversationsLabelHandler;-><init>(Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/LabelSelectorAdapter;Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mLabelHandler:Lcom/google/android/gm/ConversationsLabelHandler;

    .line 106
    iget-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 107
    iget-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mListView:Landroid/widget/ListView;

    const/high16 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 108
    iget-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/google/android/gm/ApplyRemoveLabelDialog$1;

    invoke-direct {v2, p0}, Lcom/google/android/gm/ApplyRemoveLabelDialog$1;-><init>(Lcom/google/android/gm/ApplyRemoveLabelDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    iget-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mAdapter:Lcom/google/android/gm/LabelSelectorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method
