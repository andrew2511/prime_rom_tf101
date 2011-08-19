.class public final enum Lcom/google/android/youtube/core/model/Stream$Quality;
.super Ljava/lang/Enum;
.source "Stream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Quality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/core/model/Stream$Quality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/model/Stream$Quality;

.field public static final enum DOWNLOAD_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

.field public static final enum STREAM_240P:Lcom/google/android/youtube/core/model/Stream$Quality;

.field public static final enum STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

.field public static final enum STREAM_405P:Lcom/google/android/youtube/core/model/Stream$Quality;

.field public static final enum STREAM_480P:Lcom/google/android/youtube/core/model/Stream$Quality;

.field public static final enum STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

.field public static final enum UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    const-string v1, "STREAM_240P"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/model/Stream$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_240P:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 16
    new-instance v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    const-string v1, "STREAM_360P"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/model/Stream$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 17
    new-instance v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    const-string v1, "STREAM_405P"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/model/Stream$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_405P:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 18
    new-instance v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    const-string v1, "STREAM_480P"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/core/model/Stream$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_480P:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 19
    new-instance v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    const-string v1, "STREAM_720P"

    invoke-direct {v0, v1, v7}, Lcom/google/android/youtube/core/model/Stream$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 20
    new-instance v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    const-string v1, "DOWNLOAD_720P"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/model/Stream$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->DOWNLOAD_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 21
    new-instance v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/model/Stream$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 14
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/youtube/core/model/Stream$Quality;

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_240P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_405P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_480P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->DOWNLOAD_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->$VALUES:[Lcom/google/android/youtube/core/model/Stream$Quality;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Stream$Quality;
    .locals 1
    .parameter

    .prologue
    .line 14
    const-class v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/youtube/core/model/Stream$Quality;

    return-object p0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/Stream$Quality;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->$VALUES:[Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/model/Stream$Quality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/model/Stream$Quality;

    return-object v0
.end method
