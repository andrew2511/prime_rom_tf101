.class public Lorg/apache/http/impl/cookie/BrowserCompatSpec;
.super Lorg/apache/http/impl/cookie/CookieSpecBase;
.source "BrowserCompatSpec.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field protected static final DATE_PATTERNS:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEFAULT_DATE_PATTERNS:[Ljava/lang/String;


# instance fields
.field private final datepatterns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v1, v0, v3

    const-string v1, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v1, v0, v4

    const-string v1, "EEE MMM d HH:mm:ss yyyy"

    aput-object v1, v0, v5

    const-string v1, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v1, v0, v6

    const-string v1, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EEE dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->DATE_PATTERNS:[Ljava/lang/String;

    .line 77
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v1, v0, v3

    const-string v1, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v1, v0, v4

    const-string v1, "EEE MMM d HH:mm:ss yyyy"

    aput-object v1, v0, v5

    const-string v1, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v1, v0, v6

    const-string v1, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EEE dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->DEFAULT_DATE_PATTERNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3
    .parameter "datepatterns"

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/CookieSpecBase;-><init>()V

    .line 99
    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    .line 104
    :goto_0
    const-string v0, "path"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 105
    const-string v0, "domain"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicDomainHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicDomainHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 106
    const-string v0, "max-age"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 107
    const-string v0, "secure"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 108
    const-string v0, "comment"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicCommentHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 109
    const-string v0, "expires"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicExpiresHandler;

    iget-object v2, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 111
    return-void

    .line 102
    :cond_0
    sget-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->DEFAULT_DATE_PATTERNS:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    if-nez p1, :cond_0

    .line 175
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "List of cookies may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 177
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 178
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "List of cookies may not be empty"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 180
    :cond_1
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x14

    invoke-direct {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 181
    .local v0, buffer:Lorg/apache/http/util/CharArrayBuffer;
    const-string v5, "Cookie"

    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 182
    const-string v5, ": "

    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 183
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 184
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/Cookie;

    .line 185
    .local v1, cookie:Lorg/apache/http/cookie/Cookie;
    if-lez v3, :cond_2

    .line 186
    const-string v5, "; "

    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 188
    :cond_2
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 189
    const-string v5, "="

    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 190
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, s:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 192
    invoke-virtual {v0, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 183
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    .end local v1           #cookie:Lorg/apache/http/cookie/Cookie;
    .end local v4           #s:Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    .local v2, headers:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/Header;>;"
    new-instance v5, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v5, v0}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    return-object v2
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 16
    .parameter "header"
    .parameter "origin"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/Header;",
            "Lorg/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Header may not be null"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 123
    :cond_0
    if-nez p2, :cond_1

    .line 124
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Cookie origin may not be null"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 126
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, headername:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, headervalue:Ljava/lang/String;
    const-string v13, "Set-Cookie"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 129
    new-instance v13, Lorg/apache/http/cookie/MalformedCookieException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unrecognized cookie header \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 132
    :cond_2
    const/4 v10, 0x0

    .line 133
    .local v10, isNetscapeCookie:Z
    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "expires="

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 134
    .local v8, i1:I
    const/4 v13, -0x1

    if-eq v8, v13, :cond_4

    .line 135
    const-string v13, "expires="

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v8, v13

    .line 136
    const/16 v13, 0x3b

    invoke-virtual {v7, v13, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 137
    .local v9, i2:I
    const/4 v13, -0x1

    if-ne v9, v13, :cond_3

    .line 138
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 141
    :cond_3
    :try_start_0
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    move-object v14, v0

    invoke-static {v13, v14}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    const/4 v10, 0x1

    .line 147
    .end local v9           #i2:I
    :cond_4
    :goto_0
    const/4 v5, 0x0

    .line 148
    .local v5, elems:[Lorg/apache/http/HeaderElement;
    if-eqz v10, :cond_7

    .line 149
    sget-object v11, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;

    .line 152
    .local v11, parser:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/http/FormattedHeader;

    move v13, v0

    if-eqz v13, :cond_5

    .line 153
    move-object/from16 v0, p1

    check-cast v0, Lorg/apache/http/FormattedHeader;

    move-object v3, v0

    invoke-interface {v3}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v3

    .line 154
    .local v3, buffer:Lorg/apache/http/util/CharArrayBuffer;
    new-instance v4, Lorg/apache/http/message/ParserCursor;

    check-cast p1, Lorg/apache/http/FormattedHeader;

    .end local p1
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result v13

    invoke-virtual {v3}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v14

    invoke-direct {v4, v13, v14}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 166
    .local v4, cursor:Lorg/apache/http/message/ParserCursor;
    :goto_1
    const/4 v13, 0x1

    new-array v5, v13, [Lorg/apache/http/HeaderElement;

    .end local v5           #elems:[Lorg/apache/http/HeaderElement;
    const/4 v13, 0x0

    invoke-virtual {v11, v3, v4}, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    move-result-object v14

    aput-object v14, v5, v13

    .line 170
    .end local v3           #buffer:Lorg/apache/http/util/CharArrayBuffer;
    .end local v4           #cursor:Lorg/apache/http/message/ParserCursor;
    .end local v11           #parser:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;
    .restart local v5       #elems:[Lorg/apache/http/HeaderElement;
    :goto_2
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v13

    return-object v13

    .line 158
    .restart local v11       #parser:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;
    .restart local p1
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 159
    .local v12, s:Ljava/lang/String;
    if-nez v12, :cond_6

    .line 160
    new-instance v13, Lorg/apache/http/cookie/MalformedCookieException;

    const-string v14, "Header value is null"

    invoke-direct {v13, v14}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 162
    :cond_6
    new-instance v3, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    invoke-direct {v3, v13}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 163
    .restart local v3       #buffer:Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v3, v12}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 164
    new-instance v4, Lorg/apache/http/message/ParserCursor;

    const/4 v13, 0x0

    invoke-virtual {v3}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v14

    invoke-direct {v4, v13, v14}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .restart local v4       #cursor:Lorg/apache/http/message/ParserCursor;
    goto :goto_1

    .line 168
    .end local v3           #buffer:Lorg/apache/http/util/CharArrayBuffer;
    .end local v4           #cursor:Lorg/apache/http/message/ParserCursor;
    .end local v11           #parser:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;
    .end local v12           #s:Ljava/lang/String;
    :cond_7
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v5

    goto :goto_2

    .line 143
    .end local v5           #elems:[Lorg/apache/http/HeaderElement;
    .restart local v9       #i2:I
    :catch_0
    move-exception v13

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string v0, "compatibility"

    return-object v0
.end method
