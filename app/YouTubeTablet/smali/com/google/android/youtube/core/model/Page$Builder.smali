.class public Lcom/google/android/youtube/core/model/Page$Builder;
.super Ljava/lang/Object;
.source "Page.java"

# interfaces
.implements Lcom/google/android/youtube/core/model/ModelBuilder;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/google/android/youtube/core/model/ModelBuilder",
        "<",
        "Lcom/google/android/youtube/core/model/Page",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private elementsPerPage:I

.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private nextUri:Landroid/net/Uri;

.field private previousUri:Landroid/net/Uri;

.field private startIndex:I

.field private totalResults:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    .local p0, this:Lcom/google/android/youtube/core/model/Page$Builder;,"Lcom/google/android/youtube/core/model/Page$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->entries:Ljava/util/List;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 157
    .local p0, this:Lcom/google/android/youtube/core/model/Page$Builder;,"Lcom/google/android/youtube/core/model/Page$Builder<TT;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->totalResults:I

    .line 158
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->elementsPerPage:I

    .line 159
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->startIndex:I

    .line 160
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->previousUri:Landroid/net/Uri;

    .line 161
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->nextUri:Landroid/net/Uri;

    .line 162
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->entries:Ljava/util/List;

    .line 163
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    .local p0, this:Lcom/google/android/youtube/core/model/Page$Builder;,"Lcom/google/android/youtube/core/model/Page$Builder<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Page$Builder;->build()Lcom/google/android/youtube/core/model/Page;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    .local p0, this:Lcom/google/android/youtube/core/model/Page$Builder;,"Lcom/google/android/youtube/core/model/Page$Builder<TT;>;"
    iget v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->totalResults:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 148
    iget v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->elementsPerPage:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->startIndex:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->previousUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->nextUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->entries:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 153
    return-void
.end method


# virtual methods
.method public addEntries(Ljava/util/List;)Lcom/google/android/youtube/core/model/Page$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lcom/google/android/youtube/core/model/Page$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, this:Lcom/google/android/youtube/core/model/Page$Builder;,"Lcom/google/android/youtube/core/model/Page$Builder<TT;>;"
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const-string v0, "entries can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    return-object p0
.end method

.method public addEntry(Ljava/lang/Object;)Lcom/google/android/youtube/core/model/Page$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/youtube/core/model/Page$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, this:Lcom/google/android/youtube/core/model/Page$Builder;,"Lcom/google/android/youtube/core/model/Page$Builder<TT;>;"
    .local p1, entry:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Page$Builder;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/model/Page;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/model/Page",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, this:Lcom/google/android/youtube/core/model/Page$Builder;,"Lcom/google/android/youtube/core/model/Page$Builder<TT;>;"
    new-instance v0, Lcom/google/android/youtube/core/model/Page;

    iget v1, p0, Lcom/google/android/youtube/core/model/Page$Builder;->totalResults:I

    iget v2, p0, Lcom/google/android/youtube/core/model/Page$Builder;->elementsPerPage:I

    iget v3, p0, Lcom/google/android/youtube/core/model/Page$Builder;->startIndex:I

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Page$Builder;->previousUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Page$Builder;->nextUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/google/android/youtube/core/model/Page$Builder;->entries:Ljava/util/List;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/Page;-><init>(IIILandroid/net/Uri;Landroid/net/Uri;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    .local p0, this:Lcom/google/android/youtube/core/model/Page$Builder;,"Lcom/google/android/youtube/core/model/Page$Builder<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Page$Builder;->build()Lcom/google/android/youtube/core/model/Page;

    move-result-object v0

    return-object v0
.end method

.method public elementsPerPage(I)Lcom/google/android/youtube/core/model/Page$Builder;
    .locals 0
    .parameter "elements"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/youtube/core/model/Page$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, this:Lcom/google/android/youtube/core/model/Page$Builder;,"Lcom/google/android/youtube/core/model/Page$Builder<TT;>;"
    iput p1, p0, Lcom/google/android/youtube/core/model/Page$Builder;->elementsPerPage:I

    .line 109
    return-object p0
.end method

.method public nextUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Page$Builder;
    .locals 0
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/youtube/core/model/Page$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, this:Lcom/google/android/youtube/core/model/Page$Builder;,"Lcom/google/android/youtube/core/model/Page$Builder<TT;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Page$Builder;->nextUri:Landroid/net/Uri;

    .line 124
    return-object p0
.end method

.method public previousUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Page$Builder;
    .locals 0
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/youtube/core/model/Page$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, this:Lcom/google/android/youtube/core/model/Page$Builder;,"Lcom/google/android/youtube/core/model/Page$Builder<TT;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Page$Builder;->previousUri:Landroid/net/Uri;

    .line 119
    return-object p0
.end method

.method public startIndex(I)Lcom/google/android/youtube/core/model/Page$Builder;
    .locals 0
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/youtube/core/model/Page$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, this:Lcom/google/android/youtube/core/model/Page$Builder;,"Lcom/google/android/youtube/core/model/Page$Builder<TT;>;"
    iput p1, p0, Lcom/google/android/youtube/core/model/Page$Builder;->startIndex:I

    .line 114
    return-object p0
.end method

.method public totalResults(I)Lcom/google/android/youtube/core/model/Page$Builder;
    .locals 0
    .parameter "total"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/youtube/core/model/Page$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, this:Lcom/google/android/youtube/core/model/Page$Builder;,"Lcom/google/android/youtube/core/model/Page$Builder<TT;>;"
    iput p1, p0, Lcom/google/android/youtube/core/model/Page$Builder;->totalResults:I

    .line 104
    return-object p0
.end method
