.class public Lcom/amazon/kcp/reader/pages/internal/CReaderPage;
.super Lcom/amazon/kcp/application/internal/CBasePage;
.source "CReaderPage.java"

# interfaces
.implements Lcom/amazon/kcp/reader/pages/IReaderPage;


# instance fields
.field private bookDocument:Lcom/amazon/kcp/reader/models/IBookDocument;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/models/IBookDocument;Lcom/amazon/kcp/application/IKindleApplicationController;)V
    .locals 1
    .parameter "bookDocument"
    .parameter "kindleApplicationController"

    .prologue
    .line 23
    invoke-direct {p0, p2}, Lcom/amazon/kcp/application/internal/CBasePage;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->bookDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    .line 24
    iput-object p1, p0, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->bookDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    .line 25
    return-void
.end method


# virtual methods
.method public getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->bookDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    return-object v0
.end method
