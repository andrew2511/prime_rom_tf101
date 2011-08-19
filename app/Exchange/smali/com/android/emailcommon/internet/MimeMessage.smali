.class public Lcom/android/emailcommon/internet/MimeMessage;
.super Lcom/android/emailcommon/mail/Message;
.source "MimeMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final END_OF_LINE:Ljava/util/regex/Pattern;

.field private static final REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field private mBcc:[Lcom/android/emailcommon/mail/Address;

.field private mBody:Lcom/android/emailcommon/mail/Body;

.field private mCc:[Lcom/android/emailcommon/mail/Address;

.field private mFrom:[Lcom/android/emailcommon/mail/Address;

.field private mHeader:Lcom/android/emailcommon/internet/MimeHeader;

.field private mInhibitLocalMessageId:Z

.field private mReplyTo:[Lcom/android/emailcommon/mail/Address;

.field private mSentDate:Ljava/util/Date;

.field private mTo:[Lcom/android/emailcommon/mail/Address;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/emailcommon/internet/MimeMessage;->sRandom:Ljava/util/Random;

    .line 79
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/emailcommon/internet/MimeMessage;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 83
    const-string v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/MimeMessage;->REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

    .line 85
    const-string v0, "\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/MimeMessage;->END_OF_LINE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Message;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mInhibitLocalMessageId:Z

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mHeader:Lcom/android/emailcommon/internet/MimeHeader;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Message;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mInhibitLocalMessageId:Z

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 120
    return-void
.end method

.method private getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mHeader:Lcom/android/emailcommon/internet/MimeHeader;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/android/emailcommon/internet/MimeHeader;

    invoke-direct {v0}, Lcom/android/emailcommon/internet/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mHeader:Lcom/android/emailcommon/internet/MimeHeader;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mHeader:Lcom/android/emailcommon/internet/MimeHeader;

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public getBody()Lcom/android/emailcommon/mail/Body;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBody:Lcom/android/emailcommon/mail/Body;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 197
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, contentType:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 199
    const-string v1, "text/plain"

    .line 201
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 206
    const-string v1, "Content-Disposition"

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, contentDisposition:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 208
    const/4 v1, 0x0

    .line 210
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method protected getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/internet/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 519
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    if-nez v1, :cond_0

    .line 179
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Date"

    invoke-virtual {p0, v2}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/DateTimeField;

    .line 181
    .local v0, field:Lorg/apache/james/mime4j/field/DateTimeField;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/DateTimeField;->getDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v0           #field:Lorg/apache/james/mime4j/field/DateTimeField;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    return-object v1

    .line 182
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected parse(Ljava/io/InputStream;)V
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/emailcommon/internet/MimeHeader;->clear()V

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mInhibitLocalMessageId:Z

    .line 127
    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mFrom:[Lcom/android/emailcommon/mail/Address;

    .line 128
    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mTo:[Lcom/android/emailcommon/mail/Address;

    .line 129
    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mCc:[Lcom/android/emailcommon/mail/Address;

    .line 130
    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBcc:[Lcom/android/emailcommon/mail/Address;

    .line 131
    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mReplyTo:[Lcom/android/emailcommon/mail/Address;

    .line 132
    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    .line 133
    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBody:Lcom/android/emailcommon/mail/Body;

    .line 135
    new-instance v0, Lorg/apache/james/mime4j/MimeStreamParser;

    invoke-direct {v0}, Lorg/apache/james/mime4j/MimeStreamParser;-><init>()V

    .line 136
    .local v0, parser:Lorg/apache/james/mime4j/MimeStreamParser;
    new-instance v1, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;-><init>(Lcom/android/emailcommon/internet/MimeMessage;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/ContentHandler;)V

    .line 137
    new-instance v1, Lorg/apache/james/mime4j/EOLConvertingInputStream;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    .line 138
    return-void
.end method

.method public setBody(Lcom/android/emailcommon/mail/Body;)V
    .locals 7
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBody:Lcom/android/emailcommon/mail/Body;

    .line 390
    instance-of v2, p1, Lcom/android/emailcommon/mail/Multipart;

    if-eqz v2, :cond_1

    .line 391
    move-object v0, p1

    check-cast v0, Lcom/android/emailcommon/mail/Multipart;

    move-object v1, v0

    .line 392
    .local v1, multipart:Lcom/android/emailcommon/mail/Multipart;
    invoke-virtual {v1, p0}, Lcom/android/emailcommon/mail/Multipart;->setParent(Lcom/android/emailcommon/mail/Part;)V

    .line 393
    const-string v2, "Content-Type"

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v2, "MIME-Version"

    const-string v3, "1.0"

    invoke-virtual {p0, v2, v3}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .end local v1           #multipart:Lcom/android/emailcommon/mail/Multipart;
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    instance-of v2, p1, Lcom/android/emailcommon/internet/TextBody;

    if-eqz v2, :cond_0

    .line 397
    const-string v2, "Content-Type"

    const-string v3, "%s;\n charset=utf-8"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v2, "Content-Transfer-Encoding"

    const-string v3, "base64"

    invoke-virtual {p0, v2, v3}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void
.end method
