.class Lcom/amazon/kcp/application/internal/CCoverSerializer$CoverToDeSerialize;
.super Ljava/lang/Object;
.source "CCoverSerializer.java"

# interfaces
.implements Lcom/amazon/kcp/application/internal/CCoverSerializer$ICoverSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/CCoverSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverToDeSerialize"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final imageSetter:Lcom/amazon/kcp/library/models/internal/IMetadata;

.field final synthetic this$0:Lcom/amazon/kcp/application/internal/CCoverSerializer;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/internal/CCoverSerializer;Lcom/amazon/kcp/library/models/internal/IMetadata;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "imageSetter"
    .parameter "id"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoverToDeSerialize;->this$0:Lcom/amazon/kcp/application/internal/CCoverSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p2, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoverToDeSerialize;->imageSetter:Lcom/amazon/kcp/library/models/internal/IMetadata;

    .line 128
    iput-object p3, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoverToDeSerialize;->id:Ljava/lang/String;

    .line 129
    return-void
.end method


# virtual methods
.method public serialize(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/util/Utilities;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoverToDeSerialize;->imageSetter:Lcom/amazon/kcp/library/models/internal/IMetadata;

    if-nez v0, :cond_0

    move v0, v5

    .line 217
    :goto_0
    return v0

    .line 140
    :cond_0
    if-nez p1, :cond_1

    move v0, v5

    .line 144
    goto :goto_0

    .line 147
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/amazon/kcp/application/internal/CCoverSerializer;->getCoverSerializationPath(Lcom/amazon/system/io/IFileConnectionFactory;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoverToDeSerialize;->id:Ljava/lang/String;

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

    .line 150
    invoke-static {p1, v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->exists(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 152
    invoke-static {p1, v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->inputStreamFromFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_3

    .line 156
    invoke-static {p1, v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->fileSize(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 159
    if-lez v0, :cond_4

    .line 161
    new-array v0, v0, [B

    .line 162
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 168
    if-lez v2, :cond_2

    .line 170
    new-instance v2, Lcom/amazon/system/drawing/Dimension;

    invoke-direct {v2}, Lcom/amazon/system/drawing/Dimension;-><init>()V

    .line 171
    invoke-static {v0, v2}, Lcom/amazon/system/drawing/ImageTools;->getImageInfo([BLcom/amazon/system/drawing/Dimension;)I

    .line 172
    const/4 v3, 0x2

    invoke-interface {p2, v0, v2, v3}, Lcom/amazon/system/drawing/ImageFactory;->getImage([BLcom/amazon/system/drawing/Dimension;I)Lcom/amazon/system/drawing/Image;

    move-result-object v0

    .line 174
    new-instance v2, Lcom/amazon/kcp/application/internal/CCoverSerializer$ImageSetterRunnable;

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoverToDeSerialize;->this$0:Lcom/amazon/kcp/application/internal/CCoverSerializer;

    iget-object v4, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoverToDeSerialize;->imageSetter:Lcom/amazon/kcp/library/models/internal/IMetadata;

    invoke-direct {v2, v3, v4, v0}, Lcom/amazon/kcp/application/internal/CCoverSerializer$ImageSetterRunnable;-><init>(Lcom/amazon/kcp/application/internal/CCoverSerializer;Lcom/amazon/kcp/application/internal/IImageSetter;Lcom/amazon/system/drawing/Image;)V

    invoke-interface {p3, v2}, Lcom/amazon/system/util/Utilities;->invokeAndWait(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 187
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    move v0, v5

    .line 217
    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    goto :goto_1

    .line 179
    :catch_1
    move-exception v0

    .line 181
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 189
    :catch_2
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    goto :goto_1

    .line 185
    :catchall_0
    move-exception v0

    .line 187
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 192
    :goto_2
    throw v0

    .line 189
    :catch_3
    move-exception v1

    .line 191
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    goto :goto_2

    .line 199
    :cond_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 201
    :catch_4
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    goto :goto_1

    .line 212
    :cond_5
    new-instance v0, Lcom/amazon/kcp/application/internal/CCoverSerializer$AddCoverMetadataToDownloadRunnable;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoverToDeSerialize;->this$0:Lcom/amazon/kcp/application/internal/CCoverSerializer;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoverToDeSerialize;->imageSetter:Lcom/amazon/kcp/library/models/internal/IMetadata;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/application/internal/CCoverSerializer$AddCoverMetadataToDownloadRunnable;-><init>(Lcom/amazon/kcp/application/internal/CCoverSerializer;Lcom/amazon/kcp/library/models/internal/IMetadata;)V

    invoke-interface {p3, v0}, Lcom/amazon/system/util/Utilities;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 214
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
