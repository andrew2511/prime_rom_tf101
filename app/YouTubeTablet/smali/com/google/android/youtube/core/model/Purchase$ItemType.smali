.class public final enum Lcom/google/android/youtube/core/model/Purchase$ItemType;
.super Ljava/lang/Enum;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Purchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/core/model/Purchase$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/model/Purchase$ItemType;

.field public static final enum MOVIE:Lcom/google/android/youtube/core/model/Purchase$ItemType;

.field public static final enum OTHER:Lcom/google/android/youtube/core/model/Purchase$ItemType;

.field public static final enum SEASON:Lcom/google/android/youtube/core/model/Purchase$ItemType;

.field public static final enum SHOW:Lcom/google/android/youtube/core/model/Purchase$ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/google/android/youtube/core/model/Purchase$ItemType;

    const-string v1, "MOVIE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/model/Purchase$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Purchase$ItemType;->MOVIE:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    .line 26
    new-instance v0, Lcom/google/android/youtube/core/model/Purchase$ItemType;

    const-string v1, "SEASON"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/model/Purchase$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Purchase$ItemType;->SEASON:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    .line 27
    new-instance v0, Lcom/google/android/youtube/core/model/Purchase$ItemType;

    const-string v1, "SHOW"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/model/Purchase$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Purchase$ItemType;->SHOW:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    .line 28
    new-instance v0, Lcom/google/android/youtube/core/model/Purchase$ItemType;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/model/Purchase$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Purchase$ItemType;->OTHER:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/youtube/core/model/Purchase$ItemType;

    sget-object v1, Lcom/google/android/youtube/core/model/Purchase$ItemType;->MOVIE:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/model/Purchase$ItemType;->SEASON:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/model/Purchase$ItemType;->SHOW:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/model/Purchase$ItemType;->OTHER:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/youtube/core/model/Purchase$ItemType;->$VALUES:[Lcom/google/android/youtube/core/model/Purchase$ItemType;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Purchase$ItemType;
    .locals 1
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/google/android/youtube/core/model/Purchase$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/youtube/core/model/Purchase$ItemType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/Purchase$ItemType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/android/youtube/core/model/Purchase$ItemType;->$VALUES:[Lcom/google/android/youtube/core/model/Purchase$ItemType;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/model/Purchase$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/model/Purchase$ItemType;

    return-object v0
.end method
