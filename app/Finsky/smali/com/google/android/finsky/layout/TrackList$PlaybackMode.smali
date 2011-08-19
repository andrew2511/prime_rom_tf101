.class final enum Lcom/google/android/finsky/layout/TrackList$PlaybackMode;
.super Ljava/lang/Enum;
.source "TrackList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/TrackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PlaybackMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/layout/TrackList$PlaybackMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

.field public static final enum PLAY_ALL_TRACKS:Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

.field public static final enum PLAY_ONE_TRACK:Lcom/google/android/finsky/layout/TrackList$PlaybackMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    const-string v1, "PLAY_ONE_TRACK"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/layout/TrackList$PlaybackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/layout/TrackList$PlaybackMode;->PLAY_ONE_TRACK:Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    new-instance v0, Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    const-string v1, "PLAY_ALL_TRACKS"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/layout/TrackList$PlaybackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/layout/TrackList$PlaybackMode;->PLAY_ALL_TRACKS:Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    sget-object v1, Lcom/google/android/finsky/layout/TrackList$PlaybackMode;->PLAY_ONE_TRACK:Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/layout/TrackList$PlaybackMode;->PLAY_ALL_TRACKS:Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/finsky/layout/TrackList$PlaybackMode;->$VALUES:[Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/layout/TrackList$PlaybackMode;
    .locals 1
    .parameter

    .prologue
    .line 46
    const-class v0, Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/finsky/layout/TrackList$PlaybackMode;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/android/finsky/layout/TrackList$PlaybackMode;->$VALUES:[Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    invoke-virtual {v0}, [Lcom/google/android/finsky/layout/TrackList$PlaybackMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/layout/TrackList$PlaybackMode;

    return-object v0
.end method
