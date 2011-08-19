.class Lcom/splashtop/remote/DesktopGLView$1;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "DesktopGLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splashtop/remote/DesktopGLView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/DesktopGLView;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/DesktopGLView;Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/splashtop/remote/DesktopGLView$1;->this$0:Lcom/splashtop/remote/DesktopGLView;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 9
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/16 v8, 0x44

    const/16 v6, 0x40

    const/4 v7, 0x1

    .line 287
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, string:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 289
    .local v2, length:I
    iget-object v5, p0, Lcom/splashtop/remote/DesktopGLView$1;->this$0:Lcom/splashtop/remote/DesktopGLView;

    invoke-static {v5}, Lcom/splashtop/remote/DesktopGLView;->access$400(Lcom/splashtop/remote/DesktopGLView;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-ne v2, v7, :cond_2

    .line 290
    sub-int v5, v2, v7

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 291
    .local v0, c:I
    const/16 v5, 0x61

    if-gt v5, v0, :cond_1

    const/16 v5, 0x7a

    if-gt v0, v5, :cond_1

    .line 292
    sub-int v5, v0, v8

    invoke-static {v7, v5}, Lcom/splashtop/remote/JNILib;->nativeSendKeyboardEvent(II)V

    .line 293
    const/4 v5, 0x2

    sub-int v6, v0, v8

    invoke-static {v5, v6}, Lcom/splashtop/remote/JNILib;->nativeSendKeyboardEvent(II)V

    .line 297
    :goto_0
    iget-object v5, p0, Lcom/splashtop/remote/DesktopGLView$1;->this$0:Lcom/splashtop/remote/DesktopGLView;

    invoke-static {v5}, Lcom/splashtop/remote/DesktopGLView;->access$500(Lcom/splashtop/remote/DesktopGLView;)Lcom/splashtop/remote/softkeyboard/Softkeyboard$HotkeyCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/splashtop/remote/softkeyboard/Softkeyboard$HotkeyCallback;->releaseHotkey()V

    .line 304
    .end local v0           #c:I
    :cond_0
    return v7

    .line 295
    .restart local v0       #c:I
    :cond_1
    invoke-static {v6, v0}, Lcom/splashtop/remote/JNILib;->nativeSendKeyboardEvent(II)V

    goto :goto_0

    .line 299
    .end local v0           #c:I
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 300
    invoke-virtual {v3, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 301
    .local v4, unicode:I
    invoke-static {v6, v4}, Lcom/splashtop/remote/JNILib;->nativeSendKeyboardEvent(II)V

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public finishComposingText()Z
    .locals 1

    .prologue
    .line 281
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    move-result v0

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 3
    .parameter "editorAction"

    .prologue
    const/16 v2, 0x42

    const/4 v1, 0x1

    .line 263
    invoke-static {v1, v2}, Lcom/splashtop/remote/JNILib;->nativeSendKeyboardEvent(II)V

    .line 264
    const/4 v0, 0x2

    invoke-static {v0, v2}, Lcom/splashtop/remote/JNILib;->nativeSendKeyboardEvent(II)V

    .line 265
    return v1
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 256
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/splashtop/remote/JNILib;->nativeSendKeyboardEvent(II)V

    .line 257
    const/4 v0, 0x1

    return v0
.end method
