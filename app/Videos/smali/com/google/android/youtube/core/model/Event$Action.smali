.class public final enum Lcom/google/android/youtube/core/model/Event$Action;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/core/model/Event$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/model/Event$Action;

.field public static final enum FRIEND_ADDED:Lcom/google/android/youtube/core/model/Event$Action;

.field public static final enum USER_SUBSCRIPTION_ADDED:Lcom/google/android/youtube/core/model/Event$Action;

.field public static final enum VIDEO_COMMENTED:Lcom/google/android/youtube/core/model/Event$Action;

.field public static final enum VIDEO_FAVORITED:Lcom/google/android/youtube/core/model/Event$Action;

.field public static final enum VIDEO_RATED:Lcom/google/android/youtube/core/model/Event$Action;

.field public static final enum VIDEO_SHARED:Lcom/google/android/youtube/core/model/Event$Action;

.field public static final enum VIDEO_UPLOADED:Lcom/google/android/youtube/core/model/Event$Action;


# instance fields
.field public final stringId:I

.field public final targetsVideo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 22
    new-instance v0, Lcom/google/android/youtube/core/model/Event$Action;

    const-string v1, "VIDEO_RATED"

    const v2, 0x7f0c002b

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/google/android/youtube/core/model/Event$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_RATED:Lcom/google/android/youtube/core/model/Event$Action;

    .line 23
    new-instance v0, Lcom/google/android/youtube/core/model/Event$Action;

    const-string v1, "VIDEO_SHARED"

    const v2, 0x7f0c002c

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/google/android/youtube/core/model/Event$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_SHARED:Lcom/google/android/youtube/core/model/Event$Action;

    .line 24
    new-instance v0, Lcom/google/android/youtube/core/model/Event$Action;

    const-string v1, "VIDEO_FAVORITED"

    const v2, 0x7f0c002d

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/google/android/youtube/core/model/Event$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_FAVORITED:Lcom/google/android/youtube/core/model/Event$Action;

    .line 25
    new-instance v0, Lcom/google/android/youtube/core/model/Event$Action;

    const-string v1, "VIDEO_COMMENTED"

    const v2, 0x7f0c002e

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/google/android/youtube/core/model/Event$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_COMMENTED:Lcom/google/android/youtube/core/model/Event$Action;

    .line 26
    new-instance v0, Lcom/google/android/youtube/core/model/Event$Action;

    const-string v1, "VIDEO_UPLOADED"

    const v2, 0x7f0c002f

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/google/android/youtube/core/model/Event$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_UPLOADED:Lcom/google/android/youtube/core/model/Event$Action;

    .line 27
    new-instance v0, Lcom/google/android/youtube/core/model/Event$Action;

    const-string v1, "FRIEND_ADDED"

    const/4 v2, 0x5

    const v3, 0x7f0c0030

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/android/youtube/core/model/Event$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/google/android/youtube/core/model/Event$Action;->FRIEND_ADDED:Lcom/google/android/youtube/core/model/Event$Action;

    .line 28
    new-instance v0, Lcom/google/android/youtube/core/model/Event$Action;

    const-string v1, "USER_SUBSCRIPTION_ADDED"

    const/4 v2, 0x6

    const v3, 0x7f0c0031

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/android/youtube/core/model/Event$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/google/android/youtube/core/model/Event$Action;->USER_SUBSCRIPTION_ADDED:Lcom/google/android/youtube/core/model/Event$Action;

    .line 21
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/youtube/core/model/Event$Action;

    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_RATED:Lcom/google/android/youtube/core/model/Event$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_SHARED:Lcom/google/android/youtube/core/model/Event$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_FAVORITED:Lcom/google/android/youtube/core/model/Event$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_COMMENTED:Lcom/google/android/youtube/core/model/Event$Action;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/youtube/core/model/Event$Action;->VIDEO_UPLOADED:Lcom/google/android/youtube/core/model/Event$Action;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/model/Event$Action;->FRIEND_ADDED:Lcom/google/android/youtube/core/model/Event$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/youtube/core/model/Event$Action;->USER_SUBSCRIPTION_ADDED:Lcom/google/android/youtube/core/model/Event$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/model/Event$Action;->$VALUES:[Lcom/google/android/youtube/core/model/Event$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "stringId"
    .parameter "targetsVideo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/google/android/youtube/core/model/Event$Action;->stringId:I

    .line 38
    iput-boolean p4, p0, Lcom/google/android/youtube/core/model/Event$Action;->targetsVideo:Z

    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Action;
    .locals 1
    .parameter "name"

    .prologue
    .line 21
    const-class v0, Lcom/google/android/youtube/core/model/Event$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/Event$Action;

    return-object p0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/Event$Action;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/youtube/core/model/Event$Action;->$VALUES:[Lcom/google/android/youtube/core/model/Event$Action;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/model/Event$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/model/Event$Action;

    return-object v0
.end method
