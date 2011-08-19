.class public Lcom/android/email/mail/store/imap/ImapMemoryLiteral;
.super Lcom/android/email/mail/store/imap/ImapString;
.source "ImapMemoryLiteral.java"


# instance fields
.field private mData:[B


# direct methods
.method constructor <init>(Lcom/android/email/FixedLengthInputStream;)V
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapString;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/android/email/FixedLengthInputStream;->getLength()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, pos:I
    :goto_0
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 41
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    iget-object v3, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v2, v0, v3}, Lcom/android/email/FixedLengthInputStream;->read([BII)I

    move-result v1

    .line 42
    .local v1, read:I
    if-gez v1, :cond_2

    .line 47
    .end local v1           #read:I
    :cond_0
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v2, v2

    if-eq v0, v2, :cond_1

    .line 48
    const-string v2, "Email"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_1
    return-void

    .line 45
    .restart local v1       #read:I
    :cond_2
    add-int/2addr v0, v1

    .line 46
    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    .line 55
    invoke-super {p0}, Lcom/android/email/mail/store/imap/ImapString;->destroy()V

    .line 56
    return-void
.end method

.method public getAsStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->fromAscii([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    const-string v0, "{%d byte literal(memory)}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;->mData:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
