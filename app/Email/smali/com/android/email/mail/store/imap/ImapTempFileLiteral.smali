.class public Lcom/android/email/mail/store/imap/ImapTempFileLiteral;
.super Lcom/android/email/mail/store/imap/ImapString;
.source "ImapTempFileLiteral.java"


# instance fields
.field final mFile:Ljava/io/File;

.field private final mSize:I


# direct methods
.method constructor <init>(Lcom/android/email/FixedLengthInputStream;)V
    .locals 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapString;-><init>()V

    .line 47
    invoke-virtual {p1}, Lcom/android/email/FixedLengthInputStream;->getLength()I

    move-result v1

    iput v1, p0, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;->mSize:I

    .line 48
    const-string v1, "imap"

    const-string v2, ".tmp"

    invoke-static {}, Lcom/android/emailcommon/TempDirectory;->getTempDirectory()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;->mFile:Ljava/io/File;

    .line 54
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 55
    .local v0, out:Ljava/io/OutputStream;
    invoke-static {p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 56
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 57
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/email/mail/store/imap/ImapString;->destroy()V

    .line 109
    return-void

    .line 104
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 106
    .local v0, re:Ljava/lang/RuntimeException;
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove temp file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 71
    return-void

    .line 69
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAsStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;->checkNotDestroyed()V

    .line 77
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-object v1

    .line 78
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 80
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v1, "Email"

    const-string v2, "ImapTempFileLiteral: Temp file not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;->checkNotDestroyed()V

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;->getAsStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->fromAscii([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 94
    :goto_0
    return-object v1

    .line 92
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 93
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Email"

    const-string v2, "ImapTempFileLiteral: Error while reading temp file"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v1, ""

    goto :goto_0
.end method

.method public tempFileExistsForTest()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    const-string v0, "{%d byte literal(file)}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;->mSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
