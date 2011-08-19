.class public final Ljava/util/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Scanner$DataType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANY_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final BOOLEAN_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final DEFAULT_DELIMITER:Ljava/util/regex/Pattern; = null

.field private static final DEFAULT_RADIX:I = 0xa

.field private static final DEFAULT_TRUNK_SIZE:I = 0x400

.field private static final DIPLOID:I = 0x2

.field private static final LINE_PATTERN:Ljava/util/regex/Pattern;

.field private static final LINE_TERMINATOR:Ljava/util/regex/Pattern;

.field private static final MULTI_LINE_TERMINATOR:Ljava/util/regex/Pattern;


# instance fields
.field private buffer:Ljava/nio/CharBuffer;

.field private bufferLength:I

.field private cacheHasNextValue:Ljava/lang/Object;

.field private cachehasNextIndex:I

.field private closed:Z

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private delimiter:Ljava/util/regex/Pattern;

.field private findStartIndex:I

.field private input:Ljava/lang/Readable;

.field private inputExhausted:Z

.field private integerRadix:I

.field private lastIOException:Ljava/io/IOException;

.field private locale:Ljava/util/Locale;

.field private matchSuccessful:Z

.field private matcher:Ljava/util/regex/Matcher;

.field private preStartIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 65
    const-string v3, "\\p{javaWhitespace}+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    .line 69
    const-string v3, "true|false"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Ljava/util/Scanner;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    .line 82
    const-string v2, "\n|\r\n|\r|\u0085|\u2028|\u2029"

    .line 84
    .local v2, terminator:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Ljava/util/Scanner;->LINE_TERMINATOR:Ljava/util/regex/Pattern;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v1, multiTerminator:Ljava/lang/StringBuilder;
    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Ljava/util/Scanner;->MULTI_LINE_TERMINATOR:Ljava/util/regex/Pattern;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, line:Ljava/lang/StringBuilder;
    const-string v3, ".*("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")|.+("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Ljava/util/Scanner;->LINE_PATTERN:Ljava/util/regex/Pattern;

    .line 99
    const-string v3, "(?s).*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Ljava/util/Scanner;->ANY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 7
    .parameter "src"
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    sget-object v2, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v2, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 117
    const/16 v2, 0xa

    iput v2, p0, Ljava/util/Scanner;->integerRadix:I

    .line 119
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 122
    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 125
    iget v2, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v2, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 128
    iput v3, p0, Ljava/util/Scanner;->bufferLength:I

    .line 132
    iput-boolean v3, p0, Ljava/util/Scanner;->closed:Z

    .line 136
    iput-boolean v3, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 141
    iput-boolean v3, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 143
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 145
    const/4 v2, -0x1

    iput v2, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    .line 185
    if-nez p1, :cond_30

    .line 186
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "src == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_30
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 189
    .local v1, fis:Ljava/io/FileInputStream;
    if-nez p2, :cond_3f

    .line 190
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "charsetName == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    :cond_3f
    :try_start_3f
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v2, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;
    :try_end_46
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3f .. :try_end_46} :catch_4a

    .line 198
    invoke-direct {p0}, Ljava/util/Scanner;->initialization()V

    .line 199
    return-void

    .line 194
    :catch_4a
    move-exception v2

    move-object v0, v2

    .line 195
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 196
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "src"

    .prologue
    .line 220
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 6
    .parameter "src"
    .parameter "charsetName"

    .prologue
    const/4 v2, 0x0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    sget-object v1, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v1, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 117
    const/16 v1, 0xa

    iput v1, p0, Ljava/util/Scanner;->integerRadix:I

    .line 119
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 122
    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 125
    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v1, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 128
    iput v2, p0, Ljava/util/Scanner;->bufferLength:I

    .line 132
    iput-boolean v2, p0, Ljava/util/Scanner;->closed:Z

    .line 136
    iput-boolean v2, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 141
    iput-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 143
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 145
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    .line 235
    if-nez p1, :cond_30

    .line 236
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_30
    :try_start_30
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;
    :try_end_37
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_30 .. :try_end_37} :catch_3b

    .line 243
    invoke-direct {p0}, Ljava/util/Scanner;->initialization()V

    .line 244
    return-void

    .line 240
    :catch_3b
    move-exception v1

    move-object v0, v1

    .line 241
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/Readable;)V
    .registers 4
    .parameter "src"

    .prologue
    const/4 v1, 0x0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 117
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/Scanner;->integerRadix:I

    .line 119
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 122
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 125
    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 128
    iput v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 132
    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    .line 136
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 141
    iput-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    .line 253
    if-nez p1, :cond_2e

    .line 254
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 256
    :cond_2e
    iput-object p1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    .line 257
    invoke-direct {p0}, Ljava/util/Scanner;->initialization()V

    .line 258
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "src"

    .prologue
    const/4 v1, 0x0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 117
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/Scanner;->integerRadix:I

    .line 119
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 122
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 125
    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 128
    iput v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 132
    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    .line 136
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 141
    iput-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    .line 208
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    .line 209
    invoke-direct {p0}, Ljava/util/Scanner;->initialization()V

    .line 210
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .registers 3
    .parameter "src"

    .prologue
    .line 268
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Scanner;-><init>(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V
    .registers 5
    .parameter "src"
    .parameter "charsetName"

    .prologue
    const/4 v1, 0x0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 117
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/Scanner;->integerRadix:I

    .line 119
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 122
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 125
    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 128
    iput v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 132
    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    .line 136
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 141
    iput-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    .line 283
    if-nez p1, :cond_30

    .line 284
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_30
    if-nez p2, :cond_3a

    .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charsetName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_3a
    invoke-static {p1, p2}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    .line 290
    invoke-direct {p0}, Ljava/util/Scanner;->initialization()V

    .line 291
    return-void
.end method

.method private addNegativeSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 7
    .parameter "unSignNumeral"

    .prologue
    .line 1872
    const-string v0, ""

    .line 1873
    .local v0, negativePrefix:Ljava/lang/String;
    const-string v1, ""

    .line 1874
    .local v1, negativeSuffix:Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1875
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\Q"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\E"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1877
    :cond_2f
    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 1878
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\Q"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\E"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1880
    :cond_5a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1883
    .local v2, signedNumeral:Ljava/lang/StringBuilder;
    return-object v2
.end method

.method private addPositiveSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 7
    .parameter "unSignNumeral"

    .prologue
    .line 1854
    const-string v0, ""

    .line 1855
    .local v0, positivePrefix:Ljava/lang/String;
    const-string v1, ""

    .line 1856
    .local v1, positiveSuffix:Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1857
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\Q"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\E"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1859
    :cond_2f
    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 1860
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\Q"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\E"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1862
    :cond_5a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1865
    .local v2, signedNumeral:Ljava/lang/StringBuilder;
    return-object v2
.end method

.method private checkClosed()V
    .registers 2

    .prologue
    .line 1726
    iget-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    if-eqz v0, :cond_a

    .line 1727
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1729
    :cond_a
    return-void
.end method

.method private checkNull(Ljava/util/regex/Pattern;)V
    .registers 3
    .parameter "pattern"

    .prologue
    .line 1736
    if-nez p1, :cond_8

    .line 1737
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1739
    :cond_8
    return-void
.end method

.method private checkRadix(I)V
    .registers 5
    .parameter "radix"

    .prologue
    .line 1697
    const/4 v0, 0x2

    if-lt p1, v0, :cond_7

    const/16 v0, 0x24

    if-le p1, v0, :cond_20

    .line 1698
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid radix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1700
    :cond_20
    return-void
.end method

.method private expandBuffer()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 2175
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    .line 2176
    .local v4, oldPosition:I
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->capacity()I

    move-result v2

    .line 2177
    .local v2, oldCapacity:I
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    .line 2178
    .local v3, oldLimit:I
    mul-int/lit8 v1, v2, 0x2

    .line 2179
    .local v1, newCapacity:I
    new-array v0, v1, [C

    .line 2180
    .local v0, newBuffer:[C
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v5

    invoke-static {v5, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2181
    invoke-static {v0, v6, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v5

    iput-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    .line 2182
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 2183
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2184
    return-void
.end method

.method private findPostDelimiter()I
    .registers 5

    .prologue
    .line 2106
    const/4 v1, 0x0

    .line 2107
    .local v1, tokenEndIndex:I
    const/4 v0, 0x0

    .line 2108
    .local v0, findComplete:Z
    :cond_2
    :goto_2
    if-nez v0, :cond_34

    .line 2109
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2110
    const/4 v0, 0x1

    .line 2111
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 2113
    const/4 v0, 0x0

    goto :goto_2

    .line 2116
    :cond_27
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_32

    .line 2117
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 2118
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_2

    .line 2120
    :cond_32
    const/4 v2, -0x1

    .line 2126
    :goto_33
    return v2

    .line 2124
    :cond_34
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 2125
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    move v2, v1

    .line 2126
    goto :goto_33
.end method

.method private findPreDelimiter()I
    .registers 5

    .prologue
    .line 2047
    const/4 v0, 0x0

    .line 2048
    .local v0, findComplete:Z
    :cond_1
    :goto_1
    if-nez v0, :cond_39

    .line 2049
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2050
    const/4 v0, 0x1

    .line 2052
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    if-ne v2, v3, :cond_1

    .line 2055
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_1

    .line 2056
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 2057
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    .line 2058
    const/4 v0, 0x0

    goto :goto_1

    .line 2062
    :cond_2c
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_37

    .line 2063
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 2064
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_1

    .line 2066
    :cond_37
    const/4 v2, -0x1

    .line 2072
    :goto_38
    return v2

    .line 2070
    :cond_39
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 2071
    .local v1, tokenStartIndex:I
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    move v2, v1

    .line 2072
    goto :goto_38
.end method

.method private getFloatPattern()Ljava/util/regex/Pattern;
    .registers 20

    .prologue
    .line 1796
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    check-cast v3, Ljava/text/DecimalFormat;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    .line 1798
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v17, "([0-9]|(\\p{javaDigit}))"

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1799
    .local v6, digit:Ljava/lang/StringBuilder;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v17, "[\\p{javaDigit}&&[^0]]"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1800
    .local v14, nonZeroDigit:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Ljava/util/Scanner;->getNumeral(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1802
    .local v15, numeral:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "\\"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1804
    .local v5, decimalSeparator:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "("

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "|"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "*+|"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "++)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1808
    .local v4, decimalNumeral:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "([eE][+-]?"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "+)?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1811
    .local v7, exponent:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "(([-+]?"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "?)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")|("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/util/Scanner;->addPositiveSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "?)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")|("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/util/Scanner;->addNegativeSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "?)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "))"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1818
    .local v3, decimal:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "([-+]?0[xX][0-9a-fA-F]*"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "\\."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "[0-9a-fA-F]+([pP][-+]?[0-9]+)?)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1821
    .local v10, hexFloat:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v11

    .line 1822
    .local v11, localNaN:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v12

    .line 1824
    .local v12, localeInfinity:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "(NaN|\\Q"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\\E|Infinity|\\Q"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\\E)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1826
    .local v13, nonNumber:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "((([-+]?("

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")))|("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Ljava/util/Scanner;->addPositiveSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")|("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Ljava/util/Scanner;->addNegativeSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "))"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1830
    .local v16, singedNonNumber:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "|"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "|"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1832
    .local v9, floatString:Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 1833
    .local v8, floatPattern:Ljava/util/regex/Pattern;
    return-object v8
.end method

.method private getIntegerPattern(I)Ljava/util/regex/Pattern;
    .registers 12
    .parameter "radix"

    .prologue
    .line 1771
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkRadix(I)V

    .line 1772
    iget-object v8, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    check-cast v8, Ljava/text/DecimalFormat;

    iput-object v8, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    .line 1774
    const-string v1, "0123456789abcdefghijklmnopqrstuvwxyz"

    .line 1775
    .local v1, allAvailableDigits:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v1, v8, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1776
    .local v0, ASCIIDigit:Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v1, v8, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1778
    .local v5, nonZeroASCIIDigit:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "((?i)["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]|\\p{javaDigit})"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1780
    .local v2, digit:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "((?i)["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]|([\\p{javaDigit}&&[^0]]))"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1782
    .local v6, nonZeroDigit:Ljava/lang/StringBuilder;
    invoke-direct {p0, v2, v6}, Ljava/util/Scanner;->getNumeral(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1784
    .local v7, numeral:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(([-+]?("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")))|("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v7}, Ljava/util/Scanner;->addPositiveSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")|("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v7}, Ljava/util/Scanner;->addNegativeSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1788
    .local v3, integer:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1789
    .local v4, integerPattern:Ljava/util/regex/Pattern;
    return-object v4
.end method

.method private getNumeral(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 8
    .parameter "digit"
    .parameter "nonZeroDigit"

    .prologue
    .line 1838
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v4

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1841
    .local v0, groupSeparator:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")+)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1845
    .local v1, groupedNumeral:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "++)|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1847
    .local v2, numeral:Ljava/lang/StringBuilder;
    return-object v2
.end method

.method private initialization()V
    .registers 3

    .prologue
    .line 1716
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    .line 1717
    iget-object v0, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1718
    iget-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    .line 1719
    return-void
.end method

.method private readMore()V
    .registers 7

    .prologue
    .line 2135
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    .line 2136
    .local v2, oldPosition:I
    iget v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 2138
    .local v1, oldBufferLength:I
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->capacity()I

    move-result v5

    if-lt v4, v5, :cond_15

    .line 2139
    invoke-direct {p0}, Ljava/util/Scanner;->expandBuffer()V

    .line 2143
    :cond_15
    const/4 v3, 0x0

    .line 2145
    .local v3, readCount:I
    :try_start_16
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2146
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 2147
    :cond_26
    iget-object v4, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-interface {v4, v5}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2d} :catch_41

    move-result v3

    if-eqz v3, :cond_26

    .line 2164
    :goto_30
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 2165
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 2166
    const/4 v4, -0x1

    if-ne v4, v3, :cond_4f

    .line 2167
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 2171
    :goto_40
    return-void

    .line 2150
    :catch_41
    move-exception v4

    move-object v0, v4

    .line 2155
    .local v0, e:Ljava/io/IOException;
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    iput v4, p0, Ljava/util/Scanner;->bufferLength:I

    .line 2160
    const/4 v3, -0x1

    .line 2161
    iput-object v0, p0, Ljava/util/Scanner;->lastIOException:Ljava/io/IOException;

    goto :goto_30

    .line 2169
    .end local v0           #e:Ljava/io/IOException;
    :cond_4f
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/util/Scanner;->bufferLength:I

    goto :goto_40
.end method

.method private recoverPreviousStatus()V
    .registers 2

    .prologue
    .line 1764
    iget v0, p0, Ljava/util/Scanner;->preStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1765
    return-void
.end method

.method private removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;
    .registers 14
    .parameter "token"
    .parameter "type"

    .prologue
    const/16 v10, 0xa

    const/4 v9, -0x1

    .line 1916
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1917
    .local v6, tokenBuilder:Ljava/lang/StringBuilder;
    invoke-direct {p0, v6}, Ljava/util/Scanner;->removeLocaleSign(Ljava/lang/StringBuilder;)Z

    move-result v3

    .line 1919
    .local v3, negative:Z
    iget-object v7, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v7}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v7

    invoke-virtual {v7}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 1921
    .local v1, groupSeparator:Ljava/lang/String;
    const/4 v5, -0x1

    .line 1922
    .local v5, separatorIndex:I
    :goto_1b
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v9, v5, :cond_27

    .line 1923
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 1926
    :cond_27
    iget-object v7, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v7}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v7

    invoke-virtual {v7}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 1928
    .local v0, decimalSeparator:Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1929
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1930
    .local v4, result:Ljava/lang/StringBuilder;
    sget-object v7, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    if-ne v7, p2, :cond_61

    .line 1931
    const/4 v2, 0x0

    .local v2, i:I
    :goto_45
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v2, v7, :cond_61

    .line 1932
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0x24

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    if-eq v9, v7, :cond_5e

    .line 1934
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1931
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 1938
    .end local v2           #i:I
    :cond_61
    sget-object v7, Ljava/util/Scanner$DataType;->FLOAT:Ljava/util/Scanner$DataType;

    if-ne v7, p2, :cond_7e

    .line 1939
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v8}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v8

    invoke-virtual {v8}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_99

    .line 1941
    const-string v7, "NaN"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    :cond_7e
    :goto_7e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_85

    .line 1956
    move-object v4, v6

    .line 1958
    :cond_85
    if-eq v9, v5, :cond_8c

    .line 1959
    const-string v7, "."

    invoke-virtual {v4, v5, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1962
    :cond_8c
    if-eqz v3, :cond_94

    .line 1963
    const/4 v7, 0x0

    const/16 v8, 0x2d

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1965
    :cond_94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 1942
    :cond_99
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v8}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v8

    invoke-virtual {v8}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b3

    .line 1944
    const-string v7, "Infinity"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7e

    .line 1946
    :cond_b3
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_b4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v2, v7, :cond_7e

    .line 1947
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-static {v7, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    if-eq v9, v7, :cond_cf

    .line 1948
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-static {v7, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1946
    :cond_cf
    add-int/lit8 v2, v2, 0x1

    goto :goto_b4
.end method

.method private removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "floatString"

    .prologue
    const/4 v4, -0x1

    .line 1891
    const/16 v3, 0x78

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v4, v3, :cond_11

    const/16 v3, 0x58

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v4, v3, :cond_13

    :cond_11
    move-object v3, p1

    .line 1908
    :goto_12
    return-object v3

    .line 1899
    :cond_13
    const/16 v3, 0x65

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, exponentIndex:I
    if-ne v4, v1, :cond_23

    const/16 v3, 0x45

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v4, v1, :cond_50

    .line 1901
    :cond_23
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1902
    .local v0, decimalNumeralString:Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1904
    .local v2, exponentString:Ljava/lang/String;
    sget-object v3, Ljava/util/Scanner$DataType;->FLOAT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v0, v3}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v0

    .line 1906
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_12

    .line 1908
    .end local v0           #decimalNumeralString:Ljava/lang/String;
    .end local v2           #exponentString:Ljava/lang/String;
    :cond_50
    sget-object v3, Ljava/util/Scanner$DataType;->FLOAT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, p1, v3}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v3

    goto :goto_12
.end method

.method private removeLocaleSign(Ljava/lang/StringBuilder;)Z
    .registers 12
    .parameter "tokenBuilder"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1973
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v3

    .line 1974
    .local v3, positivePrefix:Ljava/lang/String;
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v4

    .line 1975
    .local v4, positiveSuffix:Ljava/lang/String;
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v1

    .line 1976
    .local v1, negativePrefix:Ljava/lang/String;
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v2

    .line 1978
    .local v2, negativeSuffix:Ljava/lang/String;
    const-string v5, "+"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_26

    .line 1979
    invoke-virtual {p1, v7, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1981
    :cond_26
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_39

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_39

    .line 1982
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v7, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1984
    :cond_39
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_55

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v8, v5, :cond_55

    .line 1986
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1990
    :cond_55
    const/4 v0, 0x0

    .line 1991
    .local v0, negative:Z
    const-string v5, "-"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_62

    .line 1992
    invoke-virtual {p1, v7, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1993
    const/4 v0, 0x1

    .line 1995
    :cond_62
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_76

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_76

    .line 1996
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v7, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1997
    const/4 v0, 0x1

    .line 1999
    :cond_76
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_93

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v8, v5, :cond_93

    .line 2001
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2004
    const/4 v0, 0x1

    .line 2006
    :cond_93
    return v0
.end method

.method private resetMatcher()V
    .registers 4

    .prologue
    .line 1745
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    if-nez v0, :cond_18

    .line 1746
    iget-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    .line 1750
    :goto_e
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1751
    return-void

    .line 1748
    :cond_18
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    goto :goto_e
.end method

.method private saveCurrentStatus()V
    .registers 2

    .prologue
    .line 1757
    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 1758
    return-void
.end method

.method private setHeadTokenRegion(I)Z
    .registers 8
    .parameter "findIndex"

    .prologue
    const/4 v5, -0x1

    .line 2081
    const/4 v0, 0x0

    .line 2083
    .local v0, setSuccess:Z
    if-ne v5, p1, :cond_18

    iget v3, p0, Ljava/util/Scanner;->preStartIndex:I

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    if-eq v3, v4, :cond_18

    .line 2084
    iget v2, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 2085
    .local v2, tokenStartIndex:I
    iget v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 2086
    .local v1, tokenEndIndex:I
    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 2087
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, v2, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 2088
    const/4 v0, 0x1

    .line 2091
    .end local v1           #tokenEndIndex:I
    .end local v2           #tokenStartIndex:I
    :cond_18
    if-eq v5, p1, :cond_3a

    iget v3, p0, Ljava/util/Scanner;->preStartIndex:I

    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    if-eq v3, v4, :cond_3a

    .line 2092
    iget v2, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 2093
    .restart local v2       #tokenStartIndex:I
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 2094
    .restart local v1       #tokenEndIndex:I
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 2096
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, v2, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 2097
    const/4 v0, 0x1

    .line 2099
    .end local v1           #tokenEndIndex:I
    .end local v2           #tokenStartIndex:I
    :cond_3a
    return v0
.end method

.method private setTokenRegion()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 2016
    const/4 v1, 0x0

    .line 2018
    .local v1, tokenStartIndex:I
    const/4 v0, 0x0

    .line 2020
    .local v0, tokenEndIndex:I
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v3, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 2021
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v2, v3, v4}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 2023
    invoke-direct {p0}, Ljava/util/Scanner;->findPreDelimiter()I

    move-result v1

    .line 2024
    invoke-direct {p0, v1}, Ljava/util/Scanner;->setHeadTokenRegion(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    move v2, v5

    .line 2039
    :goto_1e
    return v2

    .line 2027
    :cond_1f
    invoke-direct {p0}, Ljava/util/Scanner;->findPostDelimiter()I

    move-result v0

    .line 2029
    const/4 v2, -0x1

    if-ne v2, v0, :cond_34

    .line 2031
    iget v2, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    if-ne v2, v3, :cond_2e

    .line 2032
    const/4 v2, 0x0

    goto :goto_1e

    .line 2034
    :cond_2e
    iget v0, p0, Ljava/util/Scanner;->bufferLength:I

    .line 2035
    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 2038
    :cond_34
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2, v1, v0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move v2, v5

    .line 2039
    goto :goto_1e
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 302
    iget-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    if-eqz v1, :cond_5

    .line 313
    :goto_4
    return-void

    .line 305
    :cond_5
    iget-object v1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    instance-of v1, v1, Ljava/io/Closeable;

    if-eqz v1, :cond_12

    .line 307
    :try_start_b
    iget-object v1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_12} :catch_16

    .line 312
    :cond_12
    :goto_12
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    goto :goto_4

    .line 308
    :catch_16
    move-exception v1

    move-object v0, v1

    .line 309
    .local v0, e:Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Scanner;->lastIOException:Ljava/io/IOException;

    goto :goto_12
.end method

.method public delimiter()Ljava/util/regex/Pattern;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public findInLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "pattern"

    .prologue
    .line 432
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 11
    .parameter "pattern"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 340
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 341
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNull(Ljava/util/regex/Pattern;)V

    .line 342
    const/4 v1, 0x0

    .line 344
    .local v1, horizonLineSeparator:I
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    sget-object v5, Ljava/util/Scanner;->MULTI_LINE_TERMINATOR:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 345
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v5, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v6, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v4, v5, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, findComplete:Z
    const/4 v3, 0x0

    .line 349
    .local v3, terminatorLength:I
    :goto_1b
    if-nez v0, :cond_4a

    .line 350
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 351
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 352
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    sub-int v3, v4, v5

    .line 353
    const/4 v0, 0x1

    goto :goto_1b

    .line 355
    :cond_3b
    iget-boolean v4, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v4, :cond_46

    .line 356
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 357
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_1b

    .line 359
    :cond_46
    iget v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 360
    const/4 v0, 0x1

    goto :goto_1b

    .line 365
    :cond_4a
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 373
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    .line 375
    .local v2, oldLimit:I
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    add-int v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 379
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v5, p0, Ljava/util/Scanner;->findStartIndex:I

    add-int v6, v1, v3

    invoke-virtual {v4, v5, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 380
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 382
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    iput v4, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 385
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    if-ne v1, v4, :cond_82

    .line 386
    iget v4, p0, Ljava/util/Scanner;->findStartIndex:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 390
    :cond_82
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    if-eq v1, v4, :cond_99

    add-int v4, v1, v3

    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    if-ne v4, v5, :cond_99

    .line 394
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 397
    iput-boolean v7, p0, Ljava/util/Scanner;->matchSuccessful:Z

    move-object v4, v8

    .line 414
    :goto_98
    return-object v4

    .line 400
    :cond_99
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 403
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 406
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    goto :goto_98

    .line 410
    :cond_a8
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 413
    iput-boolean v7, p0, Ljava/util/Scanner;->matchSuccessful:Z

    move-object v4, v8

    .line 414
    goto :goto_98
.end method

.method public findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "pattern"
    .parameter "horizon"

    .prologue
    .line 543
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;
    .registers 11
    .parameter "pattern"
    .parameter "horizon"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 468
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 469
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNull(Ljava/util/regex/Pattern;)V

    .line 470
    if-gez p2, :cond_12

    .line 471
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "horizon < 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 473
    :cond_12
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 475
    const/4 v3, 0x0

    .line 476
    .local v3, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 477
    .local v0, findEndIndex:I
    const/4 v1, 0x0

    .line 478
    .local v1, horizonEndIndex:I
    if-nez p2, :cond_54

    .line 479
    const v1, 0x7fffffff

    .line 484
    :cond_1f
    :goto_1f
    iget v0, p0, Ljava/util/Scanner;->bufferLength:I

    .line 489
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 491
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    if-gt v1, v4, :cond_59

    move v2, v7

    .line 495
    .local v2, isHorizonInBuffer:Z
    :goto_2c
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v5, p0, Ljava/util/Scanner;->findStartIndex:I

    invoke-virtual {v4, v5, v0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 496
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 497
    if-nez v2, :cond_41

    iget-boolean v4, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v4, :cond_61

    .line 498
    :cond_41
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 516
    :cond_47
    if-eqz v3, :cond_6c

    .line 517
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    iput v4, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 518
    iput-boolean v7, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 522
    :goto_53
    return-object v3

    .line 481
    .end local v2           #isHorizonInBuffer:Z
    :cond_54
    iget v4, p0, Ljava/util/Scanner;->findStartIndex:I

    add-int v1, v4, p2

    goto :goto_1f

    :cond_59
    move v2, v6

    .line 491
    goto :goto_2c

    .line 505
    .restart local v2       #isHorizonInBuffer:Z
    :cond_5b
    if-nez v2, :cond_47

    iget-boolean v4, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v4, :cond_47

    .line 511
    :cond_61
    iget-boolean v4, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v4, :cond_1f

    .line 512
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 513
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_1f

    .line 520
    :cond_6c
    iput-boolean v6, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_53
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 556
    sget-object v0, Ljava/util/Scanner;->ANY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public hasNext(Ljava/lang/String;)Z
    .registers 3
    .parameter "pattern"

    .prologue
    .line 608
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public hasNext(Ljava/util/regex/Pattern;)Z
    .registers 5
    .parameter "pattern"

    .prologue
    const/4 v2, 0x0

    .line 572
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 573
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNull(Ljava/util/regex/Pattern;)V

    .line 574
    iput-boolean v2, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 575
    invoke-direct {p0}, Ljava/util/Scanner;->saveCurrentStatus()V

    .line 578
    invoke-direct {p0}, Ljava/util/Scanner;->setTokenRegion()Z

    move-result v1

    if-nez v1, :cond_17

    .line 579
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    move v1, v2

    .line 591
    :goto_16
    return v1

    .line 582
    :cond_17
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 583
    const/4 v0, 0x0

    .line 585
    .local v0, hasNext:Z
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 586
    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v1, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    .line 587
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 588
    const/4 v0, 0x1

    .line 590
    :cond_2d
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    move v1, v0

    .line 591
    goto :goto_16
.end method

.method public hasNextBigDecimal()Z
    .registers 6

    .prologue
    .line 621
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 622
    .local v1, floatPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 623
    .local v3, isBigDecimalValue:Z
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 624
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, floatString:Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 627
    :try_start_15
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1c} :catch_1e

    .line 628
    const/4 v3, 0x1

    .line 633
    .end local v2           #floatString:Ljava/lang/String;
    :cond_1d
    :goto_1d
    return v3

    .line 629
    .restart local v2       #floatString:Ljava/lang/String;
    :catch_1e
    move-exception v4

    move-object v0, v4

    .line 630
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1d
.end method

.method public hasNextBigInteger()Z
    .registers 2

    .prologue
    .line 646
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextBigInteger(I)Z

    move-result v0

    return v0
.end method

.method public hasNextBigInteger(I)Z
    .registers 7
    .parameter "radix"

    .prologue
    .line 662
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 663
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 664
    .local v3, isBigIntegerValue:Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 665
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 666
    .local v1, intString:Ljava/lang/String;
    sget-object v4, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 668
    :try_start_17
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1e} :catch_20

    .line 669
    const/4 v3, 0x1

    .line 674
    .end local v1           #intString:Ljava/lang/String;
    :cond_1f
    :goto_1f
    return v3

    .line 670
    .restart local v1       #intString:Ljava/lang/String;
    :catch_20
    move-exception v4

    move-object v0, v4

    .line 671
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1f
.end method

.method public hasNextBoolean()Z
    .registers 2

    .prologue
    .line 687
    sget-object v0, Ljava/util/Scanner;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public hasNextByte()Z
    .registers 2

    .prologue
    .line 700
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextByte(I)Z

    move-result v0

    return v0
.end method

.method public hasNextByte(I)Z
    .registers 7
    .parameter "radix"

    .prologue
    .line 716
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 717
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 718
    .local v3, isByteValue:Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 719
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, intString:Ljava/lang/String;
    sget-object v4, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 722
    :try_start_17
    invoke-static {v1, p1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;I)Ljava/lang/Byte;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1d} :catch_1f

    .line 723
    const/4 v3, 0x1

    .line 728
    .end local v1           #intString:Ljava/lang/String;
    :cond_1e
    :goto_1e
    return v3

    .line 724
    .restart local v1       #intString:Ljava/lang/String;
    :catch_1f
    move-exception v4

    move-object v0, v4

    .line 725
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1e
.end method

.method public hasNextDouble()Z
    .registers 6

    .prologue
    .line 741
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 742
    .local v1, floatPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 743
    .local v3, isDoubleValue:Z
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 744
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 745
    .local v2, floatString:Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 747
    :try_start_15
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1b} :catch_1d

    .line 748
    const/4 v3, 0x1

    .line 753
    .end local v2           #floatString:Ljava/lang/String;
    :cond_1c
    :goto_1c
    return v3

    .line 749
    .restart local v2       #floatString:Ljava/lang/String;
    :catch_1d
    move-exception v4

    move-object v0, v4

    .line 750
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1c
.end method

.method public hasNextFloat()Z
    .registers 6

    .prologue
    .line 766
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 767
    .local v1, floatPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 768
    .local v3, isFloatValue:Z
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 769
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 770
    .local v2, floatString:Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 772
    :try_start_15
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1b} :catch_1d

    .line 773
    const/4 v3, 0x1

    .line 778
    .end local v2           #floatString:Ljava/lang/String;
    :cond_1c
    :goto_1c
    return v3

    .line 774
    .restart local v2       #floatString:Ljava/lang/String;
    :catch_1d
    move-exception v4

    move-object v0, v4

    .line 775
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1c
.end method

.method public hasNextInt()Z
    .registers 2

    .prologue
    .line 791
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextInt(I)Z

    move-result v0

    return v0
.end method

.method public hasNextInt(I)Z
    .registers 7
    .parameter "radix"

    .prologue
    .line 808
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 809
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 810
    .local v3, isIntValue:Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 811
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 812
    .local v1, intString:Ljava/lang/String;
    sget-object v4, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 814
    :try_start_17
    invoke-static {v1, p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1d} :catch_1f

    .line 815
    const/4 v3, 0x1

    .line 820
    .end local v1           #intString:Ljava/lang/String;
    :cond_1e
    :goto_1e
    return v3

    .line 816
    .restart local v1       #intString:Ljava/lang/String;
    :catch_1f
    move-exception v4

    move-object v0, v4

    .line 817
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1e
.end method

.method public hasNextLine()Z
    .registers 5

    .prologue
    .line 833
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 834
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    sget-object v2, Ljava/util/Scanner;->LINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 835
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v1, v2, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 837
    const/4 v0, 0x0

    .line 839
    .local v0, hasNextLine:Z
    :cond_14
    :goto_14
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 840
    iget-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v1, :cond_2a

    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    if-eq v1, v2, :cond_37

    .line 841
    :cond_2a
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 842
    const/4 v0, 0x1

    .line 856
    :goto_2e
    return v0

    .line 846
    :cond_2f
    iget-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v1, :cond_37

    .line 847
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_2e

    .line 851
    :cond_37
    iget-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v1, :cond_14

    .line 852
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 853
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_14
.end method

.method public hasNextLong()Z
    .registers 2

    .prologue
    .line 869
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextLong(I)Z

    move-result v0

    return v0
.end method

.method public hasNextLong(I)Z
    .registers 7
    .parameter "radix"

    .prologue
    .line 885
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 886
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 887
    .local v3, isLongValue:Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 888
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 889
    .local v1, intString:Ljava/lang/String;
    sget-object v4, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 891
    :try_start_17
    invoke-static {v1, p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1d} :catch_1f

    .line 892
    const/4 v3, 0x1

    .line 897
    .end local v1           #intString:Ljava/lang/String;
    :cond_1e
    :goto_1e
    return v3

    .line 893
    .restart local v1       #intString:Ljava/lang/String;
    :catch_1f
    move-exception v4

    move-object v0, v4

    .line 894
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1e
.end method

.method public hasNextShort()Z
    .registers 2

    .prologue
    .line 910
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextShort(I)Z

    move-result v0

    return v0
.end method

.method public hasNextShort(I)Z
    .registers 7
    .parameter "radix"

    .prologue
    .line 926
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 927
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 928
    .local v3, isShortValue:Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 929
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 930
    .local v1, intString:Ljava/lang/String;
    sget-object v4, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 932
    :try_start_17
    invoke-static {v1, p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;I)Ljava/lang/Short;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1d} :catch_1f

    .line 933
    const/4 v3, 0x1

    .line 938
    .end local v1           #intString:Ljava/lang/String;
    :cond_1e
    :goto_1e
    return v3

    .line 934
    .restart local v1       #intString:Ljava/lang/String;
    :catch_1f
    move-exception v4

    move-object v0, v4

    .line 935
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1e
.end method

.method public ioException()Ljava/io/IOException;
    .registers 2

    .prologue
    .line 948
    iget-object v0, p0, Ljava/util/Scanner;->lastIOException:Ljava/io/IOException;

    return-object v0
.end method

.method public locale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 957
    iget-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public match()Ljava/util/regex/MatchResult;
    .registers 2

    .prologue
    .line 972
    iget-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    if-nez v0, :cond_a

    .line 973
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 975
    :cond_a
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 2

    .prologue
    .line 990
    sget-object v0, Ljava/util/Scanner;->ANY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "pattern"

    .prologue
    .line 1047
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 3
    .parameter "pattern"

    .prologue
    .line 1010
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1011
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNull(Ljava/util/regex/Pattern;)V

    .line 1012
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1013
    invoke-direct {p0}, Ljava/util/Scanner;->saveCurrentStatus()V

    .line 1014
    invoke-direct {p0}, Ljava/util/Scanner;->setTokenRegion()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1015
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1017
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1019
    :cond_1b
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1020
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_31

    .line 1021
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1022
    new-instance v0, Ljava/util/InputMismatchException;

    invoke-direct {v0}, Ljava/util/InputMismatchException;-><init>()V

    throw v0

    .line 1025
    :cond_31
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1026
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextBigDecimal()Ljava/math/BigDecimal;
    .registers 7

    .prologue
    .line 1070
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1071
    iget-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1072
    .local v4, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1073
    instance-of v5, v4, Ljava/math/BigDecimal;

    if-eqz v5, :cond_14

    .line 1074
    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1075
    check-cast v4, Ljava/math/BigDecimal;

    .end local v4           #obj:Ljava/lang/Object;
    move-object v5, v4

    .line 1088
    :goto_13
    return-object v5

    .line 1077
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_14
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1078
    .local v2, floatPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v3

    .line 1079
    .local v3, floatString:Ljava/lang/String;
    invoke-direct {p0, v3}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1082
    :try_start_20
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_25} :catch_27

    .local v0, bigDecimalValue:Ljava/math/BigDecimal;
    move-object v5, v0

    .line 1088
    goto :goto_13

    .line 1083
    .end local v0           #bigDecimalValue:Ljava/math/BigDecimal;
    :catch_27
    move-exception v5

    move-object v1, v5

    .line 1084
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1085
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1086
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextBigInteger()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 1105
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextBigInteger(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public nextBigInteger(I)Ljava/math/BigInteger;
    .registers 8
    .parameter "radix"

    .prologue
    .line 1132
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1133
    iget-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1134
    .local v4, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1135
    instance-of v5, v4, Ljava/math/BigInteger;

    if-eqz v5, :cond_14

    .line 1136
    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1137
    check-cast v4, Ljava/math/BigInteger;

    .end local v4           #obj:Ljava/lang/Object;
    move-object v5, v4

    .line 1150
    :goto_13
    return-object v5

    .line 1139
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_14
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1140
    .local v3, integerPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    .line 1141
    .local v2, intString:Ljava/lang/String;
    sget-object v5, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v2, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v2

    .line 1144
    :try_start_22
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_27} :catch_29

    .local v0, bigIntegerValue:Ljava/math/BigInteger;
    move-object v5, v0

    .line 1150
    goto :goto_13

    .line 1145
    .end local v0           #bigIntegerValue:Ljava/math/BigInteger;
    :catch_29
    move-exception v5

    move-object v1, v5

    .line 1146
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1147
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1148
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextBoolean()Z
    .registers 2

    .prologue
    .line 1167
    sget-object v0, Ljava/util/Scanner;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public nextByte()B
    .registers 2

    .prologue
    .line 1184
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextByte(I)B

    move-result v0

    return v0
.end method

.method public nextByte(I)B
    .registers 8
    .parameter "radix"

    .prologue
    .line 1211
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1212
    iget-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1213
    .local v4, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1214
    instance-of v5, v4, Ljava/lang/Byte;

    if-eqz v5, :cond_17

    .line 1215
    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1216
    check-cast v4, Ljava/lang/Byte;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    .line 1229
    :goto_16
    return v5

    .line 1218
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_17
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1219
    .local v3, integerPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    .line 1220
    .local v2, intString:Ljava/lang/String;
    sget-object v5, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v2, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v2

    .line 1221
    const/4 v0, 0x0

    .line 1223
    .local v0, byteValue:B
    :try_start_26
    invoke-static {v2, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_29} :catch_2c

    move-result v0

    move v5, v0

    .line 1229
    goto :goto_16

    .line 1224
    :catch_2c
    move-exception v1

    .line 1225
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1226
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1227
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextDouble()D
    .registers 9

    .prologue
    .line 1255
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1256
    iget-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1257
    .local v5, obj:Ljava/lang/Object;
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1258
    instance-of v6, v5, Ljava/lang/Double;

    if-eqz v6, :cond_17

    .line 1259
    iget v6, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v6, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1260
    check-cast v5, Ljava/lang/Double;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 1273
    :goto_16
    return-wide v6

    .line 1262
    .restart local v5       #obj:Ljava/lang/Object;
    :cond_17
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1263
    .local v3, floatPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v4

    .line 1264
    .local v4, floatString:Ljava/lang/String;
    invoke-direct {p0, v4}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1265
    const-wide/16 v0, 0x0

    .line 1267
    .local v0, doubleValue:D
    :try_start_25
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_28} :catch_2b

    move-result-wide v0

    move-wide v6, v0

    .line 1273
    goto :goto_16

    .line 1268
    :catch_2b
    move-exception v2

    .line 1269
    .local v2, e:Ljava/lang/NumberFormatException;
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1270
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1271
    new-instance v6, Ljava/util/InputMismatchException;

    invoke-direct {v6}, Ljava/util/InputMismatchException;-><init>()V

    throw v6
.end method

.method public nextFloat()F
    .registers 7

    .prologue
    .line 1299
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1300
    iget-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1301
    .local v4, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1302
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_17

    .line 1303
    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1304
    check-cast v4, Ljava/lang/Float;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 1317
    :goto_16
    return v5

    .line 1306
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_17
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1307
    .local v1, floatPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    .line 1308
    .local v2, floatString:Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1309
    const/4 v3, 0x0

    .line 1311
    .local v3, floatValue:F
    :try_start_24
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_27} :catch_2a

    move-result v3

    move v5, v3

    .line 1317
    goto :goto_16

    .line 1312
    :catch_2a
    move-exception v0

    .line 1313
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1314
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1315
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextInt()I
    .registers 2

    .prologue
    .line 1334
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .registers 8
    .parameter "radix"

    .prologue
    .line 1362
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1363
    iget-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1364
    .local v4, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1365
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_17

    .line 1366
    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1367
    check-cast v4, Ljava/lang/Integer;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1380
    :goto_16
    return v5

    .line 1369
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_17
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1370
    .local v3, integerPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 1371
    .local v1, intString:Ljava/lang/String;
    sget-object v5, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 1372
    const/4 v2, 0x0

    .line 1374
    .local v2, intValue:I
    :try_start_26
    invoke-static {v1, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_29} :catch_2c

    move-result v2

    move v5, v2

    .line 1380
    goto :goto_16

    .line 1375
    :catch_2c
    move-exception v0

    .line 1376
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1377
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1378
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextLine()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1397
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1399
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    sget-object v3, Ljava/util/Scanner;->LINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1400
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v2, v3, v4}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1401
    const/4 v0, 0x0

    .line 1403
    .local v0, result:Ljava/lang/String;
    :cond_15
    :goto_15
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 1404
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_35

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    if-ne v2, v3, :cond_35

    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    iget-object v3, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->capacity()I

    move-result v3

    if-ge v2, v3, :cond_69

    .line 1406
    :cond_35
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1407
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1408
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 1423
    if-eqz v0, :cond_5c

    .line 1424
    sget-object v2, Ljava/util/Scanner;->LINE_TERMINATOR:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1425
    .local v1, terminatorMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1426
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1429
    .end local v1           #terminatorMatcher:Ljava/util/regex/Matcher;
    :cond_5c
    return-object v0

    .line 1412
    :cond_5d
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v2, :cond_69

    .line 1413
    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1414
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 1417
    :cond_69
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_15

    .line 1418
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 1419
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_15
.end method

.method public nextLong()J
    .registers 3

    .prologue
    .line 1446
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextLong(I)J
    .registers 10
    .parameter "radix"

    .prologue
    .line 1474
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1475
    iget-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1476
    .local v5, obj:Ljava/lang/Object;
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1477
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_17

    .line 1478
    iget v6, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v6, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1479
    check-cast v5, Ljava/lang/Long;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1492
    :goto_16
    return-wide v6

    .line 1481
    .restart local v5       #obj:Ljava/lang/Object;
    :cond_17
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1482
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 1483
    .local v1, intString:Ljava/lang/String;
    sget-object v6, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v6}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 1484
    const-wide/16 v3, 0x0

    .line 1486
    .local v3, longValue:J
    :try_start_27
    invoke-static {v1, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2a} :catch_2d

    move-result-wide v3

    move-wide v6, v3

    .line 1492
    goto :goto_16

    .line 1487
    :catch_2d
    move-exception v0

    .line 1488
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1489
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1490
    new-instance v6, Ljava/util/InputMismatchException;

    invoke-direct {v6}, Ljava/util/InputMismatchException;-><init>()V

    throw v6
.end method

.method public nextShort()S
    .registers 2

    .prologue
    .line 1509
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextShort(I)S

    move-result v0

    return v0
.end method

.method public nextShort(I)S
    .registers 8
    .parameter "radix"

    .prologue
    .line 1537
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1538
    iget-object v3, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1539
    .local v3, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    .line 1540
    instance-of v5, v3, Ljava/lang/Short;

    if-eqz v5, :cond_17

    .line 1541
    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1542
    check-cast v3, Ljava/lang/Short;

    .end local v3           #obj:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v5

    .line 1555
    :goto_16
    return v5

    .line 1544
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_17
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1545
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 1546
    .local v1, intString:Ljava/lang/String;
    sget-object v5, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    .line 1547
    const/4 v4, 0x0

    .line 1549
    .local v4, shortValue:S
    :try_start_26
    invoke-static {v1, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_29} :catch_2c

    move-result v4

    move v5, v4

    .line 1555
    goto :goto_16

    .line 1550
    :catch_2c
    move-exception v0

    .line 1551
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1552
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1553
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public radix()I
    .registers 2

    .prologue
    .line 1564
    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    return v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 1709
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reset()Ljava/util/Scanner;
    .registers 2

    .prologue
    .line 2193
    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 2194
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 2195
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/Scanner;->integerRadix:I

    .line 2196
    return-object p0
.end method

.method public skip(Ljava/lang/String;)Ljava/util/Scanner;
    .registers 3
    .parameter "pattern"

    .prologue
    .line 1625
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;

    move-result-object v0

    return-object v0
.end method

.method public skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .registers 8
    .parameter "pattern"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1584
    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    .line 1585
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNull(Ljava/util/regex/Pattern;)V

    .line 1586
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1587
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v1, v2, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1589
    :cond_16
    :goto_16
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1590
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    if-lt v1, v2, :cond_36

    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    if-ne v1, v2, :cond_44

    iget-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v1, :cond_44

    :cond_36
    move v0, v5

    .line 1592
    .local v0, matchInBuffer:Z
    :goto_37
    if-eqz v0, :cond_52

    .line 1593
    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1594
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1608
    return-object p0

    .end local v0           #matchInBuffer:Z
    :cond_44
    move v0, v4

    .line 1590
    goto :goto_37

    .line 1598
    :cond_46
    iget-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v1, :cond_52

    .line 1599
    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1600
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1603
    :cond_52
    iget-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v1, :cond_16

    .line 1604
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 1605
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_16
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[delimiter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",findStartIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",matchSuccessful="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;
    .registers 3
    .parameter "pattern"

    .prologue
    .line 1665
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useDelimiter(Ljava/util/regex/Pattern;)Ljava/util/Scanner;

    move-result-object v0

    return-object v0
.end method

.method public useDelimiter(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .registers 2
    .parameter "pattern"

    .prologue
    .line 1652
    iput-object p1, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 1653
    return-object p0
.end method

.method public useLocale(Ljava/util/Locale;)Ljava/util/Scanner;
    .registers 3
    .parameter "l"

    .prologue
    .line 1676
    if-nez p1, :cond_8

    .line 1677
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1679
    :cond_8
    iput-object p1, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 1680
    return-object p0
.end method

.method public useRadix(I)Ljava/util/Scanner;
    .registers 2
    .parameter "radix"

    .prologue
    .line 1691
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkRadix(I)V

    .line 1692
    iput p1, p0, Ljava/util/Scanner;->integerRadix:I

    .line 1693
    return-object p0
.end method
