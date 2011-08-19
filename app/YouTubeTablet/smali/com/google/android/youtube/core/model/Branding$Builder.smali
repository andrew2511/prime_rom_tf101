.class public Lcom/google/android/youtube/core/model/Branding$Builder;
.super Ljava/lang/Object;
.source "Branding.java"

# interfaces
.implements Lcom/google/android/youtube/core/model/ModelBuilder;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Branding;
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
        "Lcom/google/android/youtube/core/model/Branding;",
        ">;"
    }
.end annotation


# instance fields
.field private bannerTargetUri:Landroid/net/Uri;

.field private bannerUri:Landroid/net/Uri;

.field private description:Ljava/lang/String;

.field private featuredPlaylistId:Ljava/lang/String;

.field private keywords:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
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
    .line 121
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->title:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->description:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->keywords:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerUri:Landroid/net/Uri;

    .line 125
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerTargetUri:Landroid/net/Uri;

    .line 126
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->featuredPlaylistId:Ljava/lang/String;

    .line 127
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Branding$Builder;->build()Lcom/google/android/youtube/core/model/Branding;

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
    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->keywords:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerTargetUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->featuredPlaylistId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 118
    return-void
.end method


# virtual methods
.method public bannerTargetUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .locals 0
    .parameter "bannerTargetUri"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerTargetUri:Landroid/net/Uri;

    .line 94
    return-object p0
.end method

.method public bannerUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .locals 0
    .parameter "bannerUri"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerUri:Landroid/net/Uri;

    .line 89
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/model/Branding;
    .locals 7

    .prologue
    .line 103
    new-instance v0, Lcom/google/android/youtube/core/model/Branding;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->description:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->keywords:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerTargetUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->featuredPlaylistId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/Branding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Branding$Builder;->build()Lcom/google/android/youtube/core/model/Branding;

    move-result-object v0

    return-object v0
.end method

.method public description(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .locals 0
    .parameter "description"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->description:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public featuredPlaylistId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .locals 0
    .parameter "featuredPlaylistId"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->featuredPlaylistId:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public keywords(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .locals 0
    .parameter "keywords"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->keywords:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .locals 0
    .parameter "title"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->title:Ljava/lang/String;

    .line 74
    return-object p0
.end method
