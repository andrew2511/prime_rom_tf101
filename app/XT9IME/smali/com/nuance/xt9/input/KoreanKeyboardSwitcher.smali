.class public Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;
.super Ljava/lang/Object;
.source "KoreanKeyboardSwitcher.java"


# static fields
.field public static final KEYBOARDMODE_EMAIL:I = 0x7f09003c

.field public static final KEYBOARDMODE_IM:I = 0x7f09003d

.field public static final KEYBOARDMODE_NORMAL:I = 0x7f09003a

.field public static final KEYBOARDMODE_URL:I = 0x7f09003b

.field public static final MODE_EMAIL:I = 0x5

.field public static final MODE_IM:I = 0x6

.field public static final MODE_PHONE:I = 0x3

.field public static final MODE_SYMBOLS:I = 0x2

.field public static final MODE_TEXT:I = 0x1

.field public static final MODE_URL:I = 0x4


# instance fields
.field mContext:Lcom/nuance/xt9/input/IME;

.field private mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

.field private mImeOptions:I

.field mInputView:Lcom/nuance/xt9/input/InputView;

.field private mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

.field private mKoreanKeyboardTable:Ljava/util/Map;
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
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    .line 45
    return-void
.end method

.method private composeUniqueKeyboardLayoutName(IIILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "keyboardLayoutId"
    .parameter "keyboardModeId"
    .parameter "xmlKeyboardLayoutResId"
    .parameter "inputMode"

    .prologue
    .line 93
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

    .line 97
    .local v0, name:Ljava/lang/String;
    return-object v0
.end method

.method private createKoreanKeyboardLayout(II)Lcom/nuance/xt9/input/XT9Keyboard;
    .locals 5
    .parameter "keyboardModeId"
    .parameter "currentShiftState"

    .prologue
    .line 73
    if-nez p2, :cond_1

    iget-object v4, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

    iget v4, v4, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutResID:I

    move v2, v4

    .line 75
    .local v2, layoutResID:I
    :goto_0
    iget-object v4, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v4

    iget-object v3, v4, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 76
    .local v3, modeName:Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

    iget v4, v4, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutId:I

    invoke-direct {p0, v4, v2, p1, v3}, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->composeUniqueKeyboardLayoutName(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, keyboardLayOutName:Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mKoreanKeyboardTable:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/XT9Keyboard;

    .line 80
    .local v0, keyboard:Lcom/nuance/xt9/input/XT9Keyboard;
    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/nuance/xt9/input/XT9Keyboard;

    .end local v0           #keyboard:Lcom/nuance/xt9/input/XT9Keyboard;
    iget-object v4, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-direct {v0, v4, v2, p1}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    .line 82
    .restart local v0       #keyboard:Lcom/nuance/xt9/input/XT9Keyboard;
    iget-object v4, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mKoreanKeyboardTable:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    invoke-virtual {v0}, Lcom/nuance/xt9/input/XT9Keyboard;->enableShiftLock()V

    .line 86
    return-object v0

    .line 73
    .end local v0           #keyboard:Lcom/nuance/xt9/input/XT9Keyboard;
    .end local v1           #keyboardLayOutName:Ljava/lang/String;
    .end local v2           #layoutResID:I
    .end local v3           #modeName:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

    iget v4, v4, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutShiftResID:I

    move v2, v4

    goto :goto_0
.end method


# virtual methods
.method public getCurrentShiftState()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/XT9Keyboard;->getCurrentShiftState()I

    move-result v0

    return v0
.end method

.method public isAlphabetMode()Z
    .locals 2

    .prologue
    .line 136
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v0

    .line 137
    .local v0, current:Lcom/nuance/xt9/input/KeyboardEx;
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-eq v0, v1, :cond_0

    .line 141
    const/4 v1, 0x1

    .line 143
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAmbigousInput()Z
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

    iget v0, v0, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutId:I

    const/16 v1, 0x900

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v1, "pinyin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v1, "bpmf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 126
    :cond_0
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeypadInput()Z
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

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
    .line 114
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v0

    .line 115
    .local v0, current:Lcom/nuance/xt9/input/KeyboardEx;
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-ne v0, v1, :cond_1

    .line 116
    :cond_0
    const/4 v1, 0x1

    .line 118
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

    .line 55
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mKoreanKeyboardTable:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/IME;->getMaxWidth()I

    move-result v0

    .line 57
    .local v0, displayWidth:I
    iget v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mLastDisplayWidth:I

    if-ne v0, v1, :cond_0

    .line 70
    .end local v0           #displayWidth:I
    :goto_0
    return-void

    .line 58
    .restart local v0       #displayWidth:I
    :cond_0
    iput v0, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mLastDisplayWidth:I

    .line 62
    .end local v0           #displayWidth:I
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mKoreanKeyboardTable:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mKoreanKeyboardTable:Ljava/util/Map;

    .line 65
    :cond_2
    iput-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 66
    iput-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 67
    iput-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 68
    iput-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 69
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mKoreanKeyboardTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method setInputView(Lcom/nuance/xt9/input/InputView;)V
    .locals 0
    .parameter "inputView"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    .line 49
    return-void
.end method

.method setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;)V
    .locals 6
    .parameter "mode"
    .parameter "imeOptions"
    .parameter "inputLanguage"

    .prologue
    const/4 v5, 0x1

    .line 147
    iput-object p3, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    .line 148
    iput p1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mMode:I

    .line 149
    iput p2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mImeOptions:I

    .line 150
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/XT9Keyboard;

    .line 151
    .local v1, keyboard:Lcom/nuance/xt9/input/XT9Keyboard;
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v2, v5}, Lcom/nuance/xt9/input/InputView;->setPreviewEnabled(Z)V

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, currentShiftState:I
    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v1}, Lcom/nuance/xt9/input/XT9Keyboard;->getCurrentShiftState()I

    move-result v0

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/xt9/input/InputMethods$Layout;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

    .line 160
    packed-switch p1, :pswitch_data_0

    .line 190
    :pswitch_0
    const v2, 0x7f09003a

    invoke-direct {p0, v2, v0}, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->createKoreanKeyboardLayout(II)Lcom/nuance/xt9/input/XT9Keyboard;

    move-result-object v1

    .line 194
    :goto_0
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v2, v1}, Lcom/nuance/xt9/input/InputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 195
    invoke-virtual {v1, v0}, Lcom/nuance/xt9/input/XT9Keyboard;->setShiftState(I)V

    .line 196
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mMode:I

    invoke-virtual {v1, v2, v3, p2, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    .line 197
    return-void

    .line 162
    :pswitch_1
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v2, :cond_1

    .line 163
    new-instance v2, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v3, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    const v4, 0x7f050017

    invoke-direct {v2, v3, v4}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v2, :cond_2

    .line 166
    new-instance v2, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v3, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    const v4, 0x7f050020

    invoke-direct {v2, v3, v4}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 169
    goto :goto_0

    .line 173
    :pswitch_2
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v2, :cond_3

    .line 174
    new-instance v2, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v3, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    const v4, 0x7f050009

    invoke-direct {v2, v3, v4}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 176
    :cond_3
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    iget-object v3, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/InputView;->setPhoneKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 177
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v2, :cond_4

    .line 178
    new-instance v2, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v3, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    const v4, 0x7f05000a

    invoke-direct {v2, v3, v4}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 180
    :cond_4
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 181
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/InputView;->setPreviewEnabled(Z)V

    goto :goto_0

    .line 185
    :pswitch_3
    const v2, 0x7f09003d

    invoke-direct {p0, v2, v0}, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->createKoreanKeyboardLayout(II)Lcom/nuance/xt9/input/XT9Keyboard;

    move-result-object v1

    .line 186
    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setShiftState(I)V
    .locals 5
    .parameter "state"

    .prologue
    .line 101
    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/XT9Keyboard;

    .line 102
    .local v1, keyboard:Lcom/nuance/xt9/input/XT9Keyboard;
    invoke-virtual {v1}, Lcom/nuance/xt9/input/XT9Keyboard;->getCurrentShiftState()I

    move-result v0

    .line 103
    .local v0, currentShiftState:I
    if-eq v0, p1, :cond_0

    .line 104
    invoke-virtual {v1, p1}, Lcom/nuance/xt9/input/XT9Keyboard;->setShiftState(I)V

    .line 105
    iget v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mMode:I

    iget v3, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mImeOptions:I

    iget-object v4, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {p0, v2, v3, v4}, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;)V

    .line 107
    :cond_0
    return-void
.end method

.method toggleAltSymbolPage()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 209
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v0

    .line 210
    .local v0, currentKeyboard:Lcom/nuance/xt9/input/KeyboardEx;
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-ne v0, v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v1, v3}, Lcom/nuance/xt9/input/XT9Keyboard;->setShifted(Z)Z

    .line 212
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/InputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 213
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v1, v3}, Lcom/nuance/xt9/input/XT9Keyboard;->setShifted(Z)Z

    .line 214
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mMode:I

    iget v4, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-ne v0, v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v1, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->setShifted(Z)Z

    .line 217
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/InputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 218
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v1, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->setShifted(Z)Z

    .line 219
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mMode:I

    iget v4, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    goto :goto_0
.end method

.method public toggleShiftState()V
    .locals 3

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/XT9Keyboard;->toggleShiftState()V

    .line 202
    iget v0, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mMode:I

    iget v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mImeOptions:I

    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;)V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->toggleAltSymbolPage()V

    goto :goto_0
.end method

.method toggleSymbols()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 224
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v0

    .line 225
    .local v0, current:Lcom/nuance/xt9/input/KeyboardEx;
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v1, :cond_0

    .line 226
    new-instance v1, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    const v3, 0x7f050017

    invoke-direct {v1, v2, v3}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v1, :cond_1

    .line 229
    new-instance v1, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    const v3, 0x7f050020

    invoke-direct {v1, v2, v3}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-ne v0, v1, :cond_4

    .line 232
    :cond_2
    iget v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mMode:I

    iget v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mImeOptions:I

    iget-object v3, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {p0, v1, v2, v3}, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;)V

    .line 233
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/XT9Keyboard;->setModeChangeKey(Ljava/lang/String;)V

    .line 251
    :cond_3
    :goto_0
    return-void

    .line 235
    :cond_4
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-ne v0, v1, :cond_5

    .line 236
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 237
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mMode:I

    iget v4, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    .line 245
    :goto_1
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/InputView;

    invoke-virtual {v1, v0}, Lcom/nuance/xt9/input/InputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 246
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/IME;->getPreviousInputModeChar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/XT9Keyboard;->setModeChangeKey(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-ne v0, v1, :cond_3

    .line 249
    invoke-virtual {v0, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->setShifted(Z)Z

    goto :goto_0

    .line 238
    :cond_5
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-ne v0, v1, :cond_6

    .line 239
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 240
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mMode:I

    iget v4, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    goto :goto_1

    .line 242
    :cond_6
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 243
    iget-object v1, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v2, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mMode:I

    iget v4, p0, Lcom/nuance/xt9/input/KoreanKeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    goto :goto_1
.end method
