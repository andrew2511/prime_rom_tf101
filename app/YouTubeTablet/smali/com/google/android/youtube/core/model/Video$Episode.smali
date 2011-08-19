.class public final Lcom/google/android/youtube/core/model/Video$Episode;
.super Lcom/google/android/youtube/core/model/Video$Pro;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Episode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;
    }
.end annotation


# instance fields
.field public final number:Ljava/lang/String;

.field public final seasonTitle:Ljava/lang/String;

.field public final seasonUri:Landroid/net/Uri;

.field public final showTitle:Ljava/lang/String;

.field public final showUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter "releaseDate"
    .parameter "availabilityStart"
    .parameter "availabilityEnd"
    .parameter "posterUri"
    .parameter "trailersUri"
    .parameter "showTitle"
    .parameter "showUri"
    .parameter "seasonTitle"
    .parameter "seasonUri"
    .parameter "number"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Video$Genre;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, releaseMediums:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, genres:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Video$Genre;>;"
    .local p3, credits:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct/range {p0 .. p8}, Lcom/google/android/youtube/core/model/Video$Pro;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 271
    iput-object p9, p0, Lcom/google/android/youtube/core/model/Video$Episode;->showTitle:Ljava/lang/String;

    .line 272
    iput-object p10, p0, Lcom/google/android/youtube/core/model/Video$Episode;->showUri:Landroid/net/Uri;

    .line 273
    iput-object p11, p0, Lcom/google/android/youtube/core/model/Video$Episode;->seasonTitle:Ljava/lang/String;

    .line 274
    iput-object p12, p0, Lcom/google/android/youtube/core/model/Video$Episode;->seasonUri:Landroid/net/Uri;

    .line 275
    iput-object p13, p0, Lcom/google/android/youtube/core/model/Video$Episode;->number:Ljava/lang/String;

    .line 276
    return-void
.end method
