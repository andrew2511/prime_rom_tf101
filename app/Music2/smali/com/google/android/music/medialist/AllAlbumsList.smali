.class public Lcom/google/android/music/medialist/AllAlbumsList;
.super Lcom/google/android/music/medialist/AlbumList;
.source "AllAlbumsList.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/music/medialist/AllAlbumsList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/google/android/music/medialist/AllAlbumsList$1;

    invoke-direct {v0}, Lcom/google/android/music/medialist/AllAlbumsList$1;-><init>()V

    sput-object v0, Lcom/google/android/music/medialist/AllAlbumsList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/music/medialist/AlbumList;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getItemLayout()I
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f040013

    return v0
.end method
