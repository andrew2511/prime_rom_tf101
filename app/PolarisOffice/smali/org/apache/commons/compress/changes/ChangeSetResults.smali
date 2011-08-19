.class public Lorg/apache/commons/compress/changes/ChangeSetResults;
.super Ljava/lang/Object;
.source "ChangeSetResults.java"


# instance fields
.field private final addedFromChangeSet:Ljava/util/List;

.field private final addedFromStream:Ljava/util/List;

.field private final deleted:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetResults;->addedFromChangeSet:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetResults;->addedFromStream:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetResults;->deleted:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addedFromChangeSet(Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetResults;->addedFromChangeSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method addedFromStream(Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetResults;->addedFromStream:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method deleted(Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetResults;->deleted:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public getAddedFromChangeSet()Ljava/util/List;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetResults;->addedFromChangeSet:Ljava/util/List;

    return-object v0
.end method

.method public getAddedFromStream()Ljava/util/List;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetResults;->addedFromStream:Ljava/util/List;

    return-object v0
.end method

.method public getDeleted()Ljava/util/List;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetResults;->deleted:Ljava/util/List;

    return-object v0
.end method

.method hasBeenAdded(Ljava/lang/String;)Z
    .locals 1
    .parameter "filename"

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetResults;->addedFromChangeSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetResults;->addedFromStream:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
