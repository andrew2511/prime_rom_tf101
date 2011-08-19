.class public Lcom/infraware/slide/UxSlideToolBarUpdater;
.super Lcom/infraware/common/UxToolBarUpdater;
.source "UxSlideToolBarUpdater.java"

# interfaces
.implements Lcom/infraware/common/UDM$UDM_SLIDE_TOOLBAR_ID;
.implements Lcom/infraware/evengine/E$EV_EDIT_CURSOR_MODE;
.implements Lcom/infraware/evengine/E$EV_STATUS;
.implements Lcom/infraware/evengine/E$EV_EDIT_OBJECT_TYPE;


# instance fields
.field private m_bEditableMode:Z

.field private m_oClipboardHelper:Lcom/infraware/common/helpers/EvClipboardHelper;

.field private m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

.field private m_oSlideActivity:Lcom/infraware/slide/UxSlideEditorActivity;

.field private m_oToolBar:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideMainToolbar;


# direct methods
.method public constructor <init>(Lcom/infraware/slide/UxSlideEditorActivity;Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideMainToolbar;Lcom/infraware/common/helpers/EvClipboardHelper;Lcom/infraware/common/EvObjectProc;)V
    .locals 1
    .parameter "a_oActivity"
    .parameter "a_oToolbar"
    .parameter "a_oClipBoardHelper"
    .parameter "a_oObjectHandler"

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1}, Lcom/infraware/common/UxToolBarUpdater;-><init>(Lcom/infraware/common/UxDocEditorBase;)V

    .line 15
    iput-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oSlideActivity:Lcom/infraware/slide/UxSlideEditorActivity;

    .line 16
    iput-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oToolBar:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideMainToolbar;

    .line 17
    iput-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 18
    iput-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oClipboardHelper:Lcom/infraware/common/helpers/EvClipboardHelper;

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_bEditableMode:Z

    .line 24
    iput-object p1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oSlideActivity:Lcom/infraware/slide/UxSlideEditorActivity;

    .line 25
    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oSlideActivity:Lcom/infraware/slide/UxSlideEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/slide/UxSlideEditorActivity;->getCoreInterface()Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 26
    iput-object p2, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oToolBar:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideMainToolbar;

    .line 27
    iput-object p3, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oClipboardHelper:Lcom/infraware/common/helpers/EvClipboardHelper;

    .line 28
    iput-object p4, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    .line 29
    return-void
.end method


# virtual methods
.method public canBullets()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    iget-boolean v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_bEditableMode:Z

    if-nez v0, :cond_0

    move v0, v2

    .line 208
    :goto_0
    return v0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v0}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    :cond_1
    move v0, v2

    .line 207
    goto :goto_0

    .line 208
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canCopyCut()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-boolean v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_bEditableMode:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 148
    :goto_0
    return v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->bCutCopy:I

    if-nez v0, :cond_1

    move v0, v1

    .line 147
    goto :goto_0

    .line 148
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canDoSlideshow()Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oSlideActivity:Lcom/infraware/slide/UxSlideEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/slide/UxSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canFont()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-boolean v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_bEditableMode:Z

    if-nez v1, :cond_0

    move v1, v3

    .line 177
    :goto_0
    return v1

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v1}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    move v1, v3

    .line 162
    goto :goto_0

    .line 164
    :cond_1
    const/4 v0, 0x0

    .line 166
    .local v0, bEnable:Z
    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 168
    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    .line 169
    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    if-nez v1, :cond_4

    .line 170
    :cond_2
    const/4 v0, 0x0

    .line 174
    :goto_1
    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_3

    .line 175
    const/4 v0, 0x1

    :cond_3
    move v1, v0

    .line 177
    goto :goto_0

    .line 172
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public canInsertObject()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_bEditableMode:Z

    if-nez v0, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canInsertShape()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_bEditableMode:Z

    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canObjectZOrder()Z
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$CARET_INFO;->bCaret:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, 0x1

    .line 305
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canParagraph()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-boolean v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_bEditableMode:Z

    if-nez v0, :cond_0

    move v0, v2

    .line 194
    :goto_0
    return v0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 188
    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    .line 189
    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 190
    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    if-eqz v0, :cond_2

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v0}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    :cond_2
    move v0, v2

    .line 192
    goto :goto_0

    .line 194
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canPaste()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    iget-boolean v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_bEditableMode:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 118
    :goto_0
    return v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->bPaste:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oClipboardHelper:Lcom/infraware/common/helpers/EvClipboardHelper;

    invoke-virtual {v0}, Lcom/infraware/common/helpers/EvClipboardHelper;->hasText()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    .line 117
    goto :goto_0

    :cond_2
    move v0, v1

    .line 118
    goto :goto_0
.end method

.method public canRedo()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    iget-boolean v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_bEditableMode:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 138
    :goto_0
    return v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    .line 137
    goto :goto_0

    :cond_1
    move v0, v1

    .line 138
    goto :goto_0
.end method

.method public canSave()Z
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canSetBorderColor()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 257
    iget-boolean v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_bEditableMode:Z

    if-nez v1, :cond_0

    move v1, v3

    .line 273
    :goto_0
    return v1

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v1}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    move v1, v3

    .line 261
    goto :goto_0

    .line 263
    :cond_1
    const/4 v0, 0x0

    .line 265
    .local v0, bEnable:Z
    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    .line 266
    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    .line 267
    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    .line 268
    :cond_2
    const/4 v0, 0x1

    .line 270
    :cond_3
    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-eq v1, v2, :cond_4

    .line 271
    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_5

    .line 272
    :cond_4
    const/4 v0, 0x1

    :cond_5
    move v1, v0

    .line 273
    goto :goto_0
.end method

.method public canSetCellAttribute()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 277
    iget-boolean v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_bEditableMode:Z

    if-nez v1, :cond_0

    move v1, v3

    .line 288
    :goto_0
    return v1

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v1}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    move v1, v3

    .line 281
    goto :goto_0

    .line 283
    :cond_1
    const/4 v0, 0x0

    .line 285
    .local v0, bEnable:Z
    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    .line 286
    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_3

    .line 287
    :cond_2
    const/4 v0, 0x1

    :cond_3
    move v1, v0

    .line 288
    goto :goto_0
.end method

.method public canSetFillColor()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 238
    iget-boolean v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_bEditableMode:Z

    if-nez v1, :cond_0

    move v1, v3

    .line 253
    :goto_0
    return v1

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v1}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    move v1, v3

    .line 242
    goto :goto_0

    .line 244
    :cond_1
    const/4 v0, 0x0

    .line 246
    .local v0, bEnable:Z
    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    .line 247
    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 248
    :cond_2
    const/4 v0, 0x1

    .line 250
    :cond_3
    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-eq v1, v2, :cond_4

    .line 251
    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_5

    .line 252
    :cond_4
    const/4 v0, 0x1

    :cond_5
    move v1, v0

    .line 253
    goto :goto_0
.end method

.method public canShape()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 213
    iget-boolean v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_bEditableMode:Z

    if-nez v0, :cond_0

    move v0, v2

    .line 220
    :goto_0
    return v0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 217
    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 218
    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget-object v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 219
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 220
    goto :goto_0
.end method

.method public canUndo()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-boolean v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_bEditableMode:Z

    if-nez v0, :cond_0

    move v0, v2

    .line 128
    :goto_0
    return v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 127
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 128
    goto :goto_0
.end method

.method public isModified()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->isModified()Z

    move-result v0

    return v0
.end method

.method public setEditableMode(Z)V
    .locals 0
    .parameter "a_bEnable"

    .prologue
    .line 309
    iput-boolean p1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_bEditableMode:Z

    .line 310
    invoke-virtual {p0}, Lcom/infraware/slide/UxSlideToolBarUpdater;->updateToolbar()V

    .line 311
    return-void
.end method

.method public statusCheck(I)Z
    .locals 3
    .parameter "a_nToolBarId"

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, bEnable:Z
    packed-switch p1, :pswitch_data_0

    .line 100
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "UxSlideToolBarUpdater - statusCheck"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 51
    :pswitch_0
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    .line 54
    :pswitch_1
    invoke-virtual {p0}, Lcom/infraware/slide/UxSlideToolBarUpdater;->canUndo()Z

    move-result v0

    .line 55
    goto :goto_0

    .line 57
    :pswitch_2
    invoke-virtual {p0}, Lcom/infraware/slide/UxSlideToolBarUpdater;->canRedo()Z

    move-result v0

    .line 58
    goto :goto_0

    .line 60
    :pswitch_3
    invoke-virtual {p0}, Lcom/infraware/slide/UxSlideToolBarUpdater;->canCopyCut()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/infraware/slide/UxSlideToolBarUpdater;->canPaste()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 61
    :goto_1
    goto :goto_0

    .line 60
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_1

    .line 63
    :pswitch_4
    invoke-virtual {p0}, Lcom/infraware/slide/UxSlideToolBarUpdater;->canDoSlideshow()Z

    move-result v0

    .line 64
    goto :goto_0

    .line 66
    :pswitch_5
    invoke-virtual {p0}, Lcom/infraware/slide/UxSlideToolBarUpdater;->canInsertObject()Z

    move-result v0

    .line 67
    goto :goto_0

    .line 71
    :pswitch_6
    invoke-virtual {p0}, Lcom/infraware/slide/UxSlideToolBarUpdater;->canFont()Z

    move-result v0

    .line 72
    goto :goto_0

    .line 74
    :pswitch_7
    invoke-virtual {p0}, Lcom/infraware/slide/UxSlideToolBarUpdater;->canParagraph()Z

    move-result v0

    .line 75
    goto :goto_0

    .line 78
    :pswitch_8
    invoke-virtual {p0}, Lcom/infraware/slide/UxSlideToolBarUpdater;->canBullets()Z

    move-result v0

    .line 79
    goto :goto_0

    .line 81
    :pswitch_9
    invoke-virtual {p0}, Lcom/infraware/slide/UxSlideToolBarUpdater;->canParagraph()Z

    move-result v0

    .line 82
    goto :goto_0

    .line 84
    :pswitch_a
    invoke-virtual {p0}, Lcom/infraware/slide/UxSlideToolBarUpdater;->canInsertObject()Z

    move-result v0

    .line 85
    goto :goto_0

    .line 87
    :pswitch_b
    invoke-virtual {p0}, Lcom/infraware/slide/UxSlideToolBarUpdater;->canInsertShape()Z

    move-result v0

    .line 88
    goto :goto_0

    .line 90
    :pswitch_c
    invoke-virtual {p0}, Lcom/infraware/slide/UxSlideToolBarUpdater;->canSetFillColor()Z

    move-result v0

    .line 91
    goto :goto_0

    .line 93
    :pswitch_d
    invoke-virtual {p0}, Lcom/infraware/slide/UxSlideToolBarUpdater;->canSetBorderColor()Z

    move-result v0

    .line 94
    goto :goto_0

    .line 96
    :pswitch_e
    invoke-virtual {p0}, Lcom/infraware/slide/UxSlideToolBarUpdater;->canSetCellAttribute()Z

    move-result v0

    .line 97
    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public updateToolbar()V
    .locals 3

    .prologue
    .line 33
    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1}, Lcom/infraware/common/CoCoreFunctionInterface;->getBWPInfo()Lcom/infraware/evengine/EV$BWP_OP_INFO;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->mBWPInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    .line 34
    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1}, Lcom/infraware/common/CoCoreFunctionInterface;->getCaretInfo()Lcom/infraware/evengine/EV$CARET_INFO;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;

    .line 36
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 40
    return-void

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/infraware/slide/UxSlideToolBarUpdater;->m_oToolBar:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideMainToolbar;

    invoke-virtual {p0, v0}, Lcom/infraware/slide/UxSlideToolBarUpdater;->statusCheck(I)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideMainToolbar;->setToolbarEnable(IZ)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
