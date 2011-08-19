.class public interface abstract Lorg/easymock/internal/IMocksBehavior;
.super Ljava/lang/Object;
.source "IMocksBehavior.java"

# interfaces
.implements Lorg/easymock/internal/ILegacyMatcherMethods;


# virtual methods
.method public abstract addActual(Lorg/easymock/internal/Invocation;)Lorg/easymock/internal/Result;
.end method

.method public abstract addExpected(Lorg/easymock/internal/ExpectedInvocation;Lorg/easymock/internal/Result;Lorg/easymock/internal/Range;)V
.end method

.method public abstract addStub(Lorg/easymock/internal/ExpectedInvocation;Lorg/easymock/internal/Result;)V
.end method

.method public abstract checkCurrentThreadSameAsLastThread()V
.end method

.method public abstract checkOrder(Z)V
.end method

.method public abstract isThreadSafe()Z
.end method

.method public abstract makeThreadSafe(Z)V
.end method

.method public abstract verify()V
.end method
