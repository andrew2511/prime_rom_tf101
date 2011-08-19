.class Lcom/amazon/kcp/application/internal/CCoverSerializer$CoverToSerialize;
.super Ljava/lang/Object;
.source "CCoverSerializer.java"

# interfaces
.implements Lcom/amazon/kcp/application/internal/CCoverSerializer$ICoverSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/CCoverSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CoverToSerialize"
.end annotation


# instance fields
.field private final data:[B

.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 0
    .parameter "data"
    .parameter "id"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoverToSerialize;->data:[B

    .line 75
    iput-object p2, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoverToSerialize;->id:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public serialize(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/util/Utilities;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/amazon/kcp/application/internal/CCoverSerializer;->getCoverSerializationPath(Lcom/amazon/system/io/IFileConnectionFactory;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoverToSerialize;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {p1, v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->exists(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-static {p1, v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 91
    :cond_0
    invoke-static {p1, v0, v4}, Lcom/amazon/system/io/internal/FileSystemHelper;->outputStreamFromFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to serialize this cover "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    if-eqz v1, :cond_2

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoverToSerialize;->data:[B

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoverToSerialize;->data:[B

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 103
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 105
    :cond_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_2
    :goto_0
    return v4

    :catch_0
    move-exception v0

    goto :goto_0
.end method
