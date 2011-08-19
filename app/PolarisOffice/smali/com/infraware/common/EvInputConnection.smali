.class public Lcom/infraware/common/EvInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "EvInputConnection.java"

# interfaces
.implements Lcom/infraware/evengine/E$EV_CHAR_INPUT;
.implements Lcom/infraware/evengine/E$EV_VKEYS;


# static fields
.field public static final CAP_MODE_CHARACTERS:I = 0x1000

.field public static final CAP_MODE_SENTENCES:I = 0x4000

.field public static final CAP_MODE_WORDS:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "EvInputConnection"


# instance fields
.field private final mTextView:Lcom/infraware/common/UxSurfaceView;


# direct methods
.method public constructor <init>(Lcom/infraware/common/UxSurfaceView;)V
    .locals 1
    .parameter "targetView"

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 30
    iput-object p1, p0, Lcom/infraware/common/EvInputConnection;->mTextView:Lcom/infraware/common/UxSurfaceView;

    .line 31
    return-void
.end method


# virtual methods
.method public calcComposingLen()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 207
    invoke-virtual {p0}, Lcom/infraware/common/EvInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 208
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_0

    .line 209
    const/4 v4, 0x0

    .line 235
    :goto_0
    return v4

    .line 212
    :cond_0
    invoke-static {v2}, Lcom/infraware/common/EvInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    .line 213
    .local v0, a:I
    invoke-static {v2}, Lcom/infraware/common/EvInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 215
    .local v1, b:I
    if-ge v1, v0, :cond_1

    .line 216
    move v3, v0

    .line 217
    .local v3, tmp:I
    move v0, v1

    .line 218
    move v1, v3

    .line 221
    .end local v3           #tmp:I
    :cond_1
    if-eq v0, v4, :cond_2

    if-ne v1, v4, :cond_5

    .line 224
    :cond_2
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 225
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 226
    if-gez v0, :cond_3

    const/4 v0, 0x0

    .line 227
    :cond_3
    if-gez v1, :cond_4

    const/4 v1, 0x0

    .line 228
    :cond_4
    if-ge v1, v0, :cond_5

    .line 229
    move v3, v0

    .line 230
    .restart local v3       #tmp:I
    move v0, v1

    .line 231
    move v1, v3

    .line 235
    .end local v3           #tmp:I
    :cond_5
    sub-int v4, v1, v0

    goto :goto_0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 3
    .parameter "states"

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/infraware/common/EvInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 256
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 266
    :goto_0
    return v2

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/infraware/common/EvInputConnection;->mTextView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v2}, Lcom/infraware/common/UxSurfaceView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    .line 258
    .local v1, kl:Landroid/text/method/KeyListener;
    if-eqz v1, :cond_1

    .line 260
    :try_start_0
    iget-object v2, p0, Lcom/infraware/common/EvInputConnection;->mTextView:Lcom/infraware/common/UxSurfaceView;

    invoke-interface {v1, v2, v0, p1}, Landroid/text/method/KeyListener;->clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 261
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 2
    .parameter "text"

    .prologue
    .line 167
    const-string v0, "EvInputConnection"

    const-string v1, "commitCompletion"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 3
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/infraware/common/EvInputConnection;->calcComposingLen()I

    move-result v0

    .line 248
    .local v0, compLength:I
    iget-object v1, p0, Lcom/infraware/common/EvInputConnection;->mTextView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v1, p1, v0}, Lcom/infraware/common/UxSurfaceView;->commitText(Ljava/lang/CharSequence;I)V

    .line 250
    const-string v1, "EvInputConnection"

    const-string v2, "commitText"

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v1

    return v1
.end method

.method public deleteSurroundingText(II)Z
    .locals 16
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    .line 42
    const-string v13, "EvInputConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "deleteSurroundingText "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v14

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " / "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/infraware/common/CoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/common/EvInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v6

    .line 44
    .local v6, content:Landroid/text/Editable;
    if-nez v6, :cond_0

    const/4 v13, 0x0

    .line 108
    :goto_0
    return v13

    .line 46
    :cond_0
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v13

    move v0, v13

    move/from16 v1, p1

    if-gt v0, v1, :cond_1

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v13

    move v0, v13

    move/from16 v1, p2

    if-le v0, v1, :cond_b

    .line 47
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/common/EvInputConnection;->beginBatchEdit()Z

    .line 49
    invoke-static {v6}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 50
    .local v2, a:I
    invoke-static {v6}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 52
    .local v3, b:I
    if-le v2, v3, :cond_2

    .line 53
    move v12, v2

    .line 54
    .local v12, tmp:I
    move v2, v3

    .line 55
    move v3, v12

    .line 59
    .end local v12           #tmp:I
    :cond_2
    invoke-static {v6}, Lcom/infraware/common/EvInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 60
    .local v4, ca:I
    invoke-static {v6}, Lcom/infraware/common/EvInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 61
    .local v5, cb:I
    if-ge v5, v4, :cond_3

    .line 62
    move v12, v4

    .line 63
    .restart local v12       #tmp:I
    move v4, v5

    .line 64
    move v5, v12

    .line 66
    .end local v12           #tmp:I
    :cond_3
    const/4 v13, -0x1

    if-eq v4, v13, :cond_5

    const/4 v13, -0x1

    if-eq v5, v13, :cond_5

    .line 67
    if-ge v4, v2, :cond_4

    move v2, v4

    .line 68
    :cond_4
    if-le v5, v3, :cond_5

    move v3, v5

    .line 71
    :cond_5
    const/4 v7, 0x0

    .line 73
    .local v7, deleted:I
    if-lez p1, :cond_7

    .line 74
    sub-int v10, v2, p1

    .line 75
    .local v10, start:I
    if-gez v10, :cond_6

    const/4 v10, 0x0

    .line 76
    :cond_6
    invoke-interface {v6, v10, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 77
    sub-int v7, v2, v10

    .line 80
    .end local v10           #start:I
    :cond_7
    if-lez p2, :cond_9

    .line 81
    sub-int/2addr v3, v7

    .line 83
    add-int v8, v3, p2

    .line 84
    .local v8, end:I
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v13

    if-le v8, v13, :cond_8

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v8

    .line 86
    :cond_8
    invoke-interface {v6, v3, v8}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 89
    .end local v8           #end:I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/common/EvInputConnection;->endBatchEdit()Z

    .line 108
    .end local v2           #a:I
    .end local v3           #b:I
    .end local v4           #ca:I
    .end local v5           #cb:I
    .end local v7           #deleted:I
    :cond_a
    const/4 v13, 0x1

    goto :goto_0

    .line 91
    :cond_b
    move/from16 v11, p1

    .line 92
    .local v11, t:I
    :goto_1
    if-lez v11, :cond_a

    .line 102
    invoke-static {}, Lcom/infraware/evengine/ICoEngineInterface;->getInterface()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v9

    .line 103
    .local v9, evInterface:Lcom/infraware/evengine/ICoEngineInterface;
    const/4 v13, 0x2

    const/16 v14, 0x8

    invoke-virtual {v9, v13, v14}, Lcom/infraware/evengine/ICoEngineInterface;->ICharInsert(II)V

    .line 104
    add-int/lit8 v11, v11, -0x1

    goto :goto_1
.end method

.method public finishComposingText()Z
    .locals 3

    .prologue
    .line 160
    const-string v1, "EvInputConnection"

    const-string v2, "finishComposingText"

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    move-result v0

    .line 162
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/infraware/common/EvInputConnection;->mTextView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v1}, Lcom/infraware/common/UxSurfaceView;->finishComposingText()Z

    .line 163
    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 5
    .parameter "reqModes"

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, mode:I
    and-int/lit16 v2, p1, 0x1000

    if-eqz v2, :cond_0

    .line 142
    or-int/lit16 v1, v1, 0x1000

    .line 144
    :cond_0
    and-int/lit16 v2, p1, 0x6000

    if-nez v2, :cond_1

    move v2, v1

    .line 153
    :goto_0
    return v2

    .line 148
    :cond_1
    invoke-static {}, Lcom/infraware/evengine/ICoEngineInterface;->getInterface()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    .line 149
    .local v0, evInterface:Lcom/infraware/evengine/ICoEngineInterface;
    const-string v2, "EvInputConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCursorCapsMode "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IsStartOfSentence_Editor()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/CoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IsStartOfSentence_Editor()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 151
    or-int/lit16 v2, v1, 0x2000

    goto :goto_0

    :cond_2
    move v2, v1

    .line 153
    goto :goto_0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/infraware/common/EvInputConnection;->mTextView:Lcom/infraware/common/UxSurfaceView;

    .line 35
    .local v0, ev:Lcom/infraware/common/UxSurfaceView;
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 38
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 7
    .parameter "request"
    .parameter "flags"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 112
    const-string v3, "EvInputConnection"

    const-string v4, "getExtractedText "

    invoke-static {v3, v4}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v3, p0, Lcom/infraware/common/EvInputConnection;->mTextView:Lcom/infraware/common/UxSurfaceView;

    if-eqz v3, :cond_1

    .line 114
    invoke-static {}, Lcom/infraware/evengine/ICoEngineInterface;->getInterface()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v1

    .line 115
    .local v1, evInterface:Lcom/infraware/evengine/ICoEngineInterface;
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/infraware/evengine/ICoEngineInterface;->IGetCaretBeforeString(I)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, str:Ljava/lang/String;
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 118
    .local v0, et:Landroid/view/inputmethod/ExtractedText;
    iput v5, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 119
    iput v6, v0, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 120
    iput v6, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 121
    iput v5, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 122
    const-string v3, ""

    iput-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 123
    iput v5, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 124
    iput v5, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 125
    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    iput-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 128
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 129
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 131
    const-string v3, "EvInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getExtractedText length = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " text = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v3, v0

    .line 136
    .end local v0           #et:Landroid/view/inputmethod/ExtractedText;
    .end local v1           #evInterface:Lcom/infraware/evengine/ICoEngineInterface;
    .end local v2           #str:Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "length"
    .parameter "flags"

    .prologue
    .line 192
    const/4 v2, 0x3

    if-le p1, v2, :cond_0

    .line 193
    const/4 p1, 0x3

    .line 195
    :cond_0
    invoke-static {}, Lcom/infraware/evengine/ICoEngineInterface;->getInterface()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    .line 196
    .local v0, evInterface:Lcom/infraware/evengine/ICoEngineInterface;
    invoke-virtual {v0, p1}, Lcom/infraware/evengine/ICoEngineInterface;->IGetCaretAfterString(I)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 199
    const-string v2, "EvInputConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "length = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "getTextAfterCursor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v2, "EvInputConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "String length = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 203
    :goto_0
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "length"
    .parameter "flags"

    .prologue
    .line 175
    const/4 v2, 0x3

    if-le p1, v2, :cond_0

    .line 176
    const/4 p1, 0x3

    .line 178
    :cond_0
    invoke-static {}, Lcom/infraware/evengine/ICoEngineInterface;->getInterface()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    .line 179
    .local v0, evInterface:Lcom/infraware/evengine/ICoEngineInterface;
    invoke-virtual {v0, p1}, Lcom/infraware/evengine/ICoEngineInterface;->IGetCaretBeforeString(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 182
    const-string v2, "EvInputConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "length = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "getTextBeforeCursor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v2, "EvInputConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "String length = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 186
    :goto_0
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/infraware/common/EvInputConnection;->mTextView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0, p1}, Lcom/infraware/common/UxSurfaceView;->onTextContextMenuItem(I)Z

    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 3
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/infraware/common/EvInputConnection;->calcComposingLen()I

    move-result v0

    .line 240
    .local v0, compLength:I
    iget-object v1, p0, Lcom/infraware/common/EvInputConnection;->mTextView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v1, p1, v0}, Lcom/infraware/common/UxSurfaceView;->setComposingText(Ljava/lang/CharSequence;I)V

    .line 242
    const-string v1, "EvInputConnection"

    const-string v2, "setComposingText"

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v1

    return v1
.end method
