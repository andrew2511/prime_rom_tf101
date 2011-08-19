.class public final Lorg/apache/james/mime4j/util/MimeUtil;
.super Ljava/lang/Object;
.source "MimeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/util/MimeUtil$Rfc822DateFormat;
    }
.end annotation


# static fields
.field public static final ENC_7BIT:Ljava/lang/String; = "7bit"

.field public static final ENC_8BIT:Ljava/lang/String; = "8bit"

.field public static final ENC_BASE64:Ljava/lang/String; = "base64"

.field public static final ENC_BINARY:Ljava/lang/String; = "binary"

.field public static final ENC_QUOTED_PRINTABLE:Ljava/lang/String; = "quoted-printable"

.field public static final MIME_HEADER_CONTENT_DESCRIPTION:Ljava/lang/String; = "content-description"

.field public static final MIME_HEADER_CONTENT_DISPOSITION:Ljava/lang/String; = "content-disposition"

.field public static final MIME_HEADER_CONTENT_ID:Ljava/lang/String; = "content-id"

.field public static final MIME_HEADER_LANGAUGE:Ljava/lang/String; = "content-language"

.field public static final MIME_HEADER_LOCATION:Ljava/lang/String; = "content-location"

.field public static final MIME_HEADER_MD5:Ljava/lang/String; = "content-md5"

.field public static final MIME_HEADER_MIME_VERSION:Ljava/lang/String; = "mime-version"

.field public static final PARAM_CREATION_DATE:Ljava/lang/String; = "creation-date"

.field public static final PARAM_FILENAME:Ljava/lang/String; = "filename"

.field public static final PARAM_MODIFICATION_DATE:Ljava/lang/String; = "modification-date"

.field public static final PARAM_READ_DATE:Ljava/lang/String; = "read-date"

.field public static final PARAM_SIZE:Ljava/lang/String; = "size"

.field private static final RFC822_DATE_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static counter:I

.field private static final log:Lorg/apache/commons/logging/Log;

.field private static final random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/james/mime4j/util/MimeUtil;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/util/MimeUtil;->log:Lorg/apache/commons/logging/Log;

    .line 116
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/util/MimeUtil;->random:Ljava/util/Random;

    .line 119
    const/4 v0, 0x0

    sput v0, Lorg/apache/james/mime4j/util/MimeUtil;->counter:I

    .line 510
    new-instance v0, Lorg/apache/james/mime4j/util/MimeUtil$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/util/MimeUtil$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/util/MimeUtil;->RFC822_DATE_FORMAT:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method

.method public static createUniqueBoundary()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2e

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "-=Part."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-static {}, Lorg/apache/james/mime4j/util/MimeUtil;->nextCounterValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    sget-object v1, Lorg/apache/james/mime4j/util/MimeUtil;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    sget-object v1, Lorg/apache/james/mime4j/util/MimeUtil;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v1, "=-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static createUniqueMessageId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "hostName"

    .prologue
    const/16 v3, 0x2e

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<Mime4j."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {}, Lorg/apache/james/mime4j/util/MimeUtil;->nextCounterValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    sget-object v1, Lorg/apache/james/mime4j/util/MimeUtil;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    if-eqz p0, :cond_0

    .line 385
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_0
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static fold(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .parameter "s"
    .parameter "usedCharacters"

    .prologue
    const/16 v8, 0x4c

    const/4 v7, 0x0

    .line 431
    const/16 v2, 0x4c

    .line 433
    .local v2, maxCharacters:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 434
    .local v1, length:I
    add-int v6, p1, v1

    if-gt v6, v8, :cond_0

    move-object v6, p0

    .line 444
    :goto_0
    return-object v6

    .line 437
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    .local v4, sb:Ljava/lang/StringBuilder;
    neg-int v0, p1

    .line 440
    .local v0, lastLineBreak:I
    invoke-static {p0, v7}, Lorg/apache/james/mime4j/util/MimeUtil;->indexOfWsp(Ljava/lang/String;I)I

    move-result v5

    .line 442
    .local v5, wspIdx:I
    :goto_1
    if-ne v5, v1, :cond_1

    .line 443
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 447
    :cond_1
    add-int/lit8 v6, v5, 0x1

    invoke-static {p0, v6}, Lorg/apache/james/mime4j/util/MimeUtil;->indexOfWsp(Ljava/lang/String;I)I

    move-result v3

    .line 449
    .local v3, nextWspIdx:I
    sub-int v6, v3, v0

    if-le v6, v8, :cond_2

    .line 450
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    move v0, v5

    .line 455
    :cond_2
    move v5, v3

    .line 456
    goto :goto_1
.end method

.method public static formatDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2
    .parameter "date"
    .parameter "zone"

    .prologue
    .line 403
    sget-object v1, Lorg/apache/james/mime4j/util/MimeUtil;->RFC822_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 405
    .local v0, df:Ljava/text/DateFormat;
    if-nez p1, :cond_0

    .line 406
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 411
    :goto_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 408
    :cond_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0
.end method

.method public static getHeaderParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .parameter "pValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 179
    invoke-static {p0}, Lorg/apache/james/mime4j/util/MimeUtil;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 181
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v7, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 187
    move-object p0, p0

    .line 188
    .local p0, main:Ljava/lang/String;
    const/4 v0, 0x0

    .line 194
    .local v0, rest:Ljava/lang/String;
    :goto_0
    const-string v1, ""

    invoke-interface {v7, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    if-eqz v0, :cond_c

    .line 196
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 197
    .local v0, chars:[C
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 p0, 0x40

    invoke-direct {v5, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 198
    .end local p0           #main:Ljava/lang/String;
    .local v5, paramName:Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 p0, 0x40

    invoke-direct {v6, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 200
    .local v6, paramValue:Ljava/lang/StringBuilder;
    const/4 p0, 0x0

    .line 201
    .local p0, READY_FOR_NAME:B
    const/4 p0, 0x1

    .line 202
    .local p0, IN_NAME:B
    const/4 p0, 0x2

    .line 203
    .local p0, READY_FOR_VALUE:B
    const/4 p0, 0x3

    .line 204
    .local p0, IN_VALUE:B
    const/4 p0, 0x4

    .line 205
    .local p0, IN_QUOTED_VALUE:B
    const/4 p0, 0x5

    .line 206
    .local p0, VALUE_DONE:B
    const/16 p0, 0x63

    .line 208
    .local p0, ERROR:B
    const/4 v2, 0x0

    .line 209
    .local v2, state:B
    const/4 v1, 0x0

    .line 210
    .local v1, escaped:Z
    move-object p0, v0

    .local p0, arr$:[C
    array-length v4, p0

    .local v4, len$:I
    const/4 v0, 0x0

    .local v0, i$:I
    move v3, v0

    .end local v0           #i$:I
    .local v3, i$:I
    move v8, v2

    .end local v1           #escaped:Z
    .end local v2           #state:B
    .local v8, state:B
    :goto_1
    if-ge v3, v4, :cond_b

    aget-char v0, p0, v3

    .line 211
    .local v0, c:C
    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_2
    move v0, v1

    .local v0, escaped:I
    move v2, v8

    .line 210
    .end local v0           #escaped:I
    .end local v8           #state:B
    .restart local v2       #state:B
    :goto_3
    add-int/lit8 v1, v3, 0x1

    .end local v3           #i$:I
    .local v1, i$:I
    move v3, v1

    .end local v1           #i$:I
    .restart local v3       #i$:I
    move v8, v2

    .end local v2           #state:B
    .restart local v8       #state:B
    move v1, v0

    .local v1, escaped:I
    goto :goto_1

    .line 190
    .end local v1           #escaped:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #paramName:Ljava/lang/StringBuilder;
    .end local v6           #paramValue:Ljava/lang/StringBuilder;
    .end local v8           #state:B
    .local p0, pValue:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, main:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .local p0, rest:Ljava/lang/String;
    move-object v9, p0

    .end local p0           #rest:Ljava/lang/String;
    .local v9, rest:Ljava/lang/String;
    move-object p0, v0

    .end local v0           #main:Ljava/lang/String;
    .local p0, main:Ljava/lang/String;
    move-object v0, v9

    .end local v9           #rest:Ljava/lang/String;
    .local v0, rest:Ljava/lang/String;
    goto :goto_0

    .line 213
    .local v0, c:C
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #paramName:Ljava/lang/StringBuilder;
    .restart local v6       #paramValue:Ljava/lang/StringBuilder;
    .restart local v8       #state:B
    .local p0, arr$:[C
    :sswitch_0
    const/16 v2, 0x3b

    if-ne v0, v2, :cond_0

    .line 214
    const/4 v0, 0x0

    .end local v8           #state:B
    .local v0, state:B
    move v2, v0

    .end local v0           #state:B
    .restart local v2       #state:B
    move v0, v1

    .local v0, escaped:I
    goto :goto_3

    .line 218
    .end local v2           #state:B
    .local v0, c:C
    .restart local v8       #state:B
    :sswitch_1
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_2

    .line 219
    sget-object v0, Lorg/apache/james/mime4j/util/MimeUtil;->log:Lorg/apache/commons/logging/Log;

    .end local v0           #c:C
    const-string v2, "Expected header param name, got \'=\'"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 220
    const/16 v0, 0x63

    .end local v8           #state:B
    .local v0, state:B
    move v2, v0

    .end local v0           #state:B
    .restart local v2       #state:B
    move v0, v1

    .line 221
    .local v0, escaped:I
    goto :goto_3

    .line 224
    .end local v2           #state:B
    .local v0, c:C
    .restart local v8       #state:B
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 225
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 227
    const/4 v2, 0x1

    .line 231
    .end local v8           #state:B
    .restart local v2       #state:B
    :goto_4
    const/16 v8, 0x3d

    if-ne v0, v8, :cond_4

    .line 232
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .end local v0           #c:C
    if-nez v0, :cond_3

    .line 233
    const/16 v0, 0x63

    .end local v2           #state:B
    .local v0, state:B
    move v2, v0

    .end local v0           #state:B
    .restart local v2       #state:B
    move v0, v1

    .local v0, escaped:I
    goto :goto_3

    .line 235
    .end local v0           #escaped:I
    :cond_3
    const/4 v0, 0x2

    .end local v2           #state:B
    .local v0, state:B
    move v2, v0

    .end local v0           #state:B
    .restart local v2       #state:B
    move v0, v1

    .line 236
    .local v0, escaped:I
    goto :goto_3

    .line 240
    .local v0, c:C
    :cond_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 241
    .local v0, escaped:I
    goto :goto_3

    .line 244
    .end local v2           #state:B
    .local v0, c:C
    .restart local v8       #state:B
    :sswitch_2
    const/4 v2, 0x0

    .line 245
    .local v2, fallThrough:Z
    sparse-switch v0, :sswitch_data_1

    .line 255
    const/4 v8, 0x3

    .line 256
    const/4 v2, 0x1

    .line 259
    :goto_5
    :sswitch_3
    if-nez v2, :cond_5

    move v0, v1

    .local v0, escaped:I
    move v2, v8

    .line 260
    .end local v8           #state:B
    .local v2, state:B
    goto :goto_3

    .line 251
    .local v0, c:C
    .local v2, fallThrough:Z
    .restart local v8       #state:B
    :sswitch_4
    const/4 v8, 0x4

    .line 252
    goto :goto_5

    .line 265
    .end local v2           #fallThrough:Z
    :cond_5
    :sswitch_5
    const/4 v2, 0x0

    .line 266
    .restart local v2       #fallThrough:Z
    sparse-switch v0, :sswitch_data_2

    .line 277
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    :goto_6
    if-nez v2, :cond_6

    move v0, v1

    .local v0, escaped:I
    move v2, v8

    .line 281
    .end local v8           #state:B
    .local v2, state:B
    goto :goto_3

    .line 270
    .local v0, c:C
    .local v2, fallThrough:Z
    .restart local v8       #state:B
    :sswitch_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2           #fallThrough:Z
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v8           #state:B
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const/4 v8, 0x5

    .line 274
    .restart local v8       #state:B
    const/4 v2, 0x1

    .line 275
    .restart local v2       #fallThrough:Z
    goto :goto_6

    :cond_6
    move v2, v8

    .line 284
    .end local v8           #state:B
    .local v2, state:B
    :goto_7
    sparse-switch v0, :sswitch_data_3

    .line 294
    const/16 v0, 0x63

    .end local v2           #state:B
    .local v0, state:B
    move v2, v0

    .end local v0           #state:B
    .restart local v2       #state:B
    move v0, v1

    .line 295
    .local v0, escaped:I
    goto/16 :goto_3

    .line 286
    .local v0, c:C
    :sswitch_7
    const/4 v0, 0x0

    .end local v2           #state:B
    .local v0, state:B
    move v2, v0

    .end local v0           #state:B
    .restart local v2       #state:B
    move v0, v1

    .line 287
    .local v0, escaped:I
    goto/16 :goto_3

    .local v0, c:C
    :sswitch_8
    move v0, v1

    .line 291
    .local v0, escaped:I
    goto/16 :goto_3

    .line 300
    .end local v2           #state:B
    .local v0, c:C
    .restart local v8       #state:B
    :sswitch_9
    sparse-switch v0, :sswitch_data_4

    .line 322
    if-eqz v1, :cond_7

    .line 323
    const/16 v1, 0x5c

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    :cond_7
    const/4 v1, 0x0

    .line 326
    .local v1, escaped:Z
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 302
    .end local v1           #escaped:Z
    :sswitch_a
    if-nez v1, :cond_8

    .line 304
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0           #c:C
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const/4 v0, 0x5

    .end local v8           #state:B
    .local v0, state:B
    move v2, v0

    .end local v0           #state:B
    .restart local v2       #state:B
    move v0, v1

    .local v0, escaped:I
    goto/16 :goto_3

    .line 309
    .end local v2           #state:B
    .local v0, c:C
    .restart local v8       #state:B
    :cond_8
    const/4 v1, 0x0

    .line 310
    .restart local v1       #escaped:Z
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .local v0, escaped:I
    move v2, v8

    .line 312
    .end local v8           #state:B
    .restart local v2       #state:B
    goto/16 :goto_3

    .line 315
    .end local v1           #escaped:Z
    .end local v2           #state:B
    .local v0, c:C
    .restart local v8       #state:B
    :sswitch_b
    if-eqz v1, :cond_9

    .line 316
    const/16 v0, 0x5c

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    .end local v0           #c:C
    :cond_9
    if-nez v1, :cond_a

    const/4 v0, 0x1

    .local v0, escaped:Z
    :goto_8
    move v2, v8

    .line 319
    .end local v8           #state:B
    .restart local v2       #state:B
    goto/16 :goto_3

    .line 318
    .end local v0           #escaped:Z
    .end local v2           #state:B
    .restart local v8       #state:B
    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    .line 335
    :cond_b
    const/4 p0, 0x3

    if-ne v8, p0, :cond_c

    .line 336
    .end local p0           #arr$:[C
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #paramName:Ljava/lang/StringBuilder;
    .end local v6           #paramValue:Ljava/lang/StringBuilder;
    .end local v8           #state:B
    :cond_c
    return-object v7

    .local v0, c:C
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #paramName:Ljava/lang/StringBuilder;
    .restart local v6       #paramValue:Ljava/lang/StringBuilder;
    .restart local v8       #state:B
    .restart local p0       #arr$:[C
    :sswitch_c
    move v2, v8

    .end local v8           #state:B
    .restart local v2       #state:B
    goto :goto_7

    .end local v2           #state:B
    .restart local v8       #state:B
    :sswitch_d
    move v2, v8

    .end local v8           #state:B
    .restart local v2       #state:B
    goto/16 :goto_4

    .line 211
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_d
        0x2 -> :sswitch_2
        0x3 -> :sswitch_5
        0x4 -> :sswitch_9
        0x5 -> :sswitch_c
        0x63 -> :sswitch_0
    .end sparse-switch

    .line 245
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_3
        0x20 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 266
    :sswitch_data_2
    .sparse-switch
        0x9 -> :sswitch_6
        0x20 -> :sswitch_6
        0x3b -> :sswitch_6
    .end sparse-switch

    .line 284
    :sswitch_data_3
    .sparse-switch
        0x9 -> :sswitch_8
        0x20 -> :sswitch_8
        0x3b -> :sswitch_7
    .end sparse-switch

    .line 300
    :sswitch_data_4
    .sparse-switch
        0x22 -> :sswitch_a
        0x5c -> :sswitch_b
    .end sparse-switch
.end method

.method private static indexOfWsp(Ljava/lang/String;I)I
    .locals 4
    .parameter "s"
    .parameter "fromIndex"

    .prologue
    .line 497
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 498
    .local v2, len:I
    move v1, p1

    .local v1, index:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 499
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 500
    .local v0, c:C
    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    :cond_0
    move v3, v1

    .line 503
    .end local v0           #c:C
    :goto_1
    return v3

    .line 498
    .restart local v0       #c:C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #c:C
    :cond_2
    move v3, v2

    .line 503
    goto :goto_1
.end method

.method public static isBase64Encoding(Ljava/lang/String;)Z
    .locals 1
    .parameter "pTransferEncoding"

    .prologue
    .line 151
    const-string v0, "base64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMessage(Ljava/lang/String;)Z
    .locals 1
    .parameter "pMimeType"

    .prologue
    .line 137
    if-eqz p0, :cond_0

    const-string v0, "message/rfc822"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMultipart(Ljava/lang/String;)Z
    .locals 2
    .parameter "pMimeType"

    .prologue
    .line 144
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isQuotedPrintableEncoded(Ljava/lang/String;)Z
    .locals 1
    .parameter "pTransferEncoding"

    .prologue
    .line 158
    const-string v0, "quoted-printable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "pType1"
    .parameter "pType2"

    .prologue
    .line 130
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized nextCounterValue()I
    .locals 3

    .prologue
    .line 507
    const-class v0, Lorg/apache/james/mime4j/util/MimeUtil;

    monitor-enter v0

    :try_start_0
    sget v1, Lorg/apache/james/mime4j/util/MimeUtil;->counter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lorg/apache/james/mime4j/util/MimeUtil;->counter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "s"

    .prologue
    .line 467
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 468
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 469
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 470
    .local v0, c:C
    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    .line 471
    :cond_0
    invoke-static {p0, v1}, Lorg/apache/james/mime4j/util/MimeUtil;->unfold0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 475
    .end local v0           #c:C
    :goto_1
    return-object v3

    .line 468
    .restart local v0       #c:C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #c:C
    :cond_2
    move-object v3, p0

    .line 475
    goto :goto_1
.end method

.method private static unfold0(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "s"
    .parameter "crlfIdx"

    .prologue
    .line 479
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 480
    .local v2, length:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 482
    .local v3, sb:Ljava/lang/StringBuilder;
    if-lez p1, :cond_0

    .line 483
    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .local v1, idx:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 487
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 488
    .local v0, c:C
    const/16 v4, 0xd

    if-eq v0, v4, :cond_1

    const/16 v4, 0xa

    if-eq v0, v4, :cond_1

    .line 489
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
