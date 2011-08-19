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

.field private mExtendedHeader:Lcom/android/emailcommon/internet/MimeHeader;

.field private mFrom:[Lcom/android/emailcommon/mail/Address;

.field private mHeader:Lcom/android/emailcommon/internet/MimeHeader;

.field private mInhibitLocalMessageId:Z

.field private mReplyTo:[Lcom/android/emailcommon/mail/Address;

.field private mSentDate:Ljava/util/Date;

.field protected mSize:I

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

.method private generateMessageId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 97
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v2, sb:Ljava/lang/StringBuffer;
    const-string v4, "<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v4, 0x18

    if-ge v1, v4, :cond_0

    .line 101
    sget-object v4, Lcom/android/emailcommon/internet/MimeMessage;->sRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    and-int/lit8 v3, v4, 0x1f

    .line 102
    .local v3, value:I
    const-string v4, "0123456789abcdefghijklmnopqrstuv"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 103
    .local v0, c:C
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v0           #c:C
    .end local v3           #value:I
    :cond_0
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    const-string v4, "@email.android.com>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
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

.method public getContentId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 215
    const-string v1, "Content-ID"

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, contentId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 217
    const/4 v1, 0x0

    .line 220
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/emailcommon/internet/MimeMessage;->REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "$1"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
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

.method public getExtendedHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/android/emailcommon/internet/MimeHeader;

    if-nez v0, :cond_0

    .line 460
    const/4 v0, 0x0

    .line 462
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/android/emailcommon/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/internet/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtendedHeaders()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/android/emailcommon/internet/MimeHeader;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/android/emailcommon/internet/MimeHeader;

    invoke-virtual {v0}, Lcom/android/emailcommon/internet/MimeHeader;->writeToString()Ljava/lang/String;

    move-result-object v0

    .line 496
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

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

.method public getFrom()[Lcom/android/emailcommon/mail/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mFrom:[Lcom/android/emailcommon/mail/Address;

    if-nez v1, :cond_2

    .line 309
    const-string v1, "From"

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, list:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 311
    :cond_0
    const-string v1, "Sender"

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    :cond_1
    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->parseIncludingInformal(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mFrom:[Lcom/android/emailcommon/mail/Address;

    .line 315
    .end local v0           #list:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mFrom:[Lcom/android/emailcommon/mail/Address;

    return-object v1
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

.method public getMessageId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 369
    const-string v1, "Message-ID"

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, messageId:Ljava/lang/String;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mInhibitLocalMessageId:Z

    if-nez v1, :cond_0

    .line 371
    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;->generateMessageId()Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-virtual {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage;->setMessageId(Ljava/lang/String;)V

    .line 374
    :cond_0
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

.method public getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 238
    sget-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->TO:Lcom/android/emailcommon/mail/Message$RecipientType;

    if-ne p1, v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mTo:[Lcom/android/emailcommon/mail/Address;

    if-nez v0, :cond_0

    .line 240
    const-string v0, "To"

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->parseIncludingInformal(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mTo:[Lcom/android/emailcommon/mail/Address;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mTo:[Lcom/android/emailcommon/mail/Address;

    .line 252
    :goto_0
    return-object v0

    .line 243
    :cond_1
    sget-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->CC:Lcom/android/emailcommon/mail/Message$RecipientType;

    if-ne p1, v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mCc:[Lcom/android/emailcommon/mail/Address;

    if-nez v0, :cond_2

    .line 245
    const-string v0, "CC"

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->parseIncludingInformal(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mCc:[Lcom/android/emailcommon/mail/Address;

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mCc:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0

    .line 248
    :cond_3
    sget-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

    if-ne p1, v0, :cond_5

    .line 249
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBcc:[Lcom/android/emailcommon/mail/Address;

    if-nez v0, :cond_4

    .line 250
    const-string v0, "BCC"

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->parseIncludingInformal(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBcc:[Lcom/android/emailcommon/mail/Address;

    .line 252
    :cond_4
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBcc:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0

    .line 254
    :cond_5
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Unrecognized recipient type."

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReplyTo()[Lcom/android/emailcommon/mail/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mReplyTo:[Lcom/android/emailcommon/mail/Address;

    if-nez v0, :cond_0

    .line 334
    const-string v0, "Reply-to"

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->parseIncludingInformal(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mReplyTo:[Lcom/android/emailcommon/mail/Address;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mReplyTo:[Lcom/android/emailcommon/mail/Address;

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

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 229
    iget v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mSize:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 297
    const-string v0, "Subject"

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

.method protected parseWithoutConvertInputStream(Ljava/io/InputStream;)V
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

    .line 144
    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/emailcommon/internet/MimeHeader;->clear()V

    .line 145
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mInhibitLocalMessageId:Z

    .line 146
    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mFrom:[Lcom/android/emailcommon/mail/Address;

    .line 147
    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mTo:[Lcom/android/emailcommon/mail/Address;

    .line 148
    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mCc:[Lcom/android/emailcommon/mail/Address;

    .line 149
    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBcc:[Lcom/android/emailcommon/mail/Address;

    .line 150
    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mReplyTo:[Lcom/android/emailcommon/mail/Address;

    .line 151
    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    .line 152
    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBody:Lcom/android/emailcommon/mail/Body;

    .line 154
    new-instance v0, Lorg/apache/james/mime4j/MimeStreamParser;

    invoke-direct {v0}, Lorg/apache/james/mime4j/MimeStreamParser;-><init>()V

    .line 155
    .local v0, parser:Lorg/apache/james/mime4j/MimeStreamParser;
    new-instance v1, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;-><init>(Lcom/android/emailcommon/internet/MimeMessage;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/ContentHandler;)V

    .line 156
    new-instance v1, Lorg/apache/james/mime4j/EOLConvertingInputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    .line 157
    return-void
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/internet/MimeHeader;->removeHeader(Ljava/lang/String;)V

    .line 425
    const-string v0, "Message-ID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mInhibitLocalMessageId:Z

    .line 428
    :cond_0
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

.method public setExtendedHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 439
    if-nez p2, :cond_1

    .line 440
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/android/emailcommon/internet/MimeHeader;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/android/emailcommon/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/internet/MimeHeader;->removeHeader(Ljava/lang/String;)V

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/android/emailcommon/internet/MimeHeader;

    if-nez v0, :cond_2

    .line 446
    new-instance v0, Lcom/android/emailcommon/internet/MimeHeader;

    invoke-direct {v0}, Lcom/android/emailcommon/internet/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/android/emailcommon/internet/MimeHeader;

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/android/emailcommon/internet/MimeHeader;

    sget-object v1, Lcom/android/emailcommon/internet/MimeMessage;->END_OF_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/emailcommon/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExtendedHeaders(Ljava/lang/String;)V
    .locals 9
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 473
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 474
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/android/emailcommon/internet/MimeHeader;

    .line 485
    :cond_0
    return-void

    .line 476
    :cond_1
    new-instance v5, Lcom/android/emailcommon/internet/MimeHeader;

    invoke-direct {v5}, Lcom/android/emailcommon/internet/MimeHeader;-><init>()V

    iput-object v5, p0, Lcom/android/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/android/emailcommon/internet/MimeHeader;

    .line 477
    sget-object v5, Lcom/android/emailcommon/internet/MimeMessage;->END_OF_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 478
    .local v1, header:Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v1, v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 479
    .local v4, tokens:[Ljava/lang/String;
    array-length v5, v4

    if-eq v5, v8, :cond_2

    .line 480
    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal extended headers: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 482
    :cond_2
    iget-object v5, p0, Lcom/android/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/android/emailcommon/internet/MimeHeader;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/emailcommon/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setFrom(Lcom/android/emailcommon/mail/Address;)V
    .locals 4
    .parameter "from"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 320
    const/4 v0, 0x6

    .line 321
    .local v0, FROM_LENGTH:I
    if-eqz p1, :cond_0

    .line 322
    const-string v1, "From"

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/android/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/emailcommon/mail/Address;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mFrom:[Lcom/android/emailcommon/mail/Address;

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mFrom:[Lcom/android/emailcommon/mail/Address;

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

.method public setMessageId(Ljava/lang/String;)V
    .locals 1
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 358
    const-string v0, "Message-ID"

    invoke-virtual {p0, v0, p1}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V
    .locals 6
    .parameter "type"
    .parameter "addresses"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 260
    const/4 v2, 0x4

    .line 261
    .local v2, TO_LENGTH:I
    const/4 v1, 0x4

    .line 262
    .local v1, CC_LENGTH:I
    const/4 v0, 0x5

    .line 263
    .local v0, BCC_LENGTH:I
    sget-object v3, Lcom/android/emailcommon/mail/Message$RecipientType;->TO:Lcom/android/emailcommon/mail/Message$RecipientType;

    if-ne p1, v3, :cond_2

    .line 264
    if-eqz p2, :cond_0

    array-length v3, p2

    if-nez v3, :cond_1

    .line 265
    :cond_0
    const-string v3, "To"

    invoke-virtual {p0, v3}, Lcom/android/emailcommon/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 266
    iput-object v4, p0, Lcom/android/emailcommon/internet/MimeMessage;->mTo:[Lcom/android/emailcommon/mail/Address;

    .line 290
    :goto_0
    return-void

    .line 268
    :cond_1
    const-string v3, "To"

    invoke-static {p2}, Lcom/android/emailcommon/mail/Address;->toHeader([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/android/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iput-object p2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mTo:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0

    .line 271
    :cond_2
    sget-object v3, Lcom/android/emailcommon/mail/Message$RecipientType;->CC:Lcom/android/emailcommon/mail/Message$RecipientType;

    if-ne p1, v3, :cond_5

    .line 272
    if-eqz p2, :cond_3

    array-length v3, p2

    if-nez v3, :cond_4

    .line 273
    :cond_3
    const-string v3, "CC"

    invoke-virtual {p0, v3}, Lcom/android/emailcommon/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 274
    iput-object v4, p0, Lcom/android/emailcommon/internet/MimeMessage;->mCc:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0

    .line 276
    :cond_4
    const-string v3, "CC"

    invoke-static {p2}, Lcom/android/emailcommon/mail/Address;->toHeader([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/android/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iput-object p2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mCc:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0

    .line 279
    :cond_5
    sget-object v3, Lcom/android/emailcommon/mail/Message$RecipientType;->BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

    if-ne p1, v3, :cond_8

    .line 280
    if-eqz p2, :cond_6

    array-length v3, p2

    if-nez v3, :cond_7

    .line 281
    :cond_6
    const-string v3, "BCC"

    invoke-virtual {p0, v3}, Lcom/android/emailcommon/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 282
    iput-object v4, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBcc:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0

    .line 284
    :cond_7
    const-string v3, "BCC"

    invoke-static {p2}, Lcom/android/emailcommon/mail/Address;->toHeader([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/android/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iput-object p2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBcc:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0

    .line 288
    :cond_8
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const-string v4, "Unrecognized recipient type."

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setReplyTo([Lcom/android/emailcommon/mail/Address;)V
    .locals 4
    .parameter "replyTo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 341
    const/16 v0, 0xa

    .line 342
    .local v0, REPLY_TO_LENGTH:I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 343
    :cond_0
    const-string v1, "Reply-to"

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 344
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mReplyTo:[Lcom/android/emailcommon/mail/Address;

    .line 349
    :goto_0
    return-void

    .line 346
    :cond_1
    const-string v1, "Reply-to"

    invoke-static {p1}, Lcom/android/emailcommon/mail/Address;->toHeader([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/android/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iput-object p1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mReplyTo:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0
.end method

.method public setSentDate(Ljava/util/Date;)V
    .locals 2
    .parameter "sentDate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 191
    const-string v0, "Date"

    sget-object v1, Lcom/android/emailcommon/internet/MimeMessage;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iput-object p1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    .line 193
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 3
    .parameter "subject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 302
    const/16 v0, 0x9

    .line 303
    .local v0, HEADER_NAME_LENGTH:I
    const-string v1, "Subject"

    const/16 v2, 0x9

    invoke-static {p1, v2}, Lcom/android/emailcommon/internet/MimeUtility;->foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 505
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 507
    .local v0, writer:Ljava/io/BufferedWriter;
    invoke-virtual {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    .line 508
    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/emailcommon/internet/MimeHeader;->writeTo(Ljava/io/OutputStream;)V

    .line 511
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 513
    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBody:Lcom/android/emailcommon/mail/Body;

    if-eqz v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBody:Lcom/android/emailcommon/mail/Body;

    invoke-interface {v1, p1}, Lcom/android/emailcommon/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 516
    :cond_0
    return-void
.end method
