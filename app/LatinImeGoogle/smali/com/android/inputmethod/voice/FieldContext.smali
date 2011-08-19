.class public Lcom/android/inputmethod/voice/FieldContext;
.super Ljava/lang/Object;
.source "FieldContext.java"


# instance fields
.field mFieldInfo:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "conn"
    .parameter "info"
    .parameter "selectedLanguage"
    .parameter "enabledLanguages"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    .line 49
    iget-object v0, p0, Lcom/android/inputmethod/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    invoke-static {p2, v0}, Lcom/android/inputmethod/voice/FieldContext;->addEditorInfoToBundle(Landroid/view/inputmethod/EditorInfo;Landroid/os/Bundle;)V

    .line 50
    iget-object v0, p0, Lcom/android/inputmethod/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lcom/android/inputmethod/voice/FieldContext;->addInputConnectionToBundle(Landroid/view/inputmethod/InputConnection;Landroid/os/Bundle;)V

    .line 51
    iget-object v0, p0, Lcom/android/inputmethod/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    invoke-static {p3, p4, v0}, Lcom/android/inputmethod/voice/FieldContext;->addLanguageInfoToBundle(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method private static addEditorInfoToBundle(Landroid/view/inputmethod/EditorInfo;Landroid/os/Bundle;)V
    .locals 2
    .parameter "info"
    .parameter "bundle"

    .prologue
    .line 63
    if-nez p0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v0, "label"

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/android/inputmethod/voice/FieldContext;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "hint"

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/android/inputmethod/voice/FieldContext;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "packageName"

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/inputmethod/voice/FieldContext;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "fieldId"

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    const-string v0, "fieldName"

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/inputmethod/voice/FieldContext;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "inputType"

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const-string v0, "imeOptions"

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static addInputConnectionToBundle(Landroid/view/inputmethod/InputConnection;Landroid/os/Bundle;)V
    .locals 4
    .parameter "conn"
    .parameter "bundle"

    .prologue
    const/4 v3, 0x0

    .line 79
    if-nez p0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {p0, v1, v3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 84
    .local v0, et:Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    .line 87
    const-string v1, "singleLine"

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private static addLanguageInfoToBundle(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "selectedLanguage"
    .parameter "enabledLanguages"
    .parameter "bundle"

    .prologue
    .line 92
    const-string v0, "selectedLanguage"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "enabledLanguages"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private static safeToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "o"

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    const-string v0, ""

    .line 59
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/inputmethod/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/inputmethod/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
