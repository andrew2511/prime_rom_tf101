.class final Lcom/google/android/street/HttpCache$CacheEntry;
.super Ljava/lang/Object;
.source "HttpCache.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/HttpCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CacheEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/street/HttpCache$CacheEntry;",
        ">;"
    }
.end annotation


# instance fields
.field mDeleteOnEject:Z

.field public final mFile:Ljava/io/File;

.field public final mLastModifiedTime:J

.field public final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .parameter "file"

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/street/HttpCache$CacheEntry;->mDeleteOnEject:Z

    .line 216
    iput-object p1, p0, Lcom/google/android/street/HttpCache$CacheEntry;->mFile:Ljava/io/File;

    .line 217
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/street/HttpCache$CacheEntry;->mName:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/street/HttpCache$CacheEntry;->mLastModifiedTime:J

    .line 219
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/street/HttpCache$CacheEntry;)I
    .locals 4
    .parameter "arg"

    .prologue
    .line 232
    iget-wide v0, p0, Lcom/google/android/street/HttpCache$CacheEntry;->mLastModifiedTime:J

    iget-wide v2, p1, Lcom/google/android/street/HttpCache$CacheEntry;->mLastModifiedTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/street/HttpCache$CacheEntry;->mLastModifiedTime:J

    iget-wide v2, p1, Lcom/google/android/street/HttpCache$CacheEntry;->mLastModifiedTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/street/HttpCache$CacheEntry;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/street/HttpCache$CacheEntry;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    check-cast p1, Lcom/google/android/street/HttpCache$CacheEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/street/HttpCache$CacheEntry;->compareTo(Lcom/google/android/street/HttpCache$CacheEntry;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .line 244
    if-ne p0, p1, :cond_0

    .line 245
    const/4 v2, 0x1

    .line 251
    :goto_0
    return v2

    .line 247
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 248
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 250
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/google/android/street/HttpCache$CacheEntry;

    move-object v1, v0

    .line 251
    .local v1, other:Lcom/google/android/street/HttpCache$CacheEntry;
    iget-object v2, p0, Lcom/google/android/street/HttpCache$CacheEntry;->mName:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/street/HttpCache$CacheEntry;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/street/HttpCache$CacheEntry;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/street/HttpCache$CacheEntry;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public onEject()V
    .locals 3

    .prologue
    .line 259
    iget-boolean v1, p0, Lcom/google/android/street/HttpCache$CacheEntry;->mDeleteOnEject:Z

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/google/android/street/HttpCache$CacheEntry;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 261
    .local v0, deleted:Z
    if-nez v0, :cond_0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete cache file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/street/HttpCache$CacheEntry;->mFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V

    .line 267
    .end local v0           #deleted:Z
    :cond_0
    return-void
.end method

.method public openData()Ljava/io/DataInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/google/android/street/HttpCache$CacheEntry;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/street/HttpCache$CacheEntry;->mName:Ljava/lang/String;

    return-object v0
.end method
