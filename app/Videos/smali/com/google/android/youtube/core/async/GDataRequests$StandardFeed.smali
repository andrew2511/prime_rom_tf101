.class public final enum Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;
.super Ljava/lang/Enum;
.source "GDataRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/async/GDataRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StandardFeed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

.field public static final enum MOST_DISCUSSED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

.field public static final enum MOST_LINKED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

.field public static final enum MOST_POPULAR:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

.field public static final enum MOST_RESPONDED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

.field public static final enum MOST_VIEWED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

.field public static final enum RECENTLY_FEATURED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

.field public static final enum TOP_FAVORITES:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

.field public static final enum TOP_RATED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

.field public static final enum WATCH_ON_MOBILE:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    const-string v1, "MOST_VIEWED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->MOST_VIEWED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    .line 77
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    const-string v1, "TOP_RATED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->TOP_RATED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    .line 78
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    const-string v1, "MOST_DISCUSSED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->MOST_DISCUSSED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    .line 79
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    const-string v1, "TOP_FAVORITES"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->TOP_FAVORITES:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    .line 80
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    const-string v1, "MOST_RESPONDED"

    invoke-direct {v0, v1, v7}, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->MOST_RESPONDED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    .line 81
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    const-string v1, "MOST_POPULAR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->MOST_POPULAR:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    .line 82
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    const-string v1, "MOST_LINKED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->MOST_LINKED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    .line 83
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    const-string v1, "RECENTLY_FEATURED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->RECENTLY_FEATURED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    .line 84
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    const-string v1, "WATCH_ON_MOBILE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->WATCH_ON_MOBILE:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    .line 75
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->MOST_VIEWED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->TOP_RATED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->MOST_DISCUSSED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->TOP_FAVORITES:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->MOST_RESPONDED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->MOST_POPULAR:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->MOST_LINKED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->RECENTLY_FEATURED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->WATCH_ON_MOBILE:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->$VALUES:[Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;
    .locals 1
    .parameter "name"

    .prologue
    .line 75
    const-class v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    return-object p0
.end method

.method public static values()[Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->$VALUES:[Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
