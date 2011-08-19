.class Lcom/infraware/common/UxDocEditorBase$TextActionModeCallback;
.super Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;
.source "UxDocEditorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/UxDocEditorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextActionModeCallback"
.end annotation


# instance fields
.field private m_oGoogleSearchButtonListener:Lcom/infraware/common/UxDocEditorBase$GoogleSearchButtonListener;

.field final synthetic this$0:Lcom/infraware/common/UxDocEditorBase;


# direct methods
.method private constructor <init>(Lcom/infraware/common/UxDocEditorBase;)V
    .locals 1
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/infraware/common/UxDocEditorBase$TextActionModeCallback;->this$0:Lcom/infraware/common/UxDocEditorBase;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;-><init>(Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/common/UxDocEditorBase;Lcom/infraware/common/UxDocEditorBase$TextActionModeCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 497
    invoke-direct {p0, p1}, Lcom/infraware/common/UxDocEditorBase$TextActionModeCallback;-><init>(Lcom/infraware/common/UxDocEditorBase;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 542
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 553
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;->finish()V

    .line 555
    const/4 v0, 0x1

    return v0

    .line 544
    :pswitch_1
    iget-object v0, p0, Lcom/infraware/common/UxDocEditorBase$TextActionModeCallback;->this$0:Lcom/infraware/common/UxDocEditorBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocEditorBase;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->copy()V

    goto :goto_0

    .line 547
    :pswitch_2
    iget-object v0, p0, Lcom/infraware/common/UxDocEditorBase$TextActionModeCallback;->this$0:Lcom/infraware/common/UxDocEditorBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocEditorBase;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->cut()V

    goto :goto_0

    .line 550
    :pswitch_3
    iget-object v0, p0, Lcom/infraware/common/UxDocEditorBase$TextActionModeCallback;->this$0:Lcom/infraware/common/UxDocEditorBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocEditorBase;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->paste()V

    goto :goto_0

    .line 542
    :pswitch_data_0
    .packed-switch 0x7f0c01a3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateActionMode(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;Landroid/view/Menu;)Z
    .locals 8
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    const v7, 0x7f0c01a4

    const/4 v6, 0x1

    .line 502
    invoke-super {p0, p1, p2}, Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;->onCreateActionMode(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;Landroid/view/Menu;)Z

    .line 503
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0b000a

    invoke-virtual {v3, v4, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 505
    new-instance v3, Lcom/infraware/common/UxDocEditorBase$GoogleSearchButtonListener;

    iget-object v4, p0, Lcom/infraware/common/UxDocEditorBase$TextActionModeCallback;->this$0:Lcom/infraware/common/UxDocEditorBase;

    invoke-direct {v3, v4, v5}, Lcom/infraware/common/UxDocEditorBase$GoogleSearchButtonListener;-><init>(Lcom/infraware/common/UxDocEditorBase;Lcom/infraware/common/UxDocEditorBase$GoogleSearchButtonListener;)V

    iput-object v3, p0, Lcom/infraware/common/UxDocEditorBase$TextActionModeCallback;->m_oGoogleSearchButtonListener:Lcom/infraware/common/UxDocEditorBase$GoogleSearchButtonListener;

    .line 507
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase$TextActionModeCallback;->this$0:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v3}, Lcom/infraware/common/UxDocEditorBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 508
    .local v0, oInflater:Landroid/view/LayoutInflater;
    const/high16 v3, 0x7f03

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 509
    .local v1, oLayout:Landroid/widget/LinearLayout;
    const/high16 v3, 0x7f0c

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 510
    .local v2, oSearchButton:Landroid/widget/ImageButton;
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase$TextActionModeCallback;->m_oGoogleSearchButtonListener:Lcom/infraware/common/UxDocEditorBase$GoogleSearchButtonListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    invoke-static {p2, v7, v1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->setActionViewIfPossible(Landroid/view/Menu;ILandroid/view/View;)V

    .line 513
    const v3, 0x7f0c01a5

    .line 514
    sget v4, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_ALWAYS:I

    sget v5, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_WITH_TEXT:I

    or-int/2addr v4, v5

    .line 513
    invoke-static {p2, v3, v4}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->setShowAsActionIfPossible(Landroid/view/Menu;II)V

    .line 515
    const v3, 0x7f0c01a6

    .line 516
    sget v4, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_ALWAYS:I

    sget v5, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_WITH_TEXT:I

    or-int/2addr v4, v5

    .line 515
    invoke-static {p2, v3, v4}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->setShowAsActionIfPossible(Landroid/view/Menu;II)V

    .line 517
    const v3, 0x7f0c01a3

    .line 518
    sget v4, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_ALWAYS:I

    sget v5, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_WITH_TEXT:I

    or-int/2addr v4, v5

    .line 517
    invoke-static {p2, v3, v4}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->setShowAsActionIfPossible(Landroid/view/Menu;II)V

    .line 520
    iget-object v3, p0, Lcom/infraware/common/UxDocEditorBase$TextActionModeCallback;->this$0:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v3}, Lcom/infraware/common/UxDocEditorBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_0

    .line 521
    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 523
    :cond_0
    return v6
.end method

.method public onDestroyActionMode(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 560
    invoke-super {p0, p1}, Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;->onDestroyActionMode(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;)V

    .line 561
    return-void
.end method

.method public onPrepareActionMode(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 527
    invoke-super {p0, p1, p2}, Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;->onPrepareActionMode(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;Landroid/view/Menu;)Z

    .line 529
    const v1, 0x7f0c01a3

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/infraware/common/UxDocEditorBase$TextActionModeCallback;->this$0:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v2}, Lcom/infraware/common/UxDocEditorBase;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infraware/common/UxToolBarUpdater;->canPaste()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 531
    iget-object v1, p0, Lcom/infraware/common/UxDocEditorBase$TextActionModeCallback;->this$0:Lcom/infraware/common/UxDocEditorBase;

    iget-object v1, v1, Lcom/infraware/common/UxDocEditorBase;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1}, Lcom/infraware/common/CoCoreFunctionInterface;->getSelectedString()Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, strSearchText:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 535
    iget-object v1, p0, Lcom/infraware/common/UxDocEditorBase$TextActionModeCallback;->m_oGoogleSearchButtonListener:Lcom/infraware/common/UxDocEditorBase$GoogleSearchButtonListener;

    invoke-virtual {v1, v0}, Lcom/infraware/common/UxDocEditorBase$GoogleSearchButtonListener;->setSearchText(Ljava/lang/String;)V

    .line 538
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
