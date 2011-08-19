.class public Lgov/nist/javax/sip/message/MessageFactoryImpl;
.super Ljava/lang/Object;
.source "MessageFactoryImpl.java"

# interfaces
.implements Ljavax/sip/message/MessageFactory;
.implements Lgov/nist/javax/sip/message/MessageFactoryExt;


# static fields
.field private static defaultContentEncodingCharset:Ljava/lang/String;

.field private static server:Ljavax/sip/header/ServerHeader;

.field private static userAgent:Ljavax/sip/header/UserAgentHeader;


# instance fields
.field private strict:Z

.field private testing:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const-string v0, "UTF-8"

    sput-object v0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->defaultContentEncodingCharset:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->testing:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->strict:Z

    .line 90
    return-void
.end method

.method static synthetic access$000(Lgov/nist/javax/sip/message/MessageFactoryImpl;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->testing:Z

    return v0
.end method

.method public static getDefaultContentEncodingCharset()Ljava/lang/String;
    .registers 1

    .prologue
    .line 827
    sget-object v0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->defaultContentEncodingCharset:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultServerHeader()Ljavax/sip/header/ServerHeader;
    .registers 1

    .prologue
    .line 811
    sget-object v0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    return-object v0
.end method

.method public static getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;
    .registers 1

    .prologue
    .line 801
    sget-object v0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    return-object v0
.end method


# virtual methods
.method public createMultipartMimeContent(Ljavax/sip/header/ContentTypeHeader;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lgov/nist/javax/sip/message/MultipartMimeContent;
    .registers 12
    .parameter "multipartMimeCth"
    .parameter "contentType"
    .parameter "contentSubtype"
    .parameter "contentBody"

    .prologue
    .line 835
    const-string v5, "boundary"

    invoke-interface {p1, v5}, Ljavax/sip/header/ContentTypeHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, boundary:Ljava/lang/String;
    new-instance v4, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;

    invoke-direct {v4, p1}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;-><init>(Ljavax/sip/header/ContentTypeHeader;)V

    .line 837
    .local v4, retval:Lgov/nist/javax/sip/message/MultipartMimeContentImpl;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_c
    array-length v5, p2

    if-ge v3, v5, :cond_28

    .line 838
    new-instance v2, Lgov/nist/javax/sip/header/ContentType;

    aget-object v5, p2, v3

    aget-object v6, p3, v3

    invoke-direct {v2, v5, v6}, Lgov/nist/javax/sip/header/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    .local v2, cth:Ljavax/sip/header/ContentTypeHeader;
    new-instance v1, Lgov/nist/javax/sip/message/ContentImpl;

    aget-object v5, p4, v3

    invoke-direct {v1, v5, v0}, Lgov/nist/javax/sip/message/ContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    .local v1, contentImpl:Lgov/nist/javax/sip/message/ContentImpl;
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/ContentImpl;->setContentTypeHeader(Ljavax/sip/header/ContentTypeHeader;)V

    .line 841
    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->add(Lgov/nist/javax/sip/message/Content;)Z

    .line 837
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 843
    .end local v1           #contentImpl:Lgov/nist/javax/sip/message/ContentImpl;
    .end local v2           #cth:Ljavax/sip/header/ContentTypeHeader;
    :cond_28
    return-object v4
.end method

.method public createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;
    .registers 8
    .parameter "requestString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 693
    if-eqz p1, :cond_a

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 694
    :cond_a
    new-instance v1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v1}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 695
    .local v1, retval:Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->setNullRequest()V

    move-object v4, v1

    .line 740
    .end local v1           #retval:Lgov/nist/javax/sip/message/SIPRequest;
    :goto_13
    return-object v4

    .line 699
    :cond_14
    new-instance v3, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v3}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    .line 700
    .local v3, smp:Lgov/nist/javax/sip/parser/StringMsgParser;
    iget-boolean v4, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->strict:Z

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/parser/StringMsgParser;->setStrict(Z)V

    .line 706
    new-instance v0, Lgov/nist/javax/sip/message/MessageFactoryImpl$1;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/message/MessageFactoryImpl$1;-><init>(Lgov/nist/javax/sip/message/MessageFactoryImpl;)V

    .line 732
    .local v0, parseExceptionListener:Lgov/nist/javax/sip/parser/ParseExceptionListener;
    iget-boolean v4, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->testing:Z

    if-eqz v4, :cond_2a

    .line 733
    invoke-virtual {v3, v0}, Lgov/nist/javax/sip/parser/StringMsgParser;->setParseExceptionListener(Lgov/nist/javax/sip/parser/ParseExceptionListener;)V

    .line 735
    :cond_2a
    invoke-virtual {v3, p1}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPMessage(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;

    move-result-object v2

    .line 737
    .local v2, sipMessage:Lgov/nist/javax/sip/message/SIPMessage;
    instance-of v4, v2, Lgov/nist/javax/sip/message/SIPRequest;

    if-nez v4, :cond_39

    .line 738
    new-instance v4, Ljava/text/ParseException;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 740
    :cond_39
    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    .end local v2           #sipMessage:Lgov/nist/javax/sip/message/SIPMessage;
    move-object v4, v2

    goto :goto_13
.end method

.method public createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Request;
    .registers 13
    .parameter "requestURI"
    .parameter "method"
    .parameter "callId"
    .parameter "cSeq"
    .parameter "from"
    .parameter "to"
    .parameter "via"
    .parameter "maxForwards"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 234
    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    if-eqz p3, :cond_10

    if-eqz p4, :cond_10

    if-eqz p5, :cond_10

    if-eqz p6, :cond_10

    if-eqz p7, :cond_10

    if-nez p8, :cond_19

    .line 237
    :cond_10
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "JAIN-SIP Exception, some parameters are missing, unable to create the request"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 241
    :cond_19
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 242
    .local v0, sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    .line 243
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPRequest;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    .line 245
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPRequest;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    .line 246
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPRequest;->setFrom(Ljavax/sip/header/FromHeader;)V

    .line 247
    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPRequest;->setTo(Ljavax/sip/header/ToHeader;)V

    .line 248
    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPRequest;->setVia(Ljava/util/List;)V

    .line 249
    invoke-virtual {v0, p8}, Lgov/nist/javax/sip/message/SIPRequest;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    .line 250
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v1, :cond_3f

    .line 251
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 254
    :cond_3f
    return-object v0
.end method

.method public createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljavax/sip/header/ContentTypeHeader;Ljava/lang/Object;)Ljavax/sip/message/Request;
    .registers 14
    .parameter "requestURI"
    .parameter "method"
    .parameter "callId"
    .parameter "cSeq"
    .parameter "from"
    .parameter "to"
    .parameter "via"
    .parameter "maxForwards"
    .parameter "contentType"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 126
    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    if-eqz p3, :cond_14

    if-eqz p4, :cond_14

    if-eqz p5, :cond_14

    if-eqz p6, :cond_14

    if-eqz p7, :cond_14

    if-eqz p8, :cond_14

    if-eqz p10, :cond_14

    if-nez p9, :cond_1c

    .line 130
    :cond_14
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null parameters"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_1c
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 133
    .local v0, sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    .line 134
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPRequest;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    .line 136
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPRequest;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    .line 137
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPRequest;->setFrom(Ljavax/sip/header/FromHeader;)V

    .line 138
    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPRequest;->setTo(Ljavax/sip/header/ToHeader;)V

    .line 139
    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPRequest;->setVia(Ljava/util/List;)V

    .line 140
    invoke-virtual {v0, p8}, Lgov/nist/javax/sip/message/SIPRequest;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    .line 141
    invoke-virtual {v0, p10, p9}, Lgov/nist/javax/sip/message/SIPRequest;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 142
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v1, :cond_45

    .line 143
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 146
    :cond_45
    return-object v0
.end method

.method public createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljavax/sip/header/ContentTypeHeader;[B)Ljavax/sip/message/Request;
    .registers 14
    .parameter "requestURI"
    .parameter "method"
    .parameter "callId"
    .parameter "cSeq"
    .parameter "from"
    .parameter "to"
    .parameter "via"
    .parameter "maxForwards"
    .parameter "contentType"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 549
    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    if-eqz p3, :cond_14

    if-eqz p4, :cond_14

    if-eqz p5, :cond_14

    if-eqz p6, :cond_14

    if-eqz p7, :cond_14

    if-eqz p8, :cond_14

    if-eqz p10, :cond_14

    if-nez p9, :cond_1c

    .line 553
    :cond_14
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "missing parameters"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 555
    :cond_1c
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 556
    .local v0, sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    .line 557
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPRequest;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    .line 559
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPRequest;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    .line 560
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPRequest;->setFrom(Ljavax/sip/header/FromHeader;)V

    .line 561
    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPRequest;->setTo(Ljavax/sip/header/ToHeader;)V

    .line 562
    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPRequest;->setVia(Ljava/util/List;)V

    .line 563
    invoke-virtual {v0, p8}, Lgov/nist/javax/sip/message/SIPRequest;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    .line 564
    invoke-virtual {v0, p10, p9}, Lgov/nist/javax/sip/message/SIPRequest;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 565
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v1, :cond_45

    .line 566
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 568
    :cond_45
    return-object v0
.end method

.method public createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;[BLjavax/sip/header/ContentTypeHeader;)Ljavax/sip/message/Request;
    .registers 15
    .parameter "requestURI"
    .parameter "method"
    .parameter "callId"
    .parameter "cSeq"
    .parameter "from"
    .parameter "to"
    .parameter "via"
    .parameter "maxForwards"
    .parameter "content"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 182
    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    if-eqz p3, :cond_14

    if-eqz p4, :cond_14

    if-eqz p5, :cond_14

    if-eqz p6, :cond_14

    if-eqz p7, :cond_14

    if-eqz p8, :cond_14

    if-eqz p9, :cond_14

    if-nez p10, :cond_1d

    .line 186
    :cond_14
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "JAIN-SIP Exception, some parameters are missing, unable to create the request"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 190
    :cond_1d
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 191
    .local v0, sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    .line 192
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPRequest;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    .line 194
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPRequest;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    .line 195
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPRequest;->setFrom(Ljavax/sip/header/FromHeader;)V

    .line 196
    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPRequest;->setTo(Ljavax/sip/header/ToHeader;)V

    .line 197
    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPRequest;->setVia(Ljava/util/List;)V

    .line 198
    invoke-virtual {v0, p8}, Lgov/nist/javax/sip/message/SIPRequest;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    .line 199
    check-cast p10, Lgov/nist/javax/sip/header/ContentType;

    .end local p10
    invoke-virtual {v0, p10}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 200
    invoke-virtual {v0, p9}, Lgov/nist/javax/sip/message/SIPRequest;->setMessageContent([B)V

    .line 201
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v1, :cond_4b

    .line 202
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 204
    :cond_4b
    return-object v0
.end method

.method public createResponse(ILjavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Response;
    .registers 12
    .parameter "statusCode"
    .parameter "callId"
    .parameter "cSeq"
    .parameter "from"
    .parameter "to"
    .parameter "via"
    .parameter "maxForwards"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 393
    if-eqz p2, :cond_c

    if-eqz p3, :cond_c

    if-eqz p4, :cond_c

    if-eqz p5, :cond_c

    if-eqz p6, :cond_c

    if-nez p7, :cond_15

    .line 395
    :cond_c
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "JAIN-SIP Exception, some parameters are missing, unable to create the response"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 399
    :cond_15
    new-instance v0, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    .line 400
    .local v0, sipResponse:Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusCode(I)V

    .line 401
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    .line 402
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    .line 403
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setFrom(Ljavax/sip/header/FromHeader;)V

    .line 404
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPResponse;->setTo(Ljavax/sip/header/ToHeader;)V

    .line 405
    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPResponse;->setVia(Ljava/util/List;)V

    .line 406
    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPResponse;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    .line 407
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v1, :cond_38

    .line 408
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 410
    :cond_38
    return-object v0
.end method

.method public createResponse(ILjavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)Ljavax/sip/message/Response;
    .registers 15
    .parameter "statusCode"
    .parameter "callId"
    .parameter "cSeq"
    .parameter "from"
    .parameter "to"
    .parameter "via"
    .parameter "maxForwards"
    .parameter "content"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 290
    if-eqz p2, :cond_10

    if-eqz p3, :cond_10

    if-eqz p4, :cond_10

    if-eqz p5, :cond_10

    if-eqz p6, :cond_10

    if-eqz p7, :cond_10

    if-eqz p8, :cond_10

    if-nez p9, :cond_18

    .line 293
    :cond_10
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, " unable to create the response"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 295
    :cond_18
    new-instance v1, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v1}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    .line 296
    .local v1, sipResponse:Lgov/nist/javax/sip/message/SIPResponse;
    new-instance v2, Lgov/nist/javax/sip/header/StatusLine;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    .line 297
    .local v2, statusLine:Lgov/nist/javax/sip/header/StatusLine;
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    .line 298
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, reasonPhrase:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusLine(Lgov/nist/javax/sip/header/StatusLine;)V

    .line 303
    invoke-virtual {v1, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    .line 304
    invoke-virtual {v1, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    .line 305
    invoke-virtual {v1, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setFrom(Ljavax/sip/header/FromHeader;)V

    .line 306
    invoke-virtual {v1, p5}, Lgov/nist/javax/sip/message/SIPResponse;->setTo(Ljavax/sip/header/ToHeader;)V

    .line 307
    invoke-virtual {v1, p6}, Lgov/nist/javax/sip/message/SIPResponse;->setVia(Ljava/util/List;)V

    .line 308
    invoke-virtual {v1, p7}, Lgov/nist/javax/sip/message/SIPResponse;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    .line 309
    invoke-virtual {v1, p8, p9}, Lgov/nist/javax/sip/message/SIPResponse;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 310
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v3, :cond_4d

    .line 311
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 313
    :cond_4d
    return-object v1
.end method

.method public createResponse(ILjavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljavax/sip/header/ContentTypeHeader;Ljava/lang/Object;)Ljavax/sip/message/Response;
    .registers 16
    .parameter "statusCode"
    .parameter "callId"
    .parameter "cSeq"
    .parameter "from"
    .parameter "to"
    .parameter "via"
    .parameter "maxForwards"
    .parameter "contentType"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 602
    if-eqz p2, :cond_10

    if-eqz p3, :cond_10

    if-eqz p4, :cond_10

    if-eqz p5, :cond_10

    if-eqz p6, :cond_10

    if-eqz p7, :cond_10

    if-eqz p9, :cond_10

    if-nez p8, :cond_18

    .line 605
    :cond_10
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "missing parameters"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 606
    :cond_18
    new-instance v1, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v1}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    .line 607
    .local v1, sipResponse:Lgov/nist/javax/sip/message/SIPResponse;
    new-instance v2, Lgov/nist/javax/sip/header/StatusLine;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    .line 608
    .local v2, statusLine:Lgov/nist/javax/sip/header/StatusLine;
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    .line 609
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, reason:Ljava/lang/String;
    if-nez v0, :cond_45

    .line 611
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Unknown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 612
    :cond_45
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    .line 613
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusLine(Lgov/nist/javax/sip/header/StatusLine;)V

    .line 614
    invoke-virtual {v1, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    .line 615
    invoke-virtual {v1, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    .line 616
    invoke-virtual {v1, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setFrom(Ljavax/sip/header/FromHeader;)V

    .line 617
    invoke-virtual {v1, p5}, Lgov/nist/javax/sip/message/SIPResponse;->setTo(Ljavax/sip/header/ToHeader;)V

    .line 618
    invoke-virtual {v1, p6}, Lgov/nist/javax/sip/message/SIPResponse;->setVia(Ljava/util/List;)V

    .line 619
    invoke-virtual {v1, p9, p8}, Lgov/nist/javax/sip/message/SIPResponse;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 620
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v3, :cond_66

    .line 621
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 623
    :cond_66
    return-object v1
.end method

.method public createResponse(ILjavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljavax/sip/header/ContentTypeHeader;[B)Ljavax/sip/message/Response;
    .registers 16
    .parameter "statusCode"
    .parameter "callId"
    .parameter "cSeq"
    .parameter "from"
    .parameter "to"
    .parameter "via"
    .parameter "maxForwards"
    .parameter "contentType"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 658
    if-eqz p2, :cond_10

    if-eqz p3, :cond_10

    if-eqz p4, :cond_10

    if-eqz p5, :cond_10

    if-eqz p6, :cond_10

    if-eqz p7, :cond_10

    if-eqz p9, :cond_10

    if-nez p8, :cond_18

    .line 661
    :cond_10
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "missing parameters"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 662
    :cond_18
    new-instance v1, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v1}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    .line 663
    .local v1, sipResponse:Lgov/nist/javax/sip/message/SIPResponse;
    new-instance v2, Lgov/nist/javax/sip/header/StatusLine;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    .line 664
    .local v2, statusLine:Lgov/nist/javax/sip/header/StatusLine;
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    .line 665
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, reason:Ljava/lang/String;
    if-nez v0, :cond_45

    .line 667
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : Unknown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 668
    :cond_45
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusLine(Lgov/nist/javax/sip/header/StatusLine;)V

    .line 670
    invoke-virtual {v1, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    .line 671
    invoke-virtual {v1, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    .line 672
    invoke-virtual {v1, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setFrom(Ljavax/sip/header/FromHeader;)V

    .line 673
    invoke-virtual {v1, p5}, Lgov/nist/javax/sip/message/SIPResponse;->setTo(Ljavax/sip/header/ToHeader;)V

    .line 674
    invoke-virtual {v1, p6}, Lgov/nist/javax/sip/message/SIPResponse;->setVia(Ljava/util/List;)V

    .line 675
    invoke-virtual {v1, p9, p8}, Lgov/nist/javax/sip/message/SIPResponse;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 676
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v3, :cond_66

    .line 677
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 679
    :cond_66
    return-object v1
.end method

.method public createResponse(ILjavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;[BLjavax/sip/header/ContentTypeHeader;)Ljavax/sip/message/Response;
    .registers 13
    .parameter "statusCode"
    .parameter "callId"
    .parameter "cSeq"
    .parameter "from"
    .parameter "to"
    .parameter "via"
    .parameter "maxForwards"
    .parameter "content"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 347
    if-eqz p2, :cond_10

    if-eqz p3, :cond_10

    if-eqz p4, :cond_10

    if-eqz p5, :cond_10

    if-eqz p6, :cond_10

    if-eqz p7, :cond_10

    if-eqz p8, :cond_10

    if-nez p9, :cond_18

    .line 350
    :cond_10
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null params "

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    :cond_18
    new-instance v0, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    .line 353
    .local v0, sipResponse:Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusCode(I)V

    .line 354
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    .line 355
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    .line 356
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setFrom(Ljavax/sip/header/FromHeader;)V

    .line 357
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/message/SIPResponse;->setTo(Ljavax/sip/header/ToHeader;)V

    .line 358
    invoke-virtual {v0, p6}, Lgov/nist/javax/sip/message/SIPResponse;->setVia(Ljava/util/List;)V

    .line 359
    invoke-virtual {v0, p7}, Lgov/nist/javax/sip/message/SIPResponse;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    .line 360
    check-cast p9, Lgov/nist/javax/sip/header/ContentType;

    .end local p9
    invoke-virtual {v0, p9}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 361
    invoke-virtual {v0, p8}, Lgov/nist/javax/sip/message/SIPResponse;->setMessageContent([B)V

    .line 362
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    if-eqz v1, :cond_43

    .line 363
    sget-object v1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 365
    :cond_43
    return-object v0
.end method

.method public createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;
    .registers 8
    .parameter "statusCode"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 497
    if-nez p2, :cond_a

    .line 498
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "null parameters"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 503
    :cond_a
    move-object v0, p2

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object v1, v0

    .line 504
    .local v1, sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v2

    .line 507
    .local v2, sipResponse:Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPResponse;->removeContent()V

    .line 508
    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/message/SIPResponse;->removeHeader(Ljava/lang/String;)V

    .line 509
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    if-eqz v3, :cond_23

    .line 510
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 512
    :cond_23
    return-object v2
.end method

.method public createResponse(ILjavax/sip/message/Request;Ljavax/sip/header/ContentTypeHeader;Ljava/lang/Object;)Ljavax/sip/message/Response;
    .registers 10
    .parameter "statusCode"
    .parameter "request"
    .parameter "contentType"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 436
    if-eqz p2, :cond_6

    if-eqz p4, :cond_6

    if-nez p3, :cond_e

    .line 437
    :cond_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "null parameters"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 439
    :cond_e
    move-object v0, p2

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object v1, v0

    .line 440
    .local v1, sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v2

    .line 441
    .local v2, sipResponse:Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v2, p4, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 442
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    if-eqz v3, :cond_22

    .line 443
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 445
    :cond_22
    return-object v2
.end method

.method public createResponse(ILjavax/sip/message/Request;Ljavax/sip/header/ContentTypeHeader;[B)Ljavax/sip/message/Response;
    .registers 10
    .parameter "statusCode"
    .parameter "request"
    .parameter "contentType"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 469
    if-eqz p2, :cond_6

    if-eqz p4, :cond_6

    if-nez p3, :cond_e

    .line 470
    :cond_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "null Parameters"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 472
    :cond_e
    move-object v0, p2

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object v1, v0

    .line 473
    .local v1, sipRequest:Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v2

    .line 474
    .local v2, sipResponse:Lgov/nist/javax/sip/message/SIPResponse;
    check-cast p3, Lgov/nist/javax/sip/header/ContentType;

    .end local p3
    invoke-virtual {v2, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 475
    invoke-virtual {v2, p4}, Lgov/nist/javax/sip/message/SIPResponse;->setMessageContent([B)V

    .line 476
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    if-eqz v3, :cond_27

    .line 477
    sget-object v3, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 479
    :cond_27
    return-object v2
.end method

.method public createResponse(Ljava/lang/String;)Ljavax/sip/message/Response;
    .registers 6
    .parameter "responseString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 753
    if-nez p1, :cond_8

    .line 754
    new-instance v2, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v2}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    .line 763
    :goto_7
    return-object v2

    .line 756
    :cond_8
    new-instance v1, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v1}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    .line 758
    .local v1, smp:Lgov/nist/javax/sip/parser/StringMsgParser;
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPMessage(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;

    move-result-object v0

    .line 760
    .local v0, sipMessage:Lgov/nist/javax/sip/message/SIPMessage;
    instance-of v2, v0, Lgov/nist/javax/sip/message/SIPResponse;

    if-nez v2, :cond_1c

    .line 761
    new-instance v2, Ljava/text/ParseException;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 763
    :cond_1c
    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    .end local v0           #sipMessage:Lgov/nist/javax/sip/message/SIPMessage;
    move-object v2, v0

    goto :goto_7
.end method

.method public setDefaultContentEncodingCharset(Ljava/lang/String;)V
    .registers 4
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 821
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null argument!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_a
    sput-object p1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->defaultContentEncodingCharset:Ljava/lang/String;

    .line 824
    return-void
.end method

.method public setDefaultServerHeader(Ljavax/sip/header/ServerHeader;)V
    .registers 2
    .parameter "server"

    .prologue
    .line 791
    sput-object p1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->server:Ljavax/sip/header/ServerHeader;

    .line 792
    return-void
.end method

.method public setDefaultUserAgentHeader(Ljavax/sip/header/UserAgentHeader;)V
    .registers 2
    .parameter "userAgent"

    .prologue
    .line 777
    sput-object p1, Lgov/nist/javax/sip/message/MessageFactoryImpl;->userAgent:Ljavax/sip/header/UserAgentHeader;

    .line 778
    return-void
.end method

.method public setStrict(Z)V
    .registers 2
    .parameter "strict"

    .prologue
    .line 74
    iput-boolean p1, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->strict:Z

    .line 75
    return-void
.end method

.method public setTest(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 83
    iput-boolean p1, p0, Lgov/nist/javax/sip/message/MessageFactoryImpl;->testing:Z

    .line 84
    return-void
.end method
