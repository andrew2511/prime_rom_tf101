.class Lorg/apache/commons/compress/archivers/zip/ZipFile$1;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V
    .locals 0
    .parameter

    .prologue
    .line 679
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 11
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 681
    if-ne p1, p2, :cond_0

    .line 682
    const/4 v7, 0x0

    .line 696
    :goto_0
    return v7

    .line 684
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-object v1, v0

    .line 685
    .local v1, e1:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-object v2, v0

    .line 687
    .local v2, e2:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->access$700(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    .line 688
    .local v3, off1:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->access$700(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    .line 689
    .local v4, off2:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    if-nez v3, :cond_1

    .line 690
    const/4 v7, 0x1

    goto :goto_0

    .line 692
    :cond_1
    if-nez v4, :cond_2

    .line 693
    const/4 v7, -0x1

    goto :goto_0

    .line 695
    :cond_2
    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v7

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v9

    sub-long v5, v7, v9

    .line 696
    .local v5, val:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_3

    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_4

    const/4 v7, -0x1

    goto :goto_0

    :cond_4
    const/4 v7, 0x1

    goto :goto_0
.end method
