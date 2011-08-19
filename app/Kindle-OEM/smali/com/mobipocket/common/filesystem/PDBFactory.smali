.class public interface abstract Lcom/mobipocket/common/filesystem/PDBFactory;
.super Ljava/lang/Object;
.source "PDBFactory.java"


# virtual methods
.method public abstract canRemoveFromCache(Ljava/lang/String;)Z
.end method

.method public abstract createBookIdentifier(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract deletePDB(Ljava/lang/String;)Z
.end method

.method public abstract getBookSettings(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCacheIdentifier()Ljava/lang/String;
.end method

.method public abstract getLastModifiedDate(Ljava/lang/String;)J
.end method

.method public abstract getReadPDB(Ljava/lang/String;)Lcom/mobipocket/common/filesystem/ReadPDB;
.end method

.method public abstract getWritePDB(Ljava/lang/String;[B)Lcom/mobipocket/common/filesystem/WritePDB;
.end method

.method public abstract listEBooks()Ljava/util/Vector;
.end method
