.class public Lcom/amazon/system/io/internal/OutputStreamWritePDB;
.super Ljava/lang/Object;
.source "OutputStreamWritePDB.java"

# interfaces
.implements Lcom/mobipocket/common/filesystem/WritePDB;


# instance fields
.field private fileConnection:Lcom/amazon/system/io/IFileConnection;

.field private output:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lcom/amazon/system/io/IFileConnection;[B)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/system/io/internal/OutputStreamWritePDB;->fileConnection:Lcom/amazon/system/io/IFileConnection;

    .line 42
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid file connection"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/system/io/IFileConnection;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    invoke-interface {p1}, Lcom/amazon/system/io/IFileConnection;->create()V

    .line 56
    :goto_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/amazon/system/io/IFileConnection;->openOutputStream(JZZ)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/system/io/internal/OutputStreamWritePDB;->output:Ljava/io/OutputStream;

    .line 57
    iget-object v0, p0, Lcom/amazon/system/io/internal/OutputStreamWritePDB;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v5

    .line 66
    :goto_1
    if-eqz v0, :cond_2

    .line 67
    new-instance v0, Ljava/io/IOException;

    const-string v1, "could not open the file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lcom/amazon/system/io/IFileConnection;->delete()Z

    .line 54
    invoke-interface {p1}, Lcom/amazon/system/io/IFileConnection;->create()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    move v0, v4

    .line 64
    goto :goto_1

    .line 63
    :catch_1
    move-exception v0

    move v0, v4

    goto :goto_1

    .line 69
    :cond_2
    return-void
.end method


# virtual methods
.method public addRecord([B)Z
    .locals 1
    .parameter "record"

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/amazon/system/io/internal/OutputStreamWritePDB;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-object v0, p0, Lcom/amazon/system/io/internal/OutputStreamWritePDB;->output:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/amazon/system/io/internal/OutputStreamWritePDB;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/amazon/system/io/internal/OutputStreamWritePDB;->output:Ljava/io/OutputStream;

    .line 90
    iget-object v0, p0, Lcom/amazon/system/io/internal/OutputStreamWritePDB;->fileConnection:Lcom/amazon/system/io/IFileConnection;

    if-eqz v0, :cond_1

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/amazon/system/io/internal/OutputStreamWritePDB;->fileConnection:Lcom/amazon/system/io/IFileConnection;

    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    :cond_1
    :goto_1
    iput-object v3, p0, Lcom/amazon/system/io/internal/OutputStreamWritePDB;->fileConnection:Lcom/amazon/system/io/IFileConnection;

    .line 102
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 96
    :catch_1
    move-exception v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
