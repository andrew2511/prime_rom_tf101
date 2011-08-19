.class public final Lcom/google/android/music/store/MusicContent$Recent;
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
    name = "Recent"
.end annotation


# static fields
.field public static final ALBUM_ARTIST:Ljava/lang/String; = "album_artist"

.field public static final ALBUM_ARTIST_ID:Ljava/lang/String; = "album_artist_id"

.field public static final ALBUM_ID:Ljava/lang/String; = "RecentAlbumId"

.field public static final ALBUM_NAME:Ljava/lang/String; = "album_name"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.google.music.recent"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.google.music.recent"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final LIST_ID:Ljava/lang/String; = "RecentListId"

.field public static final LIST_NAME:Ljava/lang/String; = "list_name"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1059
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "Recent"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MusicContent$Recent;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
