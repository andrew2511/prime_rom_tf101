.class public final enum Lcom/google/android/youtube/core/Analytics$VideoCategory;
.super Ljava/lang/Enum;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/core/Analytics$VideoCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/Analytics$VideoCategory;

.field public static final enum ArtistTracks:Lcom/google/android/youtube/core/Analytics$VideoCategory;

.field public static final enum Browse:Lcom/google/android/youtube/core/Analytics$VideoCategory;

.field public static final enum ChannelActivity:Lcom/google/android/youtube/core/Analytics$VideoCategory;

.field public static final enum ChannelFavorites:Lcom/google/android/youtube/core/Analytics$VideoCategory;

.field public static final enum ChannelUploads:Lcom/google/android/youtube/core/Analytics$VideoCategory;

.field public static final enum Favorites:Lcom/google/android/youtube/core/Analytics$VideoCategory;

.field public static final enum HomeFeed:Lcom/google/android/youtube/core/Analytics$VideoCategory;

.field public static final enum Playlist:Lcom/google/android/youtube/core/Analytics$VideoCategory;

.field public static final enum PlaylistPlayAll:Lcom/google/android/youtube/core/Analytics$VideoCategory;

.field public static final enum RelatedArtist:Lcom/google/android/youtube/core/Analytics$VideoCategory;

.field public static final enum RelatedVideos:Lcom/google/android/youtube/core/Analytics$VideoCategory;

.field public static final enum SearchResults:Lcom/google/android/youtube/core/Analytics$VideoCategory;

.field public static final enum Unknown:Lcom/google/android/youtube/core/Analytics$VideoCategory;

.field public static final enum Uploads:Lcom/google/android/youtube/core/Analytics$VideoCategory;

.field public static final enum Widget:Lcom/google/android/youtube/core/Analytics$VideoCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    new-instance v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/Analytics$VideoCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Unknown:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 68
    new-instance v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    const-string v1, "HomeFeed"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/Analytics$VideoCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;->HomeFeed:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 69
    new-instance v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    const-string v1, "Browse"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/Analytics$VideoCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Browse:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 70
    new-instance v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    const-string v1, "SearchResults"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/core/Analytics$VideoCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;->SearchResults:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 71
    new-instance v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    const-string v1, "RelatedVideos"

    invoke-direct {v0, v1, v7}, Lcom/google/android/youtube/core/Analytics$VideoCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;->RelatedVideos:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 72
    new-instance v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    const-string v1, "Uploads"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics$VideoCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Uploads:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 73
    new-instance v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    const-string v1, "Favorites"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics$VideoCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Favorites:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 74
    new-instance v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    const-string v1, "Playlist"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics$VideoCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Playlist:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 75
    new-instance v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    const-string v1, "PlaylistPlayAll"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics$VideoCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;->PlaylistPlayAll:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 76
    new-instance v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    const-string v1, "ChannelUploads"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics$VideoCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ChannelUploads:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 77
    new-instance v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    const-string v1, "ChannelFavorites"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics$VideoCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ChannelFavorites:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 78
    new-instance v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    const-string v1, "ChannelActivity"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics$VideoCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ChannelActivity:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 79
    new-instance v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    const-string v1, "Widget"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics$VideoCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Widget:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 80
    new-instance v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    const-string v1, "RelatedArtist"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics$VideoCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;->RelatedArtist:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 81
    new-instance v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    const-string v1, "ArtistTracks"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/Analytics$VideoCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ArtistTracks:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 66
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v1, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Unknown:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/Analytics$VideoCategory;->HomeFeed:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Browse:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/Analytics$VideoCategory;->SearchResults:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/Analytics$VideoCategory;->RelatedVideos:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Uploads:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Favorites:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Playlist:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/youtube/core/Analytics$VideoCategory;->PlaylistPlayAll:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ChannelUploads:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ChannelFavorites:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ChannelActivity:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Widget:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/youtube/core/Analytics$VideoCategory;->RelatedArtist:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ArtistTracks:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;->$VALUES:[Lcom/google/android/youtube/core/Analytics$VideoCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/Analytics$VideoCategory;
    .locals 1
    .parameter

    .prologue
    .line 66
    const-class v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    return-object p0
.end method

.method public static values()[Lcom/google/android/youtube/core/Analytics$VideoCategory;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;->$VALUES:[Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/Analytics$VideoCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/Analytics$VideoCategory;

    return-object v0
.end method
