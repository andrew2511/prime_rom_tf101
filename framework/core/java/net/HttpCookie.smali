.class public final Ljava/net/HttpCookie;
.super Ljava/lang/Object;
.source "HttpCookie.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/HttpCookie$CookieParser;
    }
.end annotation


# static fields
.field private static final BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/lang/String;

.field private static final RESERVED_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private comment:Ljava/lang/String;

.field private commentURL:Ljava/lang/String;

.field private discard:Z

.field private domain:Ljava/lang/String;

.field private maxAge:J

.field private final name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private portList:Ljava/lang/String;

.field private secure:Z

.field private value:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 71
    new-instance v0, Ljava/net/HttpCookie$1;

    invoke-direct {v0}, Ljava/net/HttpCookie$1;-><init>()V

    sput-object v0, Ljava/net/HttpCookie;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    .line 81
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EEE MMM d HH:mm:ss yyyy"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EEE dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EEE MMM d yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    sput-object v0, Ljava/net/HttpCookie;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    .line 104
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "comment"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "commenturl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "discard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "domain"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "expires"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "max-age"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "path"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "port"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "secure"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "value"

    .prologue
    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Ljava/net/HttpCookie;->maxAge:J

    .line 483
    const/4 v1, 0x1

    iput v1, p0, Ljava/net/HttpCookie;->version:I

    .line 495
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, ntrim:Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/net/HttpCookie;->isValidName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 497
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 500
    :cond_1a
    iput-object v0, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    .line 501
    iput-object p2, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    .line 502
    return-void
.end method

.method static synthetic access$002(Ljava/net/HttpCookie;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Ljava/net/HttpCookie;->version:I

    return p1
.end method

.method static synthetic access$100(Ljava/net/HttpCookie;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/ThreadLocal;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Ljava/net/HttpCookie;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$102(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Ljava/net/HttpCookie;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljava/net/HttpCookie;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Ljava/net/HttpCookie;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Ljava/net/HttpCookie;->discard:Z

    return p1
.end method

.method static synthetic access$400(Ljava/net/HttpCookie;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Ljava/net/HttpCookie;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 65
    iget-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    return-wide v0
.end method

.method static synthetic access$502(Ljava/net/HttpCookie;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-wide p1, p0, Ljava/net/HttpCookie;->maxAge:J

    return-wide p1
.end method

.method static synthetic access$600(Ljava/net/HttpCookie;Ljava/util/Date;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Ljava/net/HttpCookie;->setExpires(Ljava/util/Date;)V

    return-void
.end method

.method static synthetic access$700(Ljava/net/HttpCookie;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Ljava/net/HttpCookie;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Ljava/net/HttpCookie;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Ljava/net/HttpCookie;->secure:Z

    return p1
.end method

.method private appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "builder"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 770
    if-eqz p3, :cond_19

    if-eqz p1, :cond_19

    .line 771
    const-string v0, ";$"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    const-string v0, "=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    :cond_19
    return-void
.end method

.method public static domainMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "domainPattern"
    .parameter "host"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 126
    if-eqz p0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move v2, v5

    .line 161
    :goto_7
    return v2

    .line 130
    :cond_8
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, a:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, b:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-static {v0, v5}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-static {v0}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    :cond_26
    move v2, v4

    .line 138
    goto :goto_7

    .line 140
    :cond_28
    invoke-static {v0, v5}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_35

    .line 141
    const-string v2, ".local"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_7

    .line 149
    :cond_35
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_57

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-static {v1, v4}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_57

    move v2, v4

    .line 153
    goto :goto_7

    .line 161
    :cond_57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_7f

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7f

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-static {v1, v4}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_7d

    :cond_75
    const-string v2, ".local"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    :cond_7d
    move v2, v4

    goto :goto_7

    :cond_7f
    move v2, v5

    goto :goto_7
.end method

.method private static isFullyQualifiedDomainName(Ljava/lang/String;I)Z
    .registers 6
    .parameter "s"
    .parameter "firstCharacter"

    .prologue
    const/4 v3, 0x1

    .line 220
    const/16 v1, 0x2e

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 221
    .local v0, dotPosition:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_15

    move v1, v3

    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private isValidName(Ljava/lang/String;)Z
    .registers 7
    .parameter "n"

    .prologue
    .line 508
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_45

    const-string v3, "$"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_45

    sget-object v3, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    const/4 v3, 0x1

    move v1, v3

    .line 510
    .local v1, isValid:Z
    :goto_1e
    if-eqz v1, :cond_44

    .line 511
    const/4 v0, 0x0

    .local v0, i:I
    :goto_21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_44

    .line 512
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 515
    .local v2, nameChar:C
    if-ltz v2, :cond_43

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_43

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_43

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_43

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_48

    const/16 v3, 0x20

    if-eq v2, v3, :cond_48

    .line 520
    :cond_43
    const/4 v1, 0x0

    .line 525
    .end local v0           #i:I
    .end local v2           #nameChar:C
    :cond_44
    return v1

    .line 508
    .end local v1           #isValid:Z
    :cond_45
    const/4 v3, 0x0

    move v1, v3

    goto :goto_1e

    .line 511
    .restart local v0       #i:I
    .restart local v1       #isValid:Z
    .restart local v2       #nameChar:C
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method private static matchablePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "path"

    .prologue
    .line 201
    if-nez p0, :cond_5

    .line 202
    const-string v0, "/"

    .line 206
    :goto_4
    return-object v0

    .line 203
    :cond_5
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, p0

    .line 204
    goto :goto_4

    .line 206
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .parameter "header"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Ljava/net/HttpCookie$CookieParser;

    invoke-direct {v0, p0}, Ljava/net/HttpCookie$CookieParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpCookie$CookieParser;->parse()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static pathMatches(Ljava/net/HttpCookie;Ljava/net/URI;)Z
    .registers 5
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 172
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/HttpCookie;->matchablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, uriPath:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/HttpCookie;->matchablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, cookiePath:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method static portMatches(Ljava/net/HttpCookie;Ljava/net/URI;)Z
    .registers 4
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 190
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 191
    const/4 v0, 0x1

    .line 193
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->getEffectivePort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method static secureMatches(Ljava/net/HttpCookie;Ljava/net/URI;)Z
    .registers 4
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 182
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getSecure()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "https"

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private setExpires(Ljava/util/Date;)V
    .registers 6
    .parameter "expires"

    .prologue
    .line 663
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    .line 664
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 711
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 712
    :catch_5
    move-exception v0

    .line 713
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 723
    if-ne p1, p0, :cond_6

    move v2, v5

    .line 732
    :goto_5
    return v2

    .line 726
    :cond_6
    instance-of v2, p1, Ljava/net/HttpCookie;

    if-eqz v2, :cond_3a

    .line 727
    move-object v0, p1

    check-cast v0, Ljava/net/HttpCookie;

    move-object v1, v0

    .line 728
    .local v1, that:Ljava/net/HttpCookie;
    iget-object v2, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    if-eqz v2, :cond_34

    iget-object v2, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    iget-object v3, v1, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    :cond_28
    iget-object v2, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    iget-object v3, v1, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    move v2, v5

    goto :goto_5

    :cond_34
    iget-object v2, v1, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    if-eqz v2, :cond_28

    :cond_38
    move v2, v4

    goto :goto_5

    .end local v1           #that:Ljava/net/HttpCookie;
    :cond_3a
    move v2, v4

    .line 732
    goto :goto_5
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 532
    iget-object v0, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 539
    iget-object v0, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscard()Z
    .registers 2

    .prologue
    .line 546
    iget-boolean v0, p0, Ljava/net/HttpCookie;->discard:Z

    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    .prologue
    .line 553
    iget-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAge()J
    .registers 3

    .prologue
    .line 560
    iget-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 567
    iget-object v0, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 575
    iget-object v0, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPortlist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 585
    iget-object v0, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    return-object v0
.end method

.method public getSecure()Z
    .registers 2

    .prologue
    .line 592
    iget-boolean v0, p0, Ljava/net/HttpCookie;->secure:Z

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 599
    iget-object v0, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 606
    iget v0, p0, Ljava/net/HttpCookie;->version:I

    return v0
.end method

.method public hasExpired()Z
    .registers 6

    .prologue
    .line 615
    iget-wide v1, p0, Ljava/net/HttpCookie;->maxAge:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_a

    .line 616
    const/4 v1, 0x0

    .line 623
    :goto_9
    return v1

    .line 619
    :cond_a
    const/4 v0, 0x0

    .line 620
    .local v0, expired:Z
    iget-wide v1, p0, Ljava/net/HttpCookie;->maxAge:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_14

    .line 621
    const/4 v0, 0x1

    :cond_14
    move v1, v0

    .line 623
    goto :goto_9
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 743
    iget-object v0, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    if-nez v1, :cond_1a

    move v1, v3

    :goto_12
    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    if-nez v1, :cond_27

    move v1, v3

    :goto_18
    add-int/2addr v0, v1

    return v0

    :cond_1a
    iget-object v1, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_27
    iget-object v1, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_18
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2
    .parameter "comment"

    .prologue
    .line 630
    iput-object p1, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    .line 631
    return-void
.end method

.method public setCommentURL(Ljava/lang/String;)V
    .registers 2
    .parameter "commentURL"

    .prologue
    .line 637
    iput-object p1, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    .line 638
    return-void
.end method

.method public setDiscard(Z)V
    .registers 2
    .parameter "discard"

    .prologue
    .line 644
    iput-boolean p1, p0, Ljava/net/HttpCookie;->discard:Z

    .line 645
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .registers 3
    .parameter "pattern"

    .prologue
    .line 652
    if-nez p1, :cond_6

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    .line 653
    return-void

    .line 652
    :cond_6
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public setMaxAge(J)V
    .registers 3
    .parameter "deltaSeconds"

    .prologue
    .line 659
    iput-wide p1, p0, Ljava/net/HttpCookie;->maxAge:J

    .line 660
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2
    .parameter "path"

    .prologue
    .line 671
    iput-object p1, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    .line 672
    return-void
.end method

.method public setPortlist(Ljava/lang/String;)V
    .registers 2
    .parameter "portList"

    .prologue
    .line 678
    iput-object p1, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    .line 679
    return-void
.end method

.method public setSecure(Z)V
    .registers 2
    .parameter "secure"

    .prologue
    .line 685
    iput-boolean p1, p0, Ljava/net/HttpCookie;->secure:Z

    .line 686
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 694
    iput-object p1, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    .line 695
    return-void
.end method

.method public setVersion(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 703
    if-eqz p1, :cond_b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    .line 704
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 706
    :cond_b
    iput p1, p0, Ljava/net/HttpCookie;->version:I

    .line 707
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 753
    iget v1, p0, Ljava/net/HttpCookie;->version:I

    if-nez v1, :cond_20

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 766
    :goto_1f
    return-object v1

    .line 757
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 763
    .local v0, result:Ljava/lang/StringBuilder;
    const-string v1, "Path"

    iget-object v2, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Ljava/net/HttpCookie;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string v1, "Domain"

    iget-object v2, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Ljava/net/HttpCookie;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v1, "Port"

    iget-object v2, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Ljava/net/HttpCookie;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1f
.end method
