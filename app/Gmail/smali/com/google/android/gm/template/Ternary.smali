.class public Lcom/google/android/gm/template/Ternary;
.super Lcom/google/android/gm/template/Expression;
.source "Ternary.java"


# instance fields
.field private final mCondition:Lcom/google/android/gm/template/Expression;

.field private final mFalseExpression:Lcom/google/android/gm/template/Expression;

.field private final mTrueExpression:Lcom/google/android/gm/template/Expression;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/template/Expression;Lcom/google/android/gm/template/Expression;Lcom/google/android/gm/template/Expression;)V
    .locals 0
    .parameter "condition"
    .parameter "trueExpression"
    .parameter "falseExpression"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/gm/template/Expression;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/gm/template/Ternary;->mCondition:Lcom/google/android/gm/template/Expression;

    .line 24
    iput-object p2, p0, Lcom/google/android/gm/template/Ternary;->mTrueExpression:Lcom/google/android/gm/template/Expression;

    .line 25
    iput-object p3, p0, Lcom/google/android/gm/template/Ternary;->mFalseExpression:Lcom/google/android/gm/template/Expression;

    .line 26
    return-void
.end method


# virtual methods
.method public evaluate(Lcom/google/android/gm/template/EvalContext;)Ljava/lang/Object;
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gm/template/Ternary;->mCondition:Lcom/google/android/gm/template/Expression;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/template/Expression;->booleanValue(Lcom/google/android/gm/template/EvalContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/template/Ternary;->mTrueExpression:Lcom/google/android/gm/template/Expression;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/template/Expression;->evaluate(Lcom/google/android/gm/template/EvalContext;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/template/Ternary;->mFalseExpression:Lcom/google/android/gm/template/Expression;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/template/Expression;->evaluate(Lcom/google/android/gm/template/EvalContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
