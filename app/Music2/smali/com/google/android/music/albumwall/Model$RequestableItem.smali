.class Lcom/google/android/music/albumwall/Model$RequestableItem;
.super Lcom/google/android/music/albumwall/Model$Requestable;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestableItem"
.end annotation


# instance fields
.field mItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/albumwall/Model$Requestable;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/albumwall/Model$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/google/android/music/albumwall/Model$RequestableItem;-><init>()V

    return-void
.end method
