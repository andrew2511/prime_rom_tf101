.class public Lcom/infraware/sheet/ICoSheetViewerCB;
.super Lcom/infraware/common/ICoDocViewerCB;
.source "ICoSheetViewerCB.java"

# interfaces
.implements Lcom/infraware/evengine/E$EV_GUI_EVENT;
.implements Lcom/infraware/evengine/E$EV_EDITMODETYPE;
.implements Lcom/infraware/evengine/E$EV_SHEET_EDITOR_STATUS;


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field private m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

.field m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;


# direct methods
.method public constructor <init>(Lcom/infraware/common/UxSurfaceView;Lcom/infraware/common/UxDocViewerBase;)V
    .locals 2
    .parameter "a_oView"
    .parameter "a_oViewer"

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/infraware/common/ICoDocViewerCB;-><init>(Lcom/infraware/common/UxSurfaceView;Landroid/content/Context;)V

    .line 11
    const-string v0, "ICoSheetViewerCB"

    iput-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->LOG_CAT:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    .line 13
    iput-object v1, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    .line 17
    check-cast p2, Lcom/infraware/sheet/UxSheetEditorActivity;

    .end local p2
    iput-object p2, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    .line 18
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v0

    check-cast v0, Lcom/infraware/sheet/UxSheetToolBarUpdater;

    iput-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    .line 19
    return-void
.end method


# virtual methods
.method public OnDrawBitmap(II)V
    .locals 4
    .parameter "a_nCallId"
    .parameter "a_bShowAutomap"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    const-string v0, "ICoSheetViewerCB"

    const-string v1, "OnDrawBitmap"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    iget v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity;->m_nEV_VIEW_MODE:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 27
    invoke-super {p0, p1, p2}, Lcom/infraware/common/ICoDocViewerCB;->OnDrawBitmap(II)V

    .line 157
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    if-nez v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v0

    check-cast v0, Lcom/infraware/sheet/UxSheetToolBarUpdater;

    iput-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    if-nez v0, :cond_2

    .line 34
    invoke-super {p0, p1, p2}, Lcom/infraware/common/ICoDocViewerCB;->OnDrawBitmap(II)V

    goto :goto_0

    .line 38
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 156
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/infraware/common/ICoDocViewerCB;->OnDrawBitmap(II)V

    goto :goto_0

    .line 41
    :sswitch_0
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateEditInfo()V

    .line 42
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateCellInfo()V

    .line 43
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateFormatInfo()V

    .line 44
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0, v3}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->setEditMode(I)V

    .line 45
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateToolbar()V

    goto :goto_1

    .line 48
    :sswitch_1
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateEditInfo()V

    .line 49
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateCellInfo()V

    .line 50
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateFormatInfo()V

    .line 51
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateToolbar()V

    goto :goto_1

    .line 54
    :sswitch_2
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateEditInfo()V

    .line 55
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateCellInfo()V

    .line 56
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateFormatInfo()V

    .line 57
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateToolbar()V

    goto :goto_1

    .line 60
    :sswitch_3
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->getFunctionEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->isSelectionFunctionMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const/16 v1, -0x202

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 71
    :sswitch_4
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateEditInfo()V

    goto :goto_1

    .line 75
    :sswitch_5
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateEditInfo()V

    .line 76
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateCellInfo()V

    goto :goto_1

    .line 81
    :sswitch_6
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateEditInfo()V

    .line 82
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateSheetInfo()V

    .line 83
    const/16 v0, 0x308

    if-ne p1, v0, :cond_4

    .line 84
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->isProtectSheet()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->getFunctionEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->getFunctionEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/sheet/UxSheetEditorActivity;->getFunctionEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 89
    :cond_4
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateToolbar()V

    goto/16 :goto_1

    .line 116
    :sswitch_7
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateEditInfo()V

    .line 117
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateCellInfo()V

    .line 118
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateFormatInfo()V

    goto/16 :goto_1

    .line 127
    :sswitch_8
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateEditInfo()V

    .line 128
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateCellInfo()V

    .line 129
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateFormatInfo()V

    .line 130
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateToolbar()V

    goto/16 :goto_1

    .line 146
    :sswitch_9
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0, v3}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->setEditMode(I)V

    .line 147
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateEditInfo()V

    .line 148
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateCellInfo()V

    .line 149
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateFormatInfo()V

    .line 150
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateSheetInfo()V

    .line 151
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->isProtectSheet()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->getFunctionEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->getFunctionEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/sheet/UxSheetEditorActivity;->getFunctionEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 153
    :cond_5
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetViewerCB;->m_oToolBarUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->updateToolbar()V

    goto/16 :goto_1

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_9
        0x5 -> :sswitch_9
        0x6 -> :sswitch_9
        0x7 -> :sswitch_9
        0x8 -> :sswitch_9
        0x9 -> :sswitch_9
        0xa -> :sswitch_9
        0xb -> :sswitch_9
        0x21 -> :sswitch_0
        0x2d -> :sswitch_9
        0x100 -> :sswitch_9
        0x105 -> :sswitch_9
        0x106 -> :sswitch_0
        0x107 -> :sswitch_9
        0x108 -> :sswitch_9
        0x109 -> :sswitch_4
        0x10a -> :sswitch_4
        0x10b -> :sswitch_4
        0x10c -> :sswitch_4
        0x10d -> :sswitch_4
        0x10e -> :sswitch_4
        0x10f -> :sswitch_4
        0x110 -> :sswitch_7
        0x111 -> :sswitch_7
        0x112 -> :sswitch_7
        0x113 -> :sswitch_8
        0x114 -> :sswitch_7
        0x115 -> :sswitch_7
        0x116 -> :sswitch_7
        0x117 -> :sswitch_7
        0x118 -> :sswitch_7
        0x119 -> :sswitch_7
        0x11a -> :sswitch_7
        0x11b -> :sswitch_7
        0x11c -> :sswitch_2
        0x11d -> :sswitch_4
        0x11e -> :sswitch_7
        0x11f -> :sswitch_7
        0x120 -> :sswitch_7
        0x121 -> :sswitch_7
        0x12b -> :sswitch_8
        0x300 -> :sswitch_7
        0x301 -> :sswitch_7
        0x302 -> :sswitch_8
        0x303 -> :sswitch_3
        0x304 -> :sswitch_7
        0x305 -> :sswitch_9
        0x306 -> :sswitch_6
        0x307 -> :sswitch_6
        0x308 -> :sswitch_6
        0x309 -> :sswitch_7
        0x30a -> :sswitch_7
        0x30b -> :sswitch_7
        0x30c -> :sswitch_7
        0x30d -> :sswitch_7
        0x30e -> :sswitch_5
        0x30f -> :sswitch_5
        0x310 -> :sswitch_8
        0x311 -> :sswitch_7
        0x312 -> :sswitch_8
        0x313 -> :sswitch_7
        0x315 -> :sswitch_1
        0x316 -> :sswitch_8
        0x317 -> :sswitch_8
    .end sparse-switch
.end method
