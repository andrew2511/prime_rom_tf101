.class public Lorg/easymock/internal/RecordState;
.super Ljava/lang/Object;
.source "RecordState.java"

# interfaces
.implements Lorg/easymock/internal/IMocksControlState;
.implements Ljava/io/Serializable;


# static fields
.field private static emptyReturnValues:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static primitiveToWrapperType:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x4b3198a9c17bd42cL


# instance fields
.field private behavior:Lorg/easymock/internal/IMocksBehavior;

.field private lastInvocation:Lorg/easymock/internal/ExpectedInvocation;

.field private lastInvocationUsed:Z

.field private lastResult:Lorg/easymock/internal/Result;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/easymock/internal/RecordState;->emptyReturnValues:Ljava/util/Map;

    .line 31
    sget-object v0, Lorg/easymock/internal/RecordState;->emptyReturnValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lorg/easymock/internal/RecordState;->emptyReturnValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lorg/easymock/internal/RecordState;->emptyReturnValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lorg/easymock/internal/RecordState;->emptyReturnValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Short;

    invoke-direct {v2, v3}, Ljava/lang/Short;-><init>(S)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lorg/easymock/internal/RecordState;->emptyReturnValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lorg/easymock/internal/RecordState;->emptyReturnValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lorg/easymock/internal/RecordState;->emptyReturnValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lorg/easymock/internal/RecordState;->emptyReturnValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Float;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lorg/easymock/internal/RecordState;->emptyReturnValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Double;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/easymock/internal/RecordState;->primitiveToWrapperType:Ljava/util/Map;

    .line 45
    sget-object v0, Lorg/easymock/internal/RecordState;->primitiveToWrapperType:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/easymock/internal/RecordState;->primitiveToWrapperType:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/easymock/internal/RecordState;->primitiveToWrapperType:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/easymock/internal/RecordState;->primitiveToWrapperType:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/easymock/internal/RecordState;->primitiveToWrapperType:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/easymock/internal/RecordState;->primitiveToWrapperType:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/easymock/internal/RecordState;->primitiveToWrapperType:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/easymock/internal/RecordState;->primitiveToWrapperType:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/easymock/internal/IMocksBehavior;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/easymock/internal/RecordState;->lastInvocationUsed:Z

    .line 56
    iput-object p1, p0, Lorg/easymock/internal/RecordState;->behavior:Lorg/easymock/internal/IMocksBehavior;

    .line 57
    return-void
.end method

.method private closeMethod()V
    .locals 4

    .prologue
    .line 226
    iget-boolean v0, p0, Lorg/easymock/internal/RecordState;->lastInvocationUsed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/easymock/internal/RecordState;->lastResult:Lorg/easymock/internal/Result;

    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-direct {p0}, Lorg/easymock/internal/RecordState;->isLastResultOrVoidMethod()Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    new-instance v0, Lorg/easymock/internal/RuntimeExceptionWrapper;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing behavior definition for the preceeding method call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/easymock/internal/RecordState;->lastInvocation:Lorg/easymock/internal/ExpectedInvocation;

    invoke-virtual {v3}, Lorg/easymock/internal/ExpectedInvocation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/easymock/internal/RuntimeExceptionWrapper;-><init>(Ljava/lang/RuntimeException;)V

    throw v0

    .line 234
    :cond_1
    sget-object v0, Lorg/easymock/MockControl;->ONE:Lorg/easymock/internal/Range;

    invoke-virtual {p0, v0}, Lorg/easymock/internal/RecordState;->times(Lorg/easymock/internal/Range;)V

    goto :goto_0
.end method

.method private convertNumberClassIfNeccessary(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lorg/easymock/internal/RecordState;->lastInvocation:Lorg/easymock/internal/ExpectedInvocation;

    invoke-virtual {v0}, Lorg/easymock/internal/ExpectedInvocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 221
    invoke-direct {p0, p1, v0}, Lorg/easymock/internal/RecordState;->createNumberObject(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private createNumberObject(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 196
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_0

    move-object v0, p1

    .line 215
    :goto_0
    return-object v0

    .line 199
    :cond_0
    check-cast p1, Ljava/lang/Number;

    .line 200
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0

    .line 206
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 207
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 209
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 210
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 211
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 212
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 213
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_7
    move-object v0, p1

    .line 215
    goto :goto_0
.end method

.method public static emptyReturnValueFor(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/easymock/internal/RecordState;->emptyReturnValues:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLastResultOrVoidMethod()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lorg/easymock/internal/RecordState;->lastResult:Lorg/easymock/internal/Result;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/easymock/internal/RecordState;->lastMethodIsVoidMethod()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidThrowable(Ljava/lang/Throwable;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 312
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    move v0, v5

    .line 324
    :goto_0
    return v0

    .line 315
    :cond_0
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_1

    move v0, v5

    .line 316
    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lorg/easymock/internal/RecordState;->lastInvocation:Lorg/easymock/internal/ExpectedInvocation;

    invoke-virtual {v0}, Lorg/easymock/internal/ExpectedInvocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 319
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 320
    array-length v2, v0

    move v3, v6

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 321
    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v5

    .line 322
    goto :goto_0

    .line 320
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v0, v6

    .line 324
    goto :goto_0
.end method

.method private lastMethodIsVoidMethod()Z
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lorg/easymock/internal/RecordState;->lastInvocation:Lorg/easymock/internal/ExpectedInvocation;

    invoke-virtual {v0}, Lorg/easymock/internal/ExpectedInvocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 308
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private requireAssignable(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 250
    invoke-direct {p0}, Lorg/easymock/internal/RecordState;->lastMethodIsVoidMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Lorg/easymock/internal/RuntimeExceptionWrapper;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "void method cannot return a value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/easymock/internal/RuntimeExceptionWrapper;-><init>(Ljava/lang/RuntimeException;)V

    throw v0

    .line 254
    :cond_0
    if-nez p1, :cond_2

    .line 266
    :cond_1
    return-void

    .line 257
    :cond_2
    iget-object v0, p0, Lorg/easymock/internal/RecordState;->lastInvocation:Lorg/easymock/internal/ExpectedInvocation;

    invoke-virtual {v0}, Lorg/easymock/internal/ExpectedInvocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 259
    sget-object v1, Lorg/easymock/internal/RecordState;->primitiveToWrapperType:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    move-object v0, p0

    .line 262
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    new-instance v0, Lorg/easymock/internal/RuntimeExceptionWrapper;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "incompatible return value type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/easymock/internal/RuntimeExceptionWrapper;-><init>(Ljava/lang/RuntimeException;)V

    throw v0
.end method

.method private requireLastResultOrVoidMethod()V
    .locals 3

    .prologue
    .line 287
    invoke-direct {p0}, Lorg/easymock/internal/RecordState;->isLastResultOrVoidMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    return-void

    .line 290
    :cond_0
    new-instance v0, Lorg/easymock/internal/RuntimeExceptionWrapper;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "last method called on mock is not a void method"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/easymock/internal/RuntimeExceptionWrapper;-><init>(Ljava/lang/RuntimeException;)V

    throw v0
.end method

.method private requireMethodCall(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lorg/easymock/internal/RecordState;->lastInvocation:Lorg/easymock/internal/ExpectedInvocation;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lorg/easymock/internal/RuntimeExceptionWrapper;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "method call on the mock needed before setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/easymock/internal/RuntimeExceptionWrapper;-><init>(Ljava/lang/RuntimeException;)V

    throw v0

    .line 247
    :cond_0
    return-void
.end method

.method private requireValidAnswer(Lorg/easymock/IAnswer;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/IAnswer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 282
    new-instance v0, Lorg/easymock/internal/RuntimeExceptionWrapper;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "answer object must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/easymock/internal/RuntimeExceptionWrapper;-><init>(Ljava/lang/RuntimeException;)V

    throw v0

    .line 284
    :cond_0
    return-void
.end method

.method private requireValidThrowable(Ljava/lang/Throwable;)V
    .locals 4
    .parameter

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    new-instance v0, Lorg/easymock/internal/RuntimeExceptionWrapper;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be thrown"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/easymock/internal/RuntimeExceptionWrapper;-><init>(Ljava/lang/RuntimeException;)V

    throw v0

    .line 272
    :cond_0
    invoke-direct {p0, p1}, Lorg/easymock/internal/RecordState;->isValidThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    return-void

    .line 275
    :cond_1
    new-instance v0, Lorg/easymock/internal/RuntimeExceptionWrapper;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last method called on mock cannot throw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/easymock/internal/RuntimeExceptionWrapper;-><init>(Ljava/lang/RuntimeException;)V

    throw v0
.end method

.method private requireVoidMethod()V
    .locals 3

    .prologue
    .line 295
    invoke-direct {p0}, Lorg/easymock/internal/RecordState;->lastMethodIsVoidMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    return-void

    .line 298
    :cond_0
    new-instance v0, Lorg/easymock/internal/RuntimeExceptionWrapper;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "last method called on mock is not a void method"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/easymock/internal/RuntimeExceptionWrapper;-><init>(Ljava/lang/RuntimeException;)V

    throw v0
.end method


# virtual methods
.method public andAnswer(Lorg/easymock/IAnswer;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/IAnswer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 102
    const-string v0, "answer"

    invoke-direct {p0, v0}, Lorg/easymock/internal/RecordState;->requireMethodCall(Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, p1}, Lorg/easymock/internal/RecordState;->requireValidAnswer(Lorg/easymock/IAnswer;)V

    .line 104
    iget-object v0, p0, Lorg/easymock/internal/RecordState;->lastResult:Lorg/easymock/internal/Result;

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lorg/easymock/internal/MocksControl;->ONCE:Lorg/easymock/internal/Range;

    invoke-virtual {p0, v0}, Lorg/easymock/internal/RecordState;->times(Lorg/easymock/internal/Range;)V

    .line 107
    :cond_0
    invoke-static {p1}, Lorg/easymock/internal/Result;->createAnswerResult(Lorg/easymock/IAnswer;)Lorg/easymock/internal/Result;

    move-result-object v0

    iput-object v0, p0, Lorg/easymock/internal/RecordState;->lastResult:Lorg/easymock/internal/Result;

    .line 108
    return-void
.end method

.method public andReturn(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    const-string v0, "return value"

    invoke-direct {p0, v0}, Lorg/easymock/internal/RecordState;->requireMethodCall(Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, p1}, Lorg/easymock/internal/RecordState;->convertNumberClassIfNeccessary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    invoke-direct {p0, v0}, Lorg/easymock/internal/RecordState;->requireAssignable(Ljava/lang/Object;)V

    .line 86
    iget-object v1, p0, Lorg/easymock/internal/RecordState;->lastResult:Lorg/easymock/internal/Result;

    if-eqz v1, :cond_0

    .line 87
    sget-object v1, Lorg/easymock/internal/MocksControl;->ONCE:Lorg/easymock/internal/Range;

    invoke-virtual {p0, v1}, Lorg/easymock/internal/RecordState;->times(Lorg/easymock/internal/Range;)V

    .line 89
    :cond_0
    invoke-static {v0}, Lorg/easymock/internal/Result;->createReturnResult(Ljava/lang/Object;)Lorg/easymock/internal/Result;

    move-result-object v0

    iput-object v0, p0, Lorg/easymock/internal/RecordState;->lastResult:Lorg/easymock/internal/Result;

    .line 90
    return-void
.end method

.method public andStubAnswer(Lorg/easymock/IAnswer;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/IAnswer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 176
    const-string v0, "stub answer"

    invoke-direct {p0, v0}, Lorg/easymock/internal/RecordState;->requireMethodCall(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, p1}, Lorg/easymock/internal/RecordState;->requireValidAnswer(Lorg/easymock/IAnswer;)V

    .line 178
    iget-object v0, p0, Lorg/easymock/internal/RecordState;->lastResult:Lorg/easymock/internal/Result;

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lorg/easymock/internal/MocksControl;->ONCE:Lorg/easymock/internal/Range;

    invoke-virtual {p0, v0}, Lorg/easymock/internal/RecordState;->times(Lorg/easymock/internal/Range;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/easymock/internal/RecordState;->behavior:Lorg/easymock/internal/IMocksBehavior;

    iget-object v1, p0, Lorg/easymock/internal/RecordState;->lastInvocation:Lorg/easymock/internal/ExpectedInvocation;

    invoke-static {p1}, Lorg/easymock/internal/Result;->createAnswerResult(Lorg/easymock/IAnswer;)Lorg/easymock/internal/Result;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/easymock/internal/IMocksBehavior;->addStub(Lorg/easymock/internal/ExpectedInvocation;Lorg/easymock/internal/Result;)V

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/easymock/internal/RecordState;->lastInvocationUsed:Z

    .line 183
    return-void
.end method

.method public andStubReturn(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 111
    const-string v0, "stub return value"

    invoke-direct {p0, v0}, Lorg/easymock/internal/RecordState;->requireMethodCall(Ljava/lang/String;)V

    .line 112
    invoke-direct {p0, p1}, Lorg/easymock/internal/RecordState;->convertNumberClassIfNeccessary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 113
    invoke-direct {p0, v0}, Lorg/easymock/internal/RecordState;->requireAssignable(Ljava/lang/Object;)V

    .line 114
    iget-object v1, p0, Lorg/easymock/internal/RecordState;->lastResult:Lorg/easymock/internal/Result;

    if-eqz v1, :cond_0

    .line 115
    sget-object v1, Lorg/easymock/internal/MocksControl;->ONCE:Lorg/easymock/internal/Range;

    invoke-virtual {p0, v1}, Lorg/easymock/internal/RecordState;->times(Lorg/easymock/internal/Range;)V

    .line 117
    :cond_0
    iget-object v1, p0, Lorg/easymock/internal/RecordState;->behavior:Lorg/easymock/internal/IMocksBehavior;

    iget-object v2, p0, Lorg/easymock/internal/RecordState;->lastInvocation:Lorg/easymock/internal/ExpectedInvocation;

    invoke-static {v0}, Lorg/easymock/internal/Result;->createReturnResult(Ljava/lang/Object;)Lorg/easymock/internal/Result;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/easymock/internal/IMocksBehavior;->addStub(Lorg/easymock/internal/ExpectedInvocation;Lorg/easymock/internal/Result;)V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/easymock/internal/RecordState;->lastInvocationUsed:Z

    .line 119
    return-void
.end method

.method public andStubThrow(Ljava/lang/Throwable;)V
    .locals 3
    .parameter

    .prologue
    .line 153
    const-string v0, "stub Throwable"

    invoke-direct {p0, v0}, Lorg/easymock/internal/RecordState;->requireMethodCall(Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, p1}, Lorg/easymock/internal/RecordState;->requireValidThrowable(Ljava/lang/Throwable;)V

    .line 155
    iget-object v0, p0, Lorg/easymock/internal/RecordState;->lastResult:Lorg/easymock/internal/Result;

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lorg/easymock/internal/MocksControl;->ONCE:Lorg/easymock/internal/Range;

    invoke-virtual {p0, v0}, Lorg/easymock/internal/RecordState;->times(Lorg/easymock/internal/Range;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/easymock/internal/RecordState;->behavior:Lorg/easymock/internal/IMocksBehavior;

    iget-object v1, p0, Lorg/easymock/internal/RecordState;->lastInvocation:Lorg/easymock/internal/ExpectedInvocation;

    invoke-static {p1}, Lorg/easymock/internal/Result;->createThrowResult(Ljava/lang/Throwable;)Lorg/easymock/internal/Result;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/easymock/internal/IMocksBehavior;->addStub(Lorg/easymock/internal/ExpectedInvocation;Lorg/easymock/internal/Result;)V

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/easymock/internal/RecordState;->lastInvocationUsed:Z

    .line 160
    return-void
.end method

.method public andThrow(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    const-string v0, "Throwable"

    invoke-direct {p0, v0}, Lorg/easymock/internal/RecordState;->requireMethodCall(Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, p1}, Lorg/easymock/internal/RecordState;->requireValidThrowable(Ljava/lang/Throwable;)V

    .line 95
    iget-object v0, p0, Lorg/easymock/internal/RecordState;->lastResult:Lorg/easymock/internal/Result;

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lorg/easymock/internal/MocksControl;->ONCE:Lorg/easymock/internal/Range;

    invoke-virtual {p0, v0}, Lorg/easymock/internal/RecordState;->times(Lorg/easymock/internal/Range;)V

    .line 98
    :cond_0
    invoke-static {p1}, Lorg/easymock/internal/Result;->createThrowResult(Ljava/lang/Throwable;)Lorg/easymock/internal/Result;

    move-result-object v0

    iput-object v0, p0, Lorg/easymock/internal/RecordState;->lastResult:Lorg/easymock/internal/Result;

    .line 99
    return-void
.end method

.method public asStub()V
    .locals 3

    .prologue
    .line 136
    const-string v0, "stub behavior"

    invoke-direct {p0, v0}, Lorg/easymock/internal/RecordState;->requireMethodCall(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lorg/easymock/internal/RecordState;->requireVoidMethod()V

    .line 138
    iget-object v0, p0, Lorg/easymock/internal/RecordState;->behavior:Lorg/easymock/internal/IMocksBehavior;

    iget-object v1, p0, Lorg/easymock/internal/RecordState;->lastInvocation:Lorg/easymock/internal/ExpectedInvocation;

    const/4 v2, 0x0

    invoke-static {v2}, Lorg/easymock/internal/Result;->createReturnResult(Ljava/lang/Object;)Lorg/easymock/internal/Result;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/easymock/internal/IMocksBehavior;->addStub(Lorg/easymock/internal/ExpectedInvocation;Lorg/easymock/internal/Result;)V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/easymock/internal/RecordState;->lastInvocationUsed:Z

    .line 140
    return-void
.end method

.method public assertRecordState()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public checkOrder(Z)V
    .locals 1
    .parameter

    .prologue
    .line 328
    invoke-direct {p0}, Lorg/easymock/internal/RecordState;->closeMethod()V

    .line 329
    iget-object v0, p0, Lorg/easymock/internal/RecordState;->behavior:Lorg/easymock/internal/IMocksBehavior;

    invoke-interface {v0, p1}, Lorg/easymock/internal/IMocksBehavior;->checkOrder(Z)V

    .line 330
    return-void
.end method

.method public invoke(Lorg/easymock/internal/Invocation;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/easymock/internal/RecordState;->closeMethod()V

    .line 64
    invoke-static {}, Lorg/easymock/internal/LastControl;->pullMatchers()Ljava/util/List;

    move-result-object v0

    .line 65
    new-instance v1, Lorg/easymock/internal/ExpectedInvocation;

    invoke-direct {v1, p1, v0}, Lorg/easymock/internal/ExpectedInvocation;-><init>(Lorg/easymock/internal/Invocation;Ljava/util/List;)V

    iput-object v1, p0, Lorg/easymock/internal/RecordState;->lastInvocation:Lorg/easymock/internal/ExpectedInvocation;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/easymock/internal/RecordState;->lastInvocationUsed:Z

    .line 67
    invoke-virtual {p1}, Lorg/easymock/internal/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/easymock/internal/RecordState;->emptyReturnValueFor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public makeThreadSafe(Z)V
    .locals 1
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lorg/easymock/internal/RecordState;->behavior:Lorg/easymock/internal/IMocksBehavior;

    invoke-interface {v0, p1}, Lorg/easymock/internal/IMocksBehavior;->makeThreadSafe(Z)V

    .line 334
    return-void
.end method

.method public replay()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/easymock/internal/RecordState;->closeMethod()V

    .line 72
    invoke-static {}, Lorg/easymock/internal/LastControl;->pullMatchers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "matcher calls were used outside expectations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    return-void
.end method

.method public setDefaultMatcher(Lorg/easymock/ArgumentsMatcher;)V
    .locals 1
    .parameter

    .prologue
    .line 338
    iget-object v0, p0, Lorg/easymock/internal/RecordState;->behavior:Lorg/easymock/internal/IMocksBehavior;

    invoke-interface {v0, p1}, Lorg/easymock/internal/IMocksBehavior;->setDefaultMatcher(Lorg/easymock/ArgumentsMatcher;)V

    .line 339
    return-void
.end method

.method public setDefaultReturnValue(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 123
    const-string v0, "default return value"

    invoke-direct {p0, v0}, Lorg/easymock/internal/RecordState;->requireMethodCall(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p1}, Lorg/easymock/internal/RecordState;->convertNumberClassIfNeccessary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    invoke-direct {p0, v0}, Lorg/easymock/internal/RecordState;->requireAssignable(Ljava/lang/Object;)V

    .line 126
    iget-object v1, p0, Lorg/easymock/internal/RecordState;->lastResult:Lorg/easymock/internal/Result;

    if-eqz v1, :cond_0

    .line 127
    sget-object v1, Lorg/easymock/internal/MocksControl;->ONCE:Lorg/easymock/internal/Range;

    invoke-virtual {p0, v1}, Lorg/easymock/internal/RecordState;->times(Lorg/easymock/internal/Range;)V

    .line 129
    :cond_0
    iget-object v1, p0, Lorg/easymock/internal/RecordState;->behavior:Lorg/easymock/internal/IMocksBehavior;

    iget-object v2, p0, Lorg/easymock/internal/RecordState;->lastInvocation:Lorg/easymock/internal/ExpectedInvocation;

    sget-object v3, Lorg/easymock/MockControl;->ALWAYS_MATCHER:Lorg/easymock/ArgumentsMatcher;

    invoke-virtual {v2, v3}, Lorg/easymock/internal/ExpectedInvocation;->withMatcher(Lorg/easymock/ArgumentsMatcher;)Lorg/easymock/internal/ExpectedInvocation;

    move-result-object v2

    invoke-static {v0}, Lorg/easymock/internal/Result;->createReturnResult(Ljava/lang/Object;)Lorg/easymock/internal/Result;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/easymock/internal/IMocksBehavior;->addStub(Lorg/easymock/internal/ExpectedInvocation;Lorg/easymock/internal/Result;)V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/easymock/internal/RecordState;->lastInvocationUsed:Z

    .line 133
    return-void
.end method

.method public setDefaultThrowable(Ljava/lang/Throwable;)V
    .locals 3
    .parameter

    .prologue
    .line 164
    const-string v0, "default Throwable"

    invoke-direct {p0, v0}, Lorg/easymock/internal/RecordState;->requireMethodCall(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, p1}, Lorg/easymock/internal/RecordState;->requireValidThrowable(Ljava/lang/Throwable;)V

    .line 166
    iget-object v0, p0, Lorg/easymock/internal/RecordState;->lastResult:Lorg/easymock/internal/Result;

    if-eqz v0, :cond_0

    .line 167
    sget-object v0, Lorg/easymock/internal/MocksControl;->ONCE:Lorg/easymock/internal/Range;

    invoke-virtual {p0, v0}, Lorg/easymock/internal/RecordState;->times(Lorg/easymock/internal/Range;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/easymock/internal/RecordState;->behavior:Lorg/easymock/internal/IMocksBehavior;

    iget-object v1, p0, Lorg/easymock/internal/RecordState;->lastInvocation:Lorg/easymock/internal/ExpectedInvocation;

    sget-object v2, Lorg/easymock/MockControl;->ALWAYS_MATCHER:Lorg/easymock/ArgumentsMatcher;

    invoke-virtual {v1, v2}, Lorg/easymock/internal/ExpectedInvocation;->withMatcher(Lorg/easymock/ArgumentsMatcher;)Lorg/easymock/internal/ExpectedInvocation;

    move-result-object v1

    invoke-static {p1}, Lorg/easymock/internal/Result;->createThrowResult(Ljava/lang/Throwable;)Lorg/easymock/internal/Result;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/easymock/internal/IMocksBehavior;->addStub(Lorg/easymock/internal/ExpectedInvocation;Lorg/easymock/internal/Result;)V

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/easymock/internal/RecordState;->lastInvocationUsed:Z

    .line 173
    return-void
.end method

.method public setDefaultVoidCallable()V
    .locals 3

    .prologue
    .line 144
    const-string v0, "default void callable"

    invoke-direct {p0, v0}, Lorg/easymock/internal/RecordState;->requireMethodCall(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lorg/easymock/internal/RecordState;->requireVoidMethod()V

    .line 146
    iget-object v0, p0, Lorg/easymock/internal/RecordState;->behavior:Lorg/easymock/internal/IMocksBehavior;

    iget-object v1, p0, Lorg/easymock/internal/RecordState;->lastInvocation:Lorg/easymock/internal/ExpectedInvocation;

    sget-object v2, Lorg/easymock/MockControl;->ALWAYS_MATCHER:Lorg/easymock/ArgumentsMatcher;

    invoke-virtual {v1, v2}, Lorg/easymock/internal/ExpectedInvocation;->withMatcher(Lorg/easymock/ArgumentsMatcher;)Lorg/easymock/internal/ExpectedInvocation;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lorg/easymock/internal/Result;->createReturnResult(Ljava/lang/Object;)Lorg/easymock/internal/Result;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/easymock/internal/IMocksBehavior;->addStub(Lorg/easymock/internal/ExpectedInvocation;Lorg/easymock/internal/Result;)V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/easymock/internal/RecordState;->lastInvocationUsed:Z

    .line 150
    return-void
.end method

.method public setMatcher(Ljava/lang/reflect/Method;Lorg/easymock/ArgumentsMatcher;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 343
    const-string v0, "matcher"

    invoke-direct {p0, v0}, Lorg/easymock/internal/RecordState;->requireMethodCall(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lorg/easymock/internal/RecordState;->behavior:Lorg/easymock/internal/IMocksBehavior;

    iget-object v1, p0, Lorg/easymock/internal/RecordState;->lastInvocation:Lorg/easymock/internal/ExpectedInvocation;

    invoke-virtual {v1}, Lorg/easymock/internal/ExpectedInvocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/easymock/internal/IMocksBehavior;->setMatcher(Ljava/lang/reflect/Method;Lorg/easymock/ArgumentsMatcher;)V

    .line 345
    return-void
.end method

.method public times(Lorg/easymock/internal/Range;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 186
    const-string v0, "times"

    invoke-direct {p0, v0}, Lorg/easymock/internal/RecordState;->requireMethodCall(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Lorg/easymock/internal/RecordState;->requireLastResultOrVoidMethod()V

    .line 189
    iget-object v0, p0, Lorg/easymock/internal/RecordState;->behavior:Lorg/easymock/internal/IMocksBehavior;

    iget-object v1, p0, Lorg/easymock/internal/RecordState;->lastInvocation:Lorg/easymock/internal/ExpectedInvocation;

    iget-object v2, p0, Lorg/easymock/internal/RecordState;->lastResult:Lorg/easymock/internal/Result;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/easymock/internal/RecordState;->lastResult:Lorg/easymock/internal/Result;

    :goto_0
    invoke-interface {v0, v1, v2, p1}, Lorg/easymock/internal/IMocksBehavior;->addExpected(Lorg/easymock/internal/ExpectedInvocation;Lorg/easymock/internal/Result;Lorg/easymock/internal/Range;)V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/easymock/internal/RecordState;->lastInvocationUsed:Z

    .line 192
    iput-object v3, p0, Lorg/easymock/internal/RecordState;->lastResult:Lorg/easymock/internal/Result;

    .line 193
    return-void

    .line 189
    :cond_0
    invoke-static {v3}, Lorg/easymock/internal/Result;->createReturnResult(Ljava/lang/Object;)Lorg/easymock/internal/Result;

    move-result-object v2

    goto :goto_0
.end method

.method public verify()V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Lorg/easymock/internal/RuntimeExceptionWrapper;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling verify is not allowed in record state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/easymock/internal/RuntimeExceptionWrapper;-><init>(Ljava/lang/RuntimeException;)V

    throw v0
.end method
