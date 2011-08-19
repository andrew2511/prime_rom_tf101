.class public final Lcom/google/android/youtube/core/model/Playlist;
.super Ljava/lang/Object;
.source "Playlist.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/Playlist$Builder;
    }
.end annotation


# instance fields
.field public final author:Ljava/lang/String;

.field public final contentUri:Landroid/net/Uri;

.field public final editUri:Landroid/net/Uri;

.field public final size:I

.field public final summary:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final updated:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;I)V
    .locals 0
    .parameter "title"
    .parameter "summary"
    .parameter "author"
    .parameter "updated"
    .parameter "contentUri"
    .parameter "editUri"
    .parameter "size"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/google/android/youtube/core/model/Playlist;->summary:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Playlist;->author:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Playlist;->updated:Ljava/util/Date;

    .line 53
    iput-object p5, p0, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    .line 54
    iput-object p6, p0, Lcom/google/android/youtube/core/model/Playlist;->editUri:Landroid/net/Uri;

    .line 55
    iput p7, p0, Lcom/google/android/youtube/core/model/Playlist;->size:I

    .line 56
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Playlist;->buildUpon()Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/youtube/core/model/Playlist$Builder;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/google/android/youtube/core/model/Playlist$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Playlist$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->summary(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->author(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->updated:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->updated(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->contentUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->editUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->editUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/Playlist;->size:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->size(I)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    return-object v0
.end method
