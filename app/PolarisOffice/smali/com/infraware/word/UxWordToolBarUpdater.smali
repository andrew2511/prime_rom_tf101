.class public Lcom/infraware/word/UxWordToolBarUpdater;
.super Lcom/infraware/common/UxToolBarUpdater;
.source "UxWordToolBarUpdater.java"

# interfaces
.implements Lcom/infraware/common/UDM$UDM_WORD_TOOLBAR_ID;
.implements Lcom/infraware/evengine/E$EV_EDIT_CURSOR_MODE;
.implements Lcom/infraware/evengine/E$EV_STATUS;
.implements Lcom/infraware/evengine/E$EV_EDIT_OBJECT_TYPE;


# instance fields
.field private m_oClipboardHelper:Lcom/infraware/common/helpers/EvClipboardHelper;

.field private m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

.field private m_oToolBar:Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;

.field private m_oWordActivity:Lcom/infraware/word/UxWordEditorActivity;


# direct methods
.method public constructor <init>(Lcom/infraware/word/UxWordEditorActivity;Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;Lcom/infraware/common/helpers/EvClipboardHelper;Lcom/infraware/common/EvObjectProc;)V
    .locals 1
    .parameter "a_oActivity"
    .parameter "a_oToolBar"
    .parameter "a_oClipBoardHelper"
    .parameter "a_oObjectHandler"

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1}, Lcom/infraware/common/UxToolBarUpdater;-><init>(Lcom/infraware/common/UxDocEditorBase;)V

    .line 14
    iput-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oWordActivity:Lcom/infraware/word/UxWordEditorActivity;

    .line 15
    iput-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oToolBar:Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;

    .line 17
    iput-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 18
    iput-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oClipboardHelper:Lcom/infraware/common/helpers/EvClipboardHelper;

    .line 24
    iput-object p1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oWordActivity:Lcom/infraware/word/UxWordEditorActivity;

    .line 25
    iget-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oWordActivity:Lcom/infraware/word/UxWordEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/word/UxWordEditorActivity;->getCoreInterface()Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 26
    iput-object p2, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oToolBar:Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;

    .line 27
    iput-object p3, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oClipboardHelper:Lcom/infraware/common/helpers/EvClipboardHelper;

    .line 28
    iput-object p4, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    .line 29
    return-void
.end method


# virtual methods
.method public canAddBookMark()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->canInsertBookmark()Z

    move-result v0

    return v0
.end method

.method public canBullets()Z
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v0}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 211
    :cond_0
    const/4 v0, 0x0

    .line 212
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canCopyCut()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->bCutCopy:I

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canEditCells()Z
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v0}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 234
    :cond_1
    const/4 v0, 0x0

    .line 236
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canFont()Z
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 162
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v1}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 163
    const/4 v1, 0x0

    .line 182
    :goto_0
    return v1

    .line 165
    :cond_0
    const/4 v0, 0x0

    .line 167
    .local v0, bEnable:Z
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 169
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-ne v1, v3, :cond_4

    .line 170
    :cond_1
    const/4 v0, 0x0

    .line 174
    :goto_1
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    .line 175
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    if-eq v1, v3, :cond_2

    .line 176
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 177
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 178
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    .line 179
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_3

    .line 180
    :cond_2
    const/4 v0, 0x1

    :cond_3
    move v1, v0

    .line 182
    goto :goto_0

    .line 172
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public canHyperlink()Z
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/infraware/word/UxWordToolBarUpdater;->canBullets()Z

    move-result v0

    return v0
.end method

.method public canObjectZOrder()Z
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$CARET_INFO;->bCaret:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x1

    .line 270
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canParagraph()Z
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 187
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v1}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 188
    const/4 v1, 0x0

    .line 202
    :goto_0
    return v1

    .line 190
    :cond_0
    const/4 v0, 0x0

    .line 191
    .local v0, bEnable:Z
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 193
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-ne v1, v3, :cond_4

    .line 194
    :cond_1
    const/4 v0, 0x0

    .line 198
    :goto_1
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    .line 199
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    if-ne v1, v3, :cond_3

    .line 200
    :cond_2
    const/4 v0, 0x1

    :cond_3
    move v1, v0

    .line 202
    goto :goto_0

    .line 196
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public canPaste()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 133
    iget-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->bPaste:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oClipboardHelper:Lcom/infraware/common/helpers/EvClipboardHelper;

    invoke-virtual {v0}, Lcom/infraware/common/helpers/EvClipboardHelper;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 135
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRedo()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 147
    iget-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canSave()Z
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canShape()Z
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 220
    :cond_0
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canUndo()Z
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModified()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->isModified()Z

    move-result v0

    return v0
.end method

.method public statusCheck(I)Z
    .locals 7
    .parameter "a_nToolBarId"

    .prologue
    const/16 v6, 0x20

    const/16 v5, 0xa

    const/4 v4, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, bEnable:Z
    packed-switch p1, :pswitch_data_0

    .line 120
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "UxWordToolBarUpdater - statusCheck"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 50
    :pswitch_0
    const/4 v0, 0x1

    :cond_0
    :goto_0
    move v1, v0

    .line 122
    :goto_1
    return v1

    .line 53
    :pswitch_1
    invoke-virtual {p0}, Lcom/infraware/word/UxWordToolBarUpdater;->canUndo()Z

    move-result v0

    .line 54
    goto :goto_0

    .line 56
    :pswitch_2
    invoke-virtual {p0}, Lcom/infraware/word/UxWordToolBarUpdater;->canRedo()Z

    move-result v0

    .line 57
    goto :goto_0

    .line 59
    :pswitch_3
    invoke-virtual {p0}, Lcom/infraware/word/UxWordToolBarUpdater;->canCopyCut()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/infraware/word/UxWordToolBarUpdater;->canPaste()Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    .line 60
    :goto_2
    goto :goto_0

    :cond_1
    move v0, v3

    .line 59
    goto :goto_2

    .line 68
    :pswitch_4
    invoke-virtual {p0}, Lcom/infraware/word/UxWordToolBarUpdater;->canFont()Z

    move-result v0

    .line 69
    goto :goto_0

    .line 72
    :pswitch_5
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v1}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v1

    if-ne v1, v5, :cond_2

    move v1, v2

    .line 73
    goto :goto_1

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-eqz v1, :cond_3

    .line 76
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    .line 77
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-ne v1, v4, :cond_5

    .line 78
    :cond_3
    const/4 v0, 0x0

    .line 82
    :goto_3
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_4

    .line 83
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    if-eq v1, v4, :cond_4

    .line 84
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v1, v1, 0x20

    if-ne v1, v6, :cond_0

    .line 85
    :cond_4
    const/4 v0, 0x1

    .line 86
    goto :goto_0

    .line 80
    :cond_5
    const/4 v0, 0x1

    goto :goto_3

    .line 90
    :pswitch_6
    const/4 v0, 0x1

    .line 91
    goto :goto_0

    .line 94
    :pswitch_7
    invoke-virtual {p0}, Lcom/infraware/word/UxWordToolBarUpdater;->canBullets()Z

    move-result v0

    .line 95
    goto :goto_0

    .line 97
    :pswitch_8
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v1}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v1

    if-ne v1, v5, :cond_6

    move v1, v2

    .line 98
    goto :goto_1

    .line 99
    :cond_6
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v1, v1, 0x20

    if-eq v1, v6, :cond_7

    .line 100
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-eq v1, v2, :cond_7

    .line 101
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    if-eq v1, v3, :cond_7

    .line 102
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_7

    .line 103
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    if-ne v1, v4, :cond_8

    .line 104
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 106
    :cond_8
    const/4 v0, 0x0

    .line 107
    goto/16 :goto_0

    .line 110
    :pswitch_9
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v1}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v1

    if-ne v1, v5, :cond_9

    move v1, v2

    .line 111
    goto/16 :goto_1

    .line 112
    :cond_9
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v1, v1, 0x20

    if-eq v1, v6, :cond_a

    .line 113
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-eq v1, v2, :cond_a

    .line 114
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    if-ne v1, v3, :cond_b

    .line 115
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 117
    :cond_b
    const/4 v0, 0x0

    .line 118
    goto/16 :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public updateToolbar()V
    .locals 3

    .prologue
    .line 33
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1}, Lcom/infraware/common/CoCoreFunctionInterface;->getBWPInfo()Lcom/infraware/evengine/EV$BWP_OP_INFO;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    .line 34
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1}, Lcom/infraware/common/CoCoreFunctionInterface;->getCaretInfo()Lcom/infraware/evengine/EV$CARET_INFO;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    .line 38
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 42
    return-void

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/infraware/word/UxWordToolBarUpdater;->m_oToolBar:Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;

    invoke-virtual {p0, v0}, Lcom/infraware/word/UxWordToolBarUpdater;->statusCheck(I)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;->setToolbarEnable(IZ)V

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
