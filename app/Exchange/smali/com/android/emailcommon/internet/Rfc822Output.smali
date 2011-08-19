.class public Lcom/android/emailcommon/internet/Rfc822Output;
.super Ljava/lang/Object;
.source "Rfc822Output.java"


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

.field private static final PATTERN_START_OF_LINE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const-string v0, "(?m)^"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->PATTERN_START_OF_LINE:Ljava/util/regex/Pattern;

    .line 57
    const-string v0, "\r\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

    .line 61
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildBodyText(Lcom/android/emailcommon/provider/EmailContent$Body;IZ)[Ljava/lang/String;
    .locals 11
    .parameter "body"
    .parameter "flags"
    .parameter "useSmartReply"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 137
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    aput-object v8, v4, v9

    aput-object v8, v4, v10

    .line 138
    .local v4, messageBody:[Ljava/lang/String;
    if-nez p0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-object v4

    .line 141
    :cond_1
    iget-object v6, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 142
    .local v6, text:Ljava/lang/String;
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_5

    move v2, v10

    .line 143
    .local v2, isReply:Z
    :goto_1
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_6

    move v1, v10

    .line 145
    .local v1, isForward:Z
    :goto_2
    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    .line 146
    :cond_2
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    if-nez v7, :cond_7

    const-string v7, ""

    move-object v0, v7

    .line 147
    .local v0, intro:Ljava/lang/String;
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 149
    .end local v0           #intro:Ljava/lang/String;
    :cond_3
    if-eqz p2, :cond_8

    .line 152
    if-eqz v1, :cond_4

    .line 153
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 177
    :cond_4
    :goto_4
    aput-object v6, v4, v9

    .line 180
    if-nez p2, :cond_0

    .line 181
    invoke-static {p0, p2}, Lcom/android/emailcommon/internet/Rfc822Output;->getHtmlAlternate(Lcom/android/emailcommon/provider/EmailContent$Body;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v10

    goto :goto_0

    .end local v1           #isForward:Z
    .end local v2           #isReply:Z
    :cond_5
    move v2, v9

    .line 142
    goto :goto_1

    .restart local v2       #isReply:Z
    :cond_6
    move v1, v9

    .line 143
    goto :goto_2

    .line 146
    .restart local v1       #isForward:Z
    :cond_7
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    move-object v0, v7

    goto :goto_3

    .line 156
    :cond_8
    iget-object v5, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    .line 158
    .local v5, quotedText:Ljava/lang/String;
    if-nez v5, :cond_9

    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    if-eqz v7, :cond_9

    .line 159
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 161
    :cond_9
    if-eqz v5, :cond_a

    .line 163
    sget-object v7, Lcom/android/emailcommon/internet/Rfc822Output;->PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 164
    .local v3, matcher:Ljava/util/regex/Matcher;
    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 166
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    :cond_a
    if-eqz v2, :cond_b

    .line 167
    if-eqz v5, :cond_4

    .line 168
    sget-object v7, Lcom/android/emailcommon/internet/Rfc822Output;->PATTERN_START_OF_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 169
    .restart local v3       #matcher:Ljava/util/regex/Matcher;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 170
    goto :goto_4

    .line 171
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    :cond_b
    if-eqz v1, :cond_4

    .line 172
    if-eqz v5, :cond_4

    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4
.end method

.method static getHtmlAlternate(Lcom/android/emailcommon/provider/EmailContent$Body;Z)Ljava/lang/String;
    .locals 4
    .parameter "body"
    .parameter "useSmartReply"

    .prologue
    .line 108
    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 109
    const/4 v3, 0x0

    .line 121
    :goto_0
    return-object v3

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    .local v0, altMessage:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/internet/Rfc822Output;->htmlEncodeForAlternate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 114
    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, htmlIntro:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/emailcommon/internet/Rfc822Output;->htmlEncodeForAlternate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    .end local v2           #htmlIntro:Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_2

    .line 118
    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/internet/Rfc822Output;->getHtmlBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, htmlBody:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    .end local v1           #htmlBody:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method static getHtmlBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "html"

    .prologue
    .line 80
    const-string v2, "(?:<\\s*body[^>]*>)(.*)(?:<\\s*/\\s*body\\s*>)"

    const/16 v3, 0x22

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 82
    .local v0, bodyPattern:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 83
    .local v1, match:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    :goto_0
    return-object v2

    :cond_0
    move-object v2, p0

    goto :goto_0
.end method

.method private static htmlEncodeForAlternate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    .line 99
    invoke-static {p0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\r?\\n"

    const-string v2, "<br>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&apos;"

    const-string v2, "&#39;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "writer"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 396
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 397
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 398
    invoke-static {p2}, Lcom/android/emailcommon/mail/Address;->packedToHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 399
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 401
    :cond_0
    return-void
.end method

.method private static writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 1
    .parameter "writer"
    .parameter "boundary"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 413
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 414
    if-eqz p2, :cond_0

    .line 415
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 417
    :cond_0
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 418
    return-void
.end method

.method private static writeEncodedHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "writer"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 379
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 380
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 381
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Lcom/android/emailcommon/internet/MimeUtility;->foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 382
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 384
    :cond_0
    return-void
.end method

.method private static writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "writer"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 362
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 363
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 364
    invoke-virtual {p0, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 365
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 367
    :cond_0
    return-void
.end method

.method private static writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 10
    .parameter "context"
    .parameter "writer"
    .parameter "out"
    .parameter "attachment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xd

    .line 301
    iget-object v6, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    sget-object v7, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {v6, v7, v8}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeIfNecessary(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, encodedFileName:Ljava/lang/String;
    const-string v6, "Content-Type"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";\n name=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v6, "Content-Transfer-Encoding"

    const-string v7, "base64"

    invoke-static {p1, v6, v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget v6, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    .line 309
    const-string v6, "Content-Disposition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "attachment;\n filename=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_0
    iget-object v6, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 315
    const-string v6, "Content-ID"

    iget-object v7, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-static {p1, v6, v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_1
    const-string v6, "\r\n"

    invoke-virtual {p1, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 320
    const/4 v3, 0x0

    .line 323
    .local v3, inStream:Ljava/io/InputStream;
    :try_start_0
    iget-object v6, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    if-eqz v6, :cond_2

    .line 324
    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v6, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-direct {v4, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local v3           #inStream:Ljava/io/InputStream;
    .local v4, inStream:Ljava/io/InputStream;
    move-object v3, v4

    .line 331
    .end local v4           #inStream:Ljava/io/InputStream;
    .restart local v3       #inStream:Ljava/io/InputStream;
    :goto_0
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 332
    new-instance v0, Landroid/util/Base64OutputStream;

    const/16 v6, 0x14

    invoke-direct {v0, p2, v6}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 335
    .local v0, base64Out:Landroid/util/Base64OutputStream;
    invoke-static {v3, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 336
    invoke-virtual {v0}, Landroid/util/Base64OutputStream;->close()V

    .line 341
    const/16 v6, 0xd

    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write(I)V

    .line 342
    const/16 v6, 0xa

    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write(I)V

    .line 343
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 351
    .end local v0           #base64Out:Landroid/util/Base64OutputStream;
    :goto_1
    return-void

    .line 327
    :cond_2
    iget-object v6, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 328
    .local v2, fileUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 348
    .end local v2           #fileUri:Landroid/net/Uri;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 349
    .local v5, ioe:Ljava/io/IOException;
    new-instance v6, Lcom/android/emailcommon/mail/MessagingException;

    const-string v7, "Invalid attachment."

    invoke-direct {v6, v7, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 345
    .end local v5           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private static writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;[Ljava/lang/String;)V
    .locals 12
    .parameter "writer"
    .parameter "out"
    .parameter "bodyText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 435
    aget-object v4, p2, v9

    .line 436
    .local v4, text:Ljava/lang/String;
    aget-object v0, p2, v10

    .line 438
    .local v0, html:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 439
    const-string v6, "\r\n"

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    const/4 v3, 0x0

    .line 442
    .local v3, multipartBoundary:Ljava/lang/String;
    if-eqz v0, :cond_3

    move v2, v10

    .line 445
    .local v2, multipart:Z
    :goto_1
    if-eqz v2, :cond_2

    .line 447
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--_com.android.email_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 449
    const-string v6, "Content-Type"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "multipart/alternative; boundary=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v6, "\r\n"

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 453
    invoke-static {p0, v3, v9}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 457
    :cond_2
    const-string v6, "Content-Type"

    const-string v7, "text/plain; charset=utf-8"

    invoke-static {p0, v6, v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v6, "Content-Transfer-Encoding"

    const-string v7, "base64"

    invoke-static {p0, v6, v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v6, "\r\n"

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 460
    const-string v6, "UTF-8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 461
    .local v5, textBytes:[B
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 462
    invoke-static {v5, v11}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    .line 464
    if-eqz v2, :cond_0

    .line 466
    invoke-static {p0, v3, v9}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 468
    const-string v6, "Content-Type"

    const-string v7, "text/html; charset=utf-8"

    invoke-static {p0, v6, v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v6, "Content-Transfer-Encoding"

    const-string v7, "base64"

    invoke-static {p0, v6, v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v6, "\r\n"

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 471
    const-string v6, "UTF-8"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 472
    .local v1, htmlBytes:[B
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 473
    invoke-static {v1, v11}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    .line 476
    invoke-static {p0, v3, v10}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .end local v1           #htmlBytes:[B
    .end local v2           #multipart:Z
    .end local v5           #textBytes:[B
    :cond_3
    move v2, v9

    .line 442
    goto/16 :goto_1
.end method

.method public static writeTo(Landroid/content/Context;JLjava/io/OutputStream;ZZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 198
    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 203
    :cond_0
    new-instance v6, Ljava/io/BufferedOutputStream;

    const/16 v1, 0x400

    invoke-direct {v6, p3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 204
    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 209
    sget-object v1, Lcom/android/emailcommon/internet/Rfc822Output;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 210
    const-string v2, "Date"

    invoke-static {v7, v2, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "Subject"

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-static {v7, v1, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeEncodedHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v1, "Message-ID"

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-static {v7, v1, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v1, "From"

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v7, v1, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v1, "To"

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v7, v1, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v1, "Cc"

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v7, v1, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    if-eqz p5, :cond_1

    .line 222
    const-string p5, "Bcc"

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v7, p5, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_1
    const-string p5, "Reply-To"

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v7, p5, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string p5, "MIME-Version"

    const-string v1, "1.0"

    invoke-static {v7, p5, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object p5

    .line 229
    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    invoke-static {p5, v0, p4}, Lcom/android/emailcommon/internet/Rfc822Output;->buildBodyText(Lcom/android/emailcommon/provider/EmailContent$Body;IZ)[Ljava/lang/String;

    move-result-object p4

    .line 231
    sget-object p5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {p5, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "(flags&256)=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 236
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    .line 237
    if-lez p1, :cond_2

    const/4 p5, 0x1

    .line 239
    :goto_1
    const-string v0, "mixed"

    .line 242
    if-nez p5, :cond_3

    .line 243
    invoke-static {v7, v6, p4}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :goto_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 286
    invoke-virtual {v7}, Ljava/io/Writer;->flush()V

    .line 287
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    goto/16 :goto_0

    .line 237
    :cond_2
    const/4 p5, 0x0

    goto :goto_1

    .line 246
    :cond_3
    :try_start_1
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--_com.android.email_"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {p5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 249
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 250
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 253
    const/16 p1, 0xa

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 254
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_5

    .line 255
    const-string p1, "alternative"

    .line 259
    :goto_3
    const-string v0, "Content-Type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "; boundary=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, v0, p1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string p1, "\r\n"

    invoke-virtual {v7, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 265
    const/4 p1, 0x0

    aget-object p1, p4, p1

    if-eqz p1, :cond_4

    .line 266
    const/4 p1, 0x0

    invoke-static {v7, p5, p1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 267
    invoke-static {v7, v6, p4}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 272
    :cond_4
    const/4 p1, 0x0

    invoke-static {v7, p5, p1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 273
    const-class p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-static {p2, p1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object p1

    check-cast p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 275
    invoke-static {p0, v7, v6, p1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 276
    const-string p1, "\r\n"

    invoke-virtual {v7, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 277
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_4

    .line 280
    const/4 p0, 0x1

    invoke-static {v7, p5, p0}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 283
    :catchall_0
    move-exception p0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_5
    move-object p1, v0

    goto :goto_3
.end method
