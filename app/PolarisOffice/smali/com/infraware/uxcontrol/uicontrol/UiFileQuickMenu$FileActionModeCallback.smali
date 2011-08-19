.class Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu$FileActionModeCallback;
.super Ljava/lang/Object;
.source "UiFileQuickMenu.java"

# interfaces
.implements Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileActionModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;


# direct methods
.method private constructor <init>(Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu$FileActionModeCallback;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu$FileActionModeCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu$FileActionModeCallback;-><init>(Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 221
    :goto_0
    return v0

    .line 211
    :pswitch_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu$FileActionModeCallback;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;

    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_CheckedMove:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;->onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V

    move v0, v3

    .line 212
    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu$FileActionModeCallback;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;

    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_CheckedCopy:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;->onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V

    move v0, v3

    .line 215
    goto :goto_0

    .line 217
    :pswitch_2
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu$FileActionModeCallback;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;

    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_CheckedDelete:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;->onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V

    move v0, v3

    .line 218
    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c01a0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateActionMode(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;Landroid/view/Menu;)Z
    .locals 7
    .parameter "mode"
    .parameter "menu"

    .prologue
    const v6, 0x7f0c01a1

    const v5, 0x7f0c01a0

    const/4 v4, 0x0

    .line 183
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu$FileActionModeCallback;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;

    invoke-static {v1, p1}, Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;->access$0(Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;)V

    .line 185
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 186
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0b0008

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 189
    sget v1, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_ALWAYS:I

    sget v2, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_WITH_TEXT:I

    or-int/2addr v1, v2

    .line 188
    invoke-static {p2, v5, v1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->setShowAsActionIfPossible(Landroid/view/Menu;II)V

    .line 191
    sget v1, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_ALWAYS:I

    sget v2, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_WITH_TEXT:I

    or-int/2addr v1, v2

    .line 190
    invoke-static {p2, v6, v1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->setShowAsActionIfPossible(Landroid/view/Menu;II)V

    .line 192
    const v1, 0x7f0c01a2

    .line 193
    sget v2, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_ALWAYS:I

    sget v3, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_WITH_TEXT:I

    or-int/2addr v2, v3

    .line 192
    invoke-static {p2, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->setShowAsActionIfPossible(Landroid/view/Menu;II)V

    .line 195
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu$FileActionModeCallback;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;->access$1(Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 196
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu$FileActionModeCallback;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;->access$1(Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 197
    :cond_0
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 198
    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 201
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu$FileActionModeCallback;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;->access$2(Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;)Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->updateListControl()V

    .line 226
    return-void
.end method

.method public onPrepareActionMode(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 205
    const/4 v0, 0x1

    return v0
.end method
