.class public Lcom/android/inputmethod/keyboard/PopupCharactersParser;
.super Ljava/lang/Object;
.source "PopupCharactersParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/PopupCharactersParser$PopupCharactersParserError;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static getCode(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 7
    .parameter "res"
    .parameter "popupSpec"

    .prologue
    const/4 v6, 0x0

    .line 135
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->hasCode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    invoke-static {p1, v6}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v1

    .line 137
    .local v1, end:I
    add-int/lit8 v4, v1, 0x1

    invoke-static {p1, v4}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_0

    .line 138
    new-instance v4, Lcom/android/inputmethod/keyboard/PopupCharactersParser$PopupCharactersParserError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Multiple |: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/inputmethod/keyboard/PopupCharactersParser$PopupCharactersParserError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 139
    :cond_0
    const-string v4, "|"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    const-string v5, "@"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->getResourceId(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v3

    .line 141
    .local v3, resId:I
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .local v0, code:I
    move v4, v0

    .line 150
    .end local v0           #code:I
    .end local v1           #end:I
    .end local v3           #resId:I
    :goto_0
    return v4

    .line 144
    :cond_1
    invoke-static {p1, v6}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_2

    move v4, v6

    .line 145
    goto :goto_0

    .line 146
    :cond_2
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, label:Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 149
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_0

    :cond_3
    move v4, v6

    .line 150
    goto :goto_0
.end method

.method public static getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "res"
    .parameter "popupSpec"

    .prologue
    .line 154
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->hasIcon(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    const-string v2, "|"

    const-string v3, "@drawable/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 156
    .local v0, end:I
    const-string v2, "@"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->getResourceId(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v1

    .line 157
    .local v1, resId:I
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 159
    .end local v0           #end:I
    .end local v1           #resId:I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "popupSpec"

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->hasIcon(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    const/4 v2, 0x0

    .line 109
    :goto_0
    return-object v2

    .line 104
    :cond_0
    invoke-static {p0, v3}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v0

    .line 105
    .local v0, end:I
    if-lez v0, :cond_1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->parseEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 107
    .local v1, label:Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    new-instance v2, Lcom/android/inputmethod/keyboard/PopupCharactersParser$PopupCharactersParserError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/inputmethod/keyboard/PopupCharactersParser$PopupCharactersParserError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    .end local v1           #label:Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->parseEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_1

    .restart local v1       #label:Ljava/lang/String;
    :cond_2
    move-object v2, v1

    .line 109
    goto :goto_0
.end method

.method public static getOutputText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "popupSpec"

    .prologue
    const/4 v5, 0x0

    .line 113
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->hasCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v5

    .line 131
    :goto_0
    return-object v3

    .line 115
    :cond_0
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v0

    .line 116
    .local v0, end:I
    if-lez v0, :cond_3

    .line 117
    add-int/lit8 v3, v0, 0x1

    invoke-static {p0, v3}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_1

    .line 118
    new-instance v3, Lcom/android/inputmethod/keyboard/PopupCharactersParser$PopupCharactersParserError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multiple |: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/inputmethod/keyboard/PopupCharactersParser$PopupCharactersParserError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 120
    :cond_1
    const-string v3, "|"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->parseEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, outputText:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v2

    .line 122
    goto :goto_0

    .line 123
    :cond_2
    new-instance v3, Lcom/android/inputmethod/keyboard/PopupCharactersParser$PopupCharactersParserError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Empty outputText: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/inputmethod/keyboard/PopupCharactersParser$PopupCharactersParserError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 125
    .end local v2           #outputText:Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, label:Ljava/lang/String;
    if-nez v1, :cond_4

    .line 127
    new-instance v3, Lcom/android/inputmethod/keyboard/PopupCharactersParser$PopupCharactersParserError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Empty label: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/inputmethod/keyboard/PopupCharactersParser$PopupCharactersParserError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 129
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    move-object v3, v5

    .line 130
    goto :goto_0

    :cond_5
    move-object v3, v1

    .line 131
    goto/16 :goto_0
.end method

.method private static getResourceId(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 5
    .parameter "res"
    .parameter "name"

    .prologue
    .line 163
    const v2, 0x7f0c0040

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 165
    .local v1, resId:I
    if-nez v1, :cond_0

    .line 166
    new-instance v2, Lcom/android/inputmethod/keyboard/PopupCharactersParser$PopupCharactersParserError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/inputmethod/keyboard/PopupCharactersParser$PopupCharactersParserError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_0
    return v1
.end method

.method private static hasCode(Ljava/lang/String;)Z
    .locals 4
    .parameter "popupSpec"

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-static {p0, v3}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v0

    .line 59
    .local v0, end:I
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "@integer/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const/4 v1, 0x1

    .line 63
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private static hasIcon(Ljava/lang/String;)Z
    .locals 4
    .parameter "popupSpec"

    .prologue
    const/4 v2, 0x0

    .line 48
    const-string v1, "@drawable/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    invoke-static {p0, v2}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->indexOfLabelEnd(Ljava/lang/String;I)I

    move-result v0

    .line 50
    .local v0, end:I
    if-lez v0, :cond_0

    .line 51
    const/4 v1, 0x1

    .line 54
    .end local v0           #end:I
    :goto_0
    return v1

    .line 52
    .restart local v0       #end:I
    :cond_0
    new-instance v1, Lcom/android/inputmethod/keyboard/PopupCharactersParser$PopupCharactersParserError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "outputText or code not specified: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/inputmethod/keyboard/PopupCharactersParser$PopupCharactersParserError;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #end:I
    :cond_1
    move v1, v2

    .line 54
    goto :goto_0
.end method

.method private static indexOfLabelEnd(Ljava/lang/String;I)I
    .locals 7
    .parameter "popupSpec"
    .parameter "start"

    .prologue
    const/16 v5, 0x5c

    .line 83
    invoke-virtual {p0, v5, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-gez v4, :cond_1

    .line 84
    const-string v4, "|"

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 85
    .local v1, end:I
    if-nez v1, :cond_0

    .line 86
    new-instance v4, Lcom/android/inputmethod/keyboard/PopupCharactersParser$PopupCharactersParserError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "| at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/inputmethod/keyboard/PopupCharactersParser$PopupCharactersParserError;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move v4, v1

    .line 98
    .end local v1           #end:I
    :goto_0
    return v4

    .line 89
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 90
    .local v2, length:I
    move v3, p1

    .local v3, pos:I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 91
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 92
    .local v0, c:C
    if-ne v0, v5, :cond_3

    add-int/lit8 v4, v3, 0x1

    if-ge v4, v2, :cond_3

    .line 93
    add-int/lit8 v3, v3, 0x1

    .line 90
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 94
    :cond_3
    const-string v4, "|"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v3

    .line 95
    goto :goto_0

    .line 98
    .end local v0           #c:C
    :cond_4
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private static parseEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "text"

    .prologue
    const/16 v5, 0x5c

    .line 67
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    move-object v4, p0

    .line 79
    :goto_0
    return-object v4

    .line 69
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 70
    .local v1, length:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, pos:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 72
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 73
    .local v0, c:C
    if-ne v0, v5, :cond_1

    add-int/lit8 v4, v2, 0x1

    if-ge v4, v1, :cond_1

    .line 74
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 79
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
