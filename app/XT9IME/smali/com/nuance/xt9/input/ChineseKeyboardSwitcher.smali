.class public Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;
.super Ljava/lang/Object;
.source "ChineseKeyboardSwitcher.java"


# static fields
.field public static final KEYBOARDMODE_EMAIL:I = 0x7f09003b

.field public static final KEYBOARDMODE_IM:I = 0x7f09003c

.field public static final KEYBOARDMODE_NORMAL:I = 0x7f090039

.field public static final KEYBOARDMODE_URL:I = 0x7f09003a

.field public static final MODE_EMAIL:I = 0x5

.field public static final MODE_IM:I = 0x6

.field public static final MODE_PHONE:I = 0x3

.field public static final MODE_SYMBOLS:I = 0x2

.field public static final MODE_TEXT:I = 0x1

.field public static final MODE_URL:I = 0x4


# instance fields
.field private mChineseKeyboardTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/xt9/input/XT9Keyboard;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Lcom/nuance/xt9/input/IME;

.field private mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

.field private mImeOptions:I

.field mInputView:Lcom/nuance/xt9/input/InputView;

.field private mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

.field private mLastDisplayWidth:I

.field private mMode:I

.field private mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

.field private mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

.field private mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

.field private mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/IME;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    .line 46
    return-void
.end method

.method private composeUniqueKeyboardLayoutName(IIILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "keyboardLayoutId"
    .parameter "keyboardModeId"
    .parameter "xmlKeyboardLayoutResId"
    .parameter "inputMode"

    .prologue
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, name:Ljava/lang/String;
    return-object v0
.end method

.method private createChineseKeyboardLayout(I)Lcom/nuance/xt9/input/XT9Keyboard;
    .locals 5
    .parameter "keyboardModeId"

    .prologue
    .line 74
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v3

    iget-object v2, v3, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 75
    .local v2, modeName:Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

    iget v3, v3, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutId:I

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

    iget v4, v4, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutResID:I

    invoke-direct {p0, v3, v4, p1, v2}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->composeUniqueKeyboardLayoutName(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, keyboardLayOutName:Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mChineseKeyboardTable:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/XT9Keyboard;

    .line 80
    .local v0, keyboard:Lcom/nuance/xt9/input/XT9Keyboard;
    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/nuance/xt9/input/XT9Keyboard;

    .end local v0           #keyboard:Lcom/nuance/xt9/input/XT9Keyboard;
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

    iget v4, v4, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutResID:I

    invoke-direct {v0, v3, v4, p1}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    .line 82
    .restart local v0       #keyboard:Lcom/nuance/xt9/input/XT9Keyboard;
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mChineseKeyboardTable:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

    iget v3, v3, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutId:I

    const/16 v4, 0x900

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "pinyin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "cangjie"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "bpmf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 89
    :cond_1
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/nuance/xt9/input/InputView;->setProximityCorrectionEnabled(Z)V

    .line 95
    :goto_0
    return-object v0

    .line 92
    :cond_2
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nuance/xt9/input/InputView;->setProximityCorrectionEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public isAmbigousInput()Z
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

    iget v0, v0, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutId:I

    const/16 v1, 0x900

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v1, "pinyin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v1, "bpmf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 122
    :cond_0
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeypadInput()Z
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

    iget v0, v0, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutId:I

    const/16 v1, 0x900

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSymbolKeyboard()Z
    .locals 2

    .prologue
    .line 110
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v0

    .line 111
    .local v0, current:Lcom/nuance/xt9/input/KeyboardEx;
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-ne v0, v1, :cond_1

    .line 112
    :cond_0
    const/4 v1, 0x1

    .line 114
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method makeKeyboards()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mChineseKeyboardTable:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/IME;->getMaxWidth()I

    move-result v0

    .line 58
    .local v0, displayWidth:I
    iget v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mLastDisplayWidth:I

    if-ne v0, v1, :cond_0

    .line 71
    .end local v0           #displayWidth:I
    :goto_0
    return-void

    .line 59
    .restart local v0       #displayWidth:I
    :cond_0
    iput v0, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mLastDisplayWidth:I

    .line 63
    .end local v0           #displayWidth:I
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mChineseKeyboardTable:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mChineseKeyboardTable:Ljava/util/Map;

    .line 66
    :cond_2
    iput-object v2, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 67
    iput-object v2, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 68
    iput-object v2, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 69
    iput-object v2, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 70
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mChineseKeyboardTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method setInputView(Lcom/nuance/xt9/input/InputView;)V
    .locals 0
    .parameter "inputView"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    .line 50
    return-void
.end method

.method setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;)V
    .locals 8
    .parameter "mode"
    .parameter "imeOptions"
    .parameter "inputLanguage"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 133
    iput-object p3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    .line 134
    iput p1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mMode:I

    .line 135
    iput p2, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mImeOptions:I

    .line 136
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/XT9Keyboard;

    .line 137
    .local v2, keyboard:Lcom/nuance/xt9/input/XT9Keyboard;
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v3, v7}, Lcom/nuance/xt9/input/InputView;->setPreviewEnabled(Z)V

    .line 139
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/xt9/input/InputMethods$Layout;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

    .line 141
    packed-switch p1, :pswitch_data_0

    .line 171
    :pswitch_0
    const v3, 0x7f090039

    invoke-direct {p0, v3}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->createChineseKeyboardLayout(I)Lcom/nuance/xt9/input/XT9Keyboard;

    move-result-object v2

    .line 175
    :goto_0
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v3, v2}, Lcom/nuance/xt9/input/InputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 176
    invoke-virtual {v2, v6}, Lcom/nuance/xt9/input/XT9Keyboard;->setShifted(Z)Z

    .line 177
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mMode:I

    invoke-virtual {v2, v3, v4, p2, v7}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    .line 180
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v3

    iget-object v1, v3, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 181
    .local v1, inputMode:Ljava/lang/String;
    const-string v3, "handwriting"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    check-cast v0, Lcom/nuance/xt9/input/HandWritingInputView;

    .line 183
    .local v0, handWritingInputView:Lcom/nuance/xt9/input/HandWritingInputView;
    invoke-virtual {v0}, Lcom/nuance/xt9/input/HandWritingInputView;->showLastSavedHandWritingScreen()V

    .line 186
    .end local v0           #handWritingInputView:Lcom/nuance/xt9/input/HandWritingInputView;
    :cond_0
    return-void

    .line 143
    .end local v1           #inputMode:Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v3, :cond_1

    .line 144
    new-instance v3, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    const v5, 0x7f050019

    invoke-direct {v3, v4, v5}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 146
    :cond_1
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v3, :cond_2

    .line 147
    new-instance v3, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    const v5, 0x7f050022

    invoke-direct {v3, v4, v5}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 149
    :cond_2
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 150
    goto :goto_0

    .line 154
    :pswitch_2
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v3, :cond_3

    .line 155
    new-instance v3, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    const v5, 0x7f050009

    invoke-direct {v3, v4, v5}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 157
    :cond_3
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v3, v4}, Lcom/nuance/xt9/input/InputView;->setPhoneKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 158
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v3, :cond_4

    .line 159
    new-instance v3, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v4, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    const v5, 0x7f05000a

    invoke-direct {v3, v4, v5}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 161
    :cond_4
    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 162
    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v3, v6}, Lcom/nuance/xt9/input/InputView;->setPreviewEnabled(Z)V

    goto :goto_0

    .line 166
    :pswitch_3
    const v3, 0x7f09003c

    invoke-direct {p0, v3}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->createChineseKeyboardLayout(I)Lcom/nuance/xt9/input/XT9Keyboard;

    move-result-object v2

    .line 167
    goto/16 :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method toggleAltSymbolPage()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 189
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v0

    .line 190
    .local v0, currentKeyboard:Lcom/nuance/xt9/input/KeyboardEx;
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-ne v0, v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v1, v3}, Lcom/nuance/xt9/input/XT9Keyboard;->setShifted(Z)Z

    .line 192
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/InputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 193
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v1, v3}, Lcom/nuance/xt9/input/XT9Keyboard;->setShifted(Z)Z

    .line 194
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mMode:I

    iget v4, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-ne v0, v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v1, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->setShifted(Z)Z

    .line 197
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/InputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 198
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v1, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->setShifted(Z)Z

    .line 199
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mMode:I

    iget v4, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    goto :goto_0
.end method

.method toggleSymbols()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 204
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v0

    .line 205
    .local v0, current:Lcom/nuance/xt9/input/KeyboardEx;
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v1, :cond_0

    .line 206
    new-instance v1, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    const v3, 0x7f050019

    invoke-direct {v1, v2, v3}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v1, :cond_1

    .line 209
    new-instance v1, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    const v3, 0x7f050022

    invoke-direct {v1, v2, v3}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-ne v0, v1, :cond_4

    .line 212
    :cond_2
    iget v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mMode:I

    iget v2, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mImeOptions:I

    iget-object v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {p0, v1, v2, v3}, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;)V

    .line 214
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/XT9Keyboard;->setModeChangeKey(Ljava/lang/String;)V

    .line 235
    :cond_3
    :goto_0
    return-void

    .line 217
    :cond_4
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-ne v0, v1, :cond_5

    .line 218
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 219
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mMode:I

    iget v4, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    .line 227
    :goto_1
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v1, v0}, Lcom/nuance/xt9/input/InputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 230
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/IME;->getPreviousInputModeChar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/XT9Keyboard;->setModeChangeKey(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-ne v0, v1, :cond_3

    .line 233
    invoke-virtual {v0, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->setShifted(Z)Z

    goto :goto_0

    .line 220
    :cond_5
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-ne v0, v1, :cond_6

    .line 221
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 222
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mMode:I

    iget v4, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    goto :goto_1

    .line 224
    :cond_6
    iget-object v0, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 225
    iget-object v1, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v2, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mMode:I

    iget v4, p0, Lcom/nuance/xt9/input/ChineseKeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    goto :goto_1
.end method
