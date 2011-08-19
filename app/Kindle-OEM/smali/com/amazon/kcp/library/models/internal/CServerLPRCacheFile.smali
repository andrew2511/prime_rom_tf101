.class public Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;
.super Ljava/lang/Object;
.source "CServerLPRCacheFile.java"


# instance fields
.field private fileName:Ljava/lang/String;

.field fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

.field private message:Ljava/lang/String;

.field private position:I

.field private version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/system/io/IFileConnectionFactory;)V
    .locals 1
    .parameter "fileName"
    .parameter "fileSystem"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;->fileName:Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;->version:I

    .line 32
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;->fileName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 34
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;->position:I

    return v0
.end method

.method public load()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;->fileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/system/io/internal/FileSystemHelper;->inputStreamFromFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    move v0, v4

    .line 70
    :goto_0
    return v0

    .line 47
    :cond_0
    new-instance v1, Lcom/mobipocket/common/net/XmlQuickReader;

    new-instance v2, Lcom/mobipocket/common/net/StringStream;

    invoke-direct {v2, v0}, Lcom/mobipocket/common/net/StringStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Lcom/mobipocket/common/net/XmlQuickReader;-><init>(Lcom/mobipocket/common/net/StringStream;)V

    .line 49
    const-string v2, "position"

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/net/XmlQuickReader;->jumpTo(Ljava/lang/String;)Z

    move-result v2

    .line 53
    :try_start_0
    invoke-virtual {v1}, Lcom/mobipocket/common/net/XmlQuickReader;->value()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;->position:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_1
    const-string v3, "message"

    invoke-virtual {v1, v3}, Lcom/mobipocket/common/net/XmlQuickReader;->jumpTo(Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 63
    invoke-virtual {v1}, Lcom/mobipocket/common/net/XmlQuickReader;->value()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;->message:Ljava/lang/String;

    .line 67
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move v0, v2

    .line 70
    goto :goto_0

    .line 57
    :catch_0
    move-exception v2

    move v2, v4

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public save(ILjava/lang/String;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;->fileName:Ljava/lang/String;

    invoke-static {v0, v1, v6}, Lcom/amazon/system/io/internal/FileSystemHelper;->outputStreamFromFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v0

    .line 84
    if-nez p2, :cond_1

    .line 86
    const-string v1, ""

    .line 88
    :goto_0
    if-nez v0, :cond_0

    move v0, v5

    .line 131
    :goto_1
    return v0

    .line 95
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "<cacheLPR>"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/String;

    const-string v4, "<version>"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;->version:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mobipocket/common/parser/TernaryTree;->html_entities_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const-string v4, "</version>"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/String;

    const-string v4, "<position>"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mobipocket/common/parser/TernaryTree;->html_entities_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const-string v4, "</position>"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/String;

    const-string v4, "<message>"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/mobipocket/common/parser/TernaryTree;->html_entities_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "</message>"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 111
    new-instance v1, Ljava/lang/String;

    const-string v2, "</cacheLPR>"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 113
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 115
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v6

    .line 128
    goto/16 :goto_1

    .line 127
    :catch_0
    move-exception v0

    move v0, v6

    goto/16 :goto_1

    .line 121
    :catch_1
    move-exception v1

    .line 125
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v5

    .line 128
    goto/16 :goto_1

    .line 127
    :catch_2
    move-exception v0

    move v0, v5

    goto/16 :goto_1

    .line 124
    :catchall_0
    move-exception v1

    .line 125
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 127
    :goto_2
    throw v1

    :catch_3
    move-exception v0

    goto :goto_2

    :cond_1
    move-object v1, p2

    goto/16 :goto_0
.end method
