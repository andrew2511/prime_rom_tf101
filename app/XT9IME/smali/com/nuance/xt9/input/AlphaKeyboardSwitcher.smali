.class public Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;
.super Ljava/lang/Object;
.source "AlphaKeyboardSwitcher.java"


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

.field static final TAG:Ljava/lang/String; = "XT9IME.AlphaKeyboardSwitcher"


# instance fields
.field private mAlphaKeyboardTable:Ljava/util/Map;
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

.field private mContext:Lcom/nuance/xt9/input/IME;

.field private mImeOptions:I

.field private mInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

.field private mInputMode:Ljava/lang/String;

.field private mInputView:Lcom/nuance/xt9/input/AlphaInputView;

.field private mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

.field private mLanguageId:I

.field private mLastDisplayWidth:I

.field private mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

.field private mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

.field private mPredictionOn:Z

.field private mPreviousLanguageId:I

.field private mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

.field private mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

.field private mTextEntryMode:I

.field private mThaiShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

.field private mThaiUnShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;


# direct methods
.method public constructor <init>(Lcom/nuance/xt9/input/IME;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "ambig"

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputMode:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPredictionOn:Z

    .line 58
    iput-object p1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    .line 59
    return-void
.end method

.method private composeUniqueKeyboardLayoutName(IIILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "keyboardLayoutId"
    .parameter "keyboardModeId"
    .parameter "xmlKeyboardLayoutResId"
    .parameter "inputMode"

    .prologue
    .line 204
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

    .line 208
    .local v0, name:Ljava/lang/String;
    return-object v0
.end method

.method private createAlphaKeyboard(ILjava/lang/String;I)Lcom/nuance/xt9/input/XT9Keyboard;
    .locals 5
    .parameter "textEntryMode"
    .parameter "inputMode"
    .parameter "languageId"

    .prologue
    .line 171
    packed-switch p1, :pswitch_data_0

    .line 183
    const v2, 0x7f090039

    .line 187
    .local v2, keyboardModeId:I
    :goto_0
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

    iget v3, v3, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutId:I

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

    iget v4, v4, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutResID:I

    invoke-direct {p0, v3, v2, v4, p2}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->composeUniqueKeyboardLayoutName(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, keyboardLayoutName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 191
    .local v0, keyboard:Lcom/nuance/xt9/input/XT9Keyboard;
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mAlphaKeyboardTable:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #keyboard:Lcom/nuance/xt9/input/XT9Keyboard;
    check-cast v0, Lcom/nuance/xt9/input/XT9Keyboard;

    .restart local v0       #keyboard:Lcom/nuance/xt9/input/XT9Keyboard;
    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/nuance/xt9/input/XT9Keyboard;

    .end local v0           #keyboard:Lcom/nuance/xt9/input/XT9Keyboard;
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

    iget v4, v4, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutResID:I

    invoke-direct {v0, v3, v4, v2}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    .line 193
    .restart local v0       #keyboard:Lcom/nuance/xt9/input/XT9Keyboard;
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mAlphaKeyboardTable:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_0
    iget-boolean v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPredictionOn:Z

    invoke-virtual {v0, v3}, Lcom/nuance/xt9/input/XT9Keyboard;->enabledXT9Key(Z)V

    .line 196
    invoke-virtual {v0}, Lcom/nuance/xt9/input/XT9Keyboard;->enableShiftLock()V

    .line 197
    return-object v0

    .line 173
    .end local v0           #keyboard:Lcom/nuance/xt9/input/XT9Keyboard;
    .end local v1           #keyboardLayoutName:Ljava/lang/String;
    .end local v2           #keyboardModeId:I
    :pswitch_0
    const v2, 0x7f09003a

    .line 174
    .restart local v2       #keyboardModeId:I
    goto :goto_0

    .line 176
    .end local v2           #keyboardModeId:I
    :pswitch_1
    const v2, 0x7f09003c

    .line 177
    .restart local v2       #keyboardModeId:I
    goto :goto_0

    .line 179
    .end local v2           #keyboardModeId:I
    :pswitch_2
    const v2, 0x7f09003b

    .line 180
    .restart local v2       #keyboardModeId:I
    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private toggleAltSymbolPage()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 271
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v0

    .line 272
    .local v0, currentKeyboard:Lcom/nuance/xt9/input/KeyboardEx;
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-ne v0, v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v1, v3}, Lcom/nuance/xt9/input/XT9Keyboard;->setShifted(Z)Z

    .line 274
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/AlphaInputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 275
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v1, v3}, Lcom/nuance/xt9/input/XT9Keyboard;->setShifted(Z)Z

    .line 276
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mTextEntryMode:I

    iget v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-ne v0, v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v1, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->setShifted(Z)Z

    .line 279
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/AlphaInputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 280
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v1, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->setShifted(Z)Z

    .line 281
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mTextEntryMode:I

    iget v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    goto :goto_0
.end method

.method private toggleSymbols()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 335
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v1

    .line 337
    .local v1, current:Lcom/nuance/xt9/input/KeyboardEx;
    const/4 v2, 0x0

    .line 339
    .local v2, currentShiftState:I
    if-eqz v1, :cond_0

    .line 340
    move-object v0, v1

    check-cast v0, Lcom/nuance/xt9/input/XT9Keyboard;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/nuance/xt9/input/XT9Keyboard;->getCurrentShiftState()I

    move-result v2

    .line 344
    :cond_0
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPreviousLanguageId:I

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v4, v4, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    if-eq v3, v4, :cond_2

    .line 345
    :cond_1
    iput-object v6, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 346
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v3, v3, Lcom/nuance/xt9/input/InputMethods$Language;->mSymboltableResId:I

    if-eqz v3, :cond_6

    .line 347
    new-instance v3, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v5, v5, Lcom/nuance/xt9/input/InputMethods$Language;->mSymboltableResId:I

    invoke-direct {v3, v4, v5}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 353
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPreviousLanguageId:I

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v4, v4, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    if-eq v3, v4, :cond_4

    .line 354
    :cond_3
    iput-object v6, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 355
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v3, v3, Lcom/nuance/xt9/input/InputMethods$Language;->mSymboltableShiftResId:I

    if-eqz v3, :cond_7

    .line 356
    new-instance v3, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v5, v5, Lcom/nuance/xt9/input/InputMethods$Language;->mSymboltableShiftResId:I

    invoke-direct {v3, v4, v5}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 363
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v3, v3, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    iput v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPreviousLanguageId:I

    .line 366
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-eq v1, v3, :cond_5

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-ne v1, v3, :cond_8

    .line 367
    :cond_5
    iget v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mTextEntryMode:I

    iget v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mImeOptions:I

    iget-object v5, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-boolean v6, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPredictionOn:Z

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;Z)V

    .line 385
    :goto_2
    return-void

    .line 349
    :cond_6
    new-instance v3, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    const v5, 0x7f050017

    invoke-direct {v3, v4, v5}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    goto :goto_0

    .line 358
    :cond_7
    new-instance v3, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    const v5, 0x7f050020

    invoke-direct {v3, v4, v5}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    goto :goto_1

    .line 370
    :cond_8
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-ne v1, v3, :cond_9

    .line 371
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 372
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mTextEntryMode:I

    iget v6, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    .line 383
    :goto_3
    move-object v0, v1

    check-cast v0, Lcom/nuance/xt9/input/XT9Keyboard;

    move-object v3, v0

    invoke-virtual {v3, v2}, Lcom/nuance/xt9/input/XT9Keyboard;->setShiftState(I)V

    .line 384
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v3, v1}, Lcom/nuance/xt9/input/AlphaInputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    goto :goto_2

    .line 374
    :cond_9
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-ne v1, v3, :cond_a

    .line 375
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 376
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mTextEntryMode:I

    iget v6, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    goto :goto_3

    .line 379
    :cond_a
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 380
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mTextEntryMode:I

    iget v6, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    goto :goto_3
.end method


# virtual methods
.method public changeKeyboardMode()V
    .locals 2

    .prologue
    .line 327
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/XT9Keyboard;->getCurrentShiftState()I

    move-result v0

    .line 328
    .local v0, currentShiftState:I
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->toggleSymbols()V

    .line 329
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/XT9Keyboard;->setShiftState(I)V

    .line 332
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 389
    const-string v0, "AlphaKeyboardSwitch"

    const-string v1, "AlphaKeyboardSwitch.finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void
.end method

.method public getCurrentInputMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputMode:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentShiftState()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

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
    .line 91
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v0

    .line 92
    .local v0, current:Lcom/nuance/xt9/input/KeyboardEx;
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-eq v0, v1, :cond_0

    .line 96
    const/4 v1, 0x1

    .line 98
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public makeKeyboards()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mAlphaKeyboardTable:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/IME;->getMaxWidth()I

    move-result v0

    .line 71
    .local v0, displayWidth:I
    iget v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mLastDisplayWidth:I

    if-ne v0, v1, :cond_0

    .line 87
    .end local v0           #displayWidth:I
    :goto_0
    return-void

    .line 72
    .restart local v0       #displayWidth:I
    :cond_0
    iput v0, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mLastDisplayWidth:I

    .line 75
    .end local v0           #displayWidth:I
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mAlphaKeyboardTable:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mAlphaKeyboardTable:Ljava/util/Map;

    .line 80
    :cond_2
    iput-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 81
    iput-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 82
    iput-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 83
    iput-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 84
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mAlphaKeyboardTable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method public setInputView(Lcom/nuance/xt9/input/AlphaInputView;)V
    .locals 0
    .parameter "inputView"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    .line 63
    return-void
.end method

.method public setKeyboardMode(IILcom/nuance/xt9/input/InputMethods$Language;Z)V
    .locals 5
    .parameter "textEntryMode"
    .parameter "imeOptions"
    .parameter "inputLanguage"
    .parameter "predictionOn"

    .prologue
    .line 103
    iput-object p3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    .line 104
    iput-boolean p4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPredictionOn:Z

    .line 105
    iput p1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mTextEntryMode:I

    .line 106
    iput p2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mImeOptions:I

    .line 109
    invoke-virtual {p3}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputMode:Ljava/lang/String;

    .line 110
    iget v2, p3, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v2}, Lcom/nuance/xt9/input/InputMethods$Language;->isAlphabetic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputMode:Ljava/lang/String;

    const-string v3, "alpha"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    iget-boolean v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPredictionOn:Z

    if-eqz v2, :cond_3

    invoke-virtual {p3}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    :goto_0
    iput-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputMode:Ljava/lang/String;

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputMode:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/nuance/xt9/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/xt9/input/InputMethods$Layout;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

    .line 120
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

    if-nez v2, :cond_1

    .line 121
    const-string v2, "XT9IME.AlphaKeyboardSwitcher"

    const-string v3, "mKeyboardLayout == null "

    invoke-static {v2, v3}, Lcom/nuance/xt9/input/Debug;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/XT9Keyboard;

    .line 125
    .local v1, keyboard:Lcom/nuance/xt9/input/XT9Keyboard;
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/AlphaInputView;->setPreviewEnabled(Z)V

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, currentShiftState:I
    if-eqz v1, :cond_2

    .line 129
    invoke-virtual {v1}, Lcom/nuance/xt9/input/XT9Keyboard;->getCurrentShiftState()I

    move-result v0

    .line 132
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 163
    :goto_1
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v2, v1}, Lcom/nuance/xt9/input/AlphaInputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 164
    invoke-virtual {v1, v0}, Lcom/nuance/xt9/input/XT9Keyboard;->setShiftState(I)V

    .line 165
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mTextEntryMode:I

    iget-boolean v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPredictionOn:Z

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    .line 166
    return-void

    .line 113
    .end local v0           #currentShiftState:I
    .end local v1           #keyboard:Lcom/nuance/xt9/input/XT9Keyboard;
    :cond_3
    const-string v2, "abc"

    goto :goto_0

    .line 137
    .restart local v0       #currentShiftState:I
    .restart local v1       #keyboard:Lcom/nuance/xt9/input/XT9Keyboard;
    :pswitch_0
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputMode:Ljava/lang/String;

    iget v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mLanguageId:I

    invoke-direct {p0, p1, v2, v3}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->createAlphaKeyboard(ILjava/lang/String;I)Lcom/nuance/xt9/input/XT9Keyboard;

    move-result-object v1

    .line 138
    goto :goto_1

    .line 141
    :pswitch_1
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v2, :cond_4

    .line 142
    new-instance v2, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    const v4, 0x7f050017

    invoke-direct {v2, v3, v4}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 144
    :cond_4
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v2, :cond_5

    .line 145
    new-instance v2, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    const v4, 0x7f050020

    invoke-direct {v2, v3, v4}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 147
    :cond_5
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 148
    goto :goto_1

    .line 151
    :pswitch_2
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v2, :cond_6

    .line 152
    new-instance v2, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    const v4, 0x7f050009

    invoke-direct {v2, v3, v4}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 154
    :cond_6
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/AlphaInputView;->setPhoneKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 155
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v2, :cond_7

    .line 156
    new-instance v2, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    const v4, 0x7f05000a

    invoke-direct {v2, v3, v4}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPhoneSymbolsKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 158
    :cond_7
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPhoneKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 159
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/AlphaInputView;->setPreviewEnabled(Z)V

    goto :goto_1

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setShiftState(I)V
    .locals 8
    .parameter "state"

    .prologue
    const v6, 0x7f090039

    const/4 v7, 0x0

    .line 213
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v3, v3, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    const/16 v4, 0x11e

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isAlphaInputMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 214
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v1

    .line 216
    .local v1, current:Lcom/nuance/xt9/input/KeyboardEx;
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mThaiShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v3, :cond_0

    .line 217
    new-instance v3, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    const v5, 0x7f050028

    invoke-direct {v3, v4, v5, v6}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mThaiShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 218
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mThaiShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    iget-boolean v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPredictionOn:Z

    invoke-virtual {v3, v4}, Lcom/nuance/xt9/input/XT9Keyboard;->enabledXT9Key(Z)V

    .line 219
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mThaiShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/XT9Keyboard;->enableShiftLock()V

    .line 222
    :cond_0
    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mThaiShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 224
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mThaiShiftedKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mTextEntryMode:I

    iget v6, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    .line 225
    move-object v0, v1

    check-cast v0, Lcom/nuance/xt9/input/XT9Keyboard;

    move-object v3, v0

    invoke-virtual {v3, p1}, Lcom/nuance/xt9/input/XT9Keyboard;->setShiftState(I)V

    .line 226
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v3, v1}, Lcom/nuance/xt9/input/AlphaInputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 238
    :goto_0
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    iget-object v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/xt9/input/KeyboardEx;->isShifted()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nuance/xt9/input/AlphaInputView;->setShifted(Z)Z

    .line 243
    .end local v1           #current:Lcom/nuance/xt9/input/KeyboardEx;
    .end local p0
    :goto_1
    return-void

    .line 229
    .restart local v1       #current:Lcom/nuance/xt9/input/KeyboardEx;
    .restart local p0
    :cond_2
    new-instance v2, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    const v4, 0x7f050027

    invoke-direct {v2, v3, v4, v6}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    .line 230
    .local v2, originKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;
    iget-boolean v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPredictionOn:Z

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/XT9Keyboard;->enabledXT9Key(Z)V

    .line 231
    invoke-virtual {v2}, Lcom/nuance/xt9/input/XT9Keyboard;->enableShiftLock()V

    .line 232
    move-object v1, v2

    .line 233
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mTextEntryMode:I

    iget v5, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    .line 234
    move-object v0, v1

    check-cast v0, Lcom/nuance/xt9/input/XT9Keyboard;

    move-object v3, v0

    invoke-virtual {v3, p1}, Lcom/nuance/xt9/input/XT9Keyboard;->setShiftState(I)V

    .line 235
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v3, v1}, Lcom/nuance/xt9/input/AlphaInputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    goto :goto_0

    .line 240
    .end local v1           #current:Lcom/nuance/xt9/input/KeyboardEx;
    .end local v2           #originKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;
    :cond_3
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v3}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/XT9Keyboard;->setShiftState(I)V

    goto :goto_1
.end method

.method public supportsAlphaMode()Z
    .locals 2

    .prologue
    .line 286
    iget v0, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mTextEntryMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mTextEntryMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggleAmbigMode()V
    .locals 6

    .prologue
    .line 297
    iget-boolean v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPredictionOn:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

    iget v2, v2, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutId:I

    const/16 v3, 0xa00

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

    iget v2, v2, Lcom/nuance/xt9/input/InputMethods$Layout;->mLayoutId:I

    const/16 v3, 0x600

    if-ne v2, v3, :cond_2

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/XT9Keyboard;

    .line 302
    .local v0, current:Lcom/nuance/xt9/input/XT9Keyboard;
    invoke-virtual {v0}, Lcom/nuance/xt9/input/XT9Keyboard;->getCurrentShiftState()I

    move-result v1

    .line 304
    .local v1, currentShiftState:I
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputMode:Ljava/lang/String;

    const-string v3, "abc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 305
    const-string v2, "ambig"

    iput-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputMode:Ljava/lang/String;

    .line 306
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/xt9/input/InputMethods$Layout;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

    .line 307
    iget v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mTextEntryMode:I

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputMode:Ljava/lang/String;

    iget v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mLanguageId:I

    invoke-direct {p0, v2, v3, v4}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->createAlphaKeyboard(ILjava/lang/String;I)Lcom/nuance/xt9/input/XT9Keyboard;

    move-result-object v0

    .line 308
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mTextEntryMode:I

    iget v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mImeOptions:I

    iget-boolean v5, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPredictionOn:Z

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    .line 316
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/XT9Keyboard;->setShiftState(I)V

    .line 317
    invoke-virtual {v0}, Lcom/nuance/xt9/input/XT9Keyboard;->isShifted()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nuance/xt9/input/XT9Keyboard;->setShifted(Z)Z

    .line 318
    invoke-virtual {v0}, Lcom/nuance/xt9/input/XT9Keyboard;->enableShiftLock()V

    .line 319
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v2, v0}, Lcom/nuance/xt9/input/AlphaInputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 321
    .end local v0           #current:Lcom/nuance/xt9/input/XT9Keyboard;
    .end local v1           #currentShiftState:I
    :cond_2
    return-void

    .line 310
    .restart local v0       #current:Lcom/nuance/xt9/input/XT9Keyboard;
    .restart local v1       #currentShiftState:I
    :cond_3
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputMode:Ljava/lang/String;

    const-string v3, "ambig"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    const-string v2, "abc"

    iput-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputMode:Ljava/lang/String;

    .line 312
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/xt9/input/InputMethods$Layout;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/xt9/input/InputMethods$Layout;

    .line 313
    iget v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mTextEntryMode:I

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputMode:Ljava/lang/String;

    iget v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mLanguageId:I

    invoke-direct {p0, v2, v3, v4}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->createAlphaKeyboard(ILjava/lang/String;I)Lcom/nuance/xt9/input/XT9Keyboard;

    move-result-object v0

    .line 314
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mContext:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mTextEntryMode:I

    iget v4, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mImeOptions:I

    iget-boolean v5, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mPredictionOn:Z

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    goto :goto_0
.end method

.method public toggleShiftState()V
    .locals 3

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v1, v1, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    const/16 v2, 0x11e

    if-ne v1, v2, :cond_0

    .line 253
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/XT9Keyboard;->toggleShiftState()V

    .line 254
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/XT9Keyboard;->getCurrentShiftState()I

    move-result v0

    .line 255
    .local v0, currentShiftStatus:I
    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->setShiftState(I)V

    .line 257
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/xt9/input/KeyboardEx;->isShifted()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/AlphaInputView;->setShifted(Z)Z

    .line 268
    .end local v0           #currentShiftStatus:I
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/XT9Keyboard;->toggleShiftState()V

    .line 262
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->mInputView:Lcom/nuance/xt9/input/AlphaInputView;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/AlphaInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/xt9/input/KeyboardEx;->isShifted()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/AlphaInputView;->setShifted(Z)Z

    goto :goto_0

    .line 266
    :cond_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaKeyboardSwitcher;->toggleAltSymbolPage()V

    goto :goto_0
.end method
