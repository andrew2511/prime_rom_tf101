.class public Lcom/android/emailcommon/internet/MimeBodyPart;
.super Lcom/android/emailcommon/mail/BodyPart;
.source "MimeBodyPart.java"


# static fields
.field private static final END_OF_LINE:Ljava/util/regex/Pattern;

.field private static final REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;


# instance fields
.field protected mBody:Lcom/android/emailcommon/mail/Body;

.field protected mHeader:Lcom/android/emailcommon/internet/MimeHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/MimeBodyPart;->REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/MimeBodyPart;->END_OF_LINE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>(Lcom/android/emailcommon/mail/Body;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/emailcommon/mail/Body;)V
    .locals 1
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>(Lcom/android/emailcommon/mail/Body;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/android/emailcommon/mail/Body;Ljava/lang/String;)V
    .locals 1
    .parameter "body"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/emailcommon/mail/BodyPart;-><init>()V

    .line 34
    new-instance v0, Lcom/android/emailcommon/internet/MimeHeader;

    invoke-direct {v0}, Lcom/android/emailcommon/internet/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeBodyPart;->mHeader:Lcom/android/emailcommon/internet/MimeHeader;

    .line 53
    if-eqz p2, :cond_0

    .line 54
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p2}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/internet/MimeBodyPart;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 57
    return-void
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
    .line 64
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeBodyPart;->mHeader:Lcom/android/emailcommon/internet/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
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
    .line 80
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeBodyPart;->mBody:Lcom/android/emailcommon/mail/Body;

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
    .line 103
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeBodyPart;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, contentType:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 105
    const-string v1, "text/plain"

    .line 107
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
    .line 112
    const-string v1, "Content-Disposition"

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeBodyPart;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, contentDisposition:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 114
    const/4 v1, 0x0

    .line 116
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
    .line 60
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeBodyPart;->mHeader:Lcom/android/emailcommon/internet/MimeHeader;

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
    .line 72
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeBodyPart;->mHeader:Lcom/android/emailcommon/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

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
    .line 131
    invoke-virtual {p0}, Lcom/android/emailcommon/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Lcom/android/emailcommon/mail/Body;)V
    .locals 9
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 84
    iput-object p1, p0, Lcom/android/emailcommon/internet/MimeBodyPart;->mBody:Lcom/android/emailcommon/mail/Body;

    .line 85
    instance-of v4, p1, Lcom/android/emailcommon/mail/Multipart;

    if-eqz v4, :cond_1

    .line 86
    move-object v0, p1

    check-cast v0, Lcom/android/emailcommon/mail/Multipart;

    move-object v2, v0

    .line 88
    .local v2, multipart:Lcom/android/emailcommon/mail/Multipart;
    invoke-virtual {v2, p0}, Lcom/android/emailcommon/mail/Multipart;->setParent(Lcom/android/emailcommon/mail/Part;)V

    .line 89
    const-string v4, "Content-Type"

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v2           #multipart:Lcom/android/emailcommon/mail/Multipart;
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    instance-of v4, p1, Lcom/android/emailcommon/internet/TextBody;

    if-eqz v4, :cond_0

    .line 92
    const-string v4, "%s;\n charset=utf-8"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/emailcommon/internet/MimeBodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, contentType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/emailcommon/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-static {v4, v5}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";\n name=\"%s\""

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    :cond_2
    const-string v4, "Content-Type"

    invoke-virtual {p0, v4, v1}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v4, "Content-Transfer-Encoding"

    const-string v5, "base64"

    invoke-virtual {p0, v4, v5}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 68
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeBodyPart;->mHeader:Lcom/android/emailcommon/internet/MimeHeader;

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
