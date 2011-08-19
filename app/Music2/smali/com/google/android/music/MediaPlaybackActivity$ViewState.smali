.class final enum Lcom/google/android/music/MediaPlaybackActivity$ViewState;
.super Ljava/lang/Enum;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/MediaPlaybackActivity$ViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/MediaPlaybackActivity$ViewState;

.field public static final enum BUFFERING:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

.field public static final enum CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

.field public static final enum ERROR:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

.field public static final enum NORMAL:Lcom/google/android/music/MediaPlaybackActivity$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/MediaPlaybackActivity$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->NORMAL:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    .line 94
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    const-string v1, "BUFFERING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/MediaPlaybackActivity$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->BUFFERING:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    .line 95
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/MediaPlaybackActivity$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ERROR:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    .line 96
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    const-string v1, "CONTROLS"

    invoke-direct {v0, v1, v5}, Lcom/google/android/music/MediaPlaybackActivity$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    .line 92
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->NORMAL:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->BUFFERING:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ERROR:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->$VALUES:[Lcom/google/android/music/MediaPlaybackActivity$ViewState;

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
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/MediaPlaybackActivity$ViewState;
    .locals 1
    .parameter "name"

    .prologue
    .line 92
    const-class v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    return-object p0
.end method

.method public static values()[Lcom/google/android/music/MediaPlaybackActivity$ViewState;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->$VALUES:[Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-virtual {v0}, [Lcom/google/android/music/MediaPlaybackActivity$ViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    return-object v0
.end method
