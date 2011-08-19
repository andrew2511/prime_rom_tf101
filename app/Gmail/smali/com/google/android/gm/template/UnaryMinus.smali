.class public Lcom/google/android/gm/template/UnaryMinus;
.super Lcom/google/android/gm/template/Expression;
.source "UnaryMinus.java"


# instance fields
.field private final mExpression:Lcom/google/android/gm/template/Expression;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/template/Expression;)V
    .locals 0
    .parameter "expression"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/android/gm/template/Expression;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/gm/template/UnaryMinus;->mExpression:Lcom/google/android/gm/template/Expression;

    .line 20
    return-void
.end method


# virtual methods
.method public evaluate(Lcom/google/android/gm/template/EvalContext;)Ljava/lang/Object;
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gm/template/UnaryMinus;->mExpression:Lcom/google/android/gm/template/Expression;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/template/Expression;->evaluate(Lcom/google/android/gm/template/EvalContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/template/UnaryMinus;->negate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public negate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "value"

    .prologue
    .line 33
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 34
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 35
    .restart local p1
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 36
    check-cast p1, Ljava/lang/Double;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 38
    .restart local p1
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot negate value of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
