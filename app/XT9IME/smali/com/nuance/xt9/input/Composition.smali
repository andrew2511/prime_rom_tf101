.class public Lcom/nuance/xt9/input/Composition;
.super Ljava/lang/Object;
.source "Composition.java"


# instance fields
.field private mEndSelection:I

.field private mInline:Landroid/text/SpannableStringBuilder;

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mStartSelection:I

.field private mUnderline:Landroid/text/style/UnderlineSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    .line 31
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/Composition;->mUnderline:Landroid/text/style/UnderlineSpan;

    .line 33
    return-void
.end method

.method private clearSelection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const-string v1, ""

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 142
    iput v2, p0, Lcom/nuance/xt9/input/Composition;->mEndSelection:I

    .line 143
    iput v2, p0, Lcom/nuance/xt9/input/Composition;->mStartSelection:I

    .line 144
    return-void
.end method

.method private clears()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 176
    iput v0, p0, Lcom/nuance/xt9/input/Composition;->mStartSelection:I

    .line 177
    iput v0, p0, Lcom/nuance/xt9/input/Composition;->mEndSelection:I

    .line 178
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 179
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 180
    return-void
.end method


# virtual methods
.method public acceptCurrentInline()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 66
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 68
    invoke-direct {p0}, Lcom/nuance/xt9/input/Composition;->clears()V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 73
    :cond_1
    return-void
.end method

.method public clearCurrentInline()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 79
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 80
    invoke-direct {p0}, Lcom/nuance/xt9/input/Composition;->clears()V

    .line 81
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 83
    :cond_0
    return-void
.end method

.method public deleteWordToLeftOfCursor()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 147
    iget-object v3, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_0

    .line 149
    iget v3, p0, Lcom/nuance/xt9/input/Composition;->mEndSelection:I

    iget v4, p0, Lcom/nuance/xt9/input/Composition;->mStartSelection:I

    if-eq v3, v4, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/nuance/xt9/input/Composition;->clearSelection()V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    const/16 v3, 0x40

    invoke-virtual {p0, v3, v5}, Lcom/nuance/xt9/input/Composition;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 155
    .local v2, seq:Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 158
    .local v0, deleteChars:I
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 159
    add-int/lit8 v0, v0, 0x1

    .line 170
    :cond_2
    iget-object v3, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v3, v0, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    .line 162
    :cond_3
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int v1, v3, v6

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 163
    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 166
    add-int/lit8 v0, v0, 0x1

    .line 162
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public deleteWordToRightOfCursor()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 113
    iget-object v3, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v3, :cond_0

    .line 114
    iget v3, p0, Lcom/nuance/xt9/input/Composition;->mEndSelection:I

    iget v4, p0, Lcom/nuance/xt9/input/Composition;->mStartSelection:I

    if-eq v3, v4, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/nuance/xt9/input/Composition;->clearSelection()V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const/16 v3, 0x40

    invoke-virtual {p0, v3, v5}, Lcom/nuance/xt9/input/Composition;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 120
    .local v2, seq:Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, deleteChars:I
    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 124
    add-int/lit8 v0, v0, 0x1

    .line 135
    :cond_2
    iget-object v3, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v3, v5, v0}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    .line 127
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 128
    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 131
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "n"
    .parameter "flags"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "n"
    .parameter "flags"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Composition;->clearCurrentInline()V

    .line 88
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 90
    :cond_0
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public setInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .locals 0
    .parameter "ic"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 42
    invoke-direct {p0}, Lcom/nuance/xt9/input/Composition;->clears()V

    .line 43
    return-void
.end method

.method public setSelection(II)V
    .locals 0
    .parameter "startSel"
    .parameter "endSel"

    .prologue
    .line 36
    iput p1, p0, Lcom/nuance/xt9/input/Composition;->mStartSelection:I

    .line 37
    iput p2, p0, Lcom/nuance/xt9/input/Composition;->mEndSelection:I

    .line 38
    return-void
.end method

.method public showInline(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "text"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 50
    invoke-direct {p0}, Lcom/nuance/xt9/input/Composition;->clears()V

    .line 52
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 54
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/nuance/xt9/input/Composition;->mUnderline:Landroid/text/style/UnderlineSpan;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/xt9/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x121

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 56
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v1, p0, Lcom/nuance/xt9/input/Composition;->mInline:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 58
    iget-object v0, p0, Lcom/nuance/xt9/input/Composition;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 60
    :cond_0
    return-void
.end method
