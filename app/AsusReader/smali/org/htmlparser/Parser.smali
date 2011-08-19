.class public Lorg/htmlparser/Parser;
.super Ljava/lang/Object;
.source "Parser.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/htmlparser/http/ConnectionMonitor;


# static fields
.field public static final DEVNULL:Lorg/htmlparser/util/ParserFeedback;

.field public static final STDOUT:Lorg/htmlparser/util/ParserFeedback;


# instance fields
.field protected mFeedback:Lorg/htmlparser/util/ParserFeedback;

.field protected mLexer:Lorg/htmlparser/lexer/Lexer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 163
    new-instance v0, Lorg/htmlparser/util/DefaultParserFeedback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/htmlparser/util/DefaultParserFeedback;-><init>(I)V

    sput-object v0, Lorg/htmlparser/Parser;->DEVNULL:Lorg/htmlparser/util/ParserFeedback;

    .line 170
    new-instance v0, Lorg/htmlparser/util/DefaultParserFeedback;

    invoke-direct {v0}, Lorg/htmlparser/util/DefaultParserFeedback;-><init>()V

    sput-object v0, Lorg/htmlparser/Parser;->STDOUT:Lorg/htmlparser/util/ParserFeedback;

    .line 174
    invoke-static {}, Lorg/htmlparser/Parser;->getConnectionManager()Lorg/htmlparser/http/ConnectionManager;

    invoke-static {}, Lorg/htmlparser/http/ConnectionManager;->getDefaultRequestProperties()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "User-Agent"

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "HTMLParser/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lorg/htmlparser/Parser;->getVersionNumber()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 259
    new-instance v0, Lorg/htmlparser/lexer/Lexer;

    new-instance v1, Lorg/htmlparser/lexer/Page;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/htmlparser/lexer/Page;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/htmlparser/lexer/Lexer;-><init>(Lorg/htmlparser/lexer/Page;)V

    sget-object v1, Lorg/htmlparser/Parser;->DEVNULL:Lorg/htmlparser/util/ParserFeedback;

    invoke-direct {p0, v0, v1}, Lorg/htmlparser/Parser;-><init>(Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/ParserFeedback;)V

    .line 260
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "resource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 331
    sget-object v0, Lorg/htmlparser/Parser;->STDOUT:Lorg/htmlparser/util/ParserFeedback;

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/Parser;-><init>(Ljava/lang/String;Lorg/htmlparser/util/ParserFeedback;)V

    .line 332
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/htmlparser/util/ParserFeedback;)V
    .locals 1
    .parameter "resource"
    .parameter "feedback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    invoke-virtual {p0, p2}, Lorg/htmlparser/Parser;->setFeedback(Lorg/htmlparser/util/ParserFeedback;)V

    .line 317
    invoke-virtual {p0, p1}, Lorg/htmlparser/Parser;->setResource(Ljava/lang/String;)V

    .line 318
    new-instance v0, Lorg/htmlparser/PrototypicalNodeFactory;

    invoke-direct {v0}, Lorg/htmlparser/PrototypicalNodeFactory;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/Parser;->setNodeFactory(Lorg/htmlparser/NodeFactory;)V

    .line 319
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/lexer/Lexer;)V
    .locals 1
    .parameter "lexer"

    .prologue
    .line 343
    sget-object v0, Lorg/htmlparser/Parser;->STDOUT:Lorg/htmlparser/util/ParserFeedback;

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/Parser;-><init>(Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/ParserFeedback;)V

    .line 344
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/ParserFeedback;)V
    .locals 1
    .parameter "lexer"
    .parameter "fb"

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    invoke-virtual {p0, p2}, Lorg/htmlparser/Parser;->setFeedback(Lorg/htmlparser/util/ParserFeedback;)V

    .line 274
    invoke-virtual {p0, p1}, Lorg/htmlparser/Parser;->setLexer(Lorg/htmlparser/lexer/Lexer;)V

    .line 275
    new-instance v0, Lorg/htmlparser/PrototypicalNodeFactory;

    invoke-direct {v0}, Lorg/htmlparser/PrototypicalNodeFactory;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/Parser;->setNodeFactory(Lorg/htmlparser/NodeFactory;)V

    .line 276
    return-void
.end method

.method public static createParser(Ljava/lang/String;Ljava/lang/String;)Lorg/htmlparser/Parser;
    .locals 3
    .parameter "html"
    .parameter "charset"

    .prologue
    .line 238
    if-nez p0, :cond_0

    .line 239
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "html cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_0
    new-instance v0, Lorg/htmlparser/Parser;

    new-instance v1, Lorg/htmlparser/lexer/Lexer;

    new-instance v2, Lorg/htmlparser/lexer/Page;

    invoke-direct {v2, p0, p1}, Lorg/htmlparser/lexer/Page;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/htmlparser/lexer/Lexer;-><init>(Lorg/htmlparser/lexer/Page;)V

    invoke-direct {v0, v1}, Lorg/htmlparser/Parser;-><init>(Lorg/htmlparser/lexer/Lexer;)V

    .line 242
    .local v0, ret:Lorg/htmlparser/Parser;
    return-object v0
.end method

.method public static getConnectionManager()Lorg/htmlparser/http/ConnectionManager;
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lorg/htmlparser/lexer/Page;->getConnectionManager()Lorg/htmlparser/http/ConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionNumber()D
    .locals 2

    .prologue
    .line 202
    const-wide v0, 0x3ff999999999999aL

    return-wide v0
.end method


# virtual methods
.method public elements()Lorg/htmlparser/util/NodeIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 657
    new-instance v0, Lorg/htmlparser/util/IteratorImpl;

    invoke-virtual {p0}, Lorg/htmlparser/Parser;->getLexer()Lorg/htmlparser/lexer/Lexer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/htmlparser/Parser;->getFeedback()Lorg/htmlparser/util/ParserFeedback;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/htmlparser/util/IteratorImpl;-><init>(Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/ParserFeedback;)V

    return-object v0
.end method

.method public extractAllNodesThatMatch(Lorg/htmlparser/NodeFilter;)Lorg/htmlparser/util/NodeList;
    .locals 3
    .parameter "filter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 766
    new-instance v1, Lorg/htmlparser/util/NodeList;

    invoke-direct {v1}, Lorg/htmlparser/util/NodeList;-><init>()V

    .line 767
    .local v1, ret:Lorg/htmlparser/util/NodeList;
    invoke-virtual {p0}, Lorg/htmlparser/Parser;->elements()Lorg/htmlparser/util/NodeIterator;

    move-result-object v0

    .local v0, e:Lorg/htmlparser/util/NodeIterator;
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/NodeIterator;->hasMoreNodes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 768
    invoke-interface {v0}, Lorg/htmlparser/util/NodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Lorg/htmlparser/Node;->collectInto(Lorg/htmlparser/util/NodeList;Lorg/htmlparser/NodeFilter;)V

    goto :goto_0

    .line 770
    :cond_0
    return-object v1
.end method

.method public getFeedback()Lorg/htmlparser/util/ParserFeedback;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lorg/htmlparser/Parser;->mFeedback:Lorg/htmlparser/util/ParserFeedback;

    return-object v0
.end method

.method public getLexer()Lorg/htmlparser/lexer/Lexer;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lorg/htmlparser/Parser;->mLexer:Lorg/htmlparser/lexer/Lexer;

    return-object v0
.end method

.method public parse(Lorg/htmlparser/NodeFilter;)Lorg/htmlparser/util/NodeList;
    .locals 4
    .parameter "filter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 698
    new-instance v2, Lorg/htmlparser/util/NodeList;

    invoke-direct {v2}, Lorg/htmlparser/util/NodeList;-><init>()V

    .line 699
    .local v2, ret:Lorg/htmlparser/util/NodeList;
    invoke-virtual {p0}, Lorg/htmlparser/Parser;->elements()Lorg/htmlparser/util/NodeIterator;

    move-result-object v0

    .local v0, e:Lorg/htmlparser/util/NodeIterator;
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/NodeIterator;->hasMoreNodes()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 701
    invoke-interface {v0}, Lorg/htmlparser/util/NodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v1

    .line 702
    .local v1, node:Lorg/htmlparser/Node;
    if-eqz p1, :cond_0

    .line 703
    invoke-interface {v1, v2, p1}, Lorg/htmlparser/Node;->collectInto(Lorg/htmlparser/util/NodeList;Lorg/htmlparser/NodeFilter;)V

    goto :goto_0

    .line 705
    :cond_0
    invoke-virtual {v2, v1}, Lorg/htmlparser/util/NodeList;->add(Lorg/htmlparser/Node;)V

    goto :goto_0

    .line 708
    .end local v1           #node:Lorg/htmlparser/Node;
    :cond_1
    return-object v2
.end method

.method public postConnect(Ljava/net/HttpURLConnection;)V
    .locals 2
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 804
    invoke-virtual {p0}, Lorg/htmlparser/Parser;->getFeedback()Lorg/htmlparser/util/ParserFeedback;

    move-result-object v0

    invoke-static {p1}, Lorg/htmlparser/http/HttpHeader;->getResponseHeader(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/htmlparser/util/ParserFeedback;->info(Ljava/lang/String;)V

    .line 805
    return-void
.end method

.method public preConnect(Ljava/net/HttpURLConnection;)V
    .locals 2
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 789
    invoke-virtual {p0}, Lorg/htmlparser/Parser;->getFeedback()Lorg/htmlparser/util/ParserFeedback;

    move-result-object v0

    invoke-static {p1}, Lorg/htmlparser/http/HttpHeader;->getRequestHeader(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/htmlparser/util/ParserFeedback;->info(Ljava/lang/String;)V

    .line 790
    return-void
.end method

.method public setFeedback(Lorg/htmlparser/util/ParserFeedback;)V
    .locals 1
    .parameter "fb"

    .prologue
    .line 567
    if-nez p1, :cond_0

    .line 568
    sget-object v0, Lorg/htmlparser/Parser;->DEVNULL:Lorg/htmlparser/util/ParserFeedback;

    iput-object v0, p0, Lorg/htmlparser/Parser;->mFeedback:Lorg/htmlparser/util/ParserFeedback;

    .line 571
    :goto_0
    return-void

    .line 570
    :cond_0
    iput-object p1, p0, Lorg/htmlparser/Parser;->mFeedback:Lorg/htmlparser/util/ParserFeedback;

    goto :goto_0
.end method

.method public setLexer(Lorg/htmlparser/lexer/Lexer;)V
    .locals 5
    .parameter "lexer"

    .prologue
    .line 508
    if-nez p1, :cond_0

    .line 509
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "lexer cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 511
    :cond_0
    const/4 v0, 0x0

    .line 512
    .local v0, factory:Lorg/htmlparser/NodeFactory;
    invoke-virtual {p0}, Lorg/htmlparser/Parser;->getLexer()Lorg/htmlparser/lexer/Lexer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 513
    invoke-virtual {p0}, Lorg/htmlparser/Parser;->getLexer()Lorg/htmlparser/lexer/Lexer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Lexer;->getNodeFactory()Lorg/htmlparser/NodeFactory;

    move-result-object v0

    .line 514
    :cond_1
    if-eqz v0, :cond_2

    .line 515
    invoke-virtual {p1, v0}, Lorg/htmlparser/lexer/Lexer;->setNodeFactory(Lorg/htmlparser/NodeFactory;)V

    .line 516
    :cond_2
    iput-object p1, p0, Lorg/htmlparser/Parser;->mLexer:Lorg/htmlparser/lexer/Lexer;

    .line 518
    iget-object v2, p0, Lorg/htmlparser/Parser;->mLexer:Lorg/htmlparser/lexer/Lexer;

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v2

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Page;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, type:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 520
    invoke-virtual {p0}, Lorg/htmlparser/Parser;->getFeedback()Lorg/htmlparser/util/ParserFeedback;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/htmlparser/Parser;->mLexer:Lorg/htmlparser/lexer/Lexer;

    invoke-virtual {v4}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v4

    invoke-virtual {v4}, Lorg/htmlparser/lexer/Page;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " does not contain text"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/htmlparser/util/ParserFeedback;->warning(Ljava/lang/String;)V

    .line 524
    :cond_3
    return-void
.end method

.method public setNodeFactory(Lorg/htmlparser/NodeFactory;)V
    .locals 2
    .parameter "factory"

    .prologue
    .line 554
    if-nez p1, :cond_0

    .line 555
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "node factory cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/Parser;->getLexer()Lorg/htmlparser/lexer/Lexer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/htmlparser/lexer/Lexer;->setNodeFactory(Lorg/htmlparser/NodeFactory;)V

    .line 557
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 6
    .parameter "resource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 381
    if-nez p1, :cond_0

    .line 382
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "resource cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 383
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 384
    .local v3, length:I
    const/4 v1, 0x0

    .line 385
    .local v1, html:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 387
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 388
    .local v0, ch:C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 390
    const/16 v4, 0x3c

    if-ne v4, v0, :cond_1

    .line 391
    const/4 v1, 0x1

    .line 395
    .end local v0           #ch:C
    :cond_1
    if-eqz v1, :cond_3

    .line 396
    new-instance v4, Lorg/htmlparser/lexer/Lexer;

    new-instance v5, Lorg/htmlparser/lexer/Page;

    invoke-direct {v5, p1}, Lorg/htmlparser/lexer/Page;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/htmlparser/lexer/Lexer;-><init>(Lorg/htmlparser/lexer/Page;)V

    invoke-virtual {p0, v4}, Lorg/htmlparser/Parser;->setLexer(Lorg/htmlparser/lexer/Lexer;)V

    .line 399
    :goto_1
    return-void

    .line 385
    .restart local v0       #ch:C
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 398
    .end local v0           #ch:C
    :cond_3
    new-instance v4, Lorg/htmlparser/lexer/Lexer;

    invoke-static {}, Lorg/htmlparser/Parser;->getConnectionManager()Lorg/htmlparser/http/ConnectionManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/htmlparser/http/ConnectionManager;->openConnection(Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/htmlparser/lexer/Lexer;-><init>(Ljava/net/URLConnection;)V

    invoke-virtual {p0, v4}, Lorg/htmlparser/Parser;->setLexer(Lorg/htmlparser/lexer/Lexer;)V

    goto :goto_1
.end method

.method public visitAllNodesWith(Lorg/htmlparser/visitors/NodeVisitor;)V
    .locals 3
    .parameter "visitor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 724
    invoke-virtual {p1}, Lorg/htmlparser/visitors/NodeVisitor;->beginParsing()V

    .line 725
    invoke-virtual {p0}, Lorg/htmlparser/Parser;->elements()Lorg/htmlparser/util/NodeIterator;

    move-result-object v0

    .local v0, e:Lorg/htmlparser/util/NodeIterator;
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/NodeIterator;->hasMoreNodes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 727
    invoke-interface {v0}, Lorg/htmlparser/util/NodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v1

    .line 728
    .local v1, node:Lorg/htmlparser/Node;
    invoke-interface {v1, p1}, Lorg/htmlparser/Node;->accept(Lorg/htmlparser/visitors/NodeVisitor;)V

    goto :goto_0

    .line 730
    .end local v1           #node:Lorg/htmlparser/Node;
    :cond_0
    invoke-virtual {p1}, Lorg/htmlparser/visitors/NodeVisitor;->finishedParsing()V

    .line 731
    return-void
.end method
