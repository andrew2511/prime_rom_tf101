.class Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;
.super Ljava/lang/Object;
.source "ContentCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/ContentCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LibraryIndex"
.end annotation


# instance fields
.field public libraryId:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

.field public relativeIndex:I


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;I)V
    .locals 0
    .parameter "libraryId"
    .parameter "relativeIndex"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->libraryId:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    .line 107
    iput p2, p0, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->relativeIndex:I

    .line 108
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 116
    instance-of v2, p1, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    if-nez v2, :cond_0

    move v2, v4

    .line 123
    :goto_0
    return v2

    .line 122
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;

    move-object v1, v0

    .line 123
    .local v1, that:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;
    iget-object v2, v1, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->libraryId:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->libraryId:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->relativeIndex:I

    iget v3, p0, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->relativeIndex:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->libraryId:Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/library/models/ContentCatalog$LibraryIndex;->relativeIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
