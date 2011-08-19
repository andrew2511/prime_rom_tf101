.class public Lcom/google/android/gm/template/ElseIf;
.super Lcom/google/android/gm/template/Command;
.source "ElseIf.java"


# instance fields
.field private final mCondition:Lcom/google/android/gm/template/Expression;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/template/Expression;)V
    .locals 0
    .parameter "condition"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/android/gm/template/Command;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/google/android/gm/template/ElseIf;->mCondition:Lcom/google/android/gm/template/Expression;

    .line 13
    return-void
.end method


# virtual methods
.method public getCondition()Lcom/google/android/gm/template/Expression;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gm/template/ElseIf;->mCondition:Lcom/google/android/gm/template/Expression;

    return-object v0
.end method
