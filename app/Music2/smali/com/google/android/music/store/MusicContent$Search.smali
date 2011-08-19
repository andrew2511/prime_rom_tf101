.class public final Lcom/google/android/music/store/MusicContent$Search;
.super Ljava/lang/Object;
.source "MusicContent.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/MusicContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Search"
.end annotation


# static fields
.field public static final ALBUM:Ljava/lang/String; = "Album"

.field public static final ALBUM_ARTIST:Ljava/lang/String; = "AlbumArtist"

.field public static final ALBUM_ARTIST_ID:Ljava/lang/String; = "AlbumArtistId"

.field public static final ALBUM_COUNT:Ljava/lang/String; = "albumCount"

.field public static final ALBUM_ID:Ljava/lang/String; = "AlbumId"

.field public static final ARTIST:Ljava/lang/String; = "Artist"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final ITEM_COUNT:Ljava/lang/String; = "itemCount"

.field public static final ITEM_NAME:Ljava/lang/String; = "searchName"

.field public static final ITEM_SORT_NAME:Ljava/lang/String; = "searchSortName"

.field public static final ITEM_TYPE:Ljava/lang/String; = "searchType"

.field public static final ITEM_TYPE_ALBUM:I = 0x3

.field public static final ITEM_TYPE_ALBUMARTIST:I = 0x1

.field public static final ITEM_TYPE_ARTIST:I = 0x2

.field public static final ITEM_TYPE_PLAYLIST:I = 0x4

.field public static final ITEM_TYPE_TRACK:I = 0x5

.field public static final YEAR:Ljava/lang/String; = "year"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 936
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "search"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MusicContent$Search;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSearchPath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "searchString"

    .prologue
    .line 940
    sget-object v0, Lcom/google/android/music/store/MusicContent$Search;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
