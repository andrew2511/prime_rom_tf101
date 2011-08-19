.class public Lcom/amazon/kcp/testing/ReaderPagingTestDriver;
.super Ljava/lang/Object;
.source "ReaderPagingTestDriver.java"

# interfaces
.implements Lcom/amazon/kcp/testing/IReaderTestDriver;


# instance fields
.field private final delay:I

.field private final exitAfterLastPage:Z

.field private final fontSize:I

.field private runningTests:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1
    .parameter "delay"
    .parameter "exitAfterLastPage"

    .prologue
    .line 15
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/testing/ReaderPagingTestDriver;-><init>(IZI)V

    .line 16
    return-void
.end method

.method public constructor <init>(IZI)V
    .locals 1
    .parameter "delay"
    .parameter "exitAfterLastPage"
    .parameter "fontSize"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p3, p0, Lcom/amazon/kcp/testing/ReaderPagingTestDriver;->fontSize:I

    .line 21
    iput p1, p0, Lcom/amazon/kcp/testing/ReaderPagingTestDriver;->delay:I

    .line 22
    iput-boolean p2, p0, Lcom/amazon/kcp/testing/ReaderPagingTestDriver;->exitAfterLastPage:Z

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/testing/ReaderPagingTestDriver;->runningTests:Z

    .line 24
    return-void
.end method


# virtual methods
.method public exitAfterLastPage()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/amazon/kcp/testing/ReaderPagingTestDriver;->exitAfterLastPage:Z

    return v0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public getActionDelay()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/amazon/kcp/testing/ReaderPagingTestDriver;->delay:I

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/amazon/kcp/testing/ReaderPagingTestDriver;->fontSize:I

    return v0
.end method

.method public getJumpTarget()I
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public next()V
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/amazon/kcp/testing/ReaderPagingTestDriver;->runningTests()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 39
    :cond_0
    return-void
.end method

.method public runningTests()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/amazon/kcp/testing/ReaderPagingTestDriver;->runningTests:Z

    return v0
.end method

.method public stopTests()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/testing/ReaderPagingTestDriver;->runningTests:Z

    .line 70
    return-void
.end method
