.class final Lcom/ecareme/pixwe/media/DiskCache$Record;
.super Ljava/lang/Object;
.source "DiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/DiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Record"
.end annotation


# instance fields
.field public final chunk:I

.field public final offset:I

.field public final size:I

.field public final sizeOnDisk:I

.field public final timestamp:J


# direct methods
.method public constructor <init>(IIIIJ)V
    .locals 0
    .parameter "chunk"
    .parameter "offset"
    .parameter "size"
    .parameter "sizeOnDisk"
    .parameter "timestamp"

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput p1, p0, Lcom/ecareme/pixwe/media/DiskCache$Record;->chunk:I

    .line 355
    iput p2, p0, Lcom/ecareme/pixwe/media/DiskCache$Record;->offset:I

    .line 356
    iput p3, p0, Lcom/ecareme/pixwe/media/DiskCache$Record;->size:I

    .line 357
    iput-wide p5, p0, Lcom/ecareme/pixwe/media/DiskCache$Record;->timestamp:J

    .line 358
    iput p4, p0, Lcom/ecareme/pixwe/media/DiskCache$Record;->sizeOnDisk:I

    .line 359
    return-void
.end method
