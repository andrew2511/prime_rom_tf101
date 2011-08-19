.class public Lorg/easymock/internal/ExpectedInvocationAndResults;
.super Ljava/lang/Object;
.source "ExpectedInvocationAndResults.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x71a8ac5898e38a90L


# instance fields
.field expectedInvocation:Lorg/easymock/internal/ExpectedInvocation;

.field results:Lorg/easymock/internal/Results;


# direct methods
.method public constructor <init>(Lorg/easymock/internal/ExpectedInvocation;Lorg/easymock/internal/Results;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/easymock/internal/ExpectedInvocationAndResults;->expectedInvocation:Lorg/easymock/internal/ExpectedInvocation;

    .line 20
    iput-object p2, p0, Lorg/easymock/internal/ExpectedInvocationAndResults;->results:Lorg/easymock/internal/Results;

    .line 21
    return-void
.end method


# virtual methods
.method public getExpectedInvocation()Lorg/easymock/internal/ExpectedInvocation;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lorg/easymock/internal/ExpectedInvocationAndResults;->expectedInvocation:Lorg/easymock/internal/ExpectedInvocation;

    return-object v0
.end method

.method public getResults()Lorg/easymock/internal/Results;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/easymock/internal/ExpectedInvocationAndResults;->results:Lorg/easymock/internal/Results;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/easymock/internal/ExpectedInvocationAndResults;->expectedInvocation:Lorg/easymock/internal/ExpectedInvocation;

    invoke-virtual {v1}, Lorg/easymock/internal/ExpectedInvocation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/easymock/internal/ExpectedInvocationAndResults;->results:Lorg/easymock/internal/Results;

    invoke-virtual {v1}, Lorg/easymock/internal/Results;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
