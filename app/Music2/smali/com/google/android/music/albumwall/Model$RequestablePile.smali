.class Lcom/google/android/music/albumwall/Model$RequestablePile;
.super Lcom/google/android/music/albumwall/Model$Requestable;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestablePile"
.end annotation


# instance fields
.field mPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/albumwall/Model$Requestable;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/albumwall/Model$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/google/android/music/albumwall/Model$RequestablePile;-><init>()V

    return-void
.end method
