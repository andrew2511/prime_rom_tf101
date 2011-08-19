.class public Lnet/yostore/aws/sqlite/entity/CacheItem;
.super Ljava/lang/Object;
.source "CacheItem.java"


# instance fields
.field public fileid:J

.field public lastmodifytime:J

.field public size:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/CacheItem;->fileid:J

    .line 8
    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/CacheItem;->size:J

    .line 9
    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/CacheItem;->lastmodifytime:J

    .line 11
    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 2
    .parameter "fileid"
    .parameter "size"
    .parameter "lastmodifytime"

    .prologue
    const-wide/16 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/CacheItem;->fileid:J

    .line 8
    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/CacheItem;->size:J

    .line 9
    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/CacheItem;->lastmodifytime:J

    .line 14
    iput-wide p1, p0, Lnet/yostore/aws/sqlite/entity/CacheItem;->fileid:J

    .line 15
    iput-wide p3, p0, Lnet/yostore/aws/sqlite/entity/CacheItem;->size:J

    .line 16
    iput-wide p5, p0, Lnet/yostore/aws/sqlite/entity/CacheItem;->lastmodifytime:J

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cr"

    .prologue
    const-wide/16 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide v2, p0, Lnet/yostore/aws/sqlite/entity/CacheItem;->fileid:J

    .line 8
    iput-wide v2, p0, Lnet/yostore/aws/sqlite/entity/CacheItem;->size:J

    .line 9
    iput-wide v2, p0, Lnet/yostore/aws/sqlite/entity/CacheItem;->lastmodifytime:J

    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, i:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lnet/yostore/aws/sqlite/entity/CacheItem;->fileid:J

    .line 30
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lnet/yostore/aws/sqlite/entity/CacheItem;->size:J

    .line 31
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lnet/yostore/aws/sqlite/entity/CacheItem;->lastmodifytime:J

    .line 32
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fileid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lnet/yostore/aws/sqlite/entity/CacheItem;->fileid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nsize="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lnet/yostore/aws/sqlite/entity/CacheItem;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nlastmodifytime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lnet/yostore/aws/sqlite/entity/CacheItem;->lastmodifytime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
