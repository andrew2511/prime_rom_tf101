.class public Lorg/apache/xpath/compiler/Compiler;
.super Lorg/apache/xpath/compiler/OpMap;
.source "Compiler.java"


# static fields
.field private static final DEBUG:Z

.field private static s_nextMethodId:J


# instance fields
.field private locPathDepth:I

.field private m_currentPrefixResolver:Lorg/apache/xml/utils/PrefixResolver;

.field m_errorHandler:Ljavax/xml/transform/ErrorListener;

.field private m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

.field m_locator:Ljavax/xml/transform/SourceLocator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1078
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/apache/xpath/compiler/Compiler;->s_nextMethodId:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Lorg/apache/xpath/compiler/OpMap;-><init>()V

    .line 612
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    .line 1235
    iput-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_currentPrefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    .line 102
    iput-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    .line 103
    iput-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    .line 104
    return-void
.end method

.method public constructor <init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/compiler/FunctionTable;)V
    .registers 5
    .parameter "errorHandler"
    .parameter "locator"
    .parameter "fTable"

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/apache/xpath/compiler/OpMap;-><init>()V

    .line 612
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    .line 1235
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/compiler/Compiler;->m_currentPrefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    .line 91
    iput-object p1, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    .line 92
    iput-object p2, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    .line 93
    iput-object p3, p0, Lorg/apache/xpath/compiler/Compiler;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    .line 94
    return-void
.end method

.method private compileExtension(I)Lorg/apache/xpath/Expression;
    .registers 10
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1104
    add-int/lit8 v6, p1, 0x1

    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v6

    add-int/2addr v6, p1

    const/4 v7, 0x1

    sub-int v0, v6, v7

    .line 1106
    .local v0, endExtFunc:I
    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    move-result p1

    .line 1108
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v6

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1110
    .local v5, ns:Ljava/lang/String;
    add-int/lit8 p1, p1, 0x1

    .line 1112
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v6

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1115
    .local v2, funcName:Ljava/lang/String;
    add-int/lit8 p1, p1, 0x1

    .line 1121
    new-instance v1, Lorg/apache/xpath/functions/FuncExtFunction;

    invoke-direct {p0}, Lorg/apache/xpath/compiler/Compiler;->getNextMethodId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v2, v6}, Lorg/apache/xpath/functions/FuncExtFunction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1125
    .local v1, extension:Lorg/apache/xpath/functions/Function;
    const/4 v3, 0x0

    .line 1127
    .local v3, i:I
    :goto_3c
    if-ge p1, v0, :cond_4e

    .line 1129
    :try_start_3e
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v4

    .line 1131
    .local v4, nextOpPos:I
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v6

    invoke-virtual {v1, v6, v3}, Lorg/apache/xpath/functions/FuncExtFunction;->setArg(Lorg/apache/xpath/Expression;I)V
    :try_end_49
    .catch Lorg/apache/xpath/functions/WrongNumberArgsException; {:try_start_3e .. :try_end_49} :catch_4d

    .line 1133
    move p1, v4

    .line 1135
    add-int/lit8 v3, v3, 0x1

    .line 1136
    goto :goto_3c

    .line 1138
    .end local v4           #nextOpPos:I
    :catch_4d
    move-exception v6

    .line 1143
    :cond_4e
    return-object v1
.end method

.method private compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;
    .registers 7
    .parameter "operation"
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {p2}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    move-result v0

    .line 214
    .local v0, leftPos:I
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v1

    .line 216
    .local v1, rightPos:I
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v2

    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/apache/xpath/operations/Operation;->setLeftRight(Lorg/apache/xpath/Expression;Lorg/apache/xpath/Expression;)V

    .line 218
    return-object p1
.end method

.method private compilePredicates(I[Lorg/apache/xpath/Expression;)V
    .registers 6
    .parameter "opPos"
    .parameter "predicates"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1002
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v1, 0x1d

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v2

    if-ne v1, v2, :cond_16

    .line 1004
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->predicate(I)Lorg/apache/xpath/Expression;

    move-result-object v1

    aput-object v1, p2, v0

    .line 1005
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result p1

    .line 1002
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1007
    :cond_16
    return-void
.end method

.method private compileUnary(Lorg/apache/xpath/operations/UnaryOperation;I)Lorg/apache/xpath/Expression;
    .registers 5
    .parameter "unary"
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-static {p2}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    move-result v0

    .line 237
    .local v0, rightPos:I
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/xpath/operations/UnaryOperation;->setRight(Lorg/apache/xpath/Expression;)V

    .line 239
    return-object p1
.end method

.method private declared-synchronized getNextMethodId()J
    .registers 5

    .prologue
    .line 1085
    monitor-enter p0

    :try_start_1
    sget-wide v0, Lorg/apache/xpath/compiler/Compiler;->s_nextMethodId:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 1086
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/apache/xpath/compiler/Compiler;->s_nextMethodId:J

    .line 1088
    :cond_10
    sget-wide v0, Lorg/apache/xpath/compiler/Compiler;->s_nextMethodId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lorg/apache/xpath/compiler/Compiler;->s_nextMethodId:J
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-wide v0

    .line 1085
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected and(I)Lorg/apache/xpath/Expression;
    .registers 3
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Lorg/apache/xpath/operations/And;

    invoke-direct {v0}, Lorg/apache/xpath/operations/And;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected arg(I)Lorg/apache/xpath/Expression;
    .registers 3
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 586
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method public assertion(ZLjava/lang/String;)V
    .registers 7
    .parameter "b"
    .parameter "msg"

    .prologue
    .line 1188
    if-nez p1, :cond_14

    .line 1190
    const-string v1, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1194
    .local v0, fMsg:Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1196
    .end local v0           #fMsg:Ljava/lang/String;
    :cond_14
    return-void
.end method

.method protected bool(I)Lorg/apache/xpath/Expression;
    .registers 3
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 477
    new-instance v0, Lorg/apache/xpath/operations/Bool;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Bool;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileUnary(Lorg/apache/xpath/operations/UnaryOperation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method public compile(I)Lorg/apache/xpath/Expression;
    .registers 8
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 117
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v1

    .line 119
    .local v1, op:I
    const/4 v0, 0x0

    .line 121
    .local v0, expr:Lorg/apache/xpath/Expression;
    packed-switch v1, :pswitch_data_c6

    .line 190
    const-string v2, "ER_UNKNOWN_OPCODE"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/Compiler;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :goto_1b
    return-object v0

    .line 124
    :pswitch_1c
    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 126
    :pswitch_23
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->or(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 128
    :pswitch_28
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->and(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 130
    :pswitch_2d
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->notequals(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 132
    :pswitch_32
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->equals(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 134
    :pswitch_37
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->lte(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 136
    :pswitch_3c
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->lt(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 138
    :pswitch_41
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->gte(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 140
    :pswitch_46
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->gt(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 142
    :pswitch_4b
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->plus(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 144
    :pswitch_50
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->minus(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 146
    :pswitch_55
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->mult(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 148
    :pswitch_5a
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->div(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 150
    :pswitch_5f
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->mod(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 154
    :pswitch_64
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->neg(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 156
    :pswitch_69
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->string(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 158
    :pswitch_6e
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->bool(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 160
    :pswitch_73
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->number(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 162
    :pswitch_78
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->union(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 164
    :pswitch_7d
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->literal(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 166
    :pswitch_82
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->variable(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 168
    :pswitch_87
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->group(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 170
    :pswitch_8c
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->numberlit(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 172
    :pswitch_91
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->arg(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 174
    :pswitch_96
    invoke-direct {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileExtension(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto :goto_1b

    .line 176
    :pswitch_9b
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileFunction(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto/16 :goto_1b

    .line 178
    :pswitch_a1
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->locationPath(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto/16 :goto_1b

    .line 180
    :pswitch_a7
    const/4 v0, 0x0

    goto/16 :goto_1b

    .line 182
    :pswitch_aa
    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->matchPattern(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto/16 :goto_1b

    .line 184
    :pswitch_b2
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->locationPathPattern(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    goto/16 :goto_1b

    .line 186
    :pswitch_b8
    const-string v2, "ER_UNKNOWN_OPCODE"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "quo"

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/Compiler;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1b

    .line 121
    nop

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_23
        :pswitch_28
        :pswitch_2d
        :pswitch_32
        :pswitch_37
        :pswitch_3c
        :pswitch_41
        :pswitch_46
        :pswitch_4b
        :pswitch_50
        :pswitch_55
        :pswitch_5a
        :pswitch_5f
        :pswitch_b8
        :pswitch_64
        :pswitch_69
        :pswitch_6e
        :pswitch_73
        :pswitch_78
        :pswitch_7d
        :pswitch_82
        :pswitch_87
        :pswitch_96
        :pswitch_9b
        :pswitch_91
        :pswitch_8c
        :pswitch_a1
        :pswitch_a7
        :pswitch_aa
        :pswitch_b2
    .end packed-switch
.end method

.method compileFunction(I)Lorg/apache/xpath/Expression;
    .registers 16
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v13, 0x1

    .line 1021
    add-int/lit8 v8, p1, 0x1

    invoke-virtual {p0, v8}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v8

    add-int/2addr v8, p1

    sub-int v1, v8, v13

    .line 1023
    .local v1, endFunc:I
    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    move-result p1

    .line 1025
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v3

    .line 1027
    .local v3, funcID:I
    add-int/lit8 p1, p1, 0x1

    .line 1029
    const/4 v8, -0x1

    if-eq v8, v3, :cond_6c

    .line 1031
    iget-object v8, p0, Lorg/apache/xpath/compiler/Compiler;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    invoke-virtual {v8, v3}, Lorg/apache/xpath/compiler/FunctionTable;->getFunction(I)Lorg/apache/xpath/functions/Function;

    move-result-object v2

    .line 1038
    .local v2, func:Lorg/apache/xpath/functions/Function;
    instance-of v8, v2, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;

    if-eqz v8, :cond_2b

    .line 1039
    move-object v0, v2

    check-cast v0, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;

    move-object v8, v0

    iget-object v9, p0, Lorg/apache/xpath/compiler/Compiler;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    invoke-virtual {v8, v9}, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;->setFunctionTable(Lorg/apache/xpath/compiler/FunctionTable;)V

    .line 1041
    :cond_2b
    invoke-virtual {v2, p0}, Lorg/apache/xpath/functions/Function;->postCompileStep(Lorg/apache/xpath/compiler/Compiler;)V

    .line 1045
    const/4 v4, 0x0

    .line 1047
    .local v4, i:I
    move v6, p1

    .local v6, p:I
    :goto_30
    if-ge v6, v1, :cond_40

    .line 1052
    :try_start_32
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v8

    invoke-virtual {v2, v8, v4}, Lorg/apache/xpath/functions/Function;->setArg(Lorg/apache/xpath/Expression;I)V

    .line 1047
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 1055
    :cond_40
    invoke-virtual {v2, v4}, Lorg/apache/xpath/functions/Function;->checkNumberArgs(I)V
    :try_end_43
    .catch Lorg/apache/xpath/functions/WrongNumberArgsException; {:try_start_32 .. :try_end_43} :catch_45

    :goto_43
    move-object v8, v2

    .line 1073
    .end local v2           #func:Lorg/apache/xpath/functions/Function;
    .end local v4           #i:I
    .end local v6           #p:I
    :goto_44
    return-object v8

    .line 1057
    .restart local v2       #func:Lorg/apache/xpath/functions/Function;
    .restart local v4       #i:I
    .restart local v6       #p:I
    :catch_45
    move-exception v8

    move-object v7, v8

    .line 1059
    .local v7, wnae:Lorg/apache/xpath/functions/WrongNumberArgsException;
    iget-object v8, p0, Lorg/apache/xpath/compiler/Compiler;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    invoke-virtual {v8, v3}, Lorg/apache/xpath/compiler/FunctionTable;->getFunctionName(I)Ljava/lang/String;

    move-result-object v5

    .line 1061
    .local v5, name:Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v9, Ljavax/xml/transform/TransformerException;

    const-string v10, "ER_ONLY_ALLOWS"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-virtual {v7}, Lorg/apache/xpath/functions/WrongNumberArgsException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v9, v10, v11}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v8, v9}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_43

    .line 1071
    .end local v2           #func:Lorg/apache/xpath/functions/Function;
    .end local v4           #i:I
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #p:I
    .end local v7           #wnae:Lorg/apache/xpath/functions/WrongNumberArgsException;
    :cond_6c
    const-string v8, "ER_FUNCTION_TOKEN_NOT_FOUND"

    invoke-virtual {p0, v8, v9}, Lorg/apache/xpath/compiler/Compiler;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v8, v9

    .line 1073
    goto :goto_44
.end method

.method public countPredicates(I)I
    .registers 5
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 977
    const/4 v0, 0x0

    .line 979
    .local v0, count:I
    :goto_1
    const/16 v1, 0x1d

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v2

    if-ne v1, v2, :cond_10

    .line 981
    add-int/lit8 v0, v0, 0x1

    .line 983
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result p1

    goto :goto_1

    .line 986
    :cond_10
    return v0
.end method

.method protected div(I)Lorg/apache/xpath/Expression;
    .registers 3
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 407
    new-instance v0, Lorg/apache/xpath/operations/Div;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Div;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected equals(I)Lorg/apache/xpath/Expression;
    .registers 3
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 295
    new-instance v0, Lorg/apache/xpath/operations/Equals;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Equals;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .parameter "msg"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1214
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1217
    .local v0, fmsg:Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    if-eqz v1, :cond_15

    .line 1219
    iget-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v2, Ljavax/xml/transform/TransformerException;

    iget-object v3, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v2, v0, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v1, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    .line 1230
    return-void

    .line 1228
    :cond_15
    new-instance v1, Ljavax/xml/transform/TransformerException;

    iget-object p0, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    .end local p0
    check-cast p0, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {v1, v0, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw v1
.end method

.method public getCompiledPredicates(I)[Lorg/apache/xpath/Expression;
    .registers 5
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 951
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->countPredicates(I)I

    move-result v0

    .line 953
    .local v0, count:I
    if-lez v0, :cond_d

    .line 955
    new-array v1, v0, [Lorg/apache/xpath/Expression;

    .line 957
    .local v1, predicates:[Lorg/apache/xpath/Expression;
    invoke-direct {p0, p1, v1}, Lorg/apache/xpath/compiler/Compiler;->compilePredicates(I[Lorg/apache/xpath/Expression;)V

    move-object v2, v1

    .line 962
    .end local v1           #predicates:[Lorg/apache/xpath/Expression;
    :goto_c
    return-object v2

    :cond_d
    const/4 v2, 0x0

    goto :goto_c
.end method

.method getFunctionTable()Lorg/apache/xpath/compiler/FunctionTable;
    .registers 2

    .prologue
    .line 628
    iget-object v0, p0, Lorg/apache/xpath/compiler/Compiler;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    return-object v0
.end method

.method public getLocationPathDepth()I
    .registers 2

    .prologue
    .line 620
    iget v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    return v0
.end method

.method public getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;
    .registers 2

    .prologue
    .line 1244
    iget-object v0, p0, Lorg/apache/xpath/compiler/Compiler;->m_currentPrefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    return-object v0
.end method

.method public getWhatToShow(I)I
    .registers 9
    .parameter "opPos"

    .prologue
    const/16 v6, 0x1000

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 745
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v0

    .line 746
    .local v0, axesType:I
    add-int/lit8 v2, p1, 0x3

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v1

    .line 749
    .local v1, testType:I
    sparse-switch v1, :sswitch_data_46

    move v2, v3

    .line 803
    :goto_13
    return v2

    .line 752
    :sswitch_14
    const/16 v2, 0x80

    goto :goto_13

    .line 755
    :sswitch_17
    const/16 v2, 0xc

    goto :goto_13

    .line 757
    :sswitch_1a
    const/16 v2, 0x40

    goto :goto_13

    .line 760
    :sswitch_1d
    packed-switch v0, :pswitch_data_64

    .line 772
    :pswitch_20
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v2

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_32

    .line 773
    const/16 v2, -0x503

    goto :goto_13

    :pswitch_2c
    move v2, v6

    .line 763
    goto :goto_13

    :pswitch_2e
    move v2, v5

    .line 766
    goto :goto_13

    :pswitch_30
    move v2, v3

    .line 770
    goto :goto_13

    .line 777
    :cond_32
    const/4 v2, -0x3

    goto :goto_13

    .line 780
    :sswitch_34
    const/16 v2, 0x500

    goto :goto_13

    .line 782
    :sswitch_37
    const/high16 v2, 0x1

    goto :goto_13

    .line 784
    :sswitch_3a
    sparse-switch v0, :sswitch_data_84

    move v2, v4

    .line 799
    goto :goto_13

    :sswitch_3f
    move v2, v6

    .line 787
    goto :goto_13

    :sswitch_41
    move v2, v5

    .line 790
    goto :goto_13

    :sswitch_43
    move v2, v4

    .line 795
    goto :goto_13

    .line 749
    nop

    :sswitch_data_46
    .sparse-switch
        0x22 -> :sswitch_3a
        0x23 -> :sswitch_34
        0x406 -> :sswitch_14
        0x407 -> :sswitch_17
        0x408 -> :sswitch_1a
        0x409 -> :sswitch_1d
        0x40a -> :sswitch_37
    .end sparse-switch

    .line 760
    :pswitch_data_64
    .packed-switch 0x26
        :pswitch_30
        :pswitch_2e
        :pswitch_20
        :pswitch_20
        :pswitch_30
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_30
        :pswitch_2c
        :pswitch_20
        :pswitch_2e
    .end packed-switch

    .line 784
    :sswitch_data_84
    .sparse-switch
        0x27 -> :sswitch_41
        0x31 -> :sswitch_3f
        0x33 -> :sswitch_41
        0x34 -> :sswitch_43
        0x35 -> :sswitch_43
    .end sparse-switch
.end method

.method protected group(I)Lorg/apache/xpath/Expression;
    .registers 3
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 570
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected gt(I)Lorg/apache/xpath/Expression;
    .registers 3
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 351
    new-instance v0, Lorg/apache/xpath/operations/Gt;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Gt;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected gte(I)Lorg/apache/xpath/Expression;
    .registers 3
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 337
    new-instance v0, Lorg/apache/xpath/operations/Gte;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Gte;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected literal(I)Lorg/apache/xpath/Expression;
    .registers 4
    .parameter "opPos"

    .prologue
    .line 506
    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    move-result p1

    .line 508
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xpath/objects/XString;

    return-object p0
.end method

.method public locationPath(I)Lorg/apache/xpath/Expression;
    .registers 6
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 643
    iget v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    .line 646
    :try_start_7
    iget v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    if-nez v1, :cond_18

    move v1, v3

    :goto_c
    invoke-static {p0, p1, v1}, Lorg/apache/xpath/axes/WalkerFactory;->newDTMIterator(Lorg/apache/xpath/compiler/Compiler;IZ)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    .line 647
    .local v0, iter:Lorg/apache/xml/dtm/DTMIterator;
    check-cast v0, Lorg/apache/xpath/Expression;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_1a

    .line 651
    .end local v0           #iter:Lorg/apache/xml/dtm/DTMIterator;
    iget v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    return-object v0

    .line 646
    :cond_18
    const/4 v1, 0x0

    goto :goto_c

    .line 651
    :catchall_1a
    move-exception v1

    iget v2, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    throw v1
.end method

.method public locationPathPattern(I)Lorg/apache/xpath/Expression;
    .registers 4
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 728
    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    move-result p1

    .line 730
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/xpath/compiler/Compiler;->stepPattern(IILorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v0

    return-object v0
.end method

.method protected lt(I)Lorg/apache/xpath/Expression;
    .registers 3
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 323
    new-instance v0, Lorg/apache/xpath/operations/Lt;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Lt;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected lte(I)Lorg/apache/xpath/Expression;
    .registers 3
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Lorg/apache/xpath/operations/Lte;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Lte;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected matchPattern(I)Lorg/apache/xpath/Expression;
    .registers 9
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x1f

    const/4 v6, 0x1

    .line 680
    iget v4, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    .line 684
    move v1, p1

    .line 687
    .local v1, nextOpPos:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    :try_start_b
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v4

    if-ne v4, v5, :cond_18

    .line 689
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v1

    .line 687
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 692
    :cond_18
    if-ne v0, v6, :cond_24

    .line 693
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_4c

    move-result-object v4

    .line 711
    iget v5, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    sub-int/2addr v5, v6

    iput v5, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    :goto_23
    return-object v4

    .line 695
    :cond_24
    :try_start_24
    new-instance v3, Lorg/apache/xpath/patterns/UnionPattern;

    invoke-direct {v3}, Lorg/apache/xpath/patterns/UnionPattern;-><init>()V

    .line 696
    .local v3, up:Lorg/apache/xpath/patterns/UnionPattern;
    new-array v2, v0, [Lorg/apache/xpath/patterns/StepPattern;

    .line 698
    .local v2, patterns:[Lorg/apache/xpath/patterns/StepPattern;
    const/4 v0, 0x0

    :goto_2c
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v4

    if-ne v4, v5, :cond_42

    .line 700
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v1

    .line 701
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v4

    check-cast v4, Lorg/apache/xpath/patterns/StepPattern;

    aput-object v4, v2, v0

    .line 702
    move p1, v1

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 705
    :cond_42
    invoke-virtual {v3, v2}, Lorg/apache/xpath/patterns/UnionPattern;->setPatterns([Lorg/apache/xpath/patterns/StepPattern;)V
    :try_end_45
    .catchall {:try_start_24 .. :try_end_45} :catchall_4c

    .line 711
    iget v4, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    sub-int/2addr v4, v6

    iput v4, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    move-object v4, v3

    goto :goto_23

    .end local v2           #patterns:[Lorg/apache/xpath/patterns/StepPattern;
    .end local v3           #up:Lorg/apache/xpath/patterns/UnionPattern;
    :catchall_4c
    move-exception v4

    iget v5, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    sub-int/2addr v5, v6

    iput v5, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    throw v4
.end method

.method protected minus(I)Lorg/apache/xpath/Expression;
    .registers 3
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 379
    new-instance v0, Lorg/apache/xpath/operations/Minus;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Minus;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected mod(I)Lorg/apache/xpath/Expression;
    .registers 3
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 421
    new-instance v0, Lorg/apache/xpath/operations/Mod;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Mod;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected mult(I)Lorg/apache/xpath/Expression;
    .registers 3
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 393
    new-instance v0, Lorg/apache/xpath/operations/Mult;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Mult;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected neg(I)Lorg/apache/xpath/Expression;
    .registers 3
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 449
    new-instance v0, Lorg/apache/xpath/operations/Neg;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Neg;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileUnary(Lorg/apache/xpath/operations/UnaryOperation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected notequals(I)Lorg/apache/xpath/Expression;
    .registers 3
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 281
    new-instance v0, Lorg/apache/xpath/operations/NotEquals;

    invoke-direct {v0}, Lorg/apache/xpath/operations/NotEquals;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected number(I)Lorg/apache/xpath/Expression;
    .registers 3
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 491
    new-instance v0, Lorg/apache/xpath/operations/Number;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Number;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileUnary(Lorg/apache/xpath/operations/UnaryOperation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected numberlit(I)Lorg/apache/xpath/Expression;
    .registers 4
    .parameter "opPos"

    .prologue
    .line 523
    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    move-result p1

    .line 525
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xpath/objects/XNumber;

    return-object p0
.end method

.method protected or(I)Lorg/apache/xpath/Expression;
    .registers 3
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Lorg/apache/xpath/operations/Or;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Or;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected plus(I)Lorg/apache/xpath/Expression;
    .registers 3
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 365
    new-instance v0, Lorg/apache/xpath/operations/Plus;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Plus;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileOperation(Lorg/apache/xpath/operations/Operation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method public predicate(I)Lorg/apache/xpath/Expression;
    .registers 3
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 666
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method public setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V
    .registers 2
    .parameter "pr"

    .prologue
    .line 1254
    iput-object p1, p0, Lorg/apache/xpath/compiler/Compiler;->m_currentPrefixResolver:Lorg/apache/xml/utils/PrefixResolver;

    .line 1255
    return-void
.end method

.method protected stepPattern(IILorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/patterns/StepPattern;
    .registers 19
    .parameter "opPos"
    .parameter "stepCount"
    .parameter "ancestorPattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 826
    move/from16 v12, p1

    .line 827
    .local v12, startOpPos:I
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v13

    .line 829
    .local v13, stepType:I
    const/4 v3, -0x1

    if-ne v3, v13, :cond_b

    .line 831
    const/4 v3, 0x0

    .line 935
    :goto_a
    return-object v3

    .line 834
    :cond_b
    const/4 v8, 0x1

    .line 836
    .local v8, addMagicSelf:Z
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v10

    .line 844
    .local v10, endStep:I
    sparse-switch v13, :sswitch_data_c0

    .line 898
    const-string v3, "ER_UNKNOWN_MATCH_OPERATION"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/apache/xpath/compiler/Compiler;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 900
    const/4 v3, 0x0

    goto :goto_a

    .line 849
    :sswitch_1b
    const/4 v8, 0x0

    .line 850
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v9

    .line 851
    .local v9, argLen:I
    new-instance v2, Lorg/apache/xpath/patterns/FunctionPattern;

    invoke-virtual/range {p0 .. p1}, Lorg/apache/xpath/compiler/Compiler;->compileFunction(I)Lorg/apache/xpath/Expression;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/xpath/patterns/FunctionPattern;-><init>(Lorg/apache/xpath/Expression;II)V

    .line 903
    .local v2, pattern:Lorg/apache/xpath/patterns/StepPattern;
    :goto_2e
    add-int v3, p1, v9

    invoke-virtual {p0, v3}, Lorg/apache/xpath/compiler/Compiler;->getCompiledPredicates(I)[Lorg/apache/xpath/Expression;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xpath/patterns/StepPattern;->setPredicates([Lorg/apache/xpath/Expression;)V

    .line 904
    if-nez p3, :cond_b4

    .line 932
    :goto_39
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, v10, v3, v2}, Lorg/apache/xpath/compiler/Compiler;->stepPattern(IILorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v11

    .line 935
    .local v11, relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;
    if-eqz v11, :cond_bc

    move-object v3, v11

    goto :goto_a

    .line 856
    .end local v2           #pattern:Lorg/apache/xpath/patterns/StepPattern;
    .end local v9           #argLen:I
    .end local v11           #relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;
    :sswitch_43
    const/4 v8, 0x0

    .line 857
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLengthOfStep(I)I

    move-result v9

    .line 858
    .restart local v9       #argLen:I
    invoke-static/range {p1 .. p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPosOfStep(I)I

    move-result p1

    .line 859
    new-instance v2, Lorg/apache/xpath/patterns/StepPattern;

    const/16 v3, 0x500

    const/16 v4, 0xa

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/xpath/patterns/StepPattern;-><init>(III)V

    .line 862
    .restart local v2       #pattern:Lorg/apache/xpath/patterns/StepPattern;
    goto :goto_2e

    .line 866
    .end local v2           #pattern:Lorg/apache/xpath/patterns/StepPattern;
    .end local v9           #argLen:I
    :sswitch_57
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLengthOfStep(I)I

    move-result v9

    .line 867
    .restart local v9       #argLen:I
    invoke-static/range {p1 .. p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPosOfStep(I)I

    move-result p1

    .line 868
    new-instance v2, Lorg/apache/xpath/patterns/StepPattern;

    const/4 v3, 0x2

    invoke-virtual {p0, v12}, Lorg/apache/xpath/compiler/Compiler;->getStepNS(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v12}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    const/4 v7, 0x2

    invoke-direct/range {v2 .. v7}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 872
    .restart local v2       #pattern:Lorg/apache/xpath/patterns/StepPattern;
    goto :goto_2e

    .line 876
    .end local v2           #pattern:Lorg/apache/xpath/patterns/StepPattern;
    .end local v9           #argLen:I
    :sswitch_71
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLengthOfStep(I)I

    move-result v9

    .line 877
    .restart local v9       #argLen:I
    invoke-static/range {p1 .. p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPosOfStep(I)I

    move-result p1

    .line 878
    invoke-virtual {p0, v12}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result v14

    .line 880
    .local v14, what:I
    const/16 v3, 0x500

    if-ne v3, v14, :cond_82

    .line 881
    const/4 v8, 0x0

    .line 882
    :cond_82
    new-instance v2, Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {p0, v12}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result v3

    invoke-virtual {p0, v12}, Lorg/apache/xpath/compiler/Compiler;->getStepNS(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v12}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-direct/range {v2 .. v7}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 886
    .restart local v2       #pattern:Lorg/apache/xpath/patterns/StepPattern;
    goto :goto_2e

    .line 890
    .end local v2           #pattern:Lorg/apache/xpath/patterns/StepPattern;
    .end local v9           #argLen:I
    .end local v14           #what:I
    :sswitch_96
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLengthOfStep(I)I

    move-result v9

    .line 891
    .restart local v9       #argLen:I
    invoke-static/range {p1 .. p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPosOfStep(I)I

    move-result p1

    .line 892
    new-instance v2, Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {p0, v12}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result v3

    invoke-virtual {p0, v12}, Lorg/apache/xpath/compiler/Compiler;->getStepNS(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v12}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    const/4 v7, 0x3

    invoke-direct/range {v2 .. v7}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 896
    .restart local v2       #pattern:Lorg/apache/xpath/patterns/StepPattern;
    goto/16 :goto_2e

    .line 929
    :cond_b4
    move-object v0, v2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    goto/16 :goto_39

    .restart local v11       #relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;
    :cond_bc
    move-object v3, v2

    .line 935
    goto/16 :goto_a

    .line 844
    nop

    :sswitch_data_c0
    .sparse-switch
        0x19 -> :sswitch_1b
        0x32 -> :sswitch_43
        0x33 -> :sswitch_57
        0x34 -> :sswitch_71
        0x35 -> :sswitch_96
    .end sparse-switch
.end method

.method protected string(I)Lorg/apache/xpath/Expression;
    .registers 3
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 463
    new-instance v0, Lorg/apache/xpath/operations/String;

    invoke-direct {v0}, Lorg/apache/xpath/operations/String;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/compiler/Compiler;->compileUnary(Lorg/apache/xpath/operations/UnaryOperation;I)Lorg/apache/xpath/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected union(I)Lorg/apache/xpath/Expression;
    .registers 5
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 601
    iget v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    .line 604
    :try_start_7
    invoke-static {p0, p1}, Lorg/apache/xpath/axes/UnionPathIterator;->createUnionIterator(Lorg/apache/xpath/compiler/Compiler;I)Lorg/apache/xpath/axes/LocPathIterator;
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_11

    move-result-object v0

    .line 608
    iget v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    return-object v0

    :catchall_11
    move-exception v0

    iget v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xpath/compiler/Compiler;->locPathDepth:I

    throw v0
.end method

.method protected variable(I)Lorg/apache/xpath/Expression;
    .registers 9
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 540
    new-instance v4, Lorg/apache/xpath/operations/Variable;

    invoke-direct {v4}, Lorg/apache/xpath/operations/Variable;-><init>()V

    .line 542
    .local v4, var:Lorg/apache/xpath/operations/Variable;
    invoke-static {p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstChildPos(I)I

    move-result p1

    .line 544
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v2

    .line 545
    .local v2, nsPos:I
    const/4 v5, -0x2

    if-ne v5, v2, :cond_2b

    const/4 v5, 0x0

    move-object v1, v5

    .line 548
    .local v1, namespace:Ljava/lang/String;
    :goto_12
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 550
    .local v0, localname:Ljava/lang/String;
    new-instance v3, Lorg/apache/xml/utils/QName;

    invoke-direct {v3, v1, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    .local v3, qname:Lorg/apache/xml/utils/QName;
    invoke-virtual {v4, v3}, Lorg/apache/xpath/operations/Variable;->setQName(Lorg/apache/xml/utils/QName;)V

    .line 554
    return-object v4

    .line 545
    .end local v0           #localname:Ljava/lang/String;
    .end local v1           #namespace:Ljava/lang/String;
    .end local v3           #qname:Lorg/apache/xml/utils/QName;
    :cond_2b
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v1, v5

    goto :goto_12
.end method

.method public warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .parameter "msg"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1161
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1163
    .local v0, fmsg:Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    if-eqz v1, :cond_15

    .line 1165
    iget-object v1, p0, Lorg/apache/xpath/compiler/Compiler;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v2, Ljavax/xml/transform/TransformerException;

    iget-object v3, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v2, v0, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v1, v2}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    .line 1174
    :goto_14
    return-void

    .line 1169
    :cond_15
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xpath/compiler/Compiler;->m_locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_14
.end method
