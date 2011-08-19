.class Lorg/javia/arity/RPN;
.super Lorg/javia/arity/TokenConsumer;
.source "RPN.java"


# instance fields
.field consumer:Lorg/javia/arity/TokenConsumer;

.field exception:Lorg/javia/arity/SyntaxException;

.field prevTokenId:I

.field stack:Ljava/util/Stack;


# direct methods
.method constructor <init>(Lorg/javia/arity/SyntaxException;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/javia/arity/TokenConsumer;-><init>()V

    .line 29
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    .line 35
    iput-object p1, p0, Lorg/javia/arity/RPN;->exception:Lorg/javia/arity/SyntaxException;

    .line 36
    return-void
.end method

.method static final isOperand(I)Z
    .locals 1
    .parameter

    .prologue
    .line 64
    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x11

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private popHigher(I)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/javia/arity/RPN;->top()Lorg/javia/arity/Token;

    move-result-object v0

    .line 55
    :goto_0
    if-eqz v0, :cond_0

    iget v1, v0, Lorg/javia/arity/Token;->priority:I

    if-lt v1, p1, :cond_0

    .line 56
    iget-object v1, p0, Lorg/javia/arity/RPN;->consumer:Lorg/javia/arity/TokenConsumer;

    invoke-virtual {v1, v0}, Lorg/javia/arity/TokenConsumer;->push(Lorg/javia/arity/Token;)V

    .line 58
    iget-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 59
    invoke-direct {p0}, Lorg/javia/arity/RPN;->top()Lorg/javia/arity/Token;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method private top()Lorg/javia/arity/Token;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/javia/arity/Token;

    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method push(Lorg/javia/arity/Token;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x1

    .line 73
    iget v0, p1, Lorg/javia/arity/Token;->priority:I

    .line 74
    iget v1, p1, Lorg/javia/arity/Token;->id:I

    .line 75
    packed-switch v1, :pswitch_data_0

    .line 128
    :pswitch_0
    iget v2, p1, Lorg/javia/arity/Token;->assoc:I

    if-ne v2, v3, :cond_b

    .line 129
    iget v0, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    invoke-static {v0}, Lorg/javia/arity/RPN;->isOperand(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_MUL:Lorg/javia/arity/Token;

    invoke-virtual {p0, v0}, Lorg/javia/arity/RPN;->push(Lorg/javia/arity/Token;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    .line 150
    :goto_0
    iget v0, v0, Lorg/javia/arity/Token;->id:I

    iput v0, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    .line 151
    :cond_1
    return-void

    .line 78
    :pswitch_1
    iget v0, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    invoke-static {v0}, Lorg/javia/arity/RPN;->isOperand(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_MUL:Lorg/javia/arity/Token;

    invoke-virtual {p0, v0}, Lorg/javia/arity/RPN;->push(Lorg/javia/arity/Token;)V

    .line 81
    :cond_2
    iget-object v0, p0, Lorg/javia/arity/RPN;->consumer:Lorg/javia/arity/TokenConsumer;

    invoke-virtual {v0, p1}, Lorg/javia/arity/TokenConsumer;->push(Lorg/javia/arity/Token;)V

    move-object v0, p1

    .line 82
    goto :goto_0

    .line 85
    :pswitch_2
    iget v1, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    if-ne v1, v4, :cond_5

    .line 86
    invoke-direct {p0}, Lorg/javia/arity/RPN;->top()Lorg/javia/arity/Token;

    move-result-object v1

    iget v2, v1, Lorg/javia/arity/Token;->arity:I

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/javia/arity/Token;->arity:I

    .line 91
    :cond_3
    invoke-direct {p0, v0}, Lorg/javia/arity/RPN;->popHigher(I)V

    .line 92
    invoke-direct {p0}, Lorg/javia/arity/RPN;->top()Lorg/javia/arity/Token;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_e

    .line 94
    iget v1, v0, Lorg/javia/arity/Token;->id:I

    if-ne v1, v4, :cond_6

    .line 95
    iget-object v1, p0, Lorg/javia/arity/RPN;->consumer:Lorg/javia/arity/TokenConsumer;

    invoke-virtual {v1, v0}, Lorg/javia/arity/TokenConsumer;->push(Lorg/javia/arity/Token;)V

    .line 99
    :cond_4
    iget-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-object v0, p1

    goto :goto_0

    .line 87
    :cond_5
    iget v1, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    invoke-static {v1}, Lorg/javia/arity/RPN;->isOperand(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 88
    iget-object v0, p0, Lorg/javia/arity/RPN;->exception:Lorg/javia/arity/SyntaxException;

    const-string v1, "unexpected ) or END"

    iget v2, p1, Lorg/javia/arity/Token;->position:I

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 96
    :cond_6
    sget-object v1, Lorg/javia/arity/Lexer;->TOK_LPAREN:Lorg/javia/arity/Token;

    if-eq v0, v1, :cond_4

    .line 97
    iget-object v0, p0, Lorg/javia/arity/RPN;->exception:Lorg/javia/arity/SyntaxException;

    const-string v1, "expected LPAREN or CALL"

    iget v2, p1, Lorg/javia/arity/Token;->position:I

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 105
    :pswitch_3
    iget v1, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    invoke-static {v1}, Lorg/javia/arity/RPN;->isOperand(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 106
    iget-object v0, p0, Lorg/javia/arity/RPN;->exception:Lorg/javia/arity/SyntaxException;

    const-string v1, "misplaced COMMA"

    iget v2, p1, Lorg/javia/arity/Token;->position:I

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 108
    :cond_7
    invoke-direct {p0, v0}, Lorg/javia/arity/RPN;->popHigher(I)V

    .line 109
    invoke-direct {p0}, Lorg/javia/arity/RPN;->top()Lorg/javia/arity/Token;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_8

    iget v1, v0, Lorg/javia/arity/Token;->id:I

    if-eq v1, v4, :cond_9

    .line 111
    :cond_8
    iget-object v0, p0, Lorg/javia/arity/RPN;->exception:Lorg/javia/arity/SyntaxException;

    const-string v1, "COMMA not inside CALL"

    iget v2, p1, Lorg/javia/arity/Token;->position:I

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 113
    :cond_9
    iget v1, v0, Lorg/javia/arity/Token;->arity:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/javia/arity/Token;->arity:I

    move-object v0, p1

    .line 115
    goto/16 :goto_0

    .line 119
    :pswitch_4
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_RPAREN:Lorg/javia/arity/Token;

    .line 120
    iget v1, p1, Lorg/javia/arity/Token;->position:I

    iput v1, v0, Lorg/javia/arity/Token;->position:I

    .line 122
    :cond_a
    invoke-virtual {p0, v0}, Lorg/javia/arity/RPN;->push(Lorg/javia/arity/Token;)V

    .line 123
    invoke-direct {p0}, Lorg/javia/arity/RPN;->top()Lorg/javia/arity/Token;

    move-result-object v1

    if-nez v1, :cond_a

    move-object v0, p1

    .line 124
    goto/16 :goto_0

    .line 135
    :cond_b
    iget v2, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    invoke-static {v2}, Lorg/javia/arity/RPN;->isOperand(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 136
    const/4 v0, 0x2

    if-ne v1, v0, :cond_c

    .line 138
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_UMIN:Lorg/javia/arity/Token;

    .line 139
    iget-object v1, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 141
    :cond_c
    if-eq v1, v3, :cond_1

    .line 145
    iget-object v0, p0, Lorg/javia/arity/RPN;->exception:Lorg/javia/arity/SyntaxException;

    const-string v1, "operator without operand"

    iget v2, p1, Lorg/javia/arity/Token;->position:I

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 147
    :cond_d
    iget v1, p1, Lorg/javia/arity/Token;->assoc:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_f

    move v1, v3

    :goto_1
    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/javia/arity/RPN;->popHigher(I)V

    .line 148
    iget-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    move-object v0, p1

    goto/16 :goto_0

    .line 147
    :cond_f
    const/4 v1, 0x0

    goto :goto_1

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method setConsumer(Lorg/javia/arity/TokenConsumer;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lorg/javia/arity/RPN;->consumer:Lorg/javia/arity/TokenConsumer;

    .line 40
    return-void
.end method

.method start()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    .line 46
    iget-object v0, p0, Lorg/javia/arity/RPN;->consumer:Lorg/javia/arity/TokenConsumer;

    invoke-virtual {v0}, Lorg/javia/arity/TokenConsumer;->start()V

    .line 47
    return-void
.end method
