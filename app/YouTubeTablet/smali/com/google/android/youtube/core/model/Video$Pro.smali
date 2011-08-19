.class public Lcom/google/android/youtube/core/model/Video$Pro;
.super Ljava/lang/Object;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pro"
.end annotation


# instance fields
.field public final availabilityEnd:Ljava/util/Date;

.field public final availabilityStart:Ljava/util/Date;

.field public final credits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final genres:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Video$Genre;",
            ">;"
        }
    .end annotation
.end field

.field public final posterUri:Landroid/net/Uri;

.field public final releaseDate:Ljava/util/Date;

.field public final releaseMediums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final trailersUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
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
    .line 112
    .local p1, releaseMediums:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, genres:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Video$Genre;>;"
    .local p3, credits:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string v0, "releaseMediums may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/Video;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Pro;->releaseMediums:Ljava/util/List;

    .line 116
    const-string v0, "genres may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/Video;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Pro;->genres:Ljava/util/List;

    .line 117
    const-string v0, "credits may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/Video;->access$100(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Pro;->credits:Ljava/util/Map;

    .line 118
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Video$Pro;->releaseDate:Ljava/util/Date;

    .line 119
    iput-object p5, p0, Lcom/google/android/youtube/core/model/Video$Pro;->availabilityStart:Ljava/util/Date;

    .line 120
    iput-object p6, p0, Lcom/google/android/youtube/core/model/Video$Pro;->availabilityEnd:Ljava/util/Date;

    .line 121
    iput-object p7, p0, Lcom/google/android/youtube/core/model/Video$Pro;->posterUri:Landroid/net/Uri;

    .line 122
    iput-object p8, p0, Lcom/google/android/youtube/core/model/Video$Pro;->trailersUri:Landroid/net/Uri;

    .line 123
    return-void
.end method
