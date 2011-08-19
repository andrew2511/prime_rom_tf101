.class public final Lcom/google/android/youtube/core/model/Video$Movie;
.super Lcom/google/android/youtube/core/model/Video$Pro;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Movie"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter "releaseDate"
    .parameter "availabilityStart"
    .parameter "availabilityEnd"
    .parameter "posterUri"
    .parameter "trailersUri"
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
            ")V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, releaseMediums:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, genres:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Video$Genre;>;"
    .local p3, credits:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct/range {p0 .. p8}, Lcom/google/android/youtube/core/model/Video$Pro;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 183
    return-void
.end method
