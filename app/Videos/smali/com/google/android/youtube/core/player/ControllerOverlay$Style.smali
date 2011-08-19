.class public final enum Lcom/google/android/youtube/core/player/ControllerOverlay$Style;
.super Ljava/lang/Enum;
.source "ControllerOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/player/ControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/core/player/ControllerOverlay$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

.field public static final enum AD:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

.field public static final enum MOVIE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

.field public static final enum YOUTUBE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;


# instance fields
.field public final ad:Z

.field public final progressColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    const-string v1, "YOUTUBE"

    const v2, -0xd0cf

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->YOUTUBE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    .line 26
    new-instance v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    const-string v1, "AD"

    const v2, -0x1744d5

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->AD:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    .line 27
    new-instance v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    const-string v1, "MOVIE"

    const v2, -0x3900cd

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->MOVIE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    sget-object v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->YOUTUBE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->AD:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->MOVIE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->$VALUES:[Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "progressColor"
    .parameter "ad"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->progressColor:I

    .line 34
    iput-boolean p4, p0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->ad:Z

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/player/ControllerOverlay$Style;
    .locals 1
    .parameter "name"

    .prologue
    .line 24
    const-class v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    return-object p0
.end method

.method public static values()[Lcom/google/android/youtube/core/player/ControllerOverlay$Style;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->$VALUES:[Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    return-object v0
.end method
