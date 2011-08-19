.class public Lcom/amazon/kcp/library/internal/commands/RevokeCommand;
.super Lcom/amazon/kcp/application/internal/commands/CCommand;
.source "RevokeCommand.java"


# instance fields
.field bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

.field localLibrary:Lcom/amazon/kcp/library/models/ILibrary;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/ILibrary;Lcom/amazon/kcp/library/models/ILocalBookItem;)V
    .locals 0
    .parameter "localLibrary"
    .parameter "bookItem"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/CCommand;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/kcp/library/internal/commands/RevokeCommand;->localLibrary:Lcom/amazon/kcp/library/models/ILibrary;

    .line 39
    iput-object p2, p0, Lcom/amazon/kcp/library/internal/commands/RevokeCommand;->bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/library/models/ILibrary;Ljava/lang/String;)V
    .locals 1
    .parameter "localLibrary"
    .parameter "asin"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/CCommand;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/library/internal/commands/RevokeCommand;->localLibrary:Lcom/amazon/kcp/library/models/ILibrary;

    .line 27
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/amazon/kcp/library/models/ILibrary;->getBook(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/internal/commands/RevokeCommand;->bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

    .line 28
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amazon/kcp/library/internal/commands/RevokeCommand;->bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/library/internal/commands/RevokeCommand;->localLibrary:Lcom/amazon/kcp/library/models/ILibrary;

    iget-object v1, p0, Lcom/amazon/kcp/library/internal/commands/RevokeCommand;->bookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/ILibrary;->deleteBook(Lcom/amazon/kcp/library/models/ILocalBookItem;)Z

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/internal/commands/RevokeCommand;->kill()V

    .line 54
    return-void
.end method
