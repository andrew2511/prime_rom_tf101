.class public final enum Lcom/google/android/finsky/model/Track$TrackMode;
.super Ljava/lang/Enum;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/model/Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/model/Track$TrackMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/model/Track$TrackMode;

.field public static final enum LOADING:Lcom/google/android/finsky/model/Track$TrackMode;

.field public static final enum PAUSE:Lcom/google/android/finsky/model/Track$TrackMode;

.field public static final enum PLAYING:Lcom/google/android/finsky/model/Track$TrackMode;

.field public static final enum READY:Lcom/google/android/finsky/model/Track$TrackMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/google/android/finsky/model/Track$TrackMode;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/model/Track$TrackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/model/Track$TrackMode;->READY:Lcom/google/android/finsky/model/Track$TrackMode;

    new-instance v0, Lcom/google/android/finsky/model/Track$TrackMode;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/model/Track$TrackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/model/Track$TrackMode;->LOADING:Lcom/google/android/finsky/model/Track$TrackMode;

    new-instance v0, Lcom/google/android/finsky/model/Track$TrackMode;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/model/Track$TrackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/model/Track$TrackMode;->PLAYING:Lcom/google/android/finsky/model/Track$TrackMode;

    new-instance v0, Lcom/google/android/finsky/model/Track$TrackMode;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/model/Track$TrackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/model/Track$TrackMode;->PAUSE:Lcom/google/android/finsky/model/Track$TrackMode;

    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/finsky/model/Track$TrackMode;

    sget-object v1, Lcom/google/android/finsky/model/Track$TrackMode;->READY:Lcom/google/android/finsky/model/Track$TrackMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/model/Track$TrackMode;->LOADING:Lcom/google/android/finsky/model/Track$TrackMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/model/Track$TrackMode;->PLAYING:Lcom/google/android/finsky/model/Track$TrackMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/model/Track$TrackMode;->PAUSE:Lcom/google/android/finsky/model/Track$TrackMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/finsky/model/Track$TrackMode;->$VALUES:[Lcom/google/android/finsky/model/Track$TrackMode;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/model/Track$TrackMode;
    .locals 1
    .parameter

    .prologue
    .line 16
    const-class v0, Lcom/google/android/finsky/model/Track$TrackMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/finsky/model/Track$TrackMode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/finsky/model/Track$TrackMode;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/finsky/model/Track$TrackMode;->$VALUES:[Lcom/google/android/finsky/model/Track$TrackMode;

    invoke-virtual {v0}, [Lcom/google/android/finsky/model/Track$TrackMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/model/Track$TrackMode;

    return-object v0
.end method
