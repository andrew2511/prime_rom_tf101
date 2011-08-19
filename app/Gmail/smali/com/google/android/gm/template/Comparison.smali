.class public Lcom/google/android/gm/template/Comparison;
.super Lcom/google/android/gm/template/Expression;
.source "Comparison.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/template/Comparison$Type;
    }
.end annotation


# instance fields
.field private final mExpression1:Lcom/google/android/gm/template/Expression;

.field private final mExpression2:Lcom/google/android/gm/template/Expression;

.field private final mType:Lcom/google/android/gm/template/Comparison$Type;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/template/Comparison$Type;Lcom/google/android/gm/template/Expression;Lcom/google/android/gm/template/Expression;)V
    .locals 0
    .parameter "type"
    .parameter "expression1"
    .parameter "expression2"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/gm/template/Expression;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/gm/template/Comparison;->mType:Lcom/google/android/gm/template/Comparison$Type;

    .line 31
    iput-object p2, p0, Lcom/google/android/gm/template/Comparison;->mExpression1:Lcom/google/android/gm/template/Expression;

    .line 32
    iput-object p3, p0, Lcom/google/android/gm/template/Comparison;->mExpression2:Lcom/google/android/gm/template/Expression;

    .line 33
    return-void
.end method

.method public static isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .parameter "value1"
    .parameter "value2"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 56
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_3

    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_3

    .line 57
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    .line 58
    .local v1, number1:Ljava/lang/Number;
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v2, v0

    .line 59
    .local v2, number2:Ljava/lang/Number;
    invoke-static {v1}, Lcom/google/android/gm/template/Comparison;->isInteger(Ljava/lang/Number;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/google/android/gm/template/Comparison;->isInteger(Ljava/lang/Number;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move v3, v8

    .line 63
    .end local v1           #number1:Ljava/lang/Number;
    .end local v2           #number2:Ljava/lang/Number;
    :goto_0
    return v3

    .restart local v1       #number1:Ljava/lang/Number;
    .restart local v2       #number2:Ljava/lang/Number;
    :cond_0
    move v3, v7

    .line 59
    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    move v3, v8

    goto :goto_0

    :cond_2
    move v3, v7

    goto :goto_0

    .line 63
    .end local v1           #number1:Ljava/lang/Number;
    .end local v2           #number2:Ljava/lang/Number;
    :cond_3
    if-eq p0, p1, :cond_4

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v3, v8

    goto :goto_0

    :cond_5
    move v3, v7

    goto :goto_0
.end method

.method static isInteger(Ljava/lang/Number;)Z
    .locals 1
    .parameter "n"

    .prologue
    .line 75
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public evaluate(Lcom/google/android/gm/template/EvalContext;)Ljava/lang/Object;
    .locals 5
    .parameter "context"

    .prologue
    .line 37
    iget-object v3, p0, Lcom/google/android/gm/template/Comparison;->mExpression1:Lcom/google/android/gm/template/Expression;

    invoke-virtual {v3, p1}, Lcom/google/android/gm/template/Expression;->evaluate(Lcom/google/android/gm/template/EvalContext;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    .local v1, value1:Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/android/gm/template/Comparison;->mExpression2:Lcom/google/android/gm/template/Expression;

    invoke-virtual {v3, p1}, Lcom/google/android/gm/template/Expression;->evaluate(Lcom/google/android/gm/template/EvalContext;)Ljava/lang/Object;

    move-result-object v2

    .line 40
    .local v2, value2:Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/google/android/gm/template/Comparison;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 41
    .local v0, equals:Z
    iget-object v3, p0, Lcom/google/android/gm/template/Comparison;->mType:Lcom/google/android/gm/template/Comparison$Type;

    sget-object v4, Lcom/google/android/gm/template/Comparison$Type;->EQUALS:Lcom/google/android/gm/template/Comparison$Type;

    if-ne v3, v4, :cond_0

    move v3, v0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_0
    if-nez v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
