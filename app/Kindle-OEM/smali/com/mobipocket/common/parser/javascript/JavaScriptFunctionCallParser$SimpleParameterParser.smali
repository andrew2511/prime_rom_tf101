.class Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;
.super Ljava/lang/Object;
.source "JavaScriptFunctionCallParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleParameterParser"
.end annotation


# instance fields
.field private final COMMA_STATE:I

.field private final FIRST_APOSTROPHE_STATE:I

.field private final IDLE_STATE:I

.field private final NEXT_TO_COMMA_STATE:I

.field private final SECOND_APOSTROPHE_STATE:I

.field private final apostrophe:C

.field private final blankSpace:C

.field private final closingBracket:C

.field private final comma:C

.field private currentState:I

.field private nextState:I

.field private final openingBracket:C

.field private parametersList:Ljava/util/Vector;

.field private stringToParse:Ljava/lang/String;

.field final synthetic this$0:Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;


# direct methods
.method private constructor <init>(Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 16
    iput-object p1, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->this$0:Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->parametersList:Ljava/util/Vector;

    .line 21
    const/16 v0, 0x27

    iput-char v0, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->apostrophe:C

    .line 22
    const/16 v0, 0x28

    iput-char v0, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->openingBracket:C

    .line 23
    const/16 v0, 0x29

    iput-char v0, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->closingBracket:C

    .line 24
    const/16 v0, 0x20

    iput-char v0, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->blankSpace:C

    .line 25
    const/16 v0, 0x2c

    iput-char v0, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->comma:C

    .line 27
    iput v1, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->IDLE_STATE:I

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->FIRST_APOSTROPHE_STATE:I

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->SECOND_APOSTROPHE_STATE:I

    .line 30
    const/4 v0, 0x3

    iput v0, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->COMMA_STATE:I

    .line 31
    const/4 v0, 0x4

    iput v0, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->NEXT_TO_COMMA_STATE:I

    .line 33
    iput v1, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->currentState:I

    .line 34
    iput v1, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->nextState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;-><init>(Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->getParameterSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->getParams(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getParameterSize()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->parametersList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method private getParams(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->parametersList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private throwOneParameter(Ljava/lang/String;)V
    .locals 6
    .parameter "parameter"

    .prologue
    const/16 v5, 0x27

    const/4 v4, 0x1

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, beginPos:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 66
    .local v1, endPos:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    :goto_1
    if-lez v1, :cond_2

    sub-int v2, v1, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    sub-int v2, v1, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_2

    .line 73
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 75
    :cond_2
    if-le v1, v0, :cond_3

    .line 77
    iget-object v2, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->parametersList:Ljava/util/Vector;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 83
    :goto_2
    return-void

    .line 81
    :cond_3
    iget-object v2, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->parametersList:Ljava/util/Vector;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public parseParameters(Ljava/lang/String;)V
    .locals 10
    .parameter "parsingString"

    .prologue
    const/16 v9, 0x29

    const/16 v8, 0x20

    const/16 v7, 0x27

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 91
    const/4 v2, 0x0

    .line 92
    .local v2, position:I
    iput-object p1, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->stringToParse:Ljava/lang/String;

    .line 93
    iget-object v3, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->parametersList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    .line 94
    new-instance v0, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, buffer:Ljava/lang/String;
    iput v6, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->currentState:I

    .line 98
    :cond_0
    iget v3, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->currentState:I

    packed-switch v3, :pswitch_data_0

    .line 177
    :cond_1
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 178
    iget v3, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->nextState:I

    iput v3, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->currentState:I

    .line 180
    iget v3, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->currentState:I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->stringToParse:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 181
    :cond_2
    return-void

    .line 102
    :pswitch_0
    iget-object v3, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->stringToParse:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_1

    .line 103
    const/4 v3, 0x1

    iput v3, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->nextState:I

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v3, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->stringToParse:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 110
    .local v1, myChar:C
    if-ne v1, v7, :cond_3

    .line 112
    new-instance v0, Ljava/lang/String;

    .end local v0           #buffer:Ljava/lang/String;
    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 113
    .restart local v0       #buffer:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    iput v5, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->nextState:I

    goto :goto_0

    .line 116
    :cond_3
    if-ne v1, v9, :cond_1

    .line 118
    iput v6, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->nextState:I

    goto :goto_0

    .line 125
    .end local v1           #myChar:C
    :pswitch_2
    iget-object v3, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->stringToParse:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 126
    .restart local v1       #myChar:C
    if-ne v1, v7, :cond_4

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    const/4 v3, 0x3

    iput v3, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->nextState:I

    goto :goto_0

    .line 133
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    .end local v1           #myChar:C
    :pswitch_3
    iget-object v3, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->stringToParse:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 141
    .restart local v1       #myChar:C
    if-ne v1, v9, :cond_5

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->throwOneParameter(Ljava/lang/String;)V

    .line 144
    iput v6, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->nextState:I

    goto/16 :goto_0

    .line 146
    :cond_5
    const/16 v3, 0x2c

    if-ne v1, v3, :cond_6

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    const/4 v3, 0x4

    iput v3, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->nextState:I

    goto/16 :goto_0

    .line 151
    :cond_6
    if-eq v1, v8, :cond_1

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    iput v5, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->nextState:I

    goto/16 :goto_0

    .line 161
    .end local v1           #myChar:C
    :pswitch_4
    iget-object v3, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->stringToParse:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 162
    .restart local v1       #myChar:C
    if-ne v1, v7, :cond_7

    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->throwOneParameter(Ljava/lang/String;)V

    .line 165
    new-instance v0, Ljava/lang/String;

    .end local v0           #buffer:Ljava/lang/String;
    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 166
    .restart local v0       #buffer:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    iput v5, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->nextState:I

    goto/16 :goto_0

    .line 169
    :cond_7
    if-eq v1, v8, :cond_1

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    iput v5, p0, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser$SimpleParameterParser;->nextState:I

    goto/16 :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
