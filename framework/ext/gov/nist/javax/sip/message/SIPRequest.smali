.class public final Lgov/nist/javax/sip/message/SIPRequest;
.super Lgov/nist/javax/sip/message/SIPMessage;
.source "SIPRequest.java"

# interfaces
.implements Ljavax/sip/message/Request;
.implements Lgov/nist/javax/sip/message/RequestExt;


# static fields
.field private static final DEFAULT_TRANSPORT:Ljava/lang/String; = "udp"

.field private static final DEFAULT_USER:Ljava/lang/String; = "ip"

.field private static final nameTable:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x2ea3ad0be6d281afL

.field private static final targetRefreshMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient inviteTransaction:Ljava/lang/Object;

.field private transient messageChannel:Ljava/lang/Object;

.field private requestLine:Lgov/nist/javax/sip/header/RequestLine;

.field private transient transactionPointer:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    .line 103
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov/nist/javax/sip/message/SIPRequest;->nameTable:Ljava/util/Hashtable;

    .line 110
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    const-string v1, "INVITE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    const-string v1, "UPDATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    const-string v1, "SUBSCRIBE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    const-string v1, "NOTIFY"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    const-string v1, "REFER"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v0, "INVITE"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 117
    const-string v0, "BYE"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 118
    const-string v0, "CANCEL"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 119
    const-string v0, "ACK"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 120
    const-string v0, "PRACK"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 121
    const-string v0, "INFO"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 122
    const-string v0, "MESSAGE"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 123
    const-string v0, "NOTIFY"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 124
    const-string v0, "OPTIONS"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 125
    const-string v0, "PRACK"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 126
    const-string v0, "PUBLISH"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 127
    const-string v0, "REFER"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 128
    const-string v0, "REGISTER"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 129
    const-string v0, "SUBSCRIBE"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 130
    const-string v0, "UPDATE"

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 187
    invoke-direct {p0}, Lgov/nist/javax/sip/message/SIPMessage;-><init>()V

    .line 188
    return-void
.end method

.method public static getCannonicalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "method"

    .prologue
    .line 157
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 158
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 160
    :goto_11
    return-object v0

    .restart local p0
    :cond_12
    move-object v0, p0

    goto :goto_11
.end method

.method public static isDialogCreating(Ljava/lang/String;)Z
    .registers 2
    .parameter "ucaseMethod"

    .prologue
    .line 145
    invoke-static {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTargetRefresh(Ljava/lang/String;)Z
    .registers 2
    .parameter "ucaseMethod"

    .prologue
    .line 138
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final mustCopyRR(I)Z
    .registers 4
    .parameter "code"

    .prologue
    const/4 v1, 0x0

    .line 738
    const/16 v0, 0x64

    if-le p1, v0, :cond_1d

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_1d

    .line 739
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/javax/sip/message/SIPRequest;->isDialogCreating(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    .line 740
    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    .line 739
    goto :goto_1a

    :cond_1d
    move v0, v1

    .line 740
    goto :goto_1a
.end method

.method private static putName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 106
    sget-object v0, Lgov/nist/javax/sip/message/SIPRequest;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method


# virtual methods
.method public checkHeaders()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 216
    const-string v0, "Missing a required header : "

    .line 220
    .local v0, prefix:Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v3

    if-nez v3, :cond_22

    .line 221
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CSeq"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 223
    :cond_22
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v3

    if-nez v3, :cond_41

    .line 224
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "To"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 227
    :cond_41
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    if-eqz v3, :cond_5b

    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5b

    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 229
    :cond_5b
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Call-ID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 231
    :cond_74
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v3

    if-nez v3, :cond_93

    .line 232
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "From"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 234
    :cond_93
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v3

    if-nez v3, :cond_b2

    .line 235
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Via"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 245
    :cond_b2
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v3

    if-nez v3, :cond_c0

    .line 246
    new-instance v3, Ljava/text/ParseException;

    const-string v4, "No via header in request! "

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 248
    :cond_c0
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NOTIFY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10e

    .line 249
    const-string v3, "Subscription-State"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v3

    if-nez v3, :cond_ed

    .line 250
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Subscription-State"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 252
    :cond_ed
    const-string v3, "Event"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v3

    if-nez v3, :cond_13b

    .line 253
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Event"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 255
    :cond_10e
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PUBLISH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13b

    .line 261
    const-string v3, "Event"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v3

    if-nez v3, :cond_13b

    .line 262
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Event"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 276
    :cond_13b
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "INVITE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_165

    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUBSCRIBE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_165

    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "REFER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1db

    .line 279
    :cond_165
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getContactHeader()Lgov/nist/javax/sip/header/Contact;

    move-result-object v3

    if-nez v3, :cond_18a

    .line 283
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_18a

    .line 284
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Contact"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 287
    :cond_18a
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v3

    instance-of v3, v3, Lgov/nist/javax/sip/address/SipUri;

    if-eqz v3, :cond_1db

    .line 288
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v3}, Lgov/nist/javax/sip/address/SipUri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, scheme:Ljava/lang/String;
    const-string v3, "sips"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1db

    .line 290
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getContactHeader()Lgov/nist/javax/sip/header/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/Contact;->getAddress()Ljavax/sip/address/Address;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/address/SipUri;

    .line 291
    .local v2, sipUri:Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v2}, Lgov/nist/javax/sip/address/SipUri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sips"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1db

    .line 292
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheme for contact should be sips:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 301
    .end local v1           #scheme:Ljava/lang/String;
    .end local v2           #sipUri:Lgov/nist/javax/sip/address/SipUri;
    :cond_1db
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getContactHeader()Lgov/nist/javax/sip/header/Contact;

    move-result-object v3

    if-nez v3, :cond_20d

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "INVITE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_205

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "REFER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_205

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUBSCRIBE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20d

    .line 305
    :cond_205
    new-instance v3, Ljava/text/ParseException;

    const-string v4, "Contact Header is Mandatory for a SIP INVITE"

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 308
    :cond_20d
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-eqz v3, :cond_23f

    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23f

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23f

    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_23f

    .line 311
    new-instance v3, Ljava/text/ParseException;

    const-string v4, "CSEQ method mismatch with  Request-Line "

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 315
    :cond_23f
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 481
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    .line 484
    .local v0, retval:Lgov/nist/javax/sip/message/SIPRequest;
    const/4 v1, 0x0

    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPRequest;->transactionPointer:Ljava/lang/Object;

    .line 485
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-eqz v1, :cond_17

    .line 486
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/header/RequestLine;

    iput-object p0, v0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    .line 488
    :cond_17
    return-object v0
.end method

.method public createACKRequest()Lgov/nist/javax/sip/message/SIPRequest;
    .registers 3

    .prologue
    .line 1064
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/RequestLine;

    .line 1065
    .local v0, requestLine:Lgov/nist/javax/sip/header/RequestLine;
    const-string v1, "ACK"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/RequestLine;->setMethod(Ljava/lang/String;)V

    .line 1066
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createSIPRequest(Lgov/nist/javax/sip/header/RequestLine;Z)Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    return-object v1
.end method

.method public createAckRequest(Lgov/nist/javax/sip/header/To;)Lgov/nist/javax/sip/message/SIPRequest;
    .registers 10
    .parameter "responseToHeader"

    .prologue
    .line 819
    new-instance v4, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v4}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 820
    .local v4, newRequest:Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v6, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v6}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLine(Lgov/nist/javax/sip/header/RequestLine;)V

    .line 821
    const-string v6, "ACK"

    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaders()Ljava/util/Iterator;

    move-result-object v3

    .line 823
    .local v3, headerIterator:Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 824
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/SIPHeader;

    .line 825
    .local v5, nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v6, v5, Lgov/nist/javax/sip/header/RouteList;

    if-nez v6, :cond_19

    .line 830
    instance-of v6, v5, Lgov/nist/javax/sip/header/ProxyAuthorization;

    if-nez v6, :cond_19

    .line 834
    instance-of v6, v5, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz v6, :cond_49

    .line 836
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    check-cast v5, Lgov/nist/javax/sip/header/SIPHeader;

    .line 838
    .restart local v5       #nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :try_start_37
    move-object v0, v5

    check-cast v0, Lgov/nist/javax/sip/header/ContentLength;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_3f
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_37 .. :try_end_3f} :catch_9d

    .line 879
    :goto_3f
    const/4 v6, 0x0

    :try_start_40
    invoke-virtual {v4, v5, v6}, Lgov/nist/javax/sip/message/SIPRequest;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_43
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_19

    .line 880
    :catch_44
    move-exception v2

    .line 881
    .local v2, e:Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;->printStackTrace()V

    goto :goto_19

    .line 841
    .end local v2           #e:Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    :cond_49
    instance-of v6, v5, Lgov/nist/javax/sip/header/ContentType;

    if-nez v6, :cond_19

    .line 845
    instance-of v6, v5, Lgov/nist/javax/sip/header/CSeq;

    if-eqz v6, :cond_5e

    .line 851
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/CSeq;

    .line 853
    .local v1, cseq:Lgov/nist/javax/sip/header/CSeq;
    :try_start_57
    const-string v6, "ACK"

    invoke-virtual {v1, v6}, Lgov/nist/javax/sip/header/CSeq;->setMethod(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/text/ParseException; {:try_start_57 .. :try_end_5c} :catch_9b

    .line 856
    :goto_5c
    move-object v5, v1

    .line 857
    goto :goto_3f

    .end local v1           #cseq:Lgov/nist/javax/sip/header/CSeq;
    :cond_5e
    instance-of v6, v5, Lgov/nist/javax/sip/header/To;

    if-eqz v6, :cond_6d

    .line 858
    if-eqz p1, :cond_66

    .line 859
    move-object v5, p1

    goto :goto_3f

    .line 861
    :cond_66
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    check-cast v5, Lgov/nist/javax/sip/header/SIPHeader;

    .restart local v5       #nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    goto :goto_3f

    .line 863
    :cond_6d
    instance-of v6, v5, Lgov/nist/javax/sip/header/ContactList;

    if-nez v6, :cond_19

    instance-of v6, v5, Lgov/nist/javax/sip/header/Expires;

    if-nez v6, :cond_19

    .line 866
    instance-of v6, v5, Lgov/nist/javax/sip/header/ViaList;

    if-eqz v6, :cond_86

    .line 873
    check-cast v5, Lgov/nist/javax/sip/header/ViaList;

    .end local v5           #nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v6

    invoke-interface {v6}, Ljavax/sip/header/Header;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/SIPHeader;

    .restart local v5       #nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    goto :goto_3f

    .line 875
    :cond_86
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    check-cast v5, Lgov/nist/javax/sip/header/SIPHeader;

    .restart local v5       #nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    goto :goto_3f

    .line 884
    .end local v5           #nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_8d
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v6

    if-eqz v6, :cond_9a

    .line 885
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v6

    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 888
    :cond_9a
    return-object v4

    .line 854
    .restart local v1       #cseq:Lgov/nist/javax/sip/header/CSeq;
    .restart local v5       #nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :catch_9b
    move-exception v6

    goto :goto_5c

    .line 839
    .end local v1           #cseq:Lgov/nist/javax/sip/header/CSeq;
    :catch_9d
    move-exception v6

    goto :goto_3f
.end method

.method public createBYERequest(Z)Lgov/nist/javax/sip/message/SIPRequest;
    .registers 4
    .parameter "switchHeaders"

    .prologue
    .line 1052
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/RequestLine;

    .line 1053
    .local v0, requestLine:Lgov/nist/javax/sip/header/RequestLine;
    const-string v1, "BYE"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/RequestLine;->setMethod(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->createSIPRequest(Lgov/nist/javax/sip/header/RequestLine;Z)Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    return-object v1
.end method

.method public createCancelRequest()Lgov/nist/javax/sip/message/SIPRequest;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 760
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "INVITE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 761
    new-instance v2, Ljavax/sip/SipException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to create CANCEL for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 774
    :cond_29
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 775
    .local v0, cancel:Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLine(Lgov/nist/javax/sip/header/RequestLine;)V

    .line 776
    const-string v2, "CANCEL"

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    .line 777
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/CallID;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 778
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->toHeader:Lgov/nist/javax/sip/header/To;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/To;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 779
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/CSeq;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 781
    :try_start_5f
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    const-string v3, "CANCEL"

    invoke-interface {v2, v3}, Ljavax/sip/header/CSeqHeader;->setMethod(Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/text/ParseException; {:try_start_5f .. :try_end_68} :catch_ac

    .line 785
    :goto_68
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->fromHeader:Lgov/nist/javax/sip/header/From;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/From;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 787
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Via;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->addFirst(Ljavax/sip/header/Header;)V

    .line 788
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/MaxForwards;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 794
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v2

    if-eqz v2, :cond_9e

    .line 795
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RouteList;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 797
    :cond_9e
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v2

    if-eqz v2, :cond_ab

    .line 798
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 801
    :cond_ab
    return-object v0

    .line 782
    .restart local p0
    :catch_ac
    move-exception v2

    move-object v1, v2

    .line 783
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_68
.end method

.method public final createErrorAck(Lgov/nist/javax/sip/header/To;)Lgov/nist/javax/sip/message/SIPRequest;
    .registers 5
    .parameter "responseToHeader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 916
    new-instance v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 917
    .local v0, newRequest:Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLine(Lgov/nist/javax/sip/header/RequestLine;)V

    .line 918
    const-string v1, "ACK"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    .line 919
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/CallID;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/Header;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 920
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/MaxForwards;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/Header;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 923
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->fromHeader:Lgov/nist/javax/sip/header/From;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/Header;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 924
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/To;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/Header;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 925
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/Header;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->addFirst(Ljavax/sip/header/Header;)V

    .line 926
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/CSeq;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/Header;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 927
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v1

    const-string v2, "ACK"

    invoke-interface {v1, v2}, Ljavax/sip/header/CSeqHeader;->setMethod(Ljava/lang/String;)V

    .line 934
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 935
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RouteList;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Lgov/nist/javax/sip/header/SIPHeaderList;)V

    .line 937
    :cond_73
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v1

    if-eqz v1, :cond_80

    .line 938
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 941
    :cond_80
    return-object v0
.end method

.method public createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;
    .registers 4
    .parameter "statusCode"

    .prologue
    .line 662
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, reasonPhrase:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(ILjava/lang/String;)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v1

    return-object v1
.end method

.method public createResponse(ILjava/lang/String;)Lgov/nist/javax/sip/message/SIPResponse;
    .registers 12
    .parameter "statusCode"
    .parameter "reasonPhrase"

    .prologue
    .line 689
    new-instance v3, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {v3}, Lgov/nist/javax/sip/message/SIPResponse;-><init>()V

    .line 691
    .local v3, newResponse:Lgov/nist/javax/sip/message/SIPResponse;
    :try_start_5
    invoke-virtual {v3, p1}, Lgov/nist/javax/sip/message/SIPResponse;->setStatusCode(I)V
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_8} :catch_50

    .line 695
    if-eqz p2, :cond_6a

    .line 696
    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 699
    :goto_d
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaders()Ljava/util/Iterator;

    move-result-object v2

    .line 700
    .local v2, headerIterator:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_72

    .line 701
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/SIPHeader;

    .line 702
    .local v4, nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v6, v4, Lgov/nist/javax/sip/header/From;

    if-nez v6, :cond_3f

    instance-of v6, v4, Lgov/nist/javax/sip/header/To;

    if-nez v6, :cond_3f

    instance-of v6, v4, Lgov/nist/javax/sip/header/ViaList;

    if-nez v6, :cond_3f

    instance-of v6, v4, Lgov/nist/javax/sip/header/CallID;

    if-nez v6, :cond_3f

    instance-of v6, v4, Lgov/nist/javax/sip/header/RecordRouteList;

    if-eqz v6, :cond_37

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/message/SIPRequest;->mustCopyRR(I)Z

    move-result v6

    if-nez v6, :cond_3f

    :cond_37
    instance-of v6, v4, Lgov/nist/javax/sip/header/CSeq;

    if-nez v6, :cond_3f

    instance-of v6, v4, Lgov/nist/javax/sip/header/TimeStamp;

    if-eqz v6, :cond_11

    .line 713
    :cond_3f
    :try_start_3f
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/header/SIPHeader;

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lgov/nist/javax/sip/message/SIPResponse;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_49
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_3f .. :try_end_49} :catch_4a

    goto :goto_11

    .line 714
    :catch_4a
    move-exception v6

    move-object v0, v6

    .line 715
    .local v0, e:Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;->printStackTrace()V

    goto :goto_11

    .line 692
    .end local v0           #e:Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    .end local v2           #headerIterator:Ljava/util/Iterator;
    .end local v4           #nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :catch_50
    move-exception v1

    .line 693
    .local v1, ex:Ljava/text/ParseException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 698
    .end local v1           #ex:Ljava/text/ParseException;
    :cond_6a
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lgov/nist/javax/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    goto :goto_d

    .line 719
    .restart local v2       #headerIterator:Ljava/util/Iterator;
    :cond_72
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v6

    if-eqz v6, :cond_7f

    .line 720
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v6

    invoke-virtual {v3, v6}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 723
    :cond_7f
    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v6

    const/16 v7, 0x64

    if-ne v6, v7, :cond_90

    .line 725
    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v6

    const-string v7, "tag"

    invoke-interface {v6, v7}, Ljavax/sip/header/ToHeader;->removeParameter(Ljava/lang/String;)V

    .line 728
    :cond_90
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v5

    .line 729
    .local v5, server:Ljavax/sip/header/ServerHeader;
    if-eqz v5, :cond_99

    .line 730
    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 732
    :cond_99
    return-object v3
.end method

.method public createSIPRequest(Lgov/nist/javax/sip/header/RequestLine;Z)Lgov/nist/javax/sip/message/SIPRequest;
    .registers 14
    .parameter "requestLine"
    .parameter "switchHeaders"

    .prologue
    .line 977
    new-instance v6, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v6}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    .line 978
    .local v6, newRequest:Lgov/nist/javax/sip/message/SIPRequest;
    iput-object p1, v6, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    .line 979
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaders()Ljava/util/Iterator;

    move-result-object v4

    .line 980
    .end local p0
    .local v4, headerIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b2

    .line 981
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/SIPHeader;

    .line 984
    .local v7, nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v10, v7, Lgov/nist/javax/sip/header/CSeq;

    if-eqz v10, :cond_33

    .line 985
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/CSeq;

    .line 986
    .local v5, newCseq:Lgov/nist/javax/sip/header/CSeq;
    move-object v7, v5

    .line 988
    :try_start_22
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lgov/nist/javax/sip/header/CSeq;->setMethod(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/text/ParseException; {:try_start_22 .. :try_end_29} :catch_c2

    .line 1030
    .end local v5           #newCseq:Lgov/nist/javax/sip/header/CSeq;
    :cond_29
    :goto_29
    const/4 v10, 0x0

    :try_start_2a
    invoke-virtual {v6, v7, v10}, Lgov/nist/javax/sip/message/SIPRequest;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_2d
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_b

    .line 1031
    :catch_2e
    move-exception v2

    .line 1032
    .local v2, e:Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;->printStackTrace()V

    goto :goto_b

    .line 991
    .end local v2           #e:Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
    :cond_33
    instance-of v10, v7, Lgov/nist/javax/sip/header/ViaList;

    if-eqz v10, :cond_4e

    .line 992
    check-cast v7, Lgov/nist/javax/sip/header/ViaList;

    .end local v7           #nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v10

    invoke-interface {v10}, Ljavax/sip/header/Header;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/header/Via;

    move-object v0, p0

    check-cast v0, Lgov/nist/javax/sip/header/Via;

    move-object v9, v0

    .line 993
    .local v9, via:Lgov/nist/javax/sip/header/Via;
    const-string v10, "branch"

    invoke-virtual {v9, v10}, Lgov/nist/javax/sip/header/Via;->removeParameter(Ljava/lang/String;)V

    .line 994
    move-object v7, v9

    .line 996
    .restart local v7       #nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    goto :goto_29

    .end local v9           #via:Lgov/nist/javax/sip/header/Via;
    :cond_4e
    instance-of v10, v7, Lgov/nist/javax/sip/header/To;

    if-eqz v10, :cond_73

    .line 997
    move-object v0, v7

    check-cast v0, Lgov/nist/javax/sip/header/To;

    move-object v8, v0

    .line 998
    .local v8, to:Lgov/nist/javax/sip/header/To;
    if-eqz p2, :cond_65

    .line 999
    new-instance v7, Lgov/nist/javax/sip/header/From;

    .end local v7           #nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    invoke-direct {v7, v8}, Lgov/nist/javax/sip/header/From;-><init>(Lgov/nist/javax/sip/header/To;)V

    .line 1000
    .restart local v7       #nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    move-object v0, v7

    check-cast v0, Lgov/nist/javax/sip/header/From;

    move-object v10, v0

    invoke-virtual {v10}, Lgov/nist/javax/sip/header/From;->removeTag()V

    goto :goto_29

    .line 1002
    :cond_65
    invoke-virtual {v8}, Lgov/nist/javax/sip/header/To;->clone()Ljava/lang/Object;

    move-result-object v7

    .end local v7           #nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    check-cast v7, Lgov/nist/javax/sip/header/SIPHeader;

    .line 1003
    .restart local v7       #nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    move-object v0, v7

    check-cast v0, Lgov/nist/javax/sip/header/To;

    move-object v10, v0

    invoke-virtual {v10}, Lgov/nist/javax/sip/header/To;->removeTag()V

    goto :goto_29

    .line 1005
    .end local v8           #to:Lgov/nist/javax/sip/header/To;
    :cond_73
    instance-of v10, v7, Lgov/nist/javax/sip/header/From;

    if-eqz v10, :cond_98

    .line 1006
    move-object v0, v7

    check-cast v0, Lgov/nist/javax/sip/header/From;

    move-object v3, v0

    .line 1007
    .local v3, from:Lgov/nist/javax/sip/header/From;
    if-eqz p2, :cond_8a

    .line 1008
    new-instance v7, Lgov/nist/javax/sip/header/To;

    .end local v7           #nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    invoke-direct {v7, v3}, Lgov/nist/javax/sip/header/To;-><init>(Lgov/nist/javax/sip/header/From;)V

    .line 1009
    .restart local v7       #nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    move-object v0, v7

    check-cast v0, Lgov/nist/javax/sip/header/To;

    move-object v10, v0

    invoke-virtual {v10}, Lgov/nist/javax/sip/header/To;->removeTag()V

    goto :goto_29

    .line 1011
    :cond_8a
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/From;->clone()Ljava/lang/Object;

    move-result-object v7

    .end local v7           #nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    check-cast v7, Lgov/nist/javax/sip/header/SIPHeader;

    .line 1012
    .restart local v7       #nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    move-object v0, v7

    check-cast v0, Lgov/nist/javax/sip/header/From;

    move-object v10, v0

    invoke-virtual {v10}, Lgov/nist/javax/sip/header/From;->removeTag()V

    goto :goto_29

    .line 1014
    .end local v3           #from:Lgov/nist/javax/sip/header/From;
    :cond_98
    instance-of v10, v7, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz v10, :cond_a8

    .line 1015
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/ContentLength;

    .line 1017
    .local v1, cl:Lgov/nist/javax/sip/header/ContentLength;
    const/4 v10, 0x0

    :try_start_a3
    invoke-virtual {v1, v10}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_a6
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_a3 .. :try_end_a6} :catch_c0

    .line 1020
    :goto_a6
    move-object v7, v1

    .line 1021
    goto :goto_29

    .end local v1           #cl:Lgov/nist/javax/sip/header/ContentLength;
    :cond_a8
    instance-of v10, v7, Lgov/nist/javax/sip/header/CallID;

    if-nez v10, :cond_29

    instance-of v10, v7, Lgov/nist/javax/sip/header/MaxForwards;

    if-nez v10, :cond_29

    goto/16 :goto_b

    .line 1035
    .end local v7           #nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_b2
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v10

    if-eqz v10, :cond_bf

    .line 1036
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v10

    invoke-virtual {v6, v10}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 1039
    :cond_bf
    return-object v6

    .line 1018
    .restart local v1       #cl:Lgov/nist/javax/sip/header/ContentLength;
    .restart local v7       #nextHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :catch_c0
    move-exception v10

    goto :goto_a6

    .line 989
    .end local v1           #cl:Lgov/nist/javax/sip/header/ContentLength;
    .restart local v5       #newCseq:Lgov/nist/javax/sip/header/CSeq;
    :catch_c2
    move-exception v10

    goto/16 :goto_29
.end method

.method public debugDump()Ljava/lang/String;
    .registers 3

    .prologue
    .line 199
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->debugDump()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, superstring:Ljava/lang/String;
    const-string v1, ""

    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->stringRepresentation:Ljava/lang/String;

    .line 201
    const-class v1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->sprint(Ljava/lang/String;)V

    .line 202
    const-string v1, "{"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->sprint(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-eqz v1, :cond_23

    .line 204
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->debugDump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->sprint(Ljava/lang/String;)V

    .line 205
    :cond_23
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/message/SIPRequest;->sprint(Ljava/lang/String;)V

    .line 206
    const-string v1, "}"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->sprint(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->stringRepresentation:Ljava/lang/String;

    return-object v1
.end method

.method public encode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 439
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-eqz v1, :cond_23

    .line 440
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLineDefaults()V

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, retval:Ljava/lang/String;
    :goto_22
    return-object v0

    .line 442
    .end local v0           #retval:Ljava/lang/String;
    :cond_23
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 443
    const-string v0, "\r\n\r\n"

    .restart local v0       #retval:Ljava/lang/String;
    goto :goto_22

    .line 445
    .end local v0           #retval:Ljava/lang/String;
    :cond_2c
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #retval:Ljava/lang/String;
    goto :goto_22
.end method

.method public encodeAsBytes(Ljava/lang/String;)[B
    .registers 9
    .parameter "transport"

    .prologue
    const/4 v6, 0x0

    .line 623
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 625
    const-string v4, "\r\n\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 642
    :goto_d
    return-object v4

    .line 626
    :cond_e
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-nez v4, :cond_15

    .line 627
    new-array v4, v6, [B

    goto :goto_d

    .line 630
    :cond_15
    const/4 v2, 0x0

    .line 631
    .local v2, rlbytes:[B
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-eqz v4, :cond_26

    .line 633
    :try_start_1a
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_25
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_25} :catch_3a

    move-result-object v2

    .line 638
    :cond_26
    :goto_26
    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 639
    .local v3, superbytes:[B
    array-length v4, v2

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v1, v4, [B

    .line 640
    .local v1, retval:[B
    array-length v4, v2

    invoke-static {v2, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 641
    array-length v4, v2

    array-length v5, v3

    invoke-static {v3, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v1

    .line 642
    goto :goto_d

    .line 634
    .end local v1           #retval:[B
    .end local v3           #superbytes:[B
    :catch_3a
    move-exception v4

    move-object v0, v4

    .line 635
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_26
.end method

.method public encodeMessage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 455
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-eqz v1, :cond_23

    .line 456
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLineDefaults()V

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeSIPHeaders()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, retval:Ljava/lang/String;
    :goto_22
    return-object v0

    .line 458
    .end local v0           #retval:Ljava/lang/String;
    :cond_23
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 459
    const-string v0, "\r\n\r\n"

    .restart local v0       #retval:Ljava/lang/String;
    goto :goto_22

    .line 461
    .end local v0           #retval:Ljava/lang/String;
    :cond_2c
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeSIPHeaders()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #retval:Ljava/lang/String;
    goto :goto_22
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "other"

    .prologue
    const/4 v4, 0x0

    .line 497
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    move v2, v4

    .line 501
    :goto_10
    return v2

    .line 499
    :cond_11
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object v1, v0

    .line 501
    .local v1, that:Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    iget-object v3, v1, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/RequestLine;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x1

    goto :goto_10

    :cond_27
    move v2, v4

    goto :goto_10
.end method

.method public getDialogId(Z)Ljava/lang/String;
    .registers 7
    .parameter "isServer"

    .prologue
    .line 551
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CallID;

    .line 552
    .local v0, cid:Lgov/nist/javax/sip/header/CallID;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 553
    .local v2, retval:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/From;

    .line 554
    .local v1, from:Lgov/nist/javax/sip/header/From;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/To;

    .line 555
    .local v3, to:Lgov/nist/javax/sip/header/To;
    if-nez p1, :cond_4a

    .line 557
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 558
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 559
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 562
    :cond_2f
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_41

    .line 563
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 564
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 578
    :cond_41
    :goto_41
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 568
    :cond_4a
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5c

    .line 569
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 570
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    :cond_5c
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_41

    .line 574
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_41
.end method

.method public getDialogId(ZLjava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "isServer"
    .parameter "toTag"

    .prologue
    .line 586
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/From;

    .line 587
    .local v1, from:Lgov/nist/javax/sip/header/From;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CallID;

    .line 588
    .local v0, cid:Lgov/nist/javax/sip/header/CallID;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 589
    .local v2, retval:Ljava/lang/StringBuffer;
    if-nez p1, :cond_3c

    .line 591
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 592
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 596
    :cond_29
    if-eqz p2, :cond_33

    .line 597
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    :cond_33
    :goto_33
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 602
    :cond_3c
    if-eqz p2, :cond_46

    .line 603
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 604
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 607
    :cond_46
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 608
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_33
.end method

.method public getFirstLine()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1099
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-nez v0, :cond_6

    .line 1100
    const/4 v0, 0x0

    .line 1102
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getInviteTransaction()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1204
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->inviteTransaction:Ljava/lang/Object;

    return-object v0
.end method

.method public getMergeId()Ljava/lang/String;
    .registers 7

    .prologue
    .line 1177
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    move-result-object v2

    .line 1178
    .local v2, fromTag:Ljava/lang/String;
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/CSeq;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1179
    .local v1, cseq:Ljava/lang/String;
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 1183
    .local v0, callId:Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1185
    .local v3, requestUri:Ljava/lang/String;
    if-eqz v2, :cond_46

    .line 1186
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1189
    :goto_45
    return-object v4

    :cond_46
    const/4 v4, 0x0

    goto :goto_45
.end method

.method public getMessageAsEncodedStrings()Ljava/util/LinkedList;
    .registers 3

    .prologue
    .line 511
    invoke-super {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getMessageAsEncodedStrings()Ljava/util/LinkedList;

    move-result-object v0

    .line 512
    .local v0, retval:Ljava/util/LinkedList;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-eqz v1, :cond_14

    .line 513
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestLineDefaults()V

    .line 514
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 516
    :cond_14
    return-object v0
.end method

.method public getMessageChannel()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1155
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->messageChannel:Ljava/lang/Object;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-nez v0, :cond_6

    .line 426
    const/4 v0, 0x0

    .line 428
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getRequestLine()Lgov/nist/javax/sip/header/RequestLine;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    return-object v0
.end method

.method public getRequestURI()Ljavax/sip/address/URI;
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-nez v0, :cond_6

    .line 365
    const/4 v0, 0x0

    .line 367
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v0

    goto :goto_5
.end method

.method public getSIPVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1122
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RequestLine;->getSipVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1133
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->transactionPointer:Ljava/lang/Object;

    return-object v0
.end method

.method public getViaHost()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1075
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Via;

    .line 1076
    .local v0, via:Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getHost()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getViaPort()I
    .registers 3

    .prologue
    .line 1086
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Via;

    .line 1087
    .local v0, via:Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->hasPort()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1088
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getPort()I

    move-result v1

    .line 1090
    :goto_14
    return v1

    :cond_15
    const/16 v1, 0x13c4

    goto :goto_14
.end method

.method public match(Ljava/lang/Object;)Z
    .registers 9
    .parameter "matchObj"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 529
    if-nez p1, :cond_6

    move v3, v6

    .line 541
    :goto_5
    return v3

    .line 531
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    move v3, v5

    .line 532
    goto :goto_5

    .line 533
    :cond_16
    if-ne p1, p0, :cond_1a

    move v3, v6

    .line 534
    goto :goto_5

    .line 535
    :cond_1a
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object v2, v0

    .line 536
    .local v2, that:Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v1, v2, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    .line 537
    .local v1, rline:Lgov/nist/javax/sip/header/RequestLine;
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-nez v3, :cond_28

    if-eqz v1, :cond_28

    move v3, v5

    .line 538
    goto :goto_5

    .line 539
    :cond_28
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-ne v3, v1, :cond_31

    .line 540
    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->match(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_5

    .line 541
    :cond_31
    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    iget-object v4, v2, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/header/RequestLine;->match(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-super {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->match(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    move v3, v6

    goto :goto_5

    :cond_43
    move v3, v5

    goto :goto_5
.end method

.method protected setDefaults()V
    .registers 6

    .prologue
    .line 323
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-nez v4, :cond_5

    .line 342
    :cond_4
    :goto_4
    return-void

    .line 325
    :cond_5
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, method:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 329
    iget-object v4, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/RequestLine;->getUri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v3

    .line 330
    .local v3, u:Lgov/nist/javax/sip/address/GenericURI;
    if-eqz v3, :cond_4

    .line 332
    const-string v4, "REGISTER"

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_25

    const-string v4, "INVITE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    .line 333
    :cond_25
    instance-of v4, v3, Lgov/nist/javax/sip/address/SipUri;

    if-eqz v4, :cond_4

    .line 334
    move-object v0, v3

    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    move-object v2, v0

    .line 335
    .local v2, sipUri:Lgov/nist/javax/sip/address/SipUri;
    const-string v4, "ip"

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/address/SipUri;->setUserParam(Ljava/lang/String;)V

    .line 337
    :try_start_32
    const-string v4, "udp"

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/address/SipUri;->setTransportParam(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/text/ParseException; {:try_start_32 .. :try_end_37} :catch_38

    goto :goto_4

    .line 338
    :catch_38
    move-exception v4

    goto :goto_4
.end method

.method public setInviteTransaction(Ljava/lang/Object;)V
    .registers 2
    .parameter "inviteTransaction"

    .prologue
    .line 1197
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPRequest;->inviteTransaction:Ljava/lang/Object;

    .line 1198
    return-void
.end method

.method public setMessageChannel(Ljava/lang/Object;)V
    .registers 2
    .parameter "messageChannel"

    .prologue
    .line 1165
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPRequest;->messageChannel:Ljava/lang/Object;

    .line 1166
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .registers 5
    .parameter "method"

    .prologue
    .line 397
    if-nez p1, :cond_a

    .line 398
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null method"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    :cond_a
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-nez v1, :cond_15

    .line 400
    new-instance v1, Lgov/nist/javax/sip/header/RequestLine;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/RequestLine;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    .line 407
    :cond_15
    invoke-static {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCannonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, meth:Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/RequestLine;->setMethod(Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    if-eqz v1, :cond_27

    .line 412
    :try_start_22
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPRequest;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/CSeq;->setMethod(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/text/ParseException; {:try_start_22 .. :try_end_27} :catch_28

    .line 416
    :cond_27
    :goto_27
    return-void

    .line 413
    :catch_28
    move-exception v1

    goto :goto_27
.end method

.method public setRequestLine(Lgov/nist/javax/sip/header/RequestLine;)V
    .registers 2
    .parameter "requestLine"

    .prologue
    .line 180
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    .line 181
    return-void
.end method

.method protected setRequestLineDefaults()V
    .registers 4

    .prologue
    .line 348
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, method:Ljava/lang/String;
    if-nez v1, :cond_1d

    .line 350
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CSeq;

    .line 351
    .local v0, cseq:Lgov/nist/javax/sip/header/CSeq;
    if-eqz v0, :cond_1d

    .line 352
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CSeq;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getCannonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/RequestLine;->setMethod(Ljava/lang/String;)V

    .line 356
    .end local v0           #cseq:Lgov/nist/javax/sip/header/CSeq;
    :cond_1d
    return-void
.end method

.method public setRequestURI(Ljavax/sip/address/URI;)V
    .registers 4
    .parameter "uri"

    .prologue
    .line 380
    if-nez p1, :cond_a

    .line 381
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null request URI"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_a
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    if-nez v0, :cond_15

    .line 384
    new-instance v0, Lgov/nist/javax/sip/header/RequestLine;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RequestLine;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    .line 386
    :cond_15
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    .end local p1
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/RequestLine;->setUri(Ljavax/sip/address/URI;)V

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->nullRequest:Z

    .line 388
    return-void
.end method

.method public setSIPVersion(Ljava/lang/String;)V
    .registers 5
    .parameter "sipVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1111
    if-eqz p1, :cond_a

    const-string v0, "SIP/2.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1112
    :cond_a
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "sipVersion"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1113
    :cond_13
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPRequest;->requestLine:Lgov/nist/javax/sip/header/RequestLine;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/RequestLine;->setSipVersion(Ljava/lang/String;)V

    .line 1114
    return-void
.end method

.method public setTransaction(Ljava/lang/Object;)V
    .registers 2
    .parameter "transaction"

    .prologue
    .line 1142
    iput-object p1, p0, Lgov/nist/javax/sip/message/SIPRequest;->transactionPointer:Ljava/lang/Object;

    .line 1143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 470
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPRequest;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
