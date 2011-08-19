.class public Lcom/infraware/sheet/ICoSheetEditorCB;
.super Lcom/infraware/common/ICoDocEditorCB;
.source "ICoSheetEditorCB.java"

# interfaces
.implements Lcom/infraware/evengine/EvListener$SheetEditorListener;
.implements Lcom/infraware/evengine/E$EV_SHEET_EDITOR_STATUS;
.implements Lcom/infraware/evengine/E$EV_VIEW_MODE;
.implements Lcom/infraware/evengine/E$EV_EDITMODETYPE;
.implements Lcom/infraware/common/UDM$USER_DEFINE_MESSAGE;
.implements Lcom/infraware/evengine/E$EV_SHEET_FORMAT;


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field private m_etFunction:Landroid/widget/EditText;

.field private m_nErrMsgId:I

.field private m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

.field private m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

.field private m_oImm:Landroid/view/inputmethod/InputMethodManager;

.field private m_oUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/infraware/common/EvObjectProc;Lcom/infraware/common/helpers/EvClipboardHelper;)V
    .locals 2
    .parameter "a_context"
    .parameter "a_oObj"
    .parameter "a_ClipBoardHelper"

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/infraware/common/ICoDocEditorCB;-><init>(Landroid/content/Context;Lcom/infraware/common/EvObjectProc;Lcom/infraware/common/helpers/EvClipboardHelper;)V

    .line 23
    const-string v0, "ICoSheetEditorCB"

    iput-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->LOG_CAT:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_nErrMsgId:I

    .line 26
    iput-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    .line 27
    iput-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    .line 28
    iput-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oImm:Landroid/view/inputmethod/InputMethodManager;

    .line 29
    iput-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 33
    check-cast p1, Lcom/infraware/sheet/UxSheetEditorActivity;

    .end local p1
    iput-object p1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    .line 34
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v0

    check-cast v0, Lcom/infraware/sheet/UxSheetToolBarUpdater;

    iput-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    .line 35
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oImm:Landroid/view/inputmethod/InputMethodManager;

    .line 36
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->getCoreInterface()Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 37
    return-void
.end method

.method private sendMessageToActivity(I)V
    .locals 2
    .parameter "a_nMsg"

    .prologue
    .line 230
    const-string v0, "ICoSheetEditorCB"

    const-string v1, "sendMessageToActivity"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 232
    return-void
.end method


# virtual methods
.method public OnGetFormulaFieldSelection()[I
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 182
    const-string v3, "ICoSheetEditorCB"

    const-string v4, "OnGetFormulaFieldSelection"

    invoke-static {v3, v4}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v3, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    iget v3, v3, Lcom/infraware/sheet/UxSheetEditorActivity;->m_nEV_VIEW_MODE:I

    if-eq v3, v5, :cond_0

    new-array v3, v5, [I

    .line 190
    :goto_0
    return-object v3

    .line 184
    :cond_0
    iget-object v3, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v3}, Lcom/infraware/sheet/UxSheetEditorActivity;->getFunctionEditText()Landroid/widget/EditText;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    .line 185
    :cond_1
    iget-object v3, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    if-nez v3, :cond_2

    new-array v3, v5, [I

    goto :goto_0

    .line 187
    :cond_2
    iget-object v3, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    .line 188
    .local v2, nStartPosition:I
    iget-object v3, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 189
    .local v1, nEndPosition:I
    new-array v0, v5, [I

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v3, 0x1

    aput v1, v0, v3

    .local v0, cellPostion:[I
    move-object v3, v0

    .line 190
    goto :goto_0
.end method

.method public OnGetFormulaFieldText()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    const-string v1, "ICoSheetEditorCB"

    const-string v2, "OnGetFormulaFieldText"

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    iget v1, v1, Lcom/infraware/sheet/UxSheetEditorActivity;->m_nEV_VIEW_MODE:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    move-object v1, v3

    .line 168
    :goto_0
    return-object v1

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/sheet/UxSheetEditorActivity;->getFunctionEditText()Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    if-nez v1, :cond_2

    move-object v1, v3

    goto :goto_0

    .line 161
    :cond_2
    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, m_szCellText:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    const-string v1, "\t"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v1, v0

    .line 166
    goto :goto_0

    :cond_4
    move-object v1, v3

    .line 168
    goto :goto_0
.end method

.method public OnGetSheetScrollIInfo()[I
    .locals 2

    .prologue
    .line 207
    const-string v0, "ICoSheetEditorCB"

    const-string v1, "OnGetSheetScrollIInfo"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnSetFormulaFieldSelection(II)V
    .locals 6
    .parameter "nStartPos"
    .parameter "nEndPos"

    .prologue
    .line 195
    const-string v0, "ICoSheetEditorCB"

    const-string v1, "OnSetFormulaFieldSelection"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    iget v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity;->m_nEV_VIEW_MODE:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->getFunctionEditText()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 200
    if-ne p1, p2, :cond_3

    .line 201
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, -0x203

    const-string v2, "nPos"

    invoke-static {v0, v1, v2, p1}, Lcom/infraware/common/Utils;->sendUserMessage(Landroid/os/Handler;ILjava/lang/String;I)V

    goto :goto_0

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, -0x201

    const-string v2, "nStart"

    const-string v4, "nEnd"

    move v3, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/infraware/common/Utils;->sendUserMessage(Landroid/os/Handler;ILjava/lang/String;ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public OnSetFormulaFieldText(Ljava/lang/String;)V
    .locals 4
    .parameter "str"

    .prologue
    .line 172
    const-string v1, "ICoSheetEditorCB"

    const-string v2, "OnSetFormulaFieldText"

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    iget v1, v1, Lcom/infraware/sheet/UxSheetEditorActivity;->m_nEV_VIEW_MODE:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 178
    :goto_0
    return-void

    .line 174
    :cond_0
    const-string v0, ""

    .line 175
    .local v0, szTmp:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 176
    move-object v0, p1

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/sheet/UxSheetEditorActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, -0x200

    const-string v3, "CellString"

    invoke-static {v1, v2, v3, v0}, Lcom/infraware/common/Utils;->sendUserMessage(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public OnSetNameBoxText(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 152
    const-string v0, "ICoSheetEditorCB"

    const-string v1, "OnSetNameBoxText"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public OnSetSheetScrollIInfo(IIIII)V
    .locals 2
    .parameter "nValue"
    .parameter "nMin"
    .parameter "nMax"
    .parameter "nSize"
    .parameter "bHorizontal"

    .prologue
    .line 212
    const-string v0, "ICoSheetEditorCB"

    const-string v1, "OnSetSheetScrollIInfo"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public OnSheetChart(I)V
    .locals 2
    .parameter "EV_SHEET_EDITOR_STATUS"

    .prologue
    .line 149
    const-string v0, "ICoSheetEditorCB"

    const-string v1, "OnSheetChart"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public OnSheetEdit(II)V
    .locals 2
    .parameter "EEV_SHEET_EDIT"
    .parameter "EEV_SHEET_EDITOR_RESULT"

    .prologue
    .line 55
    const-string v0, "ICoSheetEditorCB"

    const-string v1, "OnSheetEdit"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public OnSheetFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    const-string v1, "ICoSheetEditorCB"

    const-string v2, "OnSheetFocus"

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/sheet/UxSheetEditorActivity;->getFunctionEditText()Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    if-nez v1, :cond_2

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/infraware/sheet/UxSheetEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oImm:Landroid/view/inputmethod/InputMethodManager;

    .line 83
    :cond_3
    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/sheet/UxSheetEditorActivity;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v1

    check-cast v1, Lcom/infraware/sheet/UxSheetToolBarUpdater;

    iput-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    .line 85
    :cond_4
    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v1}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->isProtectSheet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    :cond_5
    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_6

    .line 92
    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/sheet/UxSheetEditorActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, -0x202

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 94
    :cond_6
    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    iget-object v1, v1, Lcom/infraware/sheet/UxSheetToolBarUpdater;->m_sFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    iget v1, v1, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    .line 111
    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_7

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, nInputType:I
    or-int/lit8 v0, v0, 0x1

    .line 115
    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 120
    .end local v0           #nInputType:I
    :cond_7
    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 122
    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHeight(I)V

    .line 123
    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 124
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/infraware/sheet/ICoSheetEditorCB;->setEditMode(I)V

    goto :goto_0
.end method

.method public OnSheetFunction(III)V
    .locals 3
    .parameter "SHEET_EDITOR_STATUS"
    .parameter "EEV_SHEET_FUNCTION_ERROR"
    .parameter "EEV_SHEET_FUNCTION_ERROR_CODE"

    .prologue
    const/16 v2, 0x10

    .line 41
    const-string v0, "ICoSheetEditorCB"

    const-string v1, "OnSheetFunction"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    if-ne p1, v2, :cond_1

    .line 43
    invoke-virtual {p0, v2}, Lcom/infraware/sheet/ICoSheetEditorCB;->setEditMode(I)V

    .line 44
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 45
    const v0, 0x7f0a0274

    iput v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_nErrMsgId:I

    .line 46
    iget v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_nErrMsgId:I

    invoke-direct {p0, v0}, Lcom/infraware/sheet/ICoSheetEditorCB;->sendMessageToActivity(I)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/infraware/sheet/ICoSheetEditorCB;->setEditMode(I)V

    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/infraware/sheet/ICoSheetEditorCB;->setEditMode(I)V

    goto :goto_0
.end method

.method public OnSheetInputField(II)V
    .locals 5
    .parameter "EEV_SHEET_EDITOR_RESULT"
    .parameter "EV_SHEET_INPUTFIELD_RESULT"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    const-string v0, "ICoSheetEditorCB"

    const-string v1, "OnSheetInputField"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    if-ne p1, v4, :cond_1

    .line 130
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, -0x203

    const-string v2, "nPos"

    invoke-static {v0, v1, v2, v3}, Lcom/infraware/common/Utils;->sendUserMessage(Landroid/os/Handler;ILjava/lang/String;I)V

    .line 132
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v0

    check-cast v0, Lcom/infraware/sheet/UxSheetToolBarUpdater;

    iput-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    if-nez v0, :cond_2

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 135
    :cond_2
    if-nez p2, :cond_5

    .line 136
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->isSelectionFunctionMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_etFunction:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 142
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->recalculate()V

    goto :goto_0

    .line 141
    :cond_4
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/infraware/sheet/ICoSheetEditorCB;->setEditMode(I)V

    goto :goto_1

    .line 145
    :cond_5
    invoke-virtual {p0, v4}, Lcom/infraware/sheet/ICoSheetEditorCB;->setEditMode(I)V

    goto :goto_0
.end method

.method public OnSheetProtection(I)V
    .locals 2
    .parameter "EEV_SHEET_EDITOR_RESULT"

    .prologue
    .line 58
    const-string v0, "ICoSheetEditorCB"

    const-string v1, "OnSheetProtection"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sparse-switch p1, :sswitch_data_0

    .line 74
    :goto_0
    :sswitch_0
    return-void

    .line 65
    :sswitch_1
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity;->m_oHandler:Landroid/os/Handler;

    const/16 v1, -0x205

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 68
    :sswitch_2
    const v0, 0x7f0a0279

    iput v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_nErrMsgId:I

    .line 69
    iget v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_nErrMsgId:I

    invoke-direct {p0, v0}, Lcom/infraware/sheet/ICoSheetEditorCB;->sendMessageToActivity(I)V

    goto :goto_0

    .line 59
    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_2
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method public OnSheetSort(I)V
    .locals 2
    .parameter "EEV_SHEET_EDITOR_RESULT"

    .prologue
    .line 76
    const-string v0, "ICoSheetEditorCB"

    const-string v1, "OnSheetSort"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public setEditMode(I)V
    .locals 2
    .parameter "editmode"

    .prologue
    .line 222
    const-string v0, "ICoSheetEditorCB"

    const-string v1, "setEditMode"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oEditor:Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/sheet/UxSheetEditorActivity;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v0

    check-cast v0, Lcom/infraware/sheet/UxSheetToolBarUpdater;

    iput-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    if-nez v0, :cond_1

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/infraware/sheet/ICoSheetEditorCB;->m_oUpdater:Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual {v0, p1}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->setEditMode(I)V

    goto :goto_0
.end method
