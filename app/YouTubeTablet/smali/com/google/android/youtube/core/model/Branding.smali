.class public final Lcom/google/android/youtube/core/model/Branding;
.super Ljava/lang/Object;
.source "Branding.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/Branding$Builder;
    }
.end annotation


# instance fields
.field public final bannerTargetUri:Landroid/net/Uri;

.field public final bannerUri:Landroid/net/Uri;

.field public final description:Ljava/lang/String;

.field public final featuredPlaylistId:Ljava/lang/String;

.field public final keywords:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter "title"
    .parameter "description"
    .parameter "keywords"
    .parameter "bannerUri"
    .parameter "bannerTargetUri"
    .parameter "featuredPlaylistId"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding;->title:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/google/android/youtube/core/model/Branding;->description:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Branding;->keywords:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Branding;->bannerUri:Landroid/net/Uri;

    .line 42
    iput-object p5, p0, Lcom/google/android/youtube/core/model/Branding;->bannerTargetUri:Landroid/net/Uri;

    .line 43
    iput-object p6, p0, Lcom/google/android/youtube/core/model/Branding;->featuredPlaylistId:Ljava/lang/String;

    .line 44
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
    .line 51
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Branding;->buildUpon()Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/youtube/core/model/Branding$Builder;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/google/android/youtube/core/model/Branding$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Branding$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->description(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->keywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->keywords(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->bannerUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->bannerTargetUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerTargetUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->featuredPlaylistId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->featuredPlaylistId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    return-object v0
.end method
