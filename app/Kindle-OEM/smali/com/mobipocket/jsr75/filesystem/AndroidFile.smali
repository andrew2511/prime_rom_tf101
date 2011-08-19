.class public Lcom/mobipocket/jsr75/filesystem/AndroidFile;
.super Ljava/lang/Object;
.source "AndroidFile.java"

# interfaces
.implements Lcom/amazon/system/io/IFileConnection;


# instance fields
.field private isClosed:Z

.field private javaFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->isClosed:Z

    .line 33
    return-void
.end method

.method private throwExceptionIfClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->isClosed:Z

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->isClosed:Z

    .line 39
    return-void
.end method

.method public create()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->throwExceptionIfClosed()V

    .line 46
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 47
    return-void
.end method

.method public delete()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->throwExceptionIfClosed()V

    .line 54
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public exists()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->throwExceptionIfClosed()V

    .line 62
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public fileSize()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->throwExceptionIfClosed()V

    .line 70
    const-wide/16 v0, -0x1

    .line 72
    .local v0, size:J
    iget-object v2, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 77
    :cond_0
    return-wide v0
.end method

.method public lastModified()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->throwExceptionIfClosed()V

    .line 92
    const-wide/16 v0, 0x0

    .line 93
    .local v0, lastModified:J
    iget-object v2, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 98
    :cond_0
    return-wide v0
.end method

.method public list()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->throwExceptionIfClosed()V

    .line 107
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkdir()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->throwExceptionIfClosed()V

    .line 115
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 116
    return-void
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->throwExceptionIfClosed()V

    .line 123
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public openOutputStream(JZZ)Ljava/io/OutputStream;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->throwExceptionIfClosed()V

    .line 132
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-direct {v0, v1, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 134
    if-eqz p3, :cond_0

    .line 136
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 139
    :cond_0
    return-object v0
.end method

.method public rename(Ljava/lang/String;)Z
    .locals 6
    .parameter "newname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->throwExceptionIfClosed()V

    .line 147
    const-string v1, ""

    .line 148
    .local v1, fileName:Ljava/lang/String;
    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 149
    .local v2, index:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 154
    :cond_0
    iget-object v5, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, path:Ljava/lang/String;
    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 157
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, newPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, destination:Ljava/io/File;
    iget-object v5, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-virtual {v5, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    return v5
.end method

.method public setLastModifiedDateAsNow()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->throwExceptionIfClosed()V

    .line 170
    iget-object v0, p0, Lcom/mobipocket/jsr75/filesystem/AndroidFile;->javaFile:Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    return v0
.end method
