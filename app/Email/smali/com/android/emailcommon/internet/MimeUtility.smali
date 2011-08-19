.class public Lcom/android/emailcommon/internet/MimeUtility;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# static fields
.field private static final PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "\r|\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/MimeUtility;->PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "part"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/mail/Part;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 408
    .local p1, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .local p2, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, disposition:Ljava/lang/String;
    const/4 v2, 0x0

    .line 410
    .local v2, dispositionType:Ljava/lang/String;
    const/4 v1, 0x0

    .line 411
    .local v1, dispositionFilename:Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 412
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local v1           #dispositionFilename:Ljava/lang/String;
    move-result-object v1

    .line 413
    .end local v2           #dispositionType:Ljava/lang/String;
    .local v1, dispositionType:Ljava/lang/String;
    const-string v2, "filename"

    invoke-static {v0, v2}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, dispositionFilename:Ljava/lang/String;
    move-object v2, v1

    .line 418
    .end local v1           #dispositionType:Ljava/lang/String;
    .restart local v2       #dispositionType:Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_c

    .line 419
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, contentType:Ljava/lang/String;
    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, dispositionFilename:Ljava/lang/String;
    move-object v1, v0

    .line 422
    .end local v0           #dispositionFilename:Ljava/lang/String;
    .local v1, dispositionFilename:Ljava/lang/String;
    :goto_1
    const-string v0, "attachment"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 424
    .local v0, attachmentDisposition:Z
    if-eqz v2, :cond_0

    const-string v3, "inline"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .end local v2           #dispositionType:Ljava/lang/String;
    if-eqz v2, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 428
    .local v2, inlineDisposition:Z
    :goto_2
    if-nez v0, :cond_1

    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    :cond_1
    const/4 v0, 0x1

    .line 432
    .local v0, attachment:Z
    :goto_3
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    .line 435
    .local v1, inline:Z
    :goto_4
    if-nez v0, :cond_2

    if-eqz v1, :cond_6

    :cond_2
    const/4 v0, 0x1

    .line 437
    .local v0, attachmentOrInline:Z
    :goto_5
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v1

    .end local v1           #inline:Z
    instance-of v1, v1, Lcom/android/emailcommon/mail/Multipart;

    if-eqz v1, :cond_7

    .line 441
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v0

    .end local v0           #attachmentOrInline:Z
    check-cast v0, Lcom/android/emailcommon/mail/Multipart;

    .line 442
    .local v0, mp:Lcom/android/emailcommon/mail/Multipart;
    const/4 p0, 0x0

    .local p0, i:I
    :goto_6
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Multipart;->getCount()I

    move-result v1

    if-ge p0, v1, :cond_8

    .line 443
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/mail/Multipart;->getBodyPart(I)Lcom/android/emailcommon/mail/BodyPart;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 442
    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    .line 424
    .end local v2           #inlineDisposition:Z
    .local v0, attachmentDisposition:Z
    .local v1, dispositionFilename:Ljava/lang/String;
    .local p0, part:Lcom/android/emailcommon/mail/Part;
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 428
    .restart local v2       #inlineDisposition:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 432
    .local v0, attachment:Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    .line 435
    .local v1, inline:Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 445
    .end local v1           #inline:Z
    .local v0, attachmentOrInline:Z
    :cond_7
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v1

    instance-of v1, v1, Lcom/android/emailcommon/mail/Message;

    if-eqz v1, :cond_9

    .line 448
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object p0

    .end local p0           #part:Lcom/android/emailcommon/mail/Part;
    check-cast p0, Lcom/android/emailcommon/mail/Message;

    .line 449
    .local p0, message:Lcom/android/emailcommon/mail/Message;
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 460
    .end local v0           #attachmentOrInline:Z
    .end local v2           #inlineDisposition:Z
    .end local p0           #message:Lcom/android/emailcommon/mail/Message;
    :cond_8
    :goto_7
    return-void

    .line 450
    .restart local v0       #attachmentOrInline:Z
    .restart local v2       #inlineDisposition:Z
    .local p0, part:Lcom/android/emailcommon/mail/Part;
    :cond_9
    if-nez v0, :cond_a

    const-string v1, "text/html"

    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .end local v2           #inlineDisposition:Z
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 452
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 453
    :cond_a
    if-nez v0, :cond_b

    const-string v1, "text/plain"

    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 455
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 456
    :cond_b
    if-eqz v0, :cond_8

    .line 458
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .local v0, dispositionFilename:Ljava/lang/String;
    .local v2, dispositionType:Ljava/lang/String;
    :cond_c
    move-object v1, v0

    .end local v0           #dispositionFilename:Ljava/lang/String;
    .local v1, dispositionFilename:Ljava/lang/String;
    goto/16 :goto_1

    .local v0, disposition:Ljava/lang/String;
    :cond_d
    move-object v0, v1

    .end local v1           #dispositionFilename:Ljava/lang/String;
    .local v0, dispositionFilename:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 68
    if-nez p0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/android/emailcommon/mail/Body;
    .locals 3
    .parameter "in"
    .parameter "contentTransferEncoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-static {p0, p1}, Lcom/android/emailcommon/internet/MimeUtility;->getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 381
    new-instance v1, Lcom/android/emailcommon/internet/BinaryTempFileBody;

    invoke-direct {v1}, Lcom/android/emailcommon/internet/BinaryTempFileBody;-><init>()V

    .line 382
    .local v1, tempBody:Lcom/android/emailcommon/internet/BinaryTempFileBody;
    invoke-virtual {v1}, Lcom/android/emailcommon/internet/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 384
    .local v0, out:Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/util/Base64DataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 392
    :goto_0
    return-object v1

    .line 385
    :catch_0
    move-exception v2

    .line 390
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v2
.end method

.method public static findFirstPartByMimeType(Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)Lcom/android/emailcommon/mail/Part;
    .locals 6
    .parameter "part"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v5

    instance-of v5, v5, Lcom/android/emailcommon/mail/Multipart;

    if-eqz v5, :cond_1

    .line 220
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/mail/Multipart;

    .line 221
    .local v3, multipart:Lcom/android/emailcommon/mail/Multipart;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Multipart;->getCount()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 222
    invoke-virtual {v3, v2}, Lcom/android/emailcommon/mail/Multipart;->getBodyPart(I)Lcom/android/emailcommon/mail/BodyPart;

    move-result-object v0

    .line 223
    .local v0, bodyPart:Lcom/android/emailcommon/mail/BodyPart;
    invoke-static {v0, p1}, Lcom/android/emailcommon/internet/MimeUtility;->findFirstPartByMimeType(Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)Lcom/android/emailcommon/mail/Part;

    move-result-object v4

    .line 224
    .local v4, ret:Lcom/android/emailcommon/mail/Part;
    if-eqz v4, :cond_0

    move-object v5, v4

    .line 232
    .end local v0           #bodyPart:Lcom/android/emailcommon/mail/BodyPart;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #multipart:Lcom/android/emailcommon/mail/Multipart;
    .end local v4           #ret:Lcom/android/emailcommon/mail/Part;
    :goto_1
    return-object v5

    .line 221
    .restart local v0       #bodyPart:Lcom/android/emailcommon/mail/BodyPart;
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #multipart:Lcom/android/emailcommon/mail/Multipart;
    .restart local v4       #ret:Lcom/android/emailcommon/mail/Part;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    .end local v0           #bodyPart:Lcom/android/emailcommon/mail/BodyPart;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #multipart:Lcom/android/emailcommon/mail/Multipart;
    .end local v4           #ret:Lcom/android/emailcommon/mail/Part;
    :cond_1
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, p0

    .line 230
    goto :goto_1

    .line 232
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static findPartByContentId(Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)Lcom/android/emailcommon/mail/Part;
    .locals 7
    .parameter "part"
    .parameter "contentId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 236
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v6

    instance-of v6, v6, Lcom/android/emailcommon/mail/Multipart;

    if-eqz v6, :cond_1

    .line 237
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/mail/Multipart;

    .line 238
    .local v4, multipart:Lcom/android/emailcommon/mail/Multipart;
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Multipart;->getCount()I

    move-result v2

    .local v2, count:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 239
    invoke-virtual {v4, v3}, Lcom/android/emailcommon/mail/Multipart;->getBodyPart(I)Lcom/android/emailcommon/mail/BodyPart;

    move-result-object v0

    .line 240
    .local v0, bodyPart:Lcom/android/emailcommon/mail/BodyPart;
    invoke-static {v0, p1}, Lcom/android/emailcommon/internet/MimeUtility;->findPartByContentId(Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)Lcom/android/emailcommon/mail/Part;

    move-result-object v5

    .line 241
    .local v5, ret:Lcom/android/emailcommon/mail/Part;
    if-eqz v5, :cond_0

    move-object v6, v5

    .line 250
    .end local v0           #bodyPart:Lcom/android/emailcommon/mail/BodyPart;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #multipart:Lcom/android/emailcommon/mail/Multipart;
    .end local v5           #ret:Lcom/android/emailcommon/mail/Part;
    :goto_1
    return-object v6

    .line 238
    .restart local v0       #bodyPart:Lcom/android/emailcommon/mail/BodyPart;
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v4       #multipart:Lcom/android/emailcommon/mail/Multipart;
    .restart local v5       #ret:Lcom/android/emailcommon/mail/Part;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 246
    .end local v0           #bodyPart:Lcom/android/emailcommon/mail/BodyPart;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #multipart:Lcom/android/emailcommon/mail/Multipart;
    .end local v5           #ret:Lcom/android/emailcommon/mail/Part;
    :cond_1
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, cid:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, p0

    .line 248
    goto :goto_1

    .line 250
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static fold(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .parameter "s"
    .parameter "usedCharacters"

    .prologue
    const/16 v8, 0x4c

    const/4 v7, 0x0

    .line 129
    const/16 v2, 0x4c

    .line 131
    .local v2, maxCharacters:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 132
    .local v1, length:I
    add-int v6, p1, v1

    if-gt v6, v8, :cond_0

    move-object v6, p0

    .line 142
    :goto_0
    return-object v6

    .line 135
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v4, sb:Ljava/lang/StringBuilder;
    neg-int v0, p1

    .line 138
    .local v0, lastLineBreak:I
    invoke-static {p0, v7}, Lcom/android/emailcommon/internet/MimeUtility;->indexOfWsp(Ljava/lang/String;I)I

    move-result v5

    .line 140
    .local v5, wspIdx:I
    :goto_1
    if-ne v5, v1, :cond_1

    .line 141
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 145
    :cond_1
    add-int/lit8 v6, v5, 0x1

    invoke-static {p0, v6}, Lcom/android/emailcommon/internet/MimeUtility;->indexOfWsp(Ljava/lang/String;I)I

    move-result v3

    .line 147
    .local v3, nextWspIdx:I
    sub-int v6, v3, v0

    if-le v6, v8, :cond_2

    .line 148
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    move v0, v5

    .line 153
    :cond_2
    move v5, v3

    .line 154
    goto :goto_1
.end method

.method public static foldAndEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "s"

    .prologue
    .line 82
    return-object p0
.end method

.method public static foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "s"
    .parameter "usedCharacters"

    .prologue
    .line 103
    sget-object v1, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {p0, v1, p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeIfNecessary(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, encoded:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "header"
    .parameter "name"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 192
    if-nez p0, :cond_0

    move-object v8, v11

    .line 214
    :goto_0
    return-object v8

    .line 195
    :cond_0
    invoke-static {p0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 196
    .local v7, parts:[Ljava/lang/String;
    if-nez p1, :cond_1

    .line 197
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, lowerCaseName:Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v6, v0, v1

    .line 201
    .local v6, part:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 202
    const-string v8, "="

    invoke-virtual {v6, v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, parameterParts:[Ljava/lang/String;
    array-length v8, v5

    if-ge v8, v12, :cond_2

    move-object v8, v11

    .line 204
    goto :goto_0

    .line 206
    :cond_2
    aget-object v8, v5, v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, parameter:Ljava/lang/String;
    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 208
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v10

    invoke-virtual {v4, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_3
    move-object v8, v4

    .line 210
    goto :goto_0

    .line 200
    .end local v4           #parameter:Ljava/lang/String;
    .end local v5           #parameterParts:[Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v6           #part:Ljava/lang/String;
    :cond_5
    move-object v8, v11

    .line 214
    goto :goto_0
.end method

.method public static getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "in"
    .parameter "contentTransferEncoding"

    .prologue
    .line 359
    if-eqz p1, :cond_0

    .line 360
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 362
    const-string v1, "quoted-printable"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    new-instance v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p0
    .local v0, in:Ljava/io/InputStream;
    move-object p0, v0

    .line 369
    .end local v0           #in:Ljava/io/InputStream;
    .restart local p0
    :cond_0
    :goto_0
    return-object p0

    .line 365
    :cond_1
    const-string v1, "base64"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    new-instance v0, Landroid/util/Base64InputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0
    .restart local v0       #in:Ljava/io/InputStream;
    move-object p0, v0

    .end local v0           #in:Ljava/io/InputStream;
    .restart local p0
    goto :goto_0
.end method

.method public static getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;
    .locals 10
    .parameter "part"

    .prologue
    .line 262
    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 263
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/emailcommon/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 264
    .local v2, in:Ljava/io/InputStream;
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, mimeType:Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v7, "text/*"

    invoke-static {v3, v7}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 270
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 271
    .local v5, out:Ljava/io/ByteArrayOutputStream;
    invoke-static {v2, v5}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 272
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 273
    const/4 v2, 0x0

    .line 278
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "charset"

    invoke-static {v7, v8}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, charset:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 283
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    :cond_0
    if-nez v0, :cond_1

    .line 289
    const-string v0, "ASCII"

    .line 294
    :cond_1
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 295
    .local v6, result:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, v6

    .line 315
    .end local v0           #charset:Ljava/lang/String;
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .end local v6           #result:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 301
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 306
    .local v4, oom:Ljava/lang/OutOfMemoryError;
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to getTextFromPart "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .end local v4           #oom:Ljava/lang/OutOfMemoryError;
    :cond_2
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 308
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 313
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to getTextFromPart "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static indexOfWsp(Ljava/lang/String;I)I
    .locals 4
    .parameter "s"
    .parameter "fromIndex"

    .prologue
    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 165
    .local v2, len:I
    move v1, p1

    .local v1, index:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 166
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 167
    .local v0, c:C
    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    :cond_0
    move v3, v1

    .line 170
    .end local v0           #c:C
    :goto_1
    return v3

    .line 165
    .restart local v0       #c:C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #c:C
    :cond_2
    move v3, v2

    .line 170
    goto :goto_1
.end method

.method public static mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "mimeType"
    .parameter "matchAgainst"

    .prologue
    .line 327
    const-string v1, "\\*"

    const-string v2, "\\.\\*"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 329
    .local v0, p:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "mimeType"
    .parameter "matchAgainst"

    .prologue
    .line 342
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 343
    .local v3, matchType:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 344
    const/4 v4, 0x1

    .line 347
    .end local v3           #matchType:Ljava/lang/String;
    :goto_1
    return v4

    .line 342
    .restart local v3       #matchType:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    .end local v3           #matchType:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    const/4 v1, 0x0

    .line 64
    :goto_0
    return-object v1

    .line 59
    :cond_0
    sget-object v1, Lcom/android/emailcommon/internet/MimeUtility;->PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 60
    .local v0, patternMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 62
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    move-object v1, p0

    .line 64
    goto :goto_0
.end method

.method public static unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 75
    invoke-static {p0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/internet/MimeUtility;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
