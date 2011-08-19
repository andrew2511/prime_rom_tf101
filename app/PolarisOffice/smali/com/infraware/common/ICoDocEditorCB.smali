.class public Lcom/infraware/common/ICoDocEditorCB;
.super Ljava/lang/Object;
.source "ICoDocEditorCB.java"

# interfaces
.implements Lcom/infraware/evengine/EvListener$EditorListener;
.implements Lcom/infraware/evengine/E$EV_ERROR_CODE;
.implements Lcom/infraware/common/UDM$USER_DEFINE_MESSAGE;
.implements Lcom/infraware/evengine/E;
.implements Lcom/infraware/evengine/E$EV_UNREDO_ACTION;


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field protected m_oClipBoard:Lcom/infraware/common/helpers/EvClipboardHelper;

.field protected m_oEditor:Lcom/infraware/common/UxDocEditorBase;

.field protected m_oObjectHandler:Lcom/infraware/common/EvObjectProc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/infraware/common/EvObjectProc;Lcom/infraware/common/helpers/EvClipboardHelper;)V
    .locals 2
    .parameter "a_context"
    .parameter "a_oObj"
    .parameter "a_oClipBoardHelper"

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "ICoDocEditorCB"

    iput-object v0, p0, Lcom/infraware/common/ICoDocEditorCB;->LOG_CAT:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    .line 20
    iput-object v1, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    .line 21
    iput-object v1, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oClipBoard:Lcom/infraware/common/helpers/EvClipboardHelper;

    .line 26
    check-cast p1, Lcom/infraware/common/UxDocEditorBase;

    .end local p1
    iput-object p1, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    .line 27
    iput-object p2, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    .line 28
    iput-object p3, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oClipBoard:Lcom/infraware/common/helpers/EvClipboardHelper;

    .line 29
    return-void
.end method


# virtual methods
.method public OnBookMarkEditorMode()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "ICoDocEditorCB"

    const-string v1, "OnBookMarkEditorMode"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public OnEditCopyCut(ILjava/lang/String;)V
    .locals 2
    .parameter "nType"
    .parameter "data"

    .prologue
    .line 195
    const-string v0, "ICoDocEditorCB"

    const-string v1, "OnEditCopyCut"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oClipBoard:Lcom/infraware/common/helpers/EvClipboardHelper;

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oClipBoard:Lcom/infraware/common/helpers/EvClipboardHelper;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/common/helpers/EvClipboardHelper;->OnEditCopyCut(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public OnEditCopyMode()V
    .locals 2

    .prologue
    .line 157
    const-string v0, "ICoDocEditorCB"

    const-string v1, "OnEditCopyMode"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public OnEditCutMode()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "ICoDocEditorCB"

    const-string v1, "OnEditCutMode"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public OnEditOrViewMode(II)V
    .locals 4
    .parameter "bEditMode"
    .parameter "EV_EDITMODETYPE"

    .prologue
    .line 84
    const-string v0, "ICoDocEditorCB"

    const-string v1, "OnEditOrViewMode"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v0}, Lcom/infraware/common/UxDocEditorBase;->getDocType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v0}, Lcom/infraware/common/UxDocEditorBase;->getDocType()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    iget v0, v0, Lcom/infraware/common/UxDocEditorBase;->m_nEV_VIEW_MODE:I

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v1, -0x306

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    :cond_1
    return-void
.end method

.method public OnEditPasteMode()V
    .locals 2

    .prologue
    .line 165
    const-string v0, "ICoDocEditorCB"

    const-string v1, "OnEditPasteMode"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public OnHidAction(I)V
    .locals 0
    .parameter "EEV_HID_ACTION"

    .prologue
    .line 116
    return-void
.end method

.method public OnIMEInsertMode()V
    .locals 2

    .prologue
    .line 123
    const-string v0, "ICoDocEditorCB"

    const-string v1, "OnIMEInsertMode"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public OnInsertTableMode(I)V
    .locals 2
    .parameter "EEV_TABLE_RESULT"

    .prologue
    .line 119
    const-string v0, "ICoDocEditorCB"

    const-string v1, "OnInsertTableMode"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public OnNewDoc(I)V
    .locals 3
    .parameter "bOk"

    .prologue
    const/4 v2, 0x1

    .line 100
    const-string v0, "ICoDocEditorCB"

    const-string v1, "OnNewDoc"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    iput-boolean v2, v0, Lcom/infraware/common/UxDocEditorBase;->m_bLoadComplete:Z

    .line 103
    iget-object v0, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v0, v2}, Lcom/infraware/common/UxDocEditorBase;->onLoadComplete(Z)V

    .line 105
    return-void
.end method

.method public OnObjectPoints(Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V
    .locals 1
    .parameter "param"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v0, p1}, Lcom/infraware/common/EvObjectProc;->SetObjCtrlInfo(Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V

    .line 112
    return-void
.end method

.method public OnSaveDoc(I)V
    .locals 3
    .parameter "bOk"

    .prologue
    .line 33
    const-string v1, "ICoDocEditorCB"

    const-string v2, "OnSaveDoc"

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 35
    .local v0, oMessage:Landroid/os/Message;
    const/16 v1, -0x10e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 36
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 39
    iget-object v1, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    iget-boolean v1, v1, Lcom/infraware/common/UxDocEditorBase;->m_bSavingOnClose:Z

    if-nez v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    iget-object v1, v1, Lcom/infraware/common/UxDocEditorBase;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    iget-object v1, v1, Lcom/infraware/common/UxSurfaceView;->mHandler:Landroid/os/Handler;

    const/16 v2, -0x11b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 42
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 72
    const-string v1, "ICoDocEditorCB"

    const-string v2, "EV_INTERNAL_ERROR = "

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    iget-object v1, v1, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 77
    return-void

    .line 45
    :sswitch_0
    const-string v1, "ICoDocEditorCB"

    const-string v2, "EV_FILE_CREATE_ERROR = "

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v1, "ICoDocEditorCB"

    const-string v2, "EV_FILE_WRITE_ERROR = "

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_2
    const-string v1, "ICoDocEditorCB"

    const-string v2, "EV_FILE_STORAGE_ERROR = "

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_3
    const-string v1, "ICoDocEditorCB"

    const-string v2, "EV_FILE_NOT_MODEFIED = "

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :sswitch_4
    const-string v1, "ICoDocEditorCB"

    const-string v2, "EV_PROCESS_SUCCESS | EV_FILE_NOT_MODEFIED = "

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 62
    :sswitch_5
    const-string v1, "ICoDocEditorCB"

    const-string v2, "EV_DOCUMENT_TRUNCATED = "

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :sswitch_6
    const-string v1, "ICoDocEditorCB"

    const-string v2, "EV_REPAIRED_PAGE = "

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :sswitch_7
    const-string v1, "ICoDocEditorCB"

    const-string v2, "EV_MEMORY_ERROR = "

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        -0x13 -> :sswitch_3
        -0x12 -> :sswitch_2
        -0x11 -> :sswitch_1
        -0x10 -> :sswitch_0
        -0x1 -> :sswitch_7
        0x1 -> :sswitch_4
        0x20 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public OnUndoOrRedo(III)V
    .locals 6
    .parameter "nAction"
    .parameter "nPage1"
    .parameter "nPage2"

    .prologue
    .line 134
    packed-switch p1, :pswitch_data_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v1, -0x103

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 139
    iget-object v0, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    iget v0, v0, Lcom/infraware/common/UxDocEditorBase;->m_nEV_VIEW_MODE:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    iget v0, v0, Lcom/infraware/common/UxDocEditorBase;->m_nEV_VIEW_MODE:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v1, -0x10d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v0, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v1, -0x303

    const-string v2, "nIndex"

    invoke-static {v0, v1, v2, p2}, Lcom/infraware/common/Utils;->sendUserMessage(Landroid/os/Handler;ILjava/lang/String;I)V

    goto :goto_0

    .line 147
    :pswitch_2
    iget-object v0, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v1, -0x304

    const-string v2, "nIndex"

    invoke-static {v0, v1, v2, p2}, Lcom/infraware/common/Utils;->sendUserMessage(Landroid/os/Handler;ILjava/lang/String;I)V

    goto :goto_0

    .line 150
    :pswitch_3
    iget-object v0, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v1, -0x305

    const-string v2, "nFrom"

    const-string v4, "nTo"

    move v3, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/infraware/common/Utils;->sendUserMessage(Landroid/os/Handler;ILjava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getClipBoardData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    const-string v1, "ICoDocEditorCB"

    const-string v2, "getClipBoardData"

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oClipBoard:Lcom/infraware/common/helpers/EvClipboardHelper;

    invoke-virtual {v1}, Lcom/infraware/common/helpers/EvClipboardHelper;->getText()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, text:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 182
    :cond_0
    const/4 v1, 0x0

    .line 184
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public hasClipBoardData()I
    .locals 2

    .prologue
    .line 170
    const-string v0, "ICoDocEditorCB"

    const-string v1, "hasClipBoardData"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oClipBoard:Lcom/infraware/common/helpers/EvClipboardHelper;

    invoke-virtual {v0}, Lcom/infraware/common/helpers/EvClipboardHelper;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClipBoardData(Ljava/lang/String;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 189
    const-string v0, "ICoDocEditorCB"

    const-string v1, "setClipBoardData"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/infraware/common/ICoDocEditorCB;->m_oClipBoard:Lcom/infraware/common/helpers/EvClipboardHelper;

    invoke-virtual {v0, p1}, Lcom/infraware/common/helpers/EvClipboardHelper;->setText(Ljava/lang/CharSequence;)V

    .line 191
    return-void
.end method
