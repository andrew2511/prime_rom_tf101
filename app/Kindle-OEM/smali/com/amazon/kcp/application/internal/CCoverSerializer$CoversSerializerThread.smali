.class Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;
.super Ljava/lang/Thread;
.source "CCoverSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/CCoverSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoversSerializerThread"
.end annotation


# instance fields
.field private final coverCount:I

.field private coverSerializedCount:I

.field private coverToSerialize:Lcom/amazon/kcp/application/internal/CCoverSerializer$ICoverSerializer;

.field private final fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

.field private final imageFactory:Lcom/amazon/system/drawing/ImageFactory;

.field private final invokeUtilitites:Lcom/amazon/system/util/Utilities;

.field final synthetic this$0:Lcom/amazon/kcp/application/internal/CCoverSerializer;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/internal/CCoverSerializer;ILcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/util/Utilities;)V
    .locals 1
    .parameter
    .parameter "coverCount"
    .parameter "fileSystem"
    .parameter "imageFactory"
    .parameter "invokeUtilitites"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->this$0:Lcom/amazon/kcp/application/internal/CCoverSerializer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->coverSerializedCount:I

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->coverToSerialize:Lcom/amazon/kcp/application/internal/CCoverSerializer$ICoverSerializer;

    .line 235
    iput p2, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->coverCount:I

    .line 236
    iput-object p5, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->invokeUtilitites:Lcom/amazon/system/util/Utilities;

    .line 237
    iput-object p3, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 238
    iput-object p4, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    .line 239
    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->getCoverCount()I

    move-result v0

    return v0
.end method

.method private getCoverCount()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->coverCount:I

    return v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 245
    invoke-static {}, Lcom/amazon/foundation/internal/TaskManager;->getInstance()Lcom/amazon/foundation/internal/TaskManager;

    move-result-object v0

    const-string v1, "CoverSerializerThread"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/amazon/foundation/internal/TaskManager;->createTaskControl(Ljava/lang/String;I)Lcom/amazon/foundation/internal/TaskManager$TaskControl;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->start()V

    .line 250
    :cond_0
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->coverSerializedCount:I

    iget v2, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->coverCount:I

    if-ge v0, v2, :cond_3

    .line 252
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->yield()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->coverToSerialize:Lcom/amazon/kcp/application/internal/CCoverSerializer$ICoverSerializer;

    .line 257
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->this$0:Lcom/amazon/kcp/application/internal/CCoverSerializer;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/CCoverSerializer;->access$000(Lcom/amazon/kcp/application/internal/CCoverSerializer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 259
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->this$0:Lcom/amazon/kcp/application/internal/CCoverSerializer;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/CCoverSerializer;->access$100(Lcom/amazon/kcp/application/internal/CCoverSerializer;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 263
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->this$0:Lcom/amazon/kcp/application/internal/CCoverSerializer;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/CCoverSerializer;->access$100(Lcom/amazon/kcp/application/internal/CCoverSerializer;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->this$0:Lcom/amazon/kcp/application/internal/CCoverSerializer;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/CCoverSerializer;->access$100(Lcom/amazon/kcp/application/internal/CCoverSerializer;)Ljava/util/Vector;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/internal/CCoverSerializer$ICoverSerializer;

    iput-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->coverToSerialize:Lcom/amazon/kcp/application/internal/CCoverSerializer$ICoverSerializer;

    .line 275
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 277
    :try_start_2
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->coverToSerialize:Lcom/amazon/kcp/application/internal/CCoverSerializer$ICoverSerializer;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->coverToSerialize:Lcom/amazon/kcp/application/internal/CCoverSerializer$ICoverSerializer;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    iget-object v4, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->invokeUtilitites:Lcom/amazon/system/util/Utilities;

    invoke-interface {v0, v2, v3, v4}, Lcom/amazon/kcp/application/internal/CCoverSerializer$ICoverSerializer;->serialize(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/util/Utilities;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    iget v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->coverSerializedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->coverSerializedCount:I

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->this$0:Lcom/amazon/kcp/application/internal/CCoverSerializer;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/CCoverSerializer;->access$000(Lcom/amazon/kcp/application/internal/CCoverSerializer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 288
    :try_start_3
    iget-object v2, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->this$0:Lcom/amazon/kcp/application/internal/CCoverSerializer;

    invoke-static {v2}, Lcom/amazon/kcp/application/internal/CCoverSerializer;->access$100(Lcom/amazon/kcp/application/internal/CCoverSerializer;)Ljava/util/Vector;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/CCoverSerializer$CoversSerializerThread;->coverToSerialize:Lcom/amazon/kcp/application/internal/CCoverSerializer$ICoverSerializer;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 289
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 295
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->end()V

    throw v0

    .line 275
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 295
    :cond_3
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/TaskManager$TaskControl;->end()V

    .line 297
    return-void
.end method
