.class public Lcom/google/android/gm/DefaultConversationMenu;
.super Lcom/google/android/gm/ConversationMenuLayout;
.source "DefaultConversationMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mController:Lcom/google/android/gm/ConversationController;

.field private final mInflater:Landroid/view/LayoutInflater;

.field protected mListContext:Lcom/google/android/gm/ConversationListContext;

.field protected final mRootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gm/ConversationController;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "context"
    .parameter "controller"
    .parameter "rootView"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/gm/ConversationMenuLayout;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/gm/DefaultConversationMenu;->mContext:Landroid/content/Context;

    .line 33
    iput-object p3, p0, Lcom/google/android/gm/DefaultConversationMenu;->mRootView:Landroid/view/ViewGroup;

    .line 34
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/gm/DefaultConversationMenu;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    iput-object p2, p0, Lcom/google/android/gm/DefaultConversationMenu;->mController:Lcom/google/android/gm/ConversationController;

    .line 36
    return-void
.end method


# virtual methods
.method public buildControls()V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/android/gm/DefaultConversationMenu;->setupArchiveButton()V

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gm/DefaultConversationMenu;->setupDeleteButton()V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gm/DefaultConversationMenu;->setupPreviousButton()V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gm/DefaultConversationMenu;->setupNextButton()V

    .line 98
    return-void
.end method

.method protected findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gm/DefaultConversationMenu;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "contentId"
    .parameter "rootView"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/gm/DefaultConversationMenu;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 109
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gm/DefaultConversationMenu;->mController:Lcom/google/android/gm/ConversationController;

    invoke-interface {v0}, Lcom/google/android/gm/ConversationController;->archive()V

    goto :goto_0

    .line 112
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gm/DefaultConversationMenu;->mController:Lcom/google/android/gm/ConversationController;

    invoke-interface {v0}, Lcom/google/android/gm/ConversationController;->delete()V

    goto :goto_0

    .line 115
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gm/DefaultConversationMenu;->mController:Lcom/google/android/gm/ConversationController;

    invoke-interface {v0}, Lcom/google/android/gm/ConversationController;->showPreviousConversation()V

    goto :goto_0

    .line 118
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gm/DefaultConversationMenu;->mController:Lcom/google/android/gm/ConversationController;

    invoke-interface {v0}, Lcom/google/android/gm/ConversationController;->showNextConversation()V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x7f0e0042
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public resetLayout()V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/android/gm/DefaultConversationMenu;->resetView()V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gm/DefaultConversationMenu;->setContent()V

    .line 90
    return-void
.end method

.method protected resetView()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gm/DefaultConversationMenu;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 76
    return-void
.end method

.method protected setContent()V
    .locals 2

    .prologue
    .line 79
    const v0, 0x7f040010

    iget-object v1, p0, Lcom/google/android/gm/DefaultConversationMenu;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/DefaultConversationMenu;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 80
    return-void
.end method

.method public setListContext(Lcom/google/android/gm/ConversationListContext;)V
    .locals 0
    .parameter "listContext"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/gm/DefaultConversationMenu;->mListContext:Lcom/google/android/gm/ConversationListContext;

    .line 45
    return-void
.end method

.method protected setupArchiveButton()V
    .locals 3

    .prologue
    .line 48
    const v1, 0x7f0e0042

    invoke-virtual {p0, v1}, Lcom/google/android/gm/DefaultConversationMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 49
    .local v0, archiveButton:Landroid/widget/Button;
    iget-object v1, p0, Lcom/google/android/gm/DefaultConversationMenu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/DefaultConversationMenu;->mListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-static {v1, v2, v0}, Lcom/google/android/gm/MenuHandler;->prepareYButton(Landroid/content/Context;Lcom/google/android/gm/ConversationListContext;Landroid/widget/Button;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    :cond_0
    return-void
.end method

.method protected setupDeleteButton()V
    .locals 3

    .prologue
    .line 55
    const v1, 0x7f0e0043

    invoke-virtual {p0, v1}, Lcom/google/android/gm/DefaultConversationMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 56
    .local v0, deleteButton:Landroid/widget/Button;
    iget-object v1, p0, Lcom/google/android/gm/DefaultConversationMenu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/DefaultConversationMenu;->mListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-static {v1, v2, v0}, Lcom/google/android/gm/MenuHandler;->prepareDeleteButton(Landroid/content/Context;Lcom/google/android/gm/ConversationListContext;Landroid/widget/Button;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    :cond_0
    return-void
.end method

.method protected setupNextButton()V
    .locals 2

    .prologue
    .line 69
    const v1, 0x7f0e0045

    invoke-virtual {p0, v1}, Lcom/google/android/gm/DefaultConversationMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, nextButton:Landroid/view/View;
    iget-object v1, p0, Lcom/google/android/gm/DefaultConversationMenu;->mController:Lcom/google/android/gm/ConversationController;

    invoke-interface {v1}, Lcom/google/android/gm/ConversationController;->hasOlderConversation()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 71
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method protected setupPreviousButton()V
    .locals 2

    .prologue
    .line 63
    const v1, 0x7f0e0044

    invoke-virtual {p0, v1}, Lcom/google/android/gm/DefaultConversationMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, previousButton:Landroid/view/View;
    iget-object v1, p0, Lcom/google/android/gm/DefaultConversationMenu;->mController:Lcom/google/android/gm/ConversationController;

    invoke-interface {v1}, Lcom/google/android/gm/ConversationController;->hasNewerConversation()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 65
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method
