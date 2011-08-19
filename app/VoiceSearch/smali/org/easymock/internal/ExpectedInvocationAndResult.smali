.class public Lorg/easymock/internal/ExpectedInvocationAndResult;
.super Ljava/lang/Object;
.source "ExpectedInvocationAndResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1b13e94ece813f9fL


# instance fields
.field expectedInvocation:Lorg/easymock/internal/ExpectedInvocation;

.field result:Lorg/easymock/internal/Result;


# direct methods
.method public constructor <init>(Lorg/easymock/internal/ExpectedInvocation;Lorg/easymock/internal/Result;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/easymock/internal/ExpectedInvocationAndResult;->expectedInvocation:Lorg/easymock/internal/ExpectedInvocation;

    .line 20
    iput-object p2, p0, Lorg/easymock/internal/ExpectedInvocationAndResult;->result:Lorg/easymock/internal/Result;

    .line 21
    return-void
.end method


# virtual methods
.method public getExpectedInvocation()Lorg/easymock/internal/ExpectedInvocation;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lorg/easymock/internal/ExpectedInvocationAndResult;->expectedInvocation:Lorg/easymock/internal/ExpectedInvocation;

    return-object v0
.end method

.method public getResult()Lorg/easymock/internal/Result;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/easymock/internal/ExpectedInvocationAndResult;->result:Lorg/easymock/internal/Result;

    return-object v0
.end method
