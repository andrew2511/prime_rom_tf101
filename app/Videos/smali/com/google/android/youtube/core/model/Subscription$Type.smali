.class public final enum Lcom/google/android/youtube/core/model/Subscription$Type;
.super Ljava/lang/Enum;
.source "Subscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/core/model/Subscription$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/model/Subscription$Type;

.field public static final enum CHANNEL:Lcom/google/android/youtube/core/model/Subscription$Type;

.field public static final enum FAVORITES:Lcom/google/android/youtube/core/model/Subscription$Type;

.field public static final enum PLAYLIST:Lcom/google/android/youtube/core/model/Subscription$Type;

.field public static final enum QUERY:Lcom/google/android/youtube/core/model/Subscription$Type;

.field public static final enum USER:Lcom/google/android/youtube/core/model/Subscription$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/google/android/youtube/core/model/Subscription$Type;

    const-string v1, "USER"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/model/Subscription$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Subscription$Type;->USER:Lcom/google/android/youtube/core/model/Subscription$Type;

    .line 25
    new-instance v0, Lcom/google/android/youtube/core/model/Subscription$Type;

    const-string v1, "FAVORITES"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/model/Subscription$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Subscription$Type;->FAVORITES:Lcom/google/android/youtube/core/model/Subscription$Type;

    .line 26
    new-instance v0, Lcom/google/android/youtube/core/model/Subscription$Type;

    const-string v1, "PLAYLIST"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/model/Subscription$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Subscription$Type;->PLAYLIST:Lcom/google/android/youtube/core/model/Subscription$Type;

    .line 27
    new-instance v0, Lcom/google/android/youtube/core/model/Subscription$Type;

    const-string v1, "QUERY"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/model/Subscription$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Subscription$Type;->QUERY:Lcom/google/android/youtube/core/model/Subscription$Type;

    .line 28
    new-instance v0, Lcom/google/android/youtube/core/model/Subscription$Type;

    const-string v1, "CHANNEL"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/core/model/Subscription$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/Subscription$Type;->CHANNEL:Lcom/google/android/youtube/core/model/Subscription$Type;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/youtube/core/model/Subscription$Type;

    sget-object v1, Lcom/google/android/youtube/core/model/Subscription$Type;->USER:Lcom/google/android/youtube/core/model/Subscription$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/model/Subscription$Type;->FAVORITES:Lcom/google/android/youtube/core/model/Subscription$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/model/Subscription$Type;->PLAYLIST:Lcom/google/android/youtube/core/model/Subscription$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/model/Subscription$Type;->QUERY:Lcom/google/android/youtube/core/model/Subscription$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/model/Subscription$Type;->CHANNEL:Lcom/google/android/youtube/core/model/Subscription$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/youtube/core/model/Subscription$Type;->$VALUES:[Lcom/google/android/youtube/core/model/Subscription$Type;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/Subscription$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/Subscription$Type;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/youtube/core/model/Subscription$Type;->$VALUES:[Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/model/Subscription$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/model/Subscription$Type;

    return-object v0
.end method
