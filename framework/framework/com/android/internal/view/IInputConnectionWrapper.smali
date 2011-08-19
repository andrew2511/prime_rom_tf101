.class public Lcom/android/internal/view/IInputConnectionWrapper;
.super Lcom/android/internal/view/IInputContext$Stub;
.source "IInputConnectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;,
        Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    }
.end annotation


# static fields
.field private static final DO_BEGIN_BATCH_EDIT:I = 0x5a

.field private static final DO_CLEAR_META_KEY_STATES:I = 0x82

.field private static final DO_COMMIT_COMPLETION:I = 0x37

.field private static final DO_COMMIT_CORRECTION:I = 0x38

.field private static final DO_COMMIT_TEXT:I = 0x32

.field private static final DO_DELETE_SURROUNDING_TEXT:I = 0x50

.field private static final DO_END_BATCH_EDIT:I = 0x5f

.field private static final DO_FINISH_COMPOSING_TEXT:I = 0x41

.field private static final DO_GET_CURSOR_CAPS_MODE:I = 0x1e

.field private static final DO_GET_EXTRACTED_TEXT:I = 0x28

.field private static final DO_GET_SELECTED_TEXT:I = 0x19

.field private static final DO_GET_TEXT_AFTER_CURSOR:I = 0xa

.field private static final DO_GET_TEXT_BEFORE_CURSOR:I = 0x14

.field private static final DO_PERFORM_CONTEXT_MENU_ACTION:I = 0x3b

.field private static final DO_PERFORM_EDITOR_ACTION:I = 0x3a

.field private static final DO_PERFORM_PRIVATE_COMMAND:I = 0x78

.field private static final DO_REPORT_FULLSCREEN_MODE:I = 0x64

.field private static final DO_SEND_KEY_EVENT:I = 0x46

.field private static final DO_SET_COMPOSING_REGION:I = 0x3f

.field private static final DO_SET_COMPOSING_TEXT:I = 0x3c

.field private static final DO_SET_SELECTION:I = 0x39

.field static final TAG:Ljava/lang/String; = "IInputConnectionWrapper"


# instance fields
.field private mH:Landroid/os/Handler;

.field private mInputConnection:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/inputmethod/InputConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mMainLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V
    .registers 5
    .parameter "mainLooper"
    .parameter "conn"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/view/IInputContext$Stub;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    .line 83
    iput-object p1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    .line 84
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;-><init>(Lcom/android/internal/view/IInputConnectionWrapper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    .line 85
    return-void
.end method


# virtual methods
.method public beginBatchEdit()V
    .registers 2

    .prologue
    .line 163
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 164
    return-void
.end method

.method public clearMetaKeyStates(I)V
    .registers 4
    .parameter "states"

    .prologue
    .line 154
    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 155
    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 118
    const/16 v0, 0x37

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 119
    return-void
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 122
    const/16 v0, 0x38

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 123
    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 114
    const/16 v0, 0x32

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 115
    return-void
.end method

.method public deleteSurroundingText(II)V
    .registers 4
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    .line 158
    const/16 v0, 0x50

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 160
    return-void
.end method

.method dispatchMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 182
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_f

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->executeMessage(Landroid/os/Message;)V

    .line 184
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 189
    :goto_e
    return-void

    .line 188
    :cond_f
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_e
.end method

.method public endBatchEdit()V
    .registers 2

    .prologue
    .line 167
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 168
    return-void
.end method

.method executeMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 192
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_37c

    .line 424
    const-string v3, "IInputConnectionWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled message code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local p0
    :goto_21
    return-void

    .line 194
    .restart local p0
    :sswitch_22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 196
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_26
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 197
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_36

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_50

    .line 198
    :cond_36
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getTextAfterCursor on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_45} :catch_46

    goto :goto_21

    .line 204
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :catch_46
    move-exception v3

    move-object v1, v3

    .line 205
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling setTextAfterCursor"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 202
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_50
    :try_start_50
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_5f} :catch_46

    goto :goto_21

    .line 210
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_60
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 212
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_64
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 213
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_74

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_8e

    .line 214
    :cond_74
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getTextBeforeCursor on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_83} :catch_84

    goto :goto_21

    .line 220
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :catch_84
    move-exception v3

    move-object v1, v3

    .line 221
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling setTextBeforeCursor"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 218
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_8e
    :try_start_8e
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_9d} :catch_84

    goto :goto_21

    .line 226
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_9e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 228
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_a2
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 229
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_b2

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_ce

    .line 230
    :cond_b2
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getSelectedText on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V
    :try_end_c1
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_c1} :catch_c3

    goto/16 :goto_21

    .line 236
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :catch_c3
    move-exception v3

    move-object v1, v3

    .line 237
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling setSelectedText"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 234
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_ce
    :try_start_ce
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_ce .. :try_end_db} :catch_c3

    goto/16 :goto_21

    .line 242
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_dd
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 244
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_e1
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 245
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_f1

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_10d

    .line 246
    :cond_f1
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getCursorCapsMode on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_100
    .catch Landroid/os/RemoteException; {:try_start_e1 .. :try_end_100} :catch_102

    goto/16 :goto_21

    .line 252
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :catch_102
    move-exception v3

    move-object v1, v3

    .line 253
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling setCursorCapsMode"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 250
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_10d
    :try_start_10d
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v4

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_11a
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_11a} :catch_102

    goto/16 :goto_21

    .line 258
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_11c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 260
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_120
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 261
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_130

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_14c

    .line 262
    :cond_130
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "getExtractedText on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_13f
    .catch Landroid/os/RemoteException; {:try_start_120 .. :try_end_13f} :catch_141

    goto/16 :goto_21

    .line 268
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    .end local p0
    :catch_141
    move-exception v3

    move-object v1, v3

    .line 269
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "Got RemoteException calling setExtractedText"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 266
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :cond_14c
    :try_start_14c
    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget-object p0, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/inputmethod/ExtractedTextRequest;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, p0, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v3, v4, v5}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_15d
    .catch Landroid/os/RemoteException; {:try_start_14c .. :try_end_15d} :catch_141

    goto/16 :goto_21

    .line 274
    .end local v0           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :sswitch_15f
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 275
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_16f

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_178

    .line 276
    :cond_16f
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "commitText on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 279
    :cond_178
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, p0, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_21

    .line 283
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :sswitch_183
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 284
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_193

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_19d

    .line 285
    :cond_193
    const-string v3, "IInputConnectionWrapper"

    const-string/jumbo v4, "setSelection on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 288
    :cond_19d
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto/16 :goto_21

    .line 292
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_1a6
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 293
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_1b6

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_1bf

    .line 294
    :cond_1b6
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "performEditorAction on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 297
    :cond_1bf
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto/16 :goto_21

    .line 301
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_1c6
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 302
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_1d6

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_1df

    .line 303
    :cond_1d6
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "performContextMenuAction on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 306
    :cond_1df
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    goto/16 :goto_21

    .line 310
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_1e6
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 311
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_1f6

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_1ff

    .line 312
    :cond_1f6
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "commitCompletion on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 315
    :cond_1ff
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v2, p0}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    goto/16 :goto_21

    .line 319
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :sswitch_208
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 320
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_218

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_221

    .line 321
    :cond_218
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "commitCorrection on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 324
    :cond_221
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/inputmethod/CorrectionInfo;

    invoke-interface {v2, p0}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    goto/16 :goto_21

    .line 328
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :sswitch_22a
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 329
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_23a

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_244

    .line 330
    :cond_23a
    const-string v3, "IInputConnectionWrapper"

    const-string/jumbo v4, "setComposingText on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 333
    :cond_244
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, p0, v3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_21

    .line 337
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :sswitch_24f
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 338
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_25f

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_269

    .line 339
    :cond_25f
    const-string v3, "IInputConnectionWrapper"

    const-string/jumbo v4, "setComposingRegion on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 342
    :cond_269
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    goto/16 :goto_21

    .line 346
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_272
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 351
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_285

    .line 352
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "finishComposingText on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 355
    :cond_285
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto/16 :goto_21

    .line 359
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_28a
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 360
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_29a

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_2a4

    .line 361
    :cond_29a
    const-string v3, "IInputConnectionWrapper"

    const-string/jumbo v4, "sendKeyEvent on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 364
    :cond_2a4
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/KeyEvent;

    invoke-interface {v2, p0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_21

    .line 368
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :sswitch_2ad
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 369
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_2bd

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_2c6

    .line 370
    :cond_2bd
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "clearMetaKeyStates on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 373
    :cond_2c6
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    goto/16 :goto_21

    .line 377
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_2cd
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 378
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_2dd

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_2e6

    .line 379
    :cond_2dd
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "deleteSurroundingText on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 382
    :cond_2e6
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_21

    .line 386
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_2ef
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 387
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_2ff

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_308

    .line 388
    :cond_2ff
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "beginBatchEdit on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 391
    :cond_308
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    goto/16 :goto_21

    .line 395
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_30d
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 396
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_31d

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_326

    .line 397
    :cond_31d
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "endBatchEdit on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 400
    :cond_326
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_21

    .line 404
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_32b
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 405
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_33b

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_345

    .line 406
    :cond_33b
    const-string v3, "IInputConnectionWrapper"

    const-string/jumbo v4, "showStatusIcon on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 409
    :cond_345
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v5, :cond_34f

    move v3, v5

    :goto_34a
    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    goto/16 :goto_21

    :cond_34f
    move v3, v4

    goto :goto_34a

    .line 413
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_351
    iget-object v3, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    .line 414
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_361

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v3

    if-nez v3, :cond_36a

    .line 415
    :cond_361
    const-string v3, "IInputConnectionWrapper"

    const-string v4, "performPrivateCommand on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 418
    :cond_36a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 419
    .restart local v0       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iget-object p0, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-interface {v2, p0, v3}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto/16 :goto_21

    .line 192
    nop

    :sswitch_data_37c
    .sparse-switch
        0xa -> :sswitch_22
        0x14 -> :sswitch_60
        0x19 -> :sswitch_9e
        0x1e -> :sswitch_dd
        0x28 -> :sswitch_11c
        0x32 -> :sswitch_15f
        0x37 -> :sswitch_1e6
        0x38 -> :sswitch_208
        0x39 -> :sswitch_183
        0x3a -> :sswitch_1a6
        0x3b -> :sswitch_1c6
        0x3c -> :sswitch_22a
        0x3f -> :sswitch_24f
        0x41 -> :sswitch_272
        0x46 -> :sswitch_28a
        0x50 -> :sswitch_2cd
        0x5a -> :sswitch_2ef
        0x5f -> :sswitch_30d
        0x64 -> :sswitch_32b
        0x78 -> :sswitch_351
        0x82 -> :sswitch_2ad
    .end sparse-switch
.end method

.method public finishComposingText()V
    .registers 2

    .prologue
    .line 146
    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 147
    return-void
.end method

.method public getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V
    .registers 5
    .parameter "reqModes"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 104
    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 105
    return-void
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V
    .registers 11
    .parameter "request"
    .parameter "flags"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 109
    const/16 v1, 0x28

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 111
    return-void
.end method

.method public getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V
    .registers 5
    .parameter "flags"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 100
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 101
    return-void
.end method

.method public getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .registers 11
    .parameter "length"
    .parameter "flags"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 92
    const/16 v1, 0xa

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 93
    return-void
.end method

.method public getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .registers 11
    .parameter "length"
    .parameter "flags"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 96
    const/16 v1, 0x14

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 97
    return-void
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method obtainMessage(I)Landroid/os/Message;
    .registers 3
    .parameter "what"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageII(III)Landroid/os/Message;
    .registers 5
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .registers 8
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 447
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 448
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 449
    iput p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 450
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;
    .registers 6
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .registers 9
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 455
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 456
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    .line 457
    iput-object p5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 458
    iput p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 459
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .registers 8
    .parameter "what"
    .parameter "arg1"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 440
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 441
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 442
    iput p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 443
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;
    .registers 5
    .parameter "what"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    .line 436
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 7
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v2, 0x0

    .line 467
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 468
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p2, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    .line 469
    iput-object p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    .line 470
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public performContextMenuAction(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 134
    const/16 v0, 0x3b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 135
    return-void
.end method

.method public performEditorAction(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 130
    const/16 v0, 0x3a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 131
    return-void
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .parameter "action"
    .parameter "data"

    .prologue
    .line 175
    const/16 v0, 0x78

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 176
    return-void
.end method

.method public reportFullscreenMode(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    .line 171
    const/16 v0, 0x64

    if-eqz p1, :cond_e

    const/4 v1, 0x1

    :goto_6
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 172
    return-void

    :cond_e
    move v1, v2

    .line 171
    goto :goto_6
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 150
    const/16 v0, 0x46

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 151
    return-void
.end method

.method public setComposingRegion(II)V
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 138
    const/16 v0, 0x3f

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 139
    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 142
    const/16 v0, 0x3c

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 143
    return-void
.end method

.method public setSelection(II)V
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 126
    const/16 v0, 0x39

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 127
    return-void
.end method
