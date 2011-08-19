.class public final enum Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;
.super Ljava/lang/Enum;
.source "YouTubeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/tablet/YouTubeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

.field public static final enum DISABLED:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

.field public static final enum EXPANDED:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

.field public static final enum ICONIFIED:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;->DISABLED:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    .line 43
    new-instance v0, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    const-string v1, "ICONIFIED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;->ICONIFIED:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    .line 44
    new-instance v0, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    const-string v1, "EXPANDED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;->EXPANDED:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    sget-object v1, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;->DISABLED:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;->ICONIFIED:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;->EXPANDED:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;->$VALUES:[Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;
    .locals 1
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;->$VALUES:[Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    invoke-virtual {v0}, [Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    return-object v0
.end method
