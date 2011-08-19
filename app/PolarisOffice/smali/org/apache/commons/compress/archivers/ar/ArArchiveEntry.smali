.class public Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;
.super Ljava/lang/Object;
.source "ArArchiveEntry.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;


# static fields
.field private static final DEFAULT_MODE:I = 0x81a4

.field public static final HEADER:Ljava/lang/String; = "!<arch>\n"

.field public static final TRAILER:Ljava/lang/String; = "`\n"


# instance fields
.field private final groupId:I

.field private final lastModified:J

.field private final length:J

.field private final mode:I

.field private final name:Ljava/lang/String;

.field private final userId:I


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 9
    .parameter "inputFile"
    .parameter "entryName"

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    move-wide v2, v0

    :goto_0
    const v6, 0x81a4

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v7, 0x3e8

    div-long v7, v0, v7

    move-object v0, p0

    move-object v1, p2

    move v5, v4

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;-><init>(Ljava/lang/String;JIIIJ)V

    .line 114
    return-void

    .line 112
    :cond_0
    const-wide/16 v0, 0x0

    move-wide v2, v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 9
    .parameter "name"
    .parameter "length"

    .prologue
    const/4 v4, 0x0

    .line 83
    const v6, 0x81a4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v7, v0, v2

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;-><init>(Ljava/lang/String;JIIIJ)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JIIIJ)V
    .locals 0
    .parameter "name"
    .parameter "length"
    .parameter "userId"
    .parameter "groupId"
    .parameter "mode"
    .parameter "lastModified"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->name:Ljava/lang/String;

    .line 100
    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->length:J

    .line 101
    iput p4, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->userId:I

    .line 102
    iput p5, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->groupId:I

    .line 103
    iput p6, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->mode:I

    .line 104
    iput-wide p7, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->lastModified:J

    .line 105
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 169
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 183
    :goto_0
    return v2

    .line 172
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v4

    .line 173
    goto :goto_0

    .line 175
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    move-object v1, v0

    .line 176
    .local v1, other:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->name:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 177
    iget-object v2, v1, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v2, v4

    .line 178
    goto :goto_0

    .line 180
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->name:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    .line 181
    goto :goto_0

    :cond_4
    move v2, v5

    .line 183
    goto :goto_0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->groupId:I

    return v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->lastModified:J

    return-wide v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 5

    .prologue
    .line 147
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLastModified()J

    move-result-wide v3

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->length:J

    return-wide v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->userId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 161
    const/16 v0, 0x1f

    .line 162
    .local v0, prime:I
    const/4 v1, 0x1

    .line 163
    .local v1, result:I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->name:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 164
    return v1

    .line 163
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method
