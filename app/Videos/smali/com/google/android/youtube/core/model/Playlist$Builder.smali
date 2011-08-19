.class public Lcom/google/android/youtube/core/model/Playlist$Builder;
.super Ljava/lang/Object;
.source "Playlist.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/google/android/youtube/core/model/ModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Playlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/google/android/youtube/core/model/ModelBuilder",
        "<",
        "Lcom/google/android/youtube/core/model/Playlist;",
        ">;"
    }
.end annotation


# instance fields
.field private author:Ljava/lang/String;

.field private contentUri:Landroid/net/Uri;

.field private editUri:Landroid/net/Uri;

.field private size:I

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private updated:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 146
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->title:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->summary:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->author:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->updated:Ljava/util/Date;

    .line 150
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->contentUri:Landroid/net/Uri;

    .line 151
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->editUri:Landroid/net/Uri;

    .line 152
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->size:I

    .line 153
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Playlist$Builder;->build()Lcom/google/android/youtube/core/model/Playlist;

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
    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->updated:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->contentUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->editUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 142
    iget v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 143
    return-void
.end method


# virtual methods
.method public author(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .locals 0
    .parameter "author"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->author:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/model/Playlist;
    .locals 8

    .prologue
    .line 128
    new-instance v0, Lcom/google/android/youtube/core/model/Playlist;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->summary:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->author:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->updated:Ljava/util/Date;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->contentUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->editUri:Landroid/net/Uri;

    iget v7, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->size:I

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/core/model/Playlist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Playlist$Builder;->build()Lcom/google/android/youtube/core/model/Playlist;

    move-result-object v0

    return-object v0
.end method

.method public contentUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .locals 0
    .parameter "contentUri"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->contentUri:Landroid/net/Uri;

    .line 114
    return-object p0
.end method

.method public editUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .locals 0
    .parameter "editUri"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->editUri:Landroid/net/Uri;

    .line 119
    return-object p0
.end method

.method public size(I)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .locals 0
    .parameter "size"

    .prologue
    .line 123
    iput p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->size:I

    .line 124
    return-object p0
.end method

.method public summary(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .locals 0
    .parameter "summary"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->summary:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .locals 0
    .parameter "title"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->title:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public updated(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .locals 0
    .parameter "updated"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->updated:Ljava/util/Date;

    .line 109
    return-object p0
.end method
