.class public interface abstract Lorg/easymock/IExpectationSetters;
.super Ljava/lang/Object;
.source "IExpectationSetters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract andAnswer(Lorg/easymock/IAnswer;)Lorg/easymock/IExpectationSetters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/IAnswer",
            "<+TT;>;)",
            "Lorg/easymock/IExpectationSetters",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract andReturn(Ljava/lang/Object;)Lorg/easymock/IExpectationSetters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/easymock/IExpectationSetters",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract andStubAnswer(Lorg/easymock/IAnswer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/IAnswer",
            "<+TT;>;)V"
        }
    .end annotation
.end method

.method public abstract andStubReturn(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract andStubThrow(Ljava/lang/Throwable;)V
.end method

.method public abstract andThrow(Ljava/lang/Throwable;)Lorg/easymock/IExpectationSetters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/easymock/IExpectationSetters",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract anyTimes()Lorg/easymock/IExpectationSetters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/easymock/IExpectationSetters",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract asStub()V
.end method

.method public abstract atLeastOnce()Lorg/easymock/IExpectationSetters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/easymock/IExpectationSetters",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract once()Lorg/easymock/IExpectationSetters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/easymock/IExpectationSetters",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract times(I)Lorg/easymock/IExpectationSetters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/easymock/IExpectationSetters",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract times(II)Lorg/easymock/IExpectationSetters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/easymock/IExpectationSetters",
            "<TT;>;"
        }
    .end annotation
.end method
