.class public Lcom/infraware/word/ICoWordEditorCB;
.super Lcom/infraware/common/ICoDocEditorCB;
.source "ICoWordEditorCB.java"

# interfaces
.implements Lcom/infraware/evengine/EvListener$WordEditorListener;


# instance fields
.field m_oToolbarUpdater:Lcom/infraware/word/UxWordToolBarUpdater;

.field m_oWordEditor:Lcom/infraware/word/UxWordEditorActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/infraware/common/EvObjectProc;Lcom/infraware/common/helpers/EvClipboardHelper;)V
    .locals 1
    .parameter "a_oContext"
    .parameter "a_oObj"
    .parameter "a_oClipboardHelper"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/infraware/common/ICoDocEditorCB;-><init>(Landroid/content/Context;Lcom/infraware/common/EvObjectProc;Lcom/infraware/common/helpers/EvClipboardHelper;)V

    .line 15
    iput-object v0, p0, Lcom/infraware/word/ICoWordEditorCB;->m_oWordEditor:Lcom/infraware/word/UxWordEditorActivity;

    .line 16
    iput-object v0, p0, Lcom/infraware/word/ICoWordEditorCB;->m_oToolbarUpdater:Lcom/infraware/word/UxWordToolBarUpdater;

    .line 20
    check-cast p1, Lcom/infraware/word/UxWordEditorActivity;

    .end local p1
    iput-object p1, p0, Lcom/infraware/word/ICoWordEditorCB;->m_oWordEditor:Lcom/infraware/word/UxWordEditorActivity;

    .line 21
    iget-object v0, p0, Lcom/infraware/word/ICoWordEditorCB;->m_oWordEditor:Lcom/infraware/word/UxWordEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/word/UxWordEditorActivity;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v0

    check-cast v0, Lcom/infraware/word/UxWordToolBarUpdater;

    iput-object v0, p0, Lcom/infraware/word/ICoWordEditorCB;->m_oToolbarUpdater:Lcom/infraware/word/UxWordToolBarUpdater;

    .line 22
    return-void
.end method


# virtual methods
.method public OnIMEInsertMode()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/infraware/word/ICoWordEditorCB;->m_oToolbarUpdater:Lcom/infraware/word/UxWordToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/word/UxWordToolBarUpdater;->updateToolbar()V

    .line 55
    return-void
.end method

.method public OnInsertTableMode(I)V
    .locals 3
    .parameter "EEV_TABLE_RESULT"

    .prologue
    const/16 v2, -0x400

    .line 35
    iget-object v0, p0, Lcom/infraware/word/ICoWordEditorCB;->m_oToolbarUpdater:Lcom/infraware/word/UxWordToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/word/UxWordToolBarUpdater;->updateToolbar()V

    .line 37
    iget-object v0, p0, Lcom/infraware/word/ICoWordEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v1, -0x103

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 38
    packed-switch p1, :pswitch_data_0

    .line 50
    :goto_0
    :pswitch_0
    return-void

    .line 43
    :pswitch_1
    iget-object v0, p0, Lcom/infraware/word/ICoWordEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 46
    :pswitch_2
    iget-object v0, p0, Lcom/infraware/word/ICoWordEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public OnObjectPoints(Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V
    .locals 1
    .parameter "param"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/infraware/word/ICoWordEditorCB;->m_oToolbarUpdater:Lcom/infraware/word/UxWordToolBarUpdater;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/infraware/word/ICoWordEditorCB;->m_oWordEditor:Lcom/infraware/word/UxWordEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/word/UxWordEditorActivity;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v0

    check-cast v0, Lcom/infraware/word/UxWordToolBarUpdater;

    iput-object v0, p0, Lcom/infraware/word/ICoWordEditorCB;->m_oToolbarUpdater:Lcom/infraware/word/UxWordToolBarUpdater;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/infraware/word/ICoWordEditorCB;->m_oToolbarUpdater:Lcom/infraware/word/UxWordToolBarUpdater;

    if-nez v0, :cond_1

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-super {p0, p1}, Lcom/infraware/common/ICoDocEditorCB;->OnObjectPoints(Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V

    .line 30
    iget-object v0, p0, Lcom/infraware/word/ICoWordEditorCB;->m_oToolbarUpdater:Lcom/infraware/word/UxWordToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/word/UxWordToolBarUpdater;->updateToolbar()V

    goto :goto_0
.end method

.method public OnWordCellDeleteMode()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/infraware/word/ICoWordEditorCB;->m_oToolbarUpdater:Lcom/infraware/word/UxWordToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/word/UxWordToolBarUpdater;->updateToolbar()V

    .line 66
    iget-object v0, p0, Lcom/infraware/word/ICoWordEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v1, -0x103

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 67
    return-void
.end method

.method public OnWordCellInsertMode()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/infraware/word/ICoWordEditorCB;->m_oToolbarUpdater:Lcom/infraware/word/UxWordToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/word/UxWordToolBarUpdater;->updateToolbar()V

    .line 61
    iget-object v0, p0, Lcom/infraware/word/ICoWordEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v1, -0x103

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 62
    return-void
.end method

.method public OnWordCellSplitMode(I)V
    .locals 2
    .parameter "nResult"

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/infraware/word/ICoWordEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v1, -0x400

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 71
    :cond_0
    return-void
.end method

.method public OnWordInsertStringMode()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/infraware/word/ICoWordEditorCB;->m_oToolbarUpdater:Lcom/infraware/word/UxWordToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/word/UxWordToolBarUpdater;->updateToolbar()V

    .line 74
    return-void
.end method

.method public OnWordMultiSelectCellMode()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/infraware/word/ICoWordEditorCB;->m_oToolbarUpdater:Lcom/infraware/word/UxWordToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/word/UxWordToolBarUpdater;->updateToolbar()V

    .line 80
    return-void
.end method

.method public OnWordOneSelectCellMode()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/infraware/word/ICoWordEditorCB;->m_oToolbarUpdater:Lcom/infraware/word/UxWordToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/word/UxWordToolBarUpdater;->updateToolbar()V

    .line 77
    return-void
.end method
