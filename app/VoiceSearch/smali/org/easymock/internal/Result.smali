.class public Lorg/easymock/internal/Result;
.super Ljava/lang/Object;
.source "Result.java"

# interfaces
.implements Lorg/easymock/IAnswer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/easymock/IAnswer",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4bff8e20489951f1L


# instance fields
.field private value:Lorg/easymock/IAnswer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/easymock/IAnswer",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/easymock/IAnswer;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/IAnswer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/easymock/internal/Result;->value:Lorg/easymock/IAnswer;

    .line 19
    return-void
.end method

.method public static createAnswerResult(Lorg/easymock/IAnswer;)Lorg/easymock/internal/Result;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/IAnswer",
            "<*>;)",
            "Lorg/easymock/internal/Result;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lorg/easymock/internal/Result;

    invoke-direct {v0, p0}, Lorg/easymock/internal/Result;-><init>(Lorg/easymock/IAnswer;)V

    return-object v0
.end method

.method public static createReturnResult(Ljava/lang/Object;)Lorg/easymock/internal/Result;
    .locals 2
    .parameter

    .prologue
    .line 52
    new-instance v0, Lorg/easymock/internal/Result;

    new-instance v1, Lorg/easymock/internal/Result$1ReturningAnswer;

    invoke-direct {v1, p0}, Lorg/easymock/internal/Result$1ReturningAnswer;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lorg/easymock/internal/Result;-><init>(Lorg/easymock/IAnswer;)V

    return-object v0
.end method

.method public static createThrowResult(Ljava/lang/Throwable;)Lorg/easymock/internal/Result;
    .locals 2
    .parameter

    .prologue
    .line 35
    new-instance v0, Lorg/easymock/internal/Result;

    new-instance v1, Lorg/easymock/internal/Result$1ThrowingAnswer;

    invoke-direct {v1, p0}, Lorg/easymock/internal/Result$1ThrowingAnswer;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lorg/easymock/internal/Result;-><init>(Lorg/easymock/IAnswer;)V

    return-object v0
.end method


# virtual methods
.method public answer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lorg/easymock/internal/Result;->value:Lorg/easymock/IAnswer;

    invoke-interface {v0}, Lorg/easymock/IAnswer;->answer()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/easymock/internal/Result;->value:Lorg/easymock/IAnswer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
