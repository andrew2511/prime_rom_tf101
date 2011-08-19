.class public interface abstract Lcom/amazon/kcp/testing/IReaderTestDriver;
.super Ljava/lang/Object;
.source "IReaderTestDriver.java"


# static fields
.field public static final ACTION_CLOSE:I = 0x3

.field public static final ACTION_JUMP:I = 0x2

.field public static final ACTION_NEXT_PAGE:I = 0x1


# virtual methods
.method public abstract exitAfterLastPage()Z
.end method

.method public abstract getAction()I
.end method

.method public abstract getActionDelay()I
.end method

.method public abstract getFontSize()I
.end method

.method public abstract getJumpTarget()I
.end method

.method public abstract next()V
.end method

.method public abstract runningTests()Z
.end method

.method public abstract stopTests()V
.end method
