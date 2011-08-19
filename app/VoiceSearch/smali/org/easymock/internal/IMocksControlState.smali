.class public interface abstract Lorg/easymock/internal/IMocksControlState;
.super Ljava/lang/Object;
.source "IMocksControlState.java"

# interfaces
.implements Lorg/easymock/internal/ILegacyMethods;


# virtual methods
.method public abstract andAnswer(Lorg/easymock/IAnswer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/IAnswer",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract andReturn(Ljava/lang/Object;)V
.end method

.method public abstract andStubAnswer(Lorg/easymock/IAnswer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/IAnswer",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract andStubReturn(Ljava/lang/Object;)V
.end method

.method public abstract andStubThrow(Ljava/lang/Throwable;)V
.end method

.method public abstract andThrow(Ljava/lang/Throwable;)V
.end method

.method public abstract asStub()V
.end method

.method public abstract assertRecordState()V
.end method

.method public abstract checkOrder(Z)V
.end method

.method public abstract invoke(Lorg/easymock/internal/Invocation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract makeThreadSafe(Z)V
.end method

.method public abstract replay()V
.end method

.method public abstract times(Lorg/easymock/internal/Range;)V
.end method

.method public abstract verify()V
.end method
