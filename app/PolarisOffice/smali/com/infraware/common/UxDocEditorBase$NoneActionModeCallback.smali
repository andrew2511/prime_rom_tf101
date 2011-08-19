.class Lcom/infraware/common/UxDocEditorBase$NoneActionModeCallback;
.super Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;
.source "UxDocEditorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/UxDocEditorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoneActionModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/UxDocEditorBase;


# direct methods
.method private constructor <init>(Lcom/infraware/common/UxDocEditorBase;)V
    .locals 1
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/infraware/common/UxDocEditorBase$NoneActionModeCallback;->this$0:Lcom/infraware/common/UxDocEditorBase;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;-><init>(Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/common/UxDocEditorBase;Lcom/infraware/common/UxDocEditorBase$NoneActionModeCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 585
    invoke-direct {p0, p1}, Lcom/infraware/common/UxDocEditorBase$NoneActionModeCallback;-><init>(Lcom/infraware/common/UxDocEditorBase;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 608
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 613
    :goto_0
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;->finish()V

    .line 615
    const/4 v0, 0x1

    return v0

    .line 610
    :pswitch_0
    iget-object v0, p0, Lcom/infraware/common/UxDocEditorBase$NoneActionModeCallback;->this$0:Lcom/infraware/common/UxDocEditorBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocEditorBase;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->paste()V

    goto :goto_0

    .line 608
    :pswitch_data_0
    .packed-switch 0x7f0c01a3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 589
    invoke-super {p0, p1, p2}, Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;->onCreateActionMode(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;Landroid/view/Menu;)Z

    .line 590
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 592
    const v0, 0x7f0c01a3

    .line 593
    sget v1, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_ALWAYS:I

    sget v2, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_WITH_TEXT:I

    or-int/2addr v1, v2

    .line 592
    invoke-static {p2, v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->setShowAsActionIfPossible(Landroid/view/Menu;II)V

    .line 595
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 620
    invoke-super {p0, p1}, Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;->onDestroyActionMode(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;)V

    .line 621
    return-void
.end method

.method public onPrepareActionMode(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 600
    invoke-super {p0, p1, p2}, Lcom/infraware/common/UxDocEditorBase$ObjectActionModeCallback;->onPrepareActionMode(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;Landroid/view/Menu;)Z

    .line 602
    const v0, 0x7f0c01a3

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/common/UxDocEditorBase$NoneActionModeCallback;->this$0:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v1}, Lcom/infraware/common/UxDocEditorBase;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/common/UxToolBarUpdater;->canPaste()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 604
    const/4 v0, 0x1

    return v0
.end method
