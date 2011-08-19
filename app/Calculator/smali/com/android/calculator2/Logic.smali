.class Lcom/android/calculator2/Logic;
.super Ljava/lang/Object;
.source "Logic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/Logic$Listener;
    }
.end annotation


# instance fields
.field private mDeleteMode:I

.field private mDisplay:Lcom/android/calculator2/CalculatorDisplay;

.field private final mErrorString:Ljava/lang/String;

.field private mHistory:Lcom/android/calculator2/History;

.field private mIsError:Z

.field private mLineLength:I

.field private mListener:Lcom/android/calculator2/Logic$Listener;

.field private mResult:Ljava/lang/String;

.field private mSymbols:Lorg/javia/arity/Symbols;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/calculator2/History;Lcom/android/calculator2/CalculatorDisplay;)V
    .locals 2
    .parameter "context"
    .parameter "history"
    .parameter "display"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/javia/arity/Symbols;

    invoke-direct {v0}, Lorg/javia/arity/Symbols;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/Logic;->mSymbols:Lorg/javia/arity/Symbols;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 35
    iput v1, p0, Lcom/android/calculator2/Logic;->mLineLength:I

    .line 53
    iput v1, p0, Lcom/android/calculator2/Logic;->mDeleteMode:I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/Logic;->mErrorString:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    .line 64
    iput-object p3, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    .line 65
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v0, p0}, Lcom/android/calculator2/CalculatorDisplay;->setLogic(Lcom/android/calculator2/Logic;)V

    .line 66
    return-void
.end method

.method private clear(Z)V
    .locals 3
    .parameter "scroll"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/calculator2/History;->enter(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    const-string v1, ""

    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/calculator2/Logic;->cleared()V

    .line 129
    return-void

    .line 127
    :cond_0
    sget-object v2, Lcom/android/calculator2/CalculatorDisplay$Scroll;->NONE:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    goto :goto_0
.end method

.method private clearWithHistory(Z)V
    .locals 3
    .parameter "scroll"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1}, Lcom/android/calculator2/History;->getText()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, text:Ljava/lang/String;
    const-string v1, "?"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1}, Lcom/android/calculator2/History;->moveToPrevious()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    const-string v0, ""

    .line 116
    :goto_0
    sget-object v1, Lcom/android/calculator2/CalculatorDisplay$Scroll;->NONE:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    invoke-virtual {p0, v0, v1}, Lcom/android/calculator2/Logic;->evaluateAndShowResult(Ljava/lang/String;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 123
    :goto_1
    return-void

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1}, Lcom/android/calculator2/History;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_1
    const-string v1, ""

    iput-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    if-eqz p1, :cond_2

    sget-object v2, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    :goto_2
    invoke-virtual {v1, v0, v2}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 121
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    goto :goto_1

    .line 119
    :cond_2
    sget-object v2, Lcom/android/calculator2/CalculatorDisplay$Scroll;->NONE:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    goto :goto_2
.end method

.method private getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorDisplay;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static isOperator(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 291
    const-string v0, "+-\u2212\u00d7\u00f7/*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isOperator(Ljava/lang/String;)Z
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 286
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/calculator2/Logic;->isOperator(C)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private tryFormattingWithPrecision(DI)Ljava/lang/String;
    .locals 12
    .parameter "value"
    .parameter "precision"

    .prologue
    const/16 v11, 0x65

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 242
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/calculator2/Logic;->mLineLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "g"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, result:Ljava/lang/String;
    const-string v5, "NaN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 244
    iput-boolean v8, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 245
    iget-object v5, p0, Lcom/android/calculator2/Logic;->mErrorString:Ljava/lang/String;

    .line 282
    :goto_0
    return-object v5

    .line 247
    :cond_0
    move-object v2, v4

    .line 248
    .local v2, mantissa:Ljava/lang/String;
    const/4 v1, 0x0

    .line 249
    .local v1, exponent:Ljava/lang/String;
    invoke-virtual {v4, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 250
    .local v0, e:I
    if-eq v0, v10, :cond_3

    .line 251
    invoke-virtual {v4, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 254
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    const-string v5, "+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 256
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 258
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 263
    :goto_1
    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 264
    .local v3, period:I
    if-ne v3, v10, :cond_2

    .line 265
    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 267
    :cond_2
    if-eq v3, v10, :cond_5

    .line 269
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 270
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-virtual {v2, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 260
    .end local v3           #period:I
    :cond_3
    move-object v2, v4

    goto :goto_1

    .line 272
    .restart local v3       #period:I
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    if-ne v5, v6, :cond_5

    .line 273
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-virtual {v2, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 277
    :cond_5
    if-eqz v1, :cond_6

    .line 278
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    move-object v5, v4

    .line 282
    goto :goto_0

    .line 280
    :cond_6
    move-object v4, v2

    goto :goto_3
.end method


# virtual methods
.method acceptInsert(Ljava/lang/String;)Z
    .locals 3
    .parameter "delta"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, text:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/calculator2/Logic;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorDisplay;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method cleared()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    .line 133
    iput-boolean v1, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 134
    invoke-virtual {p0}, Lcom/android/calculator2/Logic;->updateHistory()V

    .line 136
    invoke-virtual {p0, v1}, Lcom/android/calculator2/Logic;->setDeleteMode(I)V

    .line 137
    return-void
.end method

.method eatHorizontalMove(Z)Z
    .locals 5
    .parameter "toLeft"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorDisplay;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 89
    .local v1, editText:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 90
    .local v0, cursorPos:I
    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    move v2, v4

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lt v0, v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method evaluate(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 217
    const-string v5, ""

    .line 236
    :goto_0
    return-object v5

    .line 221
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 222
    .local v2, size:I
    :goto_1
    if-lez v2, :cond_1

    sub-int v5, v2, v7

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/calculator2/Logic;->isOperator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 223
    const/4 v5, 0x0

    sub-int v6, v2, v7

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 224
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 227
    :cond_1
    iget-object v5, p0, Lcom/android/calculator2/Logic;->mSymbols:Lorg/javia/arity/Symbols;

    invoke-virtual {v5, p1}, Lorg/javia/arity/Symbols;->eval(Ljava/lang/String;)D

    move-result-wide v3

    .line 229
    .local v3, value:D
    const-string v1, ""

    .line 230
    .local v1, result:Ljava/lang/String;
    iget v0, p0, Lcom/android/calculator2/Logic;->mLineLength:I

    .local v0, precision:I
    :goto_2
    const/4 v5, 0x6

    if-le v0, v5, :cond_2

    .line 231
    invoke-direct {p0, v3, v4, v0}, Lcom/android/calculator2/Logic;->tryFormattingWithPrecision(DI)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/android/calculator2/Logic;->mLineLength:I

    if-gt v5, v6, :cond_3

    .line 236
    :cond_2
    const/16 v5, 0x2d

    const/16 v6, 0x2212

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Infinity"

    const-string v7, "\u221e"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 230
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public evaluateAndShowResult(Ljava/lang/String;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V
    .locals 5
    .parameter "text"
    .parameter "scroll"

    .prologue
    const/4 v4, 0x1

    .line 170
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/calculator2/Logic;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v2, p1}, Lcom/android/calculator2/History;->enter(Ljava/lang/String;)V

    .line 173
    iput-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    .line 174
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    iget-object v3, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 175
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/calculator2/Logic;->setDeleteMode(I)V
    :try_end_0
    .catch Lorg/javia/arity/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v1           #result:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 178
    .local v0, e:Lorg/javia/arity/SyntaxException;
    iput-boolean v4, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 179
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mErrorString:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    .line 180
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    iget-object v3, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 181
    invoke-virtual {p0, v4}, Lcom/android/calculator2/Logic;->setDeleteMode(I)V

    goto :goto_0
.end method

.method public getDeleteMode()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/android/calculator2/Logic;->mDeleteMode:I

    return v0
.end method

.method insert(Ljava/lang/String;)V
    .locals 1
    .parameter "delta"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v0, p1}, Lcom/android/calculator2/CalculatorDisplay;->insert(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calculator2/Logic;->setDeleteMode(I)V

    .line 100
    return-void
.end method

.method onClear()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 157
    iget v0, p0, Lcom/android/calculator2/Logic;->mDeleteMode:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/calculator2/Logic;->clear(Z)V

    .line 158
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onDelete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 148
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/calculator2/Logic;->clear(Z)V

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v2, 0x43

    invoke-direct {v1, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/calculator2/CalculatorDisplay;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 152
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    goto :goto_0
.end method

.method onDown()V
    .locals 4

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1, v0}, Lcom/android/calculator2/History;->update(Ljava/lang/String;)V

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1}, Lcom/android/calculator2/History;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    iget-object v2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v2}, Lcom/android/calculator2/History;->getText()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    invoke-virtual {v1, v2, v3}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 203
    :cond_1
    return-void
.end method

.method onEnter()V
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lcom/android/calculator2/Logic;->mDeleteMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calculator2/Logic;->clearWithHistory(Z)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    invoke-virtual {p0, v0, v1}, Lcom/android/calculator2/Logic;->evaluateAndShowResult(Ljava/lang/String;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    goto :goto_0
.end method

.method onUp()V
    .locals 4

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1, v0}, Lcom/android/calculator2/History;->update(Ljava/lang/String;)V

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1}, Lcom/android/calculator2/History;->moveToPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    iget-object v2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v2}, Lcom/android/calculator2/History;->getText()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/calculator2/CalculatorDisplay$Scroll;->DOWN:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    invoke-virtual {v1, v2, v3}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 193
    :cond_1
    return-void
.end method

.method public resumeWithHistory()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calculator2/Logic;->clearWithHistory(Z)V

    .line 104
    return-void
.end method

.method public setDeleteMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/calculator2/Logic;->mDeleteMode:I

    if-eq v0, p1, :cond_0

    .line 74
    iput p1, p0, Lcom/android/calculator2/Logic;->mDeleteMode:I

    .line 75
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mListener:Lcom/android/calculator2/Logic$Listener;

    invoke-interface {v0}, Lcom/android/calculator2/Logic$Listener;->onDeleteModeChange()V

    .line 77
    :cond_0
    return-void
.end method

.method setLineLength(I)V
    .locals 0
    .parameter "nDigits"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/calculator2/Logic;->mLineLength:I

    .line 85
    return-void
.end method

.method public setListener(Lcom/android/calculator2/Logic$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/calculator2/Logic;->mListener:Lcom/android/calculator2/Logic$Listener;

    .line 70
    return-void
.end method

.method updateHistory()V
    .locals 3

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Lcom/android/calculator2/History;->update(Ljava/lang/String;)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/calculator2/History;->update(Ljava/lang/String;)V

    goto :goto_0
.end method
