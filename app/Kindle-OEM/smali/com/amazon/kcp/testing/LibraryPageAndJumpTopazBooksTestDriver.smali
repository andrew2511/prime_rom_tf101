.class public Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;
.super Ljava/lang/Object;
.source "LibraryPageAndJumpTopazBooksTestDriver.java"

# interfaces
.implements Lcom/amazon/kcp/testing/ILibraryTestDriver;


# instance fields
.field private curBook:I

.field private curBookTimesOpened:I

.field private final library:Lcom/amazon/kcp/library/models/ILibrary;

.field private nextBook:I

.field private final simulateUserPaging:Z

.field private final timesPerBook:I


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/ILibrary;Z)V
    .locals 2
    .parameter "library"
    .parameter "simulateUserPaging"

    .prologue
    const/4 v1, 0x2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->library:Lcom/amazon/kcp/library/models/ILibrary;

    .line 22
    iput-boolean p2, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->simulateUserPaging:Z

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->curBook:I

    .line 25
    iget v0, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->curBook:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->findNextTopazBook(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->nextBook:I

    .line 26
    iput v1, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->timesPerBook:I

    .line 27
    iput v1, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->curBookTimesOpened:I

    .line 28
    return-void
.end method

.method private findNextTopazBook(I)I
    .locals 4
    .parameter "startIndex"

    .prologue
    .line 32
    iget-object v3, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->library:Lcom/amazon/kcp/library/models/ILibrary;

    invoke-interface {v3}, Lcom/amazon/kcp/library/models/ILibrary;->getBookCount()I

    move-result v2

    .line 34
    .local v2, numBooks:I
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 36
    iget-object v3, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->library:Lcom/amazon/kcp/library/models/ILibrary;

    invoke-interface {v3, v0}, Lcom/amazon/kcp/library/models/ILibrary;->getBookFromIndex(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/ILocalBookItem;

    .line 38
    .local v1, item:Lcom/amazon/kcp/library/models/ILocalBookItem;
    instance-of v3, v1, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;

    if-eqz v3, :cond_0

    move v3, v0

    .line 44
    .end local v1           #item:Lcom/amazon/kcp/library/models/ILocalBookItem;
    :goto_1
    return v3

    .line 34
    .restart local v1       #item:Lcom/amazon/kcp/library/models/ILocalBookItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    .end local v1           #item:Lcom/amazon/kcp/library/models/ILocalBookItem;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method


# virtual methods
.method public getBook()Lcom/amazon/kcp/library/models/ILocalBookItem;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->library:Lcom/amazon/kcp/library/models/ILibrary;

    iget v1, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->curBook:I

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/ILibrary;->getBookFromIndex(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    return-object p0
.end method

.method public getReaderTestDriver()Lcom/amazon/kcp/testing/IReaderTestDriver;
    .locals 4

    .prologue
    const/4 v1, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    iget v0, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->curBookTimesOpened:I

    packed-switch v0, :pswitch_data_0

    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 58
    :pswitch_0
    iget-boolean v0, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->simulateUserPaging:Z

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;

    const/16 v1, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;-><init>(IZI)V

    .line 73
    :goto_0
    return-object v0

    .line 64
    :cond_0
    new-instance v0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;

    invoke-direct {v0, v2, v3, v2}, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;-><init>(IZI)V

    goto :goto_0

    .line 67
    :pswitch_1
    iget-boolean v0, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->simulateUserPaging:Z

    if-eqz v0, :cond_1

    .line 69
    new-instance v0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;

    invoke-direct {v0, v1, v3, v1}, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;-><init>(IZI)V

    goto :goto_0

    .line 73
    :cond_1
    new-instance v0, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;

    invoke-direct {v0, v2, v3, v1}, Lcom/amazon/kcp/testing/ReaderPageAndJumpTestDriver;-><init>(IZI)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public next()V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->runningTests()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 86
    :cond_0
    iget v0, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->curBookTimesOpened:I

    iget v1, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->timesPerBook:I

    if-ne v0, v1, :cond_1

    .line 88
    iget v0, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->nextBook:I

    iput v0, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->curBook:I

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->curBookTimesOpened:I

    .line 90
    iget v0, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->curBook:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->findNextTopazBook(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->nextBook:I

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_1
    iget v0, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->curBookTimesOpened:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->curBookTimesOpened:I

    goto :goto_0
.end method

.method public runningTests()Z
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->timesPerBook:I

    iget v1, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->curBookTimesOpened:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kcp/testing/LibraryPageAndJumpTopazBooksTestDriver;->nextBook:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
