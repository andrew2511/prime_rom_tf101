.class public Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;
.super Ljava/lang/Object;
.source "ReaderPageAndJumpTestDriver.java"

# interfaces
.implements Lcom/amazon/kcp/testing/IReaderTestDriver;


# instance fields
.field private curAction:I

.field private final delay:I

.field private final exitAfterLastPage:Z

.field private final fontSize:I

.field private numActions:I

.field private runningTests:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1
    .parameter "delay"
    .parameter "exitAfterLastPage"

    .prologue
    .line 18
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;-><init>(IZI)V

    .line 19
    return-void
.end method

.method public constructor <init>(IZI)V
    .locals 1
    .parameter "delay"
    .parameter "exitAfterLastPage"
    .parameter "fontSize"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;->delay:I

    .line 24
    iput-boolean p2, p0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;->exitAfterLastPage:Z

    .line 25
    iput p3, p0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;->fontSize:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;->numActions:I

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;->runningTests:Z

    .line 29
    return-void
.end method


# virtual methods
.method public exitAfterLastPage()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;->exitAfterLastPage:Z

    return v0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;->curAction:I

    return v0
.end method

.method public getActionDelay()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;->delay:I

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;->fontSize:I

    return v0
.end method

.method public getJumpTarget()I
    .locals 5

    .prologue
    .line 77
    invoke-static {}, Lcom/amazon/kcp/testing/ReaderTesting;->getBookNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v3

    .line 78
    .local v3, navigator:Lcom/amazon/kcp/reader/models/IBookNavigator;
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getPageFirstPosition(I)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getLocationFromPosition(I)I

    move-result v1

    .line 79
    .local v1, curLocation:I
    invoke-interface {v3}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getLastPosition()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getLocationFromPosition(I)I

    move-result v0

    .line 80
    .local v0, bookEndLocation:I
    div-int/lit8 v2, v0, 0x2

    .line 82
    .local v2, midPoint:I
    if-ge v1, v2, :cond_0

    .line 84
    add-int v4, v2, v0

    div-int/lit8 v4, v4, 0x2

    .line 88
    :goto_0
    return v4

    :cond_0
    div-int/lit8 v4, v2, 0x2

    goto :goto_0
.end method

.method public next()V
    .locals 4

    .prologue
    const/16 v1, 0xa

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 38
    iget v0, p0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;->numActions:I

    if-ge v0, v1, :cond_0

    .line 40
    iput v2, p0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;->curAction:I

    .line 62
    :goto_0
    iget v0, p0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;->numActions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;->numActions:I

    .line 63
    return-void

    .line 42
    :cond_0
    iget v0, p0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;->numActions:I

    if-ne v0, v1, :cond_1

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;->curAction:I

    goto :goto_0

    .line 46
    :cond_1
    iget v0, p0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;->numActions:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    .line 48
    iput v2, p0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;->curAction:I

    goto :goto_0

    .line 52
    :cond_2
    iget-boolean v0, p0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;->exitAfterLastPage:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;->curAction:I

    if-eq v0, v3, :cond_3

    .line 54
    iput v3, p0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;->curAction:I

    goto :goto_0

    .line 58
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;->runningTests:Z

    goto :goto_0
.end method

.method public runningTests()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;->runningTests:Z

    return v0
.end method

.method public stopTests()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;->runningTests:Z

    .line 105
    return-void
.end method
