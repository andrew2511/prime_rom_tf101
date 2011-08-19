.class public final Lorg/apache/commons/compress/changes/ChangeSet;
.super Ljava/lang/Object;
.source "ChangeSet.java"


# instance fields
.field private final changes:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    return-void
.end method

.method private addAddition(Lorg/apache/commons/compress/changes/Change;)V
    .locals 5
    .parameter "pChange"

    .prologue
    const/4 v4, 0x2

    .line 94
    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->type()I

    move-result v3

    if-ne v4, v3, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->getInput()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 100
    iget-object v3, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/changes/Change;

    .line 102
    .local v0, change:Lorg/apache/commons/compress/changes/Change;
    invoke-virtual {v0}, Lorg/apache/commons/compress/changes/Change;->type()I

    move-result v3

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 104
    invoke-virtual {v0}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v1

    .line 106
    .local v1, entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;
    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->isReplaceMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 109
    iget-object v3, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    .end local v0           #change:Lorg/apache/commons/compress/changes/Change;
    .end local v1           #entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .end local v2           #it:Ljava/util/Iterator;
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addDeletion(Lorg/apache/commons/compress/changes/Change;)V
    .locals 8
    .parameter "pChange"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 129
    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->type()I

    move-result v4

    if-eq v6, v4, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->type()I

    move-result v4

    if-ne v7, v4, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->targetFile()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->targetFile()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, source:Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 137
    iget-object v4, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/changes/Change;

    .line 139
    .local v0, change:Lorg/apache/commons/compress/changes/Change;
    invoke-virtual {v0}, Lorg/apache/commons/compress/changes/Change;->type()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 141
    invoke-virtual {v0}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, target:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->type()I

    move-result v4

    if-ne v6, v4, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 144
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 145
    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->type()I

    move-result v4

    if-ne v7, v4, :cond_3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "/.*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 152
    .end local v0           #change:Lorg/apache/commons/compress/changes/Change;
    .end local v1           #it:Ljava/util/Iterator;
    .end local v3           #target:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/InputStream;)V
    .locals 1
    .parameter "pEntry"
    .parameter "pInput"

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/changes/ChangeSet;->add(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/InputStream;Z)V

    .line 69
    return-void
.end method

.method public add(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/InputStream;Z)V
    .locals 1
    .parameter "pEntry"
    .parameter "pInput"
    .parameter "replace"

    .prologue
    .line 84
    new-instance v0, Lorg/apache/commons/compress/changes/Change;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/compress/changes/Change;-><init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/InputStream;Z)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/changes/ChangeSet;->addAddition(Lorg/apache/commons/compress/changes/Change;)V

    .line 85
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2
    .parameter "filename"

    .prologue
    .line 46
    new-instance v0, Lorg/apache/commons/compress/changes/Change;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/changes/Change;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/changes/ChangeSet;->addDeletion(Lorg/apache/commons/compress/changes/Change;)V

    .line 47
    return-void
.end method

.method public deleteDir(Ljava/lang/String;)V
    .locals 2
    .parameter "dirName"

    .prologue
    .line 56
    new-instance v0, Lorg/apache/commons/compress/changes/Change;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/changes/Change;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/changes/ChangeSet;->addDeletion(Lorg/apache/commons/compress/changes/Change;)V

    .line 57
    return-void
.end method

.method getChanges()Ljava/util/Set;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
