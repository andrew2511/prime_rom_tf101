.class public Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;
.super Ljava/lang/Object;
.source "JavaScriptFunctionCallParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$1;,
        Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;
    }
.end annotation


# instance fields
.field private function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

.field private localParser:Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;

    invoke-direct {v0, p0, v1}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;-><init>(Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$1;)V

    iput-object v0, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->localParser:Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;

    .line 11
    iput-object v1, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "stringToParse"

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;

    invoke-direct {v0, p0, v1}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;-><init>(Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$1;)V

    iput-object v0, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->localParser:Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;

    .line 11
    iput-object v1, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    .line 196
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->evaluateString(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method private getParams(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 250
    const-string v0, ""

    .line 251
    .local v0, ret:Ljava/lang/String;
    iget-object v1, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->localParser:Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;

    invoke-static {v1}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->access$100(Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;)I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->localParser:Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;

    invoke-static {v1, p1}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->access$200(Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;I)Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_0
    return-object v0
.end method


# virtual methods
.method public evaluateString(Ljava/lang/String;)V
    .locals 11
    .parameter "functionCallString"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 205
    const/16 v5, 0x28

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 206
    .local v3, openingBracketIndex:I
    const/16 v5, 0x29

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 207
    .local v0, closingBracketIndex:I
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    .line 208
    if-lez v3, :cond_1

    if-le v0, v3, :cond_1

    .line 210
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, methodName:Ljava/lang/String;
    const-string v1, "window."

    .line 213
    .local v1, jsSubString:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 214
    .local v4, subStringIdx:I
    if-ltz v4, :cond_0

    .line 216
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 218
    :cond_0
    iget-object v5, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->localParser:Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->parseParameters(Ljava/lang/String;)V

    .line 220
    const-string v5, "index_search"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 222
    new-instance v5, Lcom/mobipocket/common/parser/javascript/IndexSearchFunction;

    invoke-direct {p0, v7}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->getParams(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v8}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->getParams(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/mobipocket/common/parser/javascript/IndexSearchFunction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    .line 241
    .end local v1           #jsSubString:Ljava/lang/String;
    .end local v2           #methodName:Ljava/lang/String;
    .end local v4           #subStringIdx:I
    :cond_1
    :goto_0
    return-void

    .line 224
    .restart local v1       #jsSubString:Ljava/lang/String;
    .restart local v2       #methodName:Ljava/lang/String;
    .restart local v4       #subStringIdx:I
    :cond_2
    const-string v5, "filtered_index_search"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 226
    new-instance v5, Lcom/mobipocket/common/parser/javascript/FilteredIndexSearchFunction;

    invoke-direct {p0, v7}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->getParams(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v8}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->getParams(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v9}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->getParams(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v10}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->getParams(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/mobipocket/common/parser/javascript/FilteredIndexSearchFunction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    goto :goto_0

    .line 228
    :cond_3
    const-string v5, "cond_index_search"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 230
    new-instance v5, Lcom/mobipocket/common/parser/javascript/CondIndexSearchFunction;

    invoke-direct {p0, v7}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->getParams(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v8}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->getParams(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v9}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->getParams(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v10}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->getParams(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/mobipocket/common/parser/javascript/CondIndexSearchFunction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    goto :goto_0

    .line 232
    :cond_4
    const-string v5, "dial"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 234
    new-instance v5, Lcom/mobipocket/common/parser/javascript/DialFunction;

    invoke-direct {p0, v7}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->getParams(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/mobipocket/common/parser/javascript/DialFunction;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    goto :goto_0

    .line 236
    :cond_5
    const-string v5, "history.back"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 238
    new-instance v5, Lcom/mobipocket/common/parser/javascript/HistoryBackFunction;

    invoke-direct {v5}, Lcom/mobipocket/common/parser/javascript/HistoryBackFunction;-><init>()V

    iput-object v5, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    goto :goto_0
.end method

.method public getJavaScriptFunction()Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->function:Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    return-object v0
.end method
