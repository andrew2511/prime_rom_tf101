.class public abstract Lgov/nist/javax/sip/message/SIPMessage;
.super Lgov/nist/javax/sip/message/MessageObject;
.source "SIPMessage.java"

# interfaces
.implements Ljavax/sip/message/Message;
.implements Lgov/nist/javax/sip/message/MessageExt;


# static fields
.field private static final AUTHORIZATION_LOWERCASE:Ljava/lang/String;

.field private static final CONTACT_LOWERCASE:Ljava/lang/String;

.field private static final CONTENT_DISPOSITION_LOWERCASE:Ljava/lang/String;

.field private static final CONTENT_ENCODING_LOWERCASE:Ljava/lang/String;

.field private static final CONTENT_LANGUAGE_LOWERCASE:Ljava/lang/String;

.field private static final CONTENT_TYPE_LOWERCASE:Ljava/lang/String;

.field private static final ERROR_LOWERCASE:Ljava/lang/String;

.field private static final EXPIRES_LOWERCASE:Ljava/lang/String;

.field private static final RECORDROUTE_LOWERCASE:Ljava/lang/String;

.field private static final ROUTE_LOWERCASE:Ljava/lang/String;

.field private static final VIA_LOWERCASE:Ljava/lang/String;


# instance fields
.field protected applicationData:Ljava/lang/Object;

.field protected cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

.field protected callIdHeader:Lgov/nist/javax/sip/header/CallID;

.field private contentEncodingCharset:Ljava/lang/String;

.field protected contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

.field protected fromHeader:Lgov/nist/javax/sip/header/From;

.field protected headers:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation
.end field

.field protected maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

.field private messageContent:Ljava/lang/String;

.field private messageContentBytes:[B

.field private messageContentObject:Ljava/lang/Object;

.field private nameTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation
.end field

.field protected nullRequest:Z

.field protected size:I

.field protected toHeader:Lgov/nist/javax/sip/header/To;

.field protected unrecognizedHeaders:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 936
    const-string v0, "Content-Type"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_TYPE_LOWERCASE:Ljava/lang/String;

    .line 966
    const-string v0, "Error-Info"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->ERROR_LOWERCASE:Ljava/lang/String;

    .line 977
    const-string v0, "Contact"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTACT_LOWERCASE:Ljava/lang/String;

    .line 1003
    const-string v0, "Via"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->VIA_LOWERCASE:Ljava/lang/String;

    .line 1060
    const-string v0, "Authorization"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->AUTHORIZATION_LOWERCASE:Ljava/lang/String;

    .line 1091
    const-string v0, "Route"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->ROUTE_LOWERCASE:Ljava/lang/String;

    .line 1133
    const-string v0, "Record-Route"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->RECORDROUTE_LOWERCASE:Ljava/lang/String;

    .line 1631
    const-string v0, "Content-Disposition"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_DISPOSITION_LOWERCASE:Ljava/lang/String;

    .line 1643
    const-string v0, "Content-Encoding"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_ENCODING_LOWERCASE:Ljava/lang/String;

    .line 1655
    const-string v0, "Content-Language"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_LANGUAGE_LOWERCASE:Ljava/lang/String;

    .line 1667
    const-string v0, "Expires"

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->EXPIRES_LOWERCASE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 542
    invoke-direct {p0}, Lgov/nist/javax/sip/message/MessageObject;-><init>()V

    .line 130
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultContentEncodingCharset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentEncodingCharset:Ljava/lang/String;

    .line 543
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    .line 544
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 545
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    .line 547
    :try_start_1e
    new-instance v0, Lgov/nist/javax/sip/header/ContentLength;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgov/nist/javax/sip/header/ContentLength;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_29

    .line 550
    :goto_28
    return-void

    .line 548
    :catch_29
    move-exception v0

    goto :goto_28
.end method

.method private attachHeader(Lgov/nist/javax/sip/header/SIPHeader;)V
    .registers 6
    .parameter "h"

    .prologue
    .line 558
    if-nez p1, :cond_a

    .line 559
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null header!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 561
    :cond_a
    :try_start_a
    instance-of v2, p1, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v2, :cond_19

    .line 562
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    move-object v1, v0

    .line 563
    .local v1, hl:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 571
    .end local v1           #hl:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    :goto_18
    return-void

    .line 567
    :cond_19
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    :try_end_1e
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_a .. :try_end_1e} :catch_1f

    goto :goto_18

    .line 568
    :catch_1f
    move-exception v2

    goto :goto_18
.end method

.method private computeContentLength(Ljava/lang/Object;)V
    .registers 5
    .parameter "content"

    .prologue
    .line 1344
    const/4 v1, 0x0

    .line 1345
    .local v1, length:I
    if-eqz p1, :cond_12

    .line 1346
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1e

    .line 1348
    :try_start_7
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v1, v2
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_12} :catch_18

    .line 1360
    :cond_12
    :goto_12
    :try_start_12
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_17
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_12 .. :try_end_17} :catch_31

    .line 1364
    :goto_17
    return-void

    .line 1349
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 1350
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_12

    .line 1352
    .end local v0           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local p1
    :cond_1e
    instance-of v2, p1, [B

    if-eqz v2, :cond_28

    .line 1353
    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    array-length v1, p1

    goto :goto_12

    .line 1355
    .restart local p1
    :cond_28
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_12

    .line 1361
    .end local p1
    :catch_31
    move-exception v2

    goto :goto_17
.end method

.method private getHeaderList(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .parameter "headerName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1429
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    .line 1431
    .local v1, sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    if-nez v1, :cond_10

    .line 1432
    const/4 v2, 0x0

    .line 1438
    .end local v1           #sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :goto_f
    return-object v2

    .line 1433
    .restart local v1       #sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_10
    instance-of v2, v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v2, :cond_1b

    .line 1434
    check-cast v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    .end local v1           #sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->getHeaderList()Ljava/util/List;

    move-result-object v2

    goto :goto_f

    .line 1436
    .restart local v1       #sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_1b
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1437
    .local v0, ll:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lgov/nist/javax/sip/header/SIPHeader;>;"
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    .line 1438
    goto :goto_f
.end method

.method private getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;
    .registers 5
    .parameter "lowerCaseHeaderName"

    .prologue
    .line 917
    if-nez p1, :cond_a

    .line 918
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "bad name"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 919
    :cond_a
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    .line 920
    .local v0, sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v1, v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v1, :cond_1d

    .line 921
    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    .end local v0           #sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v1

    .line 923
    :goto_1c
    return-object v1

    .restart local v0       #sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_1d
    move-object v1, v0

    goto :goto_1c
.end method

.method private getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;
    .registers 3
    .parameter "lowerCaseHeaderName"

    .prologue
    .line 1418
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/header/SIPHeader;

    return-object p0
.end method

.method public static isRequestHeader(Lgov/nist/javax/sip/header/SIPHeader;)Z
    .registers 2
    .parameter "sipHeader"

    .prologue
    .line 187
    instance-of v0, p0, Lgov/nist/javax/sip/header/AlertInfo;

    if-nez v0, :cond_34

    instance-of v0, p0, Lgov/nist/javax/sip/header/InReplyTo;

    if-nez v0, :cond_34

    instance-of v0, p0, Lgov/nist/javax/sip/header/Authorization;

    if-nez v0, :cond_34

    instance-of v0, p0, Lgov/nist/javax/sip/header/MaxForwards;

    if-nez v0, :cond_34

    instance-of v0, p0, Lgov/nist/javax/sip/header/UserAgent;

    if-nez v0, :cond_34

    instance-of v0, p0, Lgov/nist/javax/sip/header/Priority;

    if-nez v0, :cond_34

    instance-of v0, p0, Lgov/nist/javax/sip/header/ProxyAuthorization;

    if-nez v0, :cond_34

    instance-of v0, p0, Lgov/nist/javax/sip/header/ProxyRequire;

    if-nez v0, :cond_34

    instance-of v0, p0, Lgov/nist/javax/sip/header/ProxyRequireList;

    if-nez v0, :cond_34

    instance-of v0, p0, Lgov/nist/javax/sip/header/Route;

    if-nez v0, :cond_34

    instance-of v0, p0, Lgov/nist/javax/sip/header/RouteList;

    if-nez v0, :cond_34

    instance-of v0, p0, Lgov/nist/javax/sip/header/Subject;

    if-nez v0, :cond_34

    instance-of v0, p0, Lgov/nist/javax/sip/header/SIPIfMatch;

    if-eqz v0, :cond_36

    :cond_34
    const/4 v0, 0x1

    :goto_35
    return v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method

.method public static isResponseHeader(Lgov/nist/javax/sip/header/SIPHeader;)Z
    .registers 2
    .parameter "sipHeader"

    .prologue
    .line 202
    instance-of v0, p0, Lgov/nist/javax/sip/header/ErrorInfo;

    if-nez v0, :cond_24

    instance-of v0, p0, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    if-nez v0, :cond_24

    instance-of v0, p0, Lgov/nist/javax/sip/header/Server;

    if-nez v0, :cond_24

    instance-of v0, p0, Lgov/nist/javax/sip/header/Unsupported;

    if-nez v0, :cond_24

    instance-of v0, p0, Lgov/nist/javax/sip/header/RetryAfter;

    if-nez v0, :cond_24

    instance-of v0, p0, Lgov/nist/javax/sip/header/Warning;

    if-nez v0, :cond_24

    instance-of v0, p0, Lgov/nist/javax/sip/header/WWWAuthenticate;

    if-nez v0, :cond_24

    instance-of v0, p0, Lgov/nist/javax/sip/header/SIPETag;

    if-nez v0, :cond_24

    instance-of v0, p0, Lgov/nist/javax/sip/header/RSeq;

    if-eqz v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method


# virtual methods
.method public addFirst(Ljavax/sip/header/Header;)V
    .registers 5
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 1750
    if-nez p1, :cond_a

    .line 1751
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1754
    :cond_a
    :try_start_a
    check-cast p1, Lgov/nist/javax/sip/header/SIPHeader;

    .end local p1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    :try_end_11
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_a .. :try_end_11} :catch_12

    .line 1759
    return-void

    .line 1755
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 1756
    .local v0, ex:Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Cannot add header - header already exists"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addHeader(Ljava/lang/String;)V
    .registers 8
    .parameter "sipHeader"

    .prologue
    .line 1557
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1559
    .local v1, hdrString:Ljava/lang/String;
    :try_start_17
    invoke-static {p1}, Lgov/nist/javax/sip/parser/ParserFactory;->createParser(Ljava/lang/String;)Lgov/nist/javax/sip/parser/HeaderParser;

    move-result-object v2

    .line 1560
    .local v2, parser:Lgov/nist/javax/sip/parser/HeaderParser;
    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/HeaderParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v3

    .line 1561
    .local v3, sh:Lgov/nist/javax/sip/header/SIPHeader;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_23
    .catch Ljava/text/ParseException; {:try_start_17 .. :try_end_23} :catch_24

    .line 1565
    .end local v2           #parser:Lgov/nist/javax/sip/parser/HeaderParser;
    .end local v3           #sh:Lgov/nist/javax/sip/header/SIPHeader;
    :goto_23
    return-void

    .line 1562
    :catch_24
    move-exception v4

    move-object v0, v4

    .line 1563
    .local v0, ex:Ljava/text/ParseException;
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_23
.end method

.method public addHeader(Ljavax/sip/header/Header;)V
    .registers 8
    .parameter "sipHeader"

    .prologue
    .line 1523
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    move-object v3, v0

    .line 1525
    .local v3, sh:Lgov/nist/javax/sip/header/SIPHeader;
    :try_start_4
    instance-of v4, p1, Ljavax/sip/header/ViaHeader;

    if-nez v4, :cond_c

    instance-of v4, p1, Ljavax/sip/header/RecordRouteHeader;

    if-eqz v4, :cond_12

    .line 1526
    :cond_c
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V

    .line 1539
    :cond_11
    :goto_11
    return-void

    .line 1528
    :cond_12
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    :try_end_17
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_4 .. :try_end_17} :catch_18

    goto :goto_11

    .line 1530
    :catch_18
    move-exception v4

    move-object v2, v4

    .line 1532
    .local v2, ex:Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    :try_start_1a
    instance-of v4, p1, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz v4, :cond_11

    .line 1533
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/ContentLength;

    move-object v1, v0

    .line 1534
    .local v1, cl:Lgov/nist/javax/sip/header/ContentLength;
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v5

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_2b
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1a .. :try_end_2b} :catch_2c

    goto :goto_11

    .line 1536
    .end local v1           #cl:Lgov/nist/javax/sip/header/ContentLength;
    :catch_2c
    move-exception v4

    goto :goto_11
.end method

.method public addLast(Ljavax/sip/header/Header;)V
    .registers 5
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 1732
    if-nez p1, :cond_a

    .line 1733
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1736
    :cond_a
    :try_start_a
    check-cast p1, Lgov/nist/javax/sip/header/SIPHeader;

    .end local p1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    :try_end_11
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_a .. :try_end_11} :catch_12

    .line 1741
    return-void

    .line 1737
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 1738
    .local v0, ex:Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Cannot add header - header already exists"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addUnparsed(Ljava/lang/String;)V
    .registers 3
    .parameter "unparsed"

    .prologue
    .line 1547
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1548
    return-void
.end method

.method public attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    .registers 4
    .parameter "h"
    .parameter "replaceflag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
        }
    .end annotation

    .prologue
    .line 623
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V

    .line 624
    return-void
.end method

.method public attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    .registers 15
    .parameter "header"
    .parameter "replaceFlag"
    .parameter "top"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
        }
    .end annotation

    .prologue
    .line 641
    if-nez p1, :cond_a

    .line 642
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "null header"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 647
    :cond_a
    invoke-static {p1}, Lgov/nist/javax/sip/message/ListMap;->hasList(Lgov/nist/javax/sip/header/SIPHeader;)Z

    move-result v9

    if-eqz v9, :cond_5b

    const-class v9, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_5b

    .line 648
    invoke-static {p1}, Lgov/nist/javax/sip/message/ListMap;->getList(Lgov/nist/javax/sip/header/SIPHeader;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object v3

    .line 649
    .local v3, hdrList:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<Lgov/nist/javax/sip/header/SIPHeader;>;"
    invoke-virtual {v3, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 650
    move-object v2, v3

    .line 655
    .end local v3           #hdrList:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<Lgov/nist/javax/sip/header/SIPHeader;>;"
    .local v2, h:Lgov/nist/javax/sip/header/SIPHeader;
    :goto_24
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 656
    .local v5, headerNameLowerCase:Ljava/lang/String;
    if-eqz p2, :cond_5d

    .line 657
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v9, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    :cond_33
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/message/SIPMessage;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v8

    check-cast v8, Lgov/nist/javax/sip/header/SIPHeader;

    .line 673
    .local v8, originalHeader:Lgov/nist/javax/sip/header/SIPHeader;
    if-eqz v8, :cond_7b

    .line 674
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 675
    .local v6, li:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_45
    :goto_45
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7b

    .line 676
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/SIPHeader;

    .line 677
    .local v7, next:Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v7, v8}, Lgov/nist/javax/sip/header/SIPHeader;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 678
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_45

    .line 652
    .end local v2           #h:Lgov/nist/javax/sip/header/SIPHeader;
    .end local v5           #headerNameLowerCase:Ljava/lang/String;
    .end local v6           #li:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    .end local v7           #next:Lgov/nist/javax/sip/header/SIPHeader;
    .end local v8           #originalHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_5b
    move-object v2, p1

    .restart local v2       #h:Lgov/nist/javax/sip/header/SIPHeader;
    goto :goto_24

    .line 658
    .restart local v5       #headerNameLowerCase:Ljava/lang/String;
    :cond_5d
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v9, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    instance-of v9, v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-nez v9, :cond_33

    .line 659
    instance-of v9, v2, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz v9, :cond_7a

    .line 661
    :try_start_6d
    move-object v0, v2

    check-cast v0, Lgov/nist/javax/sip/header/ContentLength;

    move-object v1, v0

    .line 662
    .local v1, cl:Lgov/nist/javax/sip/header/ContentLength;
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v10

    invoke-virtual {v9, v10}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_7a
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_6d .. :try_end_7a} :catch_e5

    .line 714
    .end local v1           #cl:Lgov/nist/javax/sip/header/ContentLength;
    .end local v2           #h:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_7a
    :goto_7a
    return-void

    .line 683
    .restart local v2       #h:Lgov/nist/javax/sip/header/SIPHeader;
    .restart local v8       #originalHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_7b
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v9, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_96

    .line 684
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v9, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 700
    :goto_8d
    instance-of v9, v2, Lgov/nist/javax/sip/header/From;

    if-eqz v9, :cond_b8

    .line 701
    check-cast v2, Lgov/nist/javax/sip/header/From;

    .end local v2           #h:Lgov/nist/javax/sip/header/SIPHeader;
    iput-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    goto :goto_7a

    .line 687
    .restart local v2       #h:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_96
    instance-of v9, v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v9, :cond_b2

    .line 688
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v9, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 690
    .local v4, hdrlist:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    if-eqz v4, :cond_ac

    .line 691
    move-object v0, v2

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    move-object v9, v0

    invoke-virtual {v4, v9, p3}, Lgov/nist/javax/sip/header/SIPHeaderList;->concatenate(Lgov/nist/javax/sip/header/SIPHeaderList;Z)V

    goto :goto_8d

    .line 693
    :cond_ac
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v9, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8d

    .line 695
    .end local v4           #hdrlist:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    :cond_b2
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v9, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8d

    .line 702
    :cond_b8
    instance-of v9, v2, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz v9, :cond_c1

    .line 703
    check-cast v2, Lgov/nist/javax/sip/header/ContentLength;

    .end local v2           #h:Lgov/nist/javax/sip/header/SIPHeader;
    iput-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    goto :goto_7a

    .line 704
    .restart local v2       #h:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_c1
    instance-of v9, v2, Lgov/nist/javax/sip/header/To;

    if-eqz v9, :cond_ca

    .line 705
    check-cast v2, Lgov/nist/javax/sip/header/To;

    .end local v2           #h:Lgov/nist/javax/sip/header/SIPHeader;
    iput-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    goto :goto_7a

    .line 706
    .restart local v2       #h:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_ca
    instance-of v9, v2, Lgov/nist/javax/sip/header/CSeq;

    if-eqz v9, :cond_d3

    .line 707
    check-cast v2, Lgov/nist/javax/sip/header/CSeq;

    .end local v2           #h:Lgov/nist/javax/sip/header/SIPHeader;
    iput-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    goto :goto_7a

    .line 708
    .restart local v2       #h:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_d3
    instance-of v9, v2, Lgov/nist/javax/sip/header/CallID;

    if-eqz v9, :cond_dc

    .line 709
    check-cast v2, Lgov/nist/javax/sip/header/CallID;

    .end local v2           #h:Lgov/nist/javax/sip/header/SIPHeader;
    iput-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    goto :goto_7a

    .line 710
    .restart local v2       #h:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_dc
    instance-of v9, v2, Lgov/nist/javax/sip/header/MaxForwards;

    if-eqz v9, :cond_7a

    .line 711
    check-cast v2, Lgov/nist/javax/sip/header/MaxForwards;

    .end local v2           #h:Lgov/nist/javax/sip/header/SIPHeader;
    iput-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    goto :goto_7a

    .line 663
    .end local v8           #originalHeader:Lgov/nist/javax/sip/header/SIPHeader;
    .restart local v2       #h:Lgov/nist/javax/sip/header/SIPHeader;
    :catch_e5
    move-exception v9

    goto :goto_7a
.end method

.method public clone()Ljava/lang/Object;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 473
    invoke-super {p0}, Lgov/nist/javax/sip/message/MessageObject;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/message/SIPMessage;

    .line 474
    .local v2, retval:Lgov/nist/javax/sip/message/SIPMessage;
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, v2, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    .line 475
    iput-object v4, v2, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    .line 476
    iput-object v4, v2, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    .line 477
    iput-object v4, v2, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    .line 478
    iput-object v4, v2, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    .line 479
    iput-object v4, v2, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    .line 480
    iput-object v4, v2, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    .line 481
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v3, :cond_41

    .line 482
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v3, v2, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 483
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 484
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    .line 485
    .local v0, hdr:Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-direct {v2, v3}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;)V

    goto :goto_2b

    .line 489
    .end local v0           #hdr:Lgov/nist/javax/sip/header/SIPHeader;
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_41
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    if-eqz v3, :cond_51

    .line 490
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    iput-object v3, v2, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    .line 491
    :cond_51
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    if-eqz v3, :cond_5d

    .line 492
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    invoke-static {v3}, Lgov/nist/javax/sip/message/SIPMessage;->makeClone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    .line 493
    :cond_5d
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    iput-object v3, v2, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    .line 494
    return-object v2
.end method

.method public debugDump()Ljava/lang/String;
    .registers 9

    .prologue
    .line 504
    const-string v6, ""

    iput-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->stringRepresentation:Ljava/lang/String;

    .line 505
    const-string v6, "SIPMessage:"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    .line 506
    const-string v6, "{"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    .line 509
    :try_start_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 510
    .local v4, fields:[Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_17
    array-length v6, v4

    if-ge v5, v6, :cond_65

    .line 511
    aget-object v1, v4, v5

    .line 512
    .local v1, f:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 513
    .local v3, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, fieldName:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5d

    const-class v6, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5d

    const-string v6, "headers"

    invoke-virtual {v2, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_5d

    .line 516
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {v6}, Lgov/nist/javax/sip/header/SIPHeader;->debugDump()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_5d} :catch_60

    .line 510
    :cond_5d
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 520
    .end local v1           #f:Ljava/lang/reflect/Field;
    .end local v2           #fieldName:Ljava/lang/String;
    .end local v3           #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #fields:[Ljava/lang/reflect/Field;
    .end local v5           #i:I
    :catch_60
    move-exception v6

    move-object v0, v6

    .line 521
    .local v0, ex:Ljava/lang/Exception;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 524
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_65
    const-string v6, "List of headers : "

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    .line 525
    iget-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    .line 526
    const-string v6, "messageContent = "

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    .line 527
    const-string v6, "{"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    .line 528
    iget-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    .line 529
    const-string v6, "}"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContent()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_98

    .line 531
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContent()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    .line 533
    :cond_98
    const-string v6, "}"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/message/SIPMessage;->sprint(Ljava/lang/String;)V

    .line 534
    iget-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->stringRepresentation:Ljava/lang/String;

    return-object v6
.end method

.method public encode()Ljava/lang/String;
    .registers 12

    .prologue
    .line 361
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 362
    .local v2, encoding:Ljava/lang/StringBuffer;
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 364
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_b
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_23

    .line 365
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/SIPHeader;

    .line 366
    .local v7, siphdr:Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v9, v7, Lgov/nist/javax/sip/header/ContentLength;

    if-nez v9, :cond_b

    .line 367
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/SIPHeader;->encode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 371
    .end local v7           #siphdr:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_23
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 372
    .local v8, unrecognized:Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_29

    .line 375
    .end local v8           #unrecognized:Ljava/lang/String;
    :cond_3f
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v9}, Lgov/nist/javax/sip/header/ContentLength;->encode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    if-eqz v9, :cond_62

    .line 378
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContent()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 380
    .local v6, mbody:Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    .end local v6           #mbody:Ljava/lang/String;
    :cond_5d
    :goto_5d
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 381
    :cond_62
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-nez v9, :cond_6a

    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    if-eqz v9, :cond_5d

    .line 383
    :cond_6a
    const/4 v0, 0x0

    .line 385
    .local v0, content:Ljava/lang/String;
    :try_start_6b
    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-eqz v9, :cond_75

    .line 386
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;
    :try_end_71
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6b .. :try_end_71} :catch_82

    .line 395
    :goto_71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5d

    .line 389
    :cond_75
    :try_start_75
    new-instance v1, Ljava/lang/String;

    iget-object v9, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_80
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_75 .. :try_end_80} :catch_82

    .end local v0           #content:Ljava/lang/String;
    .local v1, content:Ljava/lang/String;
    move-object v0, v1

    .end local v1           #content:Ljava/lang/String;
    .restart local v0       #content:Ljava/lang/String;
    goto :goto_71

    .line 391
    :catch_82
    move-exception v9

    move-object v3, v9

    .line 392
    .local v3, ex:Ljava/io/UnsupportedEncodingException;
    invoke-static {v3}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_71
.end method

.method public encodeAsBytes(Ljava/lang/String;)[B
    .registers 15
    .parameter "transport"

    .prologue
    const/4 v12, 0x0

    .line 409
    instance-of v10, p0, Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v10, :cond_16

    move-object v0, p0

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object v10, v0

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    move-result v10

    if-eqz v10, :cond_16

    .line 410
    const-string v10, "\r\n\r\n"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 459
    :goto_15
    return-object v10

    .line 414
    :cond_16
    const-string v10, "Via"

    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/message/SIPMessage;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v9

    check-cast v9, Ljavax/sip/header/ViaHeader;

    .line 416
    .local v9, topVia:Ljavax/sip/header/ViaHeader;
    :try_start_1e
    invoke-interface {v9, p1}, Ljavax/sip/header/ViaHeader;->setTransport(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/text/ParseException; {:try_start_1e .. :try_end_21} :catch_46

    .line 421
    :goto_21
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 422
    .local v3, encoding:Ljava/lang/StringBuffer;
    iget-object v10, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v10

    .line 423
    :try_start_29
    iget-object v11, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 425
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_2f
    :goto_2f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4b

    .line 426
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgov/nist/javax/sip/header/SIPHeader;

    .line 427
    .local v8, siphdr:Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v11, v8, Lgov/nist/javax/sip/header/ContentLength;

    if-nez v11, :cond_2f

    .line 428
    invoke-virtual {v8, v3}, Lgov/nist/javax/sip/header/SIPHeader;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_2f

    .line 431
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    .end local v8           #siphdr:Lgov/nist/javax/sip/header/SIPHeader;
    :catchall_43
    move-exception v11

    monitor-exit v10
    :try_end_45
    .catchall {:try_start_29 .. :try_end_45} :catchall_43

    throw v11

    .line 417
    .end local v3           #encoding:Ljava/lang/StringBuffer;
    :catch_46
    move-exception v2

    .line 418
    .local v2, e:Ljava/text/ParseException;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_21

    .line 431
    .end local v2           #e:Ljava/text/ParseException;
    .restart local v3       #encoding:Ljava/lang/StringBuffer;
    .restart local v5       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_4b
    :try_start_4b
    monitor-exit v10
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_43

    .line 432
    iget-object v10, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v10, v3}, Lgov/nist/javax/sip/header/ContentLength;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 433
    const-string v10, "\r\n"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    const/4 v7, 0x0

    .line 436
    .local v7, retval:[B
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getRawContent()[B

    move-result-object v1

    .line 437
    .local v1, content:[B
    if-eqz v1, :cond_80

    .line 440
    const/4 v6, 0x0

    .line 442
    .local v6, msgarray:[B
    :try_start_5e
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_69
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5e .. :try_end_69} :catch_7a

    move-result-object v6

    .line 447
    :goto_6a
    array-length v10, v6

    array-length v11, v1

    add-int/2addr v10, v11

    new-array v7, v10, [B

    .line 448
    array-length v10, v6

    invoke-static {v6, v12, v7, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    array-length v10, v6

    array-length v11, v1

    invoke-static {v1, v12, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local v6           #msgarray:[B
    :goto_78
    move-object v10, v7

    .line 459
    goto :goto_15

    .line 443
    .restart local v6       #msgarray:[B
    :catch_7a
    move-exception v10

    move-object v4, v10

    .line 444
    .local v4, ex:Ljava/io/UnsupportedEncodingException;
    invoke-static {v4}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_6a

    .line 454
    .end local v4           #ex:Ljava/io/UnsupportedEncodingException;
    .end local v6           #msgarray:[B
    :cond_80
    :try_start_80
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_8b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_80 .. :try_end_8b} :catch_8d

    move-result-object v7

    goto :goto_78

    .line 455
    :catch_8d
    move-exception v10

    move-object v4, v10

    .line 456
    .restart local v4       #ex:Ljava/io/UnsupportedEncodingException;
    invoke-static {v4}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_78
.end method

.method public abstract encodeMessage()Ljava/lang/String;
.end method

.method protected encodeSIPHeaders()Ljava/lang/String;
    .registers 6

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 239
    .local v0, encoding:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 241
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 242
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    .line 243
    .local v2, siphdr:Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v3, v2, Lgov/nist/javax/sip/header/ContentLength;

    if-nez v3, :cond_b

    .line 244
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/SIPHeader;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 247
    .end local v2           #siphdr:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_1f
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v3, v0}, Lgov/nist/javax/sip/header/ContentLength;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .parameter "other"

    .prologue
    const/4 v8, 0x0

    .line 1599
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    move v6, v8

    .line 1619
    :goto_10
    return v6

    .line 1602
    :cond_11
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPMessage;

    move-object v4, v0

    .line 1603
    .local v4, otherMessage:Lgov/nist/javax/sip/message/SIPMessage;
    iget-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v5

    .line 1604
    .local v5, values:Ljava/util/Collection;,"Ljava/util/Collection<Lgov/nist/javax/sip/header/SIPHeader;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1605
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    iget-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    iget-object v7, v4, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->size()I

    move-result v7

    if-eq v6, v7, :cond_2f

    move v6, v8

    .line 1606
    goto :goto_10

    .line 1609
    :cond_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    .line 1610
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    .line 1611
    .local v3, mine:Lgov/nist/javax/sip/header/SIPHeader;
    iget-object v6, v4, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    .line 1613
    .local v1, his:Lgov/nist/javax/sip/header/SIPHeader;
    if-nez v1, :cond_4f

    move v6, v8

    .line 1614
    goto :goto_10

    .line 1615
    :cond_4f
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/SIPHeader;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2f

    move v6, v8

    .line 1616
    goto :goto_10

    .line 1619
    .end local v1           #his:Lgov/nist/javax/sip/header/SIPHeader;
    .end local v3           #mine:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_57
    const/4 v6, 0x1

    goto :goto_10
.end method

.method public getApplicationData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1813
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->applicationData:Ljava/lang/Object;

    return-object v0
.end method

.method public getAuthorization()Lgov/nist/javax/sip/header/Authorization;
    .registers 2

    .prologue
    .line 1057
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->AUTHORIZATION_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/header/Authorization;

    return-object p0
.end method

.method public getCSeq()Ljavax/sip/header/CSeqHeader;
    .registers 2

    .prologue
    .line 1048
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    return-object v0
.end method

.method public getCSeqHeader()Ljavax/sip/header/CSeqHeader;
    .registers 2

    .prologue
    .line 1857
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    return-object v0
.end method

.method public getCallId()Ljavax/sip/header/CallIdHeader;
    .registers 2

    .prologue
    .line 1100
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    return-object v0
.end method

.method public getCallIdHeader()Ljavax/sip/header/CallIdHeader;
    .registers 2

    .prologue
    .line 1838
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    return-object v0
.end method

.method protected final getCharset()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1864
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    move-result-object v1

    .line 1865
    .local v1, ct:Lgov/nist/javax/sip/header/ContentType;
    if-eqz v1, :cond_11

    .line 1866
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ContentType;->getCharset()Ljava/lang/String;

    move-result-object v0

    .line 1867
    .local v0, c:Ljava/lang/String;
    if-eqz v0, :cond_e

    move-object v2, v0

    .line 1868
    .end local v0           #c:Ljava/lang/String;
    :goto_d
    return-object v2

    .line 1867
    .restart local v0       #c:Ljava/lang/String;
    :cond_e
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentEncodingCharset:Ljava/lang/String;

    goto :goto_d

    .line 1868
    .end local v0           #c:Ljava/lang/String;
    :cond_11
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentEncodingCharset:Ljava/lang/String;

    goto :goto_d
.end method

.method public getContactHeader()Lgov/nist/javax/sip/header/Contact;
    .registers 3

    .prologue
    .line 985
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v0

    .line 986
    .local v0, clist:Lgov/nist/javax/sip/header/ContactList;
    if-eqz v0, :cond_e

    .line 987
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Ljavax/sip/header/Header;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/header/Contact;

    move-object v1, p0

    .line 990
    :goto_d
    return-object v1

    .restart local p0
    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public getContactHeaders()Lgov/nist/javax/sip/header/ContactList;
    .registers 2

    .prologue
    .line 974
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTACT_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/header/ContactList;

    return-object p0
.end method

.method public getContent()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1258
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 1259
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    .line 1265
    :goto_6
    return-object v0

    .line 1260
    :cond_7
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 1261
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    goto :goto_6

    .line 1262
    :cond_e
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    if-eqz v0, :cond_15

    .line 1263
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    goto :goto_6

    .line 1265
    :cond_15
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getContentDisposition()Ljavax/sip/header/ContentDispositionHeader;
    .registers 2

    .prologue
    .line 1628
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_DISPOSITION_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object p0

    .end local p0
    check-cast p0, Ljavax/sip/header/ContentDispositionHeader;

    return-object p0
.end method

.method public getContentEncoding()Ljavax/sip/header/ContentEncodingHeader;
    .registers 2

    .prologue
    .line 1640
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_ENCODING_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object p0

    .end local p0
    check-cast p0, Ljavax/sip/header/ContentEncodingHeader;

    return-object p0
.end method

.method public getContentLanguage()Ljavax/sip/header/ContentLanguageHeader;
    .registers 2

    .prologue
    .line 1652
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_LANGUAGE_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object p0

    .end local p0
    check-cast p0, Ljavax/sip/header/ContentLanguageHeader;

    return-object p0
.end method

.method public getContentLength()Ljavax/sip/header/ContentLengthHeader;
    .registers 2

    .prologue
    .line 1160
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    return-object v0
.end method

.method public getContentLengthHeader()Ljavax/sip/header/ContentLengthHeader;
    .registers 2

    .prologue
    .line 944
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    move-result-object v0

    return-object v0
.end method

.method public getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;
    .registers 2

    .prologue
    .line 933
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_TYPE_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/header/ContentType;

    return-object p0
.end method

.method public bridge synthetic getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;
    .registers 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDialogId(Z)Ljava/lang/String;
.end method

.method public getErrorInfoHeaders()Lgov/nist/javax/sip/header/ErrorInfoList;
    .registers 2

    .prologue
    .line 963
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->ERROR_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/header/ErrorInfoList;

    return-object p0
.end method

.method public getExpires()Ljavax/sip/header/ExpiresHeader;
    .registers 2

    .prologue
    .line 1664
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->EXPIRES_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object p0

    .end local p0
    check-cast p0, Ljavax/sip/header/ExpiresHeader;

    return-object p0
.end method

.method public abstract getFirstLine()Ljava/lang/String;
.end method

.method public getFrom()Ljavax/sip/header/FromHeader;
    .registers 2

    .prologue
    .line 954
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    return-object v0
.end method

.method public getFromHeader()Ljavax/sip/header/FromHeader;
    .registers 2

    .prologue
    .line 1843
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    return-object v0
.end method

.method public getFromTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1477
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;
    .registers 3
    .parameter "headerName"

    .prologue
    .line 913
    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderAsFormattedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"

    .prologue
    .line 1409
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1410
    .local v0, lowerCaseName:Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1411
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeader;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1413
    :goto_18
    return-object v1

    .restart local p0
    :cond_19
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_18
.end method

.method public getHeaderNames()Ljava/util/ListIterator;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1583
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1584
    .local v0, li:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1585
    .local v2, retval:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1586
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    .line 1587
    .local v3, sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1588
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1590
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_1f
    invoke-virtual {v2}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    return-object v4
.end method

.method public getHeaders()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 904
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;
    .registers 5
    .parameter "headerName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ListIterator",
            "<",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1387
    if-nez p1, :cond_a

    .line 1388
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null headerName"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1389
    :cond_a
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    .line 1392
    .local v0, sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    if-nez v0, :cond_22

    .line 1393
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 1397
    .end local v0           #sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :goto_21
    return-object v1

    .line 1394
    .restart local v0       #sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_22
    instance-of v1, v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v1, :cond_2d

    .line 1395
    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    .end local v0           #sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    goto :goto_21

    .line 1397
    .restart local v0       #sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_2d
    new-instance v1, Lgov/nist/javax/sip/message/HeaderIterator;

    invoke-direct {v1, p0, v0}, Lgov/nist/javax/sip/message/HeaderIterator;-><init>(Lgov/nist/javax/sip/message/SIPMessage;Lgov/nist/javax/sip/header/SIPHeader;)V

    goto :goto_21
.end method

.method public getMaxForwards()Ljavax/sip/header/MaxForwardsHeader;
    .registers 2

    .prologue
    .line 1070
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    return-object v0
.end method

.method public getMessageAsEncodedStrings()Ljava/util/LinkedList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 218
    .local v2, retval:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 219
    .local v1, li:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 220
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/SIPHeader;

    .line 221
    .local v4, sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v5, v4, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v5, :cond_27

    .line 222
    move-object v0, v4

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    move-object v3, v0

    .line 223
    .local v3, shl:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeaderList;->getHeadersAsEncodedStrings()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    .line 225
    .end local v3           #shl:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    :cond_27
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/SIPHeader;->encode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 229
    .end local v4           #sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_2f
    return-object v2
.end method

.method public getMessageContent()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1174
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-nez v0, :cond_a

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    if-nez v0, :cond_a

    .line 1175
    const/4 v0, 0x0

    .line 1179
    :goto_9
    return-object v0

    .line 1176
    :cond_a
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-nez v0, :cond_1b

    .line 1177
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    .line 1179
    :cond_1b
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    goto :goto_9
.end method

.method public getMultipartMimeContent()Lgov/nist/javax/sip/message/MultipartMimeContent;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1821
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v4

    if-nez v4, :cond_b

    move-object v4, v5

    .line 1833
    :goto_a
    return-object v4

    .line 1824
    :cond_b
    new-instance v3, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    move-result-object v4

    invoke-direct {v3, v4}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;-><init>(Ljavax/sip/header/ContentTypeHeader;)V

    .line 1826
    .local v3, retval:Lgov/nist/javax/sip/message/MultipartMimeContentImpl;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getRawContent()[B

    move-result-object v2

    .line 1828
    .local v2, rawContent:[B
    :try_start_18
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1829
    .local v0, body:Ljava/lang/String;
    invoke-virtual {v3, v0}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->createContentList(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_24} :catch_26

    move-object v4, v3

    .line 1830
    goto :goto_a

    .line 1831
    .end local v0           #body:Ljava/lang/String;
    :catch_26
    move-exception v4

    move-object v1, v4

    .line 1832
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    move-object v4, v5

    .line 1833
    goto :goto_a
.end method

.method public getRawContent()[B
    .registers 5

    .prologue
    .line 1191
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    if-eqz v2, :cond_7

    .line 1199
    :cond_4
    :goto_4
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    .line 1202
    :goto_6
    return-object v2

    .line 1193
    :cond_7
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    if-eqz v2, :cond_23

    .line 1194
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1195
    .local v1, messageContent:Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_4

    .line 1200
    .end local v1           #messageContent:Ljava/lang/String;
    :catch_1c
    move-exception v2

    move-object v0, v2

    .line 1201
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 1202
    const/4 v2, 0x0

    goto :goto_6

    .line 1196
    .end local v0           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_23
    :try_start_23
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1197
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B
    :try_end_33
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_23 .. :try_end_33} :catch_1c

    goto :goto_4
.end method

.method public getRecordRouteHeaders()Lgov/nist/javax/sip/header/RecordRouteList;
    .registers 2

    .prologue
    .line 1130
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->RECORDROUTE_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/header/RecordRouteList;

    return-object p0
.end method

.method public getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;
    .registers 2

    .prologue
    .line 1088
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->ROUTE_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/header/RouteList;

    return-object p0
.end method

.method public abstract getSIPVersion()Ljava/lang/String;
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 1723
    iget v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->size:I

    return v0
.end method

.method public getTo()Ljavax/sip/header/ToHeader;
    .registers 2

    .prologue
    .line 1142
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    return-object v0
.end method

.method public getToHeader()Ljavax/sip/header/ToHeader;
    .registers 2

    .prologue
    .line 1848
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    return-object v0
.end method

.method public getToTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1508
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getTopmostVia()Lgov/nist/javax/sip/header/Via;
    .registers 2

    .prologue
    .line 1036
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1037
    const/4 v0, 0x0

    .line 1039
    .end local p0
    :goto_7
    return-object v0

    .restart local p0
    :cond_8
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/header/Via;

    check-cast p0, Lgov/nist/javax/sip/header/Via;

    move-object v0, p0

    goto :goto_7
.end method

.method public getTopmostViaHeader()Ljavax/sip/header/ViaHeader;
    .registers 2

    .prologue
    .line 1853
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .registers 10

    .prologue
    .line 830
    const/4 v4, 0x0

    .line 831
    .local v4, topVia:Lgov/nist/javax/sip/header/Via;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/ViaList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_15

    .line 832
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v4

    .end local v4           #topVia:Lgov/nist/javax/sip/header/Via;
    check-cast v4, Lgov/nist/javax/sip/header/Via;

    .line 837
    .restart local v4       #topVia:Lgov/nist/javax/sip/header/Via;
    :cond_15
    if-eqz v4, :cond_6e

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6e

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Z9HG4BK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 844
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CANCEL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 845
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v6

    invoke-interface {v6}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 873
    :goto_64
    return-object v5

    .line 847
    :cond_65
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    goto :goto_64

    .line 851
    :cond_6e
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 852
    .local v2, retval:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/From;

    .line 853
    .local v1, from:Lgov/nist/javax/sip/header/From;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/To;

    .line 856
    .local v3, to:Lgov/nist/javax/sip/header/To;
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->hasTag()Z

    move-result v5

    if-eqz v5, :cond_92

    .line 857
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 860
    :cond_92
    iget-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, cid:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 862
    iget-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/CSeq;->getSequenceNumber()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    invoke-virtual {v6}, Lgov/nist/javax/sip/header/CSeq;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 864
    if-eqz v4, :cond_e2

    .line 865
    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    move-result-object v6

    invoke-virtual {v6}, Lgov/nist/core/HostPort;->encode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 866
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/core/HostPort;->hasPort()Z

    move-result v5

    if-nez v5, :cond_e2

    .line 867
    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x13c4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 870
    :cond_e2
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CANCEL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f7

    .line 871
    const-string v5, "CANCEL"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 873
    :cond_f7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    const-string v8, "-"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "@"

    const-string v8, "-"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lgov/nist/javax/sip/Utils;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_64
.end method

.method public getUnrecognizedHeaders()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1573
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public getViaHeaders()Lgov/nist/javax/sip/header/ViaList;
    .registers 2

    .prologue
    .line 1000
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->VIA_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/header/ViaList;

    return-object p0
.end method

.method public hasContent()Z
    .registers 2

    .prologue
    .line 895
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasFromTag()Z
    .registers 2

    .prologue
    .line 1458
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasHeader(Ljava/lang/String;)Z
    .registers 4
    .parameter "headerName"

    .prologue
    .line 1449
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasToTag()Z
    .registers 2

    .prologue
    .line 1467
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 884
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    if-nez v0, :cond_c

    .line 885
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid message! Cannot compute hashcode! call-id header is missing !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 888
    :cond_c
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNullRequest()Z
    .registers 2

    .prologue
    .line 1877
    iget-boolean v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nullRequest:Z

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .registers 17
    .parameter "other"

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 272
    if-nez p1, :cond_6

    move v11, v14

    .line 320
    :goto_5
    return v11

    .line 274
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    move v11, v13

    .line 275
    goto :goto_5

    .line 276
    :cond_16
    move-object/from16 v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPMessage;

    move-object v7, v0

    .line 277
    .local v7, matchObj:Lgov/nist/javax/sip/message/SIPMessage;
    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaders()Ljava/util/Iterator;

    move-result-object v6

    .line 278
    .local v6, li:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_91

    .line 279
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    .line 280
    .local v3, hisHeaders:Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->getHeaderName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 283
    .local v9, myHeaders:Ljava/util/List;,"Ljava/util/List<Lgov/nist/javax/sip/header/SIPHeader;>;"
    if-eqz v9, :cond_3b

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_3d

    :cond_3b
    move v11, v13

    .line 284
    goto :goto_5

    .line 286
    :cond_3d
    instance-of v11, v3, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v11, :cond_73

    .line 287
    check-cast v3, Lgov/nist/javax/sip/header/SIPHeaderList;

    .end local v3           #hisHeaders:Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeaderList;->listIterator()Ljava/util/ListIterator;

    move-result-object v10

    .line 289
    .local v10, outerIterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    :cond_47
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 290
    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    .line 291
    .local v2, hisHeader:Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v11, v2, Lgov/nist/javax/sip/header/ContentLength;

    if-nez v11, :cond_47

    .line 293
    invoke-interface {v9}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 294
    .local v4, innerIterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    const/4 v1, 0x0

    .line 295
    .local v1, found:Z
    :cond_5c
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6f

    .line 296
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgov/nist/javax/sip/header/SIPHeader;

    .line 297
    .local v8, myHeader:Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v8, v2}, Lgov/nist/javax/sip/header/SIPHeader;->match(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5c

    .line 298
    const/4 v1, 0x1

    .line 302
    .end local v8           #myHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_6f
    if-nez v1, :cond_47

    move v11, v13

    .line 303
    goto :goto_5

    .line 306
    .end local v1           #found:Z
    .end local v2           #hisHeader:Lgov/nist/javax/sip/header/SIPHeader;
    .end local v4           #innerIterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    .end local v10           #outerIterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<*>;"
    .restart local v3       #hisHeaders:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_73
    move-object v2, v3

    .line 307
    .restart local v2       #hisHeader:Lgov/nist/javax/sip/header/SIPHeader;
    invoke-interface {v9}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .line 308
    .local v5, innerIterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    const/4 v1, 0x0

    .line 309
    .restart local v1       #found:Z
    :cond_79
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8c

    .line 310
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgov/nist/javax/sip/header/SIPHeader;

    .line 311
    .restart local v8       #myHeader:Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v8, v2}, Lgov/nist/javax/sip/header/SIPHeader;->match(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_79

    .line 312
    const/4 v1, 0x1

    .line 316
    .end local v8           #myHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_8c
    if-nez v1, :cond_1f

    move v11, v13

    .line 317
    goto/16 :goto_5

    .end local v1           #found:Z
    .end local v2           #hisHeader:Lgov/nist/javax/sip/header/SIPHeader;
    .end local v3           #hisHeaders:Lgov/nist/javax/sip/header/SIPHeader;
    .end local v5           #innerIterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    .end local v9           #myHeaders:Ljava/util/List;,"Ljava/util/List<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_91
    move v11, v14

    .line 320
    goto/16 :goto_5
.end method

.method public merge(Ljava/lang/Object;)V
    .registers 14
    .parameter "template"

    .prologue
    .line 331
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2b

    .line 332
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 333
    :cond_2b
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPMessage;

    move-object v8, v0

    .line 334
    .local v8, templateMessage:Lgov/nist/javax/sip/message/SIPMessage;
    iget-object v9, v8, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toArray()[Ljava/lang/Object;

    move-result-object v7

    .line 335
    .local v7, templateHeaders:[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_36
    array-length v9, v7

    if-ge v3, v9, :cond_61

    .line 336
    aget-object v1, v7, v3

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    .line 337
    .local v1, hdr:Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeader;->getHeaderName()Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, hdrName:Ljava/lang/String;
    invoke-direct {p0, v2}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 339
    .local v5, myHdrs:Ljava/util/List;,"Ljava/util/List<Lgov/nist/javax/sip/header/SIPHeader;>;"
    if-nez v5, :cond_4d

    .line 340
    invoke-direct {p0, v1}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;)V

    .line 335
    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 342
    :cond_4d
    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 343
    .local v4, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_51
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4a

    .line 344
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/header/SIPHeader;

    .line 345
    .local v6, sipHdr:Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v6, v1}, Lgov/nist/javax/sip/header/SIPHeader;->merge(Ljava/lang/Object;)V

    goto :goto_51

    .line 350
    .end local v1           #hdr:Lgov/nist/javax/sip/header/SIPHeader;
    .end local v2           #hdrName:Ljava/lang/String;
    .end local v4           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    .end local v5           #myHdrs:Ljava/util/List;,"Ljava/util/List<Lgov/nist/javax/sip/header/SIPHeader;>;"
    .end local v6           #sipHdr:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_61
    return-void
.end method

.method public removeContent()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1370
    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    .line 1371
    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    .line 1372
    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    .line 1374
    :try_start_7
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_d
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_7 .. :try_end_d} :catch_e

    .line 1377
    :goto_d
    return-void

    .line 1375
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method public removeFirst(Ljava/lang/String;)V
    .registers 4
    .parameter "headerName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 1767
    if-nez p1, :cond_a

    .line 1768
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null argument Provided!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1769
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/message/SIPMessage;->removeHeader(Ljava/lang/String;Z)V

    .line 1771
    return-void
.end method

.method public removeHeader(Ljava/lang/String;)V
    .registers 8
    .parameter "headerName"

    .prologue
    const/4 v5, 0x0

    .line 781
    if-nez p1, :cond_b

    .line 782
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "null arg"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 783
    :cond_b
    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, headerNameLowerCase:Ljava/lang/String;
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    .line 786
    .local v2, removed:Lgov/nist/javax/sip/header/SIPHeader;
    if-nez v2, :cond_1a

    .line 811
    :cond_19
    return-void

    .line 790
    :cond_1a
    instance-of v4, v2, Lgov/nist/javax/sip/header/From;

    if-eqz v4, :cond_40

    .line 791
    iput-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    .line 804
    :cond_20
    :goto_20
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 805
    .local v1, li:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 806
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    .line 807
    .local v3, sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 808
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_26

    .line 792
    .end local v1           #li:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    .end local v3           #sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_40
    instance-of v4, v2, Lgov/nist/javax/sip/header/To;

    if-eqz v4, :cond_47

    .line 793
    iput-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    goto :goto_20

    .line 794
    :cond_47
    instance-of v4, v2, Lgov/nist/javax/sip/header/CSeq;

    if-eqz v4, :cond_4e

    .line 795
    iput-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    goto :goto_20

    .line 796
    :cond_4e
    instance-of v4, v2, Lgov/nist/javax/sip/header/CallID;

    if-eqz v4, :cond_55

    .line 797
    iput-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    goto :goto_20

    .line 798
    :cond_55
    instance-of v4, v2, Lgov/nist/javax/sip/header/MaxForwards;

    if-eqz v4, :cond_5c

    .line 799
    iput-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    goto :goto_20

    .line 800
    :cond_5c
    instance-of v4, v2, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz v4, :cond_20

    .line 801
    iput-object v5, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    goto :goto_20
.end method

.method public removeHeader(Ljava/lang/String;Z)V
    .registers 11
    .parameter "headerName"
    .parameter "top"

    .prologue
    const/4 v7, 0x0

    .line 725
    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 726
    .local v2, headerNameLowerCase:Ljava/lang/String;
    iget-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/SIPHeader;

    .line 728
    .local v5, toRemove:Lgov/nist/javax/sip/header/SIPHeader;
    if-nez v5, :cond_10

    .line 772
    :cond_f
    :goto_f
    return-void

    .line 730
    :cond_10
    instance-of v6, v5, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v6, :cond_4d

    .line 731
    move-object v0, v5

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    move-object v1, v0

    .line 732
    .local v1, hdrList:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    if-eqz p2, :cond_43

    .line 733
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->removeFirst()V

    .line 737
    :goto_1d
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 738
    iget-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 739
    .local v3, li:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_29
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 740
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/SIPHeader;

    .line 741
    .local v4, sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 742
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_29

    .line 735
    .end local v3           #li:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    .end local v4           #sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_43
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->removeLast()V

    goto :goto_1d

    .line 747
    .restart local v3       #li:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_47
    iget-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 750
    .end local v1           #hdrList:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    .end local v3           #li:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_4d
    iget-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    instance-of v6, v5, Lgov/nist/javax/sip/header/From;

    if-eqz v6, :cond_78

    .line 752
    iput-object v7, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    .line 764
    :cond_58
    :goto_58
    iget-object v6, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 765
    .restart local v3       #li:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_5e
    :goto_5e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 766
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/SIPHeader;

    .line 767
    .restart local v4       #sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 768
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_5e

    .line 753
    .end local v3           #li:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    .end local v4           #sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_78
    instance-of v6, v5, Lgov/nist/javax/sip/header/To;

    if-eqz v6, :cond_7f

    .line 754
    iput-object v7, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    goto :goto_58

    .line 755
    :cond_7f
    instance-of v6, v5, Lgov/nist/javax/sip/header/CSeq;

    if-eqz v6, :cond_86

    .line 756
    iput-object v7, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    goto :goto_58

    .line 757
    :cond_86
    instance-of v6, v5, Lgov/nist/javax/sip/header/CallID;

    if-eqz v6, :cond_8d

    .line 758
    iput-object v7, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    goto :goto_58

    .line 759
    :cond_8d
    instance-of v6, v5, Lgov/nist/javax/sip/header/MaxForwards;

    if-eqz v6, :cond_94

    .line 760
    iput-object v7, p0, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    goto :goto_58

    .line 761
    :cond_94
    instance-of v6, v5, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz v6, :cond_58

    .line 762
    iput-object v7, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    goto :goto_58
.end method

.method public removeLast(Ljava/lang/String;)V
    .registers 4
    .parameter "headerName"

    .prologue
    .line 1779
    if-nez p1, :cond_a

    .line 1780
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null argument Provided!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1781
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/message/SIPMessage;->removeHeader(Ljava/lang/String;Z)V

    .line 1783
    return-void
.end method

.method public setApplicationData(Ljava/lang/Object;)V
    .registers 2
    .parameter "applicationData"

    .prologue
    .line 1804
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->applicationData:Ljava/lang/Object;

    .line 1805
    return-void
.end method

.method public setCSeq(Ljavax/sip/header/CSeqHeader;)V
    .registers 2
    .parameter "cseqHeader"

    .prologue
    .line 1792
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1793
    return-void
.end method

.method public setCallId(Ljava/lang/String;)V
    .registers 3
    .parameter "callId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1118
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    if-nez v0, :cond_c

    .line 1119
    new-instance v0, Lgov/nist/javax/sip/header/CallID;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/CallID;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1121
    :cond_c
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/CallID;->setCallId(Ljava/lang/String;)V

    .line 1122
    return-void
.end method

.method public setCallId(Ljavax/sip/header/CallIdHeader;)V
    .registers 2
    .parameter "callId"

    .prologue
    .line 1109
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1110
    return-void
.end method

.method public setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V
    .registers 6
    .parameter "content"
    .parameter "contentTypeHeader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1234
    if-nez p1, :cond_b

    .line 1235
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null content"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1236
    :cond_b
    invoke-virtual {p0, p2}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1238
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    .line 1239
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    .line 1240
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    .line 1242
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 1243
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    .line 1249
    :goto_1e
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    .line 1250
    return-void

    .line 1244
    :cond_22
    instance-of v1, p1, [B

    if-eqz v1, :cond_2f

    .line 1245
    move-object v0, p1

    check-cast v0, [B

    move-object v1, v0

    check-cast v1, [B

    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    goto :goto_1e

    .line 1247
    :cond_2f
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    goto :goto_1e
.end method

.method public setContentDisposition(Ljavax/sip/header/ContentDispositionHeader;)V
    .registers 2
    .parameter "contentDispositionHeader"

    .prologue
    .line 1687
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1689
    return-void
.end method

.method public setContentEncoding(Ljavax/sip/header/ContentEncodingHeader;)V
    .registers 2
    .parameter "contentEncodingHeader"

    .prologue
    .line 1692
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1694
    return-void
.end method

.method public setContentLanguage(Ljavax/sip/header/ContentLanguageHeader;)V
    .registers 2
    .parameter "contentLanguageHeader"

    .prologue
    .line 1697
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1698
    return-void
.end method

.method public setContentLength(Ljavax/sip/header/ContentLengthHeader;)V
    .registers 4
    .parameter "contentLength"

    .prologue
    .line 1707
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-interface {p1}, Ljavax/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_9
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1711
    :goto_9
    return-void

    .line 1708
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public setExpires(Ljavax/sip/header/ExpiresHeader;)V
    .registers 2
    .parameter "expiresHeader"

    .prologue
    .line 1677
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1678
    return-void
.end method

.method public setFrom(Ljavax/sip/header/FromHeader;)V
    .registers 2
    .parameter "from"

    .prologue
    .line 1150
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1152
    return-void
.end method

.method public setFromTag(Ljava/lang/String;)V
    .registers 3
    .parameter "tag"

    .prologue
    .line 1487
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/From;->setTag(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1490
    :goto_5
    return-void

    .line 1488
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setHeader(Lgov/nist/javax/sip/header/SIPHeaderList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgov/nist/javax/sip/header/SIPHeaderList",
            "<",
            "Lgov/nist/javax/sip/header/Via;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1027
    .local p1, sipHeaderList:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<Lgov/nist/javax/sip/header/Via;>;"
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1028
    return-void
.end method

.method public setHeader(Ljavax/sip/header/Header;)V
    .registers 8
    .parameter "sipHeader"

    .prologue
    .line 579
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    move-object v2, v0

    .line 580
    .local v2, header:Lgov/nist/javax/sip/header/SIPHeader;
    if-nez v2, :cond_e

    .line 581
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "null header!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 583
    :cond_e
    :try_start_e
    instance-of v4, v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v4, :cond_1d

    .line 584
    move-object v0, v2

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    move-object v3, v0

    .line 586
    .local v3, hl:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeaderList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 594
    .end local v3           #hl:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    :goto_1c
    return-void

    .line 589
    :cond_1d
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeader;->getHeaderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/message/SIPMessage;->removeHeader(Ljava/lang/String;)V

    .line 590
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    :try_end_29
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_e .. :try_end_29} :catch_2a

    goto :goto_1c

    .line 591
    :catch_2a
    move-exception v4

    move-object v1, v4

    .line 592
    .local v1, ex:Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_1c
.end method

.method public setHeaders(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 602
    .local p1, headers:Ljava/util/List;,"Ljava/util/List<Lgov/nist/javax/sip/header/SIPHeader;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 603
    .local v0, listIterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 604
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    .line 606
    .local v1, sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    const/4 v2, 0x0

    :try_start_11
    invoke-virtual {p0, v1, v2}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_14
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_4

    .line 607
    :catch_15
    move-exception v2

    goto :goto_4

    .line 610
    .end local v1           #sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_17
    return-void
.end method

.method public setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V
    .registers 2
    .parameter "maxForwards"

    .prologue
    .line 1079
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1080
    return-void
.end method

.method public setMessageContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "type"
    .parameter "subType"
    .parameter "messageContent"

    .prologue
    const/4 v1, 0x0

    .line 1214
    if-nez p3, :cond_b

    .line 1215
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "messgeContent is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1216
    :cond_b
    new-instance v0, Lgov/nist/javax/sip/header/ContentType;

    invoke-direct {v0, p1, p2}, Lgov/nist/javax/sip/header/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    .local v0, ct:Lgov/nist/javax/sip/header/ContentType;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1218
    iput-object p3, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    .line 1219
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    .line 1220
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    .line 1223
    invoke-direct {p0, p3}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    .line 1224
    return-void
.end method

.method public setMessageContent(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 5
    .parameter "type"
    .parameter "subType"
    .parameter "messageContent"

    .prologue
    .line 1276
    new-instance v0, Lgov/nist/javax/sip/header/ContentType;

    invoke-direct {v0, p1, p2}, Lgov/nist/javax/sip/header/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    .local v0, ct:Lgov/nist/javax/sip/header/ContentType;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1278
    invoke-virtual {p0, p3}, Lgov/nist/javax/sip/message/SIPMessage;->setMessageContent([B)V

    .line 1280
    invoke-direct {p0, p3}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    .line 1281
    return-void
.end method

.method public setMessageContent(Ljava/lang/String;ZZI)V
    .registers 8
    .parameter "content"
    .parameter "strict"
    .parameter "computeContentLength"
    .parameter "givenLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1292
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    .line 1293
    if-nez p3, :cond_42

    .line 1294
    if-nez p2, :cond_10

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v0

    if-ne v0, p4, :cond_18

    :cond_10
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v0

    if-ge v0, p4, :cond_42

    .line 1296
    :cond_18
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid content length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1301
    :cond_42
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    .line 1302
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    .line 1303
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    .line 1304
    return-void
.end method

.method public setMessageContent([B)V
    .registers 3
    .parameter "content"

    .prologue
    const/4 v0, 0x0

    .line 1312
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    .line 1314
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    .line 1315
    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    .line 1316
    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    .line 1317
    return-void
.end method

.method public setMessageContent([BZI)V
    .registers 7
    .parameter "content"
    .parameter "computeContentLength"
    .parameter "givenLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1327
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    .line 1328
    if-nez p2, :cond_38

    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v0

    if-ge v0, p3, :cond_38

    .line 1330
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid content length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1333
    :cond_38
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    .line 1334
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    .line 1335
    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    .line 1336
    return-void
.end method

.method public setNullRequest()V
    .registers 2

    .prologue
    .line 1885
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nullRequest:Z

    .line 1886
    return-void
.end method

.method public abstract setSIPVersion(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public setSize(I)V
    .registers 2
    .parameter "size"

    .prologue
    .line 1719
    iput p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->size:I

    .line 1720
    return-void
.end method

.method public setTo(Ljavax/sip/header/ToHeader;)V
    .registers 2
    .parameter "to"

    .prologue
    .line 1146
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Ljavax/sip/header/Header;)V

    .line 1147
    return-void
.end method

.method public setToTag(Ljava/lang/String;)V
    .registers 3
    .parameter "tag"

    .prologue
    .line 1499
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/To;->setTag(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1502
    :goto_5
    return-void

    .line 1500
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setVia(Ljava/util/List;)V
    .registers 6
    .parameter "viaList"

    .prologue
    .line 1011
    new-instance v1, Lgov/nist/javax/sip/header/ViaList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ViaList;-><init>()V

    .line 1012
    .local v1, vList:Lgov/nist/javax/sip/header/ViaList;
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1013
    .local v0, it:Ljava/util/ListIterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1014
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/Via;

    .line 1015
    .local v2, via:Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/ViaList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    goto :goto_9

    .line 1017
    .end local v2           #via:Lgov/nist/javax/sip/header/Via;
    :cond_19
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPMessage;->setHeader(Lgov/nist/javax/sip/header/SIPHeaderList;)V

    .line 1018
    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method
