.class public Lcom/nuance/xt9/input/InputFieldInfo;
.super Ljava/lang/Object;
.source "InputFieldInfo.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mAttribute:Landroid/view/inputmethod/EditorInfo;

.field mIME:Lcom/nuance/xt9/input/IME;

.field private mSuggestionEnabledInAlphabetic:Z

.field private mSuggestionEnabledInCKJ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "InputFieldInfo"

    sput-object v0, Lcom/nuance/xt9/input/InputFieldInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public countEnabledLanguageMode()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mIME:Lcom/nuance/xt9/input/IME;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mIME:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/IME;->countEnabledLanguageMode()I

    move-result v0

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    return v0
.end method

.method public getInputClass()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    return v0
.end method

.method public getInputVariant()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v0, 0xff0

    return v0
.end method

.method public isDateTimeField()Z
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->getInputClass()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmailAddressField()Z
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0xd0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInputTextClass()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->getInputClass()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInputTypeNull()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNameField()Z
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0x60

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumberField()Z
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->getInputClass()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPasswordField()Z
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0x90

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneNumberField()Z
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->getInputClass()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSearchField()Z
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0xb0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShortMessageField()Z
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuggestionEnabledInAlphabetic()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mSuggestionEnabledInAlphabetic:Z

    return v0
.end method

.method public isSuggestionEnabledInCKJ()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mSuggestionEnabledInCKJ:Z

    return v0
.end method

.method public isUDBChineseSimplifyField()Z
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v1, "xt9.com.nuance.udbeditor.chinese.simplify.udb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUDBChineseTraditionalField()Z
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v1, "xt9.com.nuance.udbeditor.chinese.traditional.udb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUDBSubstitutionField()Z
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v1, "xt9.com.nuance.udbeditor.alpha.substitution"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isURLField()Z
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->isInputTextClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->getInputVariant()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAttribute(Landroid/view/inputmethod/EditorInfo;Lcom/nuance/xt9/input/IME;)V
    .locals 3
    .parameter "attribute"
    .parameter "ime"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 21
    iput-object p1, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 22
    iput-object p2, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mIME:Lcom/nuance/xt9/input/IME;

    .line 25
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->isInputTypeNull()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->isDateTimeField()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->isNumberField()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->isURLField()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mSuggestionEnabledInAlphabetic:Z

    .line 31
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->isDateTimeField()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->isNumberField()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mSuggestionEnabledInCKJ:Z

    .line 36
    iget-object v0, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 40
    :cond_0
    const-string v0, "TextType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TextType = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->getInputVariant()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void

    :cond_1
    move v0, v1

    .line 25
    goto :goto_0

    :cond_2
    move v0, v1

    .line 31
    goto :goto_1
.end method

.method public suggestionCompletionEnabled()Z
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mIME:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/IME;->isFullscreenMode()Z

    move-result v0

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public textInputFieldWithSuggestionEnabled()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 95
    iget-object v5, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mIME:Lcom/nuance/xt9/input/IME;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/xt9/input/InputFieldInfo;->mIME:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v5}, Lcom/nuance/xt9/input/IME;->getInputMethods()Lcom/nuance/xt9/input/InputMethods;

    move-result-object v5

    move-object v2, v5

    .line 96
    .local v2, inputMethods:Lcom/nuance/xt9/input/InputMethods;
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v5

    move-object v0, v5

    .line 98
    .local v0, currentLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    :goto_1
    if-eqz v0, :cond_2

    iget v5, v0, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    move v1, v5

    .line 100
    .local v1, currentLanguageId:I
    :goto_2
    invoke-static {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->isCKJ(I)Z

    move-result v4

    .line 101
    .local v4, isCKJ:Z
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isAlphaInputMode()Z

    move-result v5

    move v3, v5

    .line 104
    .local v3, isAlphaInputMode:Z
    :goto_3
    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    .line 105
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->isSuggestionEnabledInCKJ()Z

    move-result v5

    .line 107
    :goto_4
    return v5

    .end local v0           #currentLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    .end local v1           #currentLanguageId:I
    .end local v2           #inputMethods:Lcom/nuance/xt9/input/InputMethods;
    .end local v3           #isAlphaInputMode:Z
    .end local v4           #isCKJ:Z
    :cond_0
    move-object v2, v7

    .line 95
    goto :goto_0

    .restart local v2       #inputMethods:Lcom/nuance/xt9/input/InputMethods;
    :cond_1
    move-object v0, v7

    .line 96
    goto :goto_1

    .restart local v0       #currentLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_2
    move v1, v6

    .line 98
    goto :goto_2

    .restart local v1       #currentLanguageId:I
    .restart local v4       #isCKJ:Z
    :cond_3
    move v3, v6

    .line 101
    goto :goto_3

    .line 107
    .restart local v3       #isAlphaInputMode:Z
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputFieldInfo;->isSuggestionEnabledInAlphabetic()Z

    move-result v5

    goto :goto_4
.end method
