.class public Lcom/android/calculator2/CalculatorEditText;
.super Landroid/widget/EditText;
.source "CalculatorEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode;

    invoke-direct {v0, p0}, Lcom/android/calculator2/CalculatorEditText$NoTextSelectionMode;-><init>(Lcom/android/calculator2/CalculatorEditText;)V

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/android/calculator2/CalculatorEditText;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorEditText;->copyContent()V

    return-void
.end method

.method private copyContent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 74
    .local v1, text:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/android/calculator2/CalculatorEditText;->setSelection(II)V

    .line 75
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 77
    .local v0, clipboard:Landroid/content/ClipboardManager;
    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060024

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 79
    return-void
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 47
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorEditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 50
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorEditText;->cancelLongPress()V

    .line 58
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 64
    .local v0, text:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const/4 v1, 0x0

    .line 69
    :goto_0
    return v1

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorEditText;->copyContent()V

    .line 69
    const/4 v1, 0x1

    goto :goto_0
.end method
