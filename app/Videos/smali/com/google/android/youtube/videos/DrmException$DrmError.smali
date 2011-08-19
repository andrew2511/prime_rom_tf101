.class public final enum Lcom/google/android/youtube/videos/DrmException$DrmError;
.super Ljava/lang/Enum;
.source "DrmException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/DrmException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrmError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/videos/DrmException$DrmError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/videos/DrmException$DrmError;

.field public static final enum AUTHENTICATION_FAILED:Lcom/google/android/youtube/videos/DrmException$DrmError;

.field public static final enum KEY_VERIFICATION_FAILED:Lcom/google/android/youtube/videos/DrmException$DrmError;

.field public static final enum LICENSE_EXPIRED:Lcom/google/android/youtube/videos/DrmException$DrmError;

.field public static final enum LICENSE_PINNED:Lcom/google/android/youtube/videos/DrmException$DrmError;

.field public static final enum NO_LICENSE:Lcom/google/android/youtube/videos/DrmException$DrmError;

.field public static final enum ROOTED_DEVICE:Lcom/google/android/youtube/videos/DrmException$DrmError;

.field public static final enum UNKNOWN:Lcom/google/android/youtube/videos/DrmException$DrmError;

.field public static final enum UNPIN_SUCCESSFUL:Lcom/google/android/youtube/videos/DrmException$DrmError;

.field public static final enum USER_GEO_RESTRICTED:Lcom/google/android/youtube/videos/DrmException$DrmError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/google/android/youtube/videos/DrmException$DrmError;

    const-string v1, "LICENSE_EXPIRED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/videos/DrmException$DrmError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->LICENSE_EXPIRED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 12
    new-instance v0, Lcom/google/android/youtube/videos/DrmException$DrmError;

    const-string v1, "LICENSE_PINNED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/videos/DrmException$DrmError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->LICENSE_PINNED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 13
    new-instance v0, Lcom/google/android/youtube/videos/DrmException$DrmError;

    const-string v1, "NO_LICENSE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/videos/DrmException$DrmError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->NO_LICENSE:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 14
    new-instance v0, Lcom/google/android/youtube/videos/DrmException$DrmError;

    const-string v1, "AUTHENTICATION_FAILED"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/videos/DrmException$DrmError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->AUTHENTICATION_FAILED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 15
    new-instance v0, Lcom/google/android/youtube/videos/DrmException$DrmError;

    const-string v1, "USER_GEO_RESTRICTED"

    invoke-direct {v0, v1, v7}, Lcom/google/android/youtube/videos/DrmException$DrmError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->USER_GEO_RESTRICTED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 16
    new-instance v0, Lcom/google/android/youtube/videos/DrmException$DrmError;

    const-string v1, "KEY_VERIFICATION_FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/videos/DrmException$DrmError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->KEY_VERIFICATION_FAILED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 17
    new-instance v0, Lcom/google/android/youtube/videos/DrmException$DrmError;

    const-string v1, "ROOTED_DEVICE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/videos/DrmException$DrmError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->ROOTED_DEVICE:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 18
    new-instance v0, Lcom/google/android/youtube/videos/DrmException$DrmError;

    const-string v1, "UNPIN_SUCCESSFUL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/videos/DrmException$DrmError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->UNPIN_SUCCESSFUL:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 19
    new-instance v0, Lcom/google/android/youtube/videos/DrmException$DrmError;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/videos/DrmException$DrmError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->UNKNOWN:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 10
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/android/youtube/videos/DrmException$DrmError;

    sget-object v1, Lcom/google/android/youtube/videos/DrmException$DrmError;->LICENSE_EXPIRED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/videos/DrmException$DrmError;->LICENSE_PINNED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/videos/DrmException$DrmError;->NO_LICENSE:Lcom/google/android/youtube/videos/DrmException$DrmError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/videos/DrmException$DrmError;->AUTHENTICATION_FAILED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/videos/DrmException$DrmError;->USER_GEO_RESTRICTED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/videos/DrmException$DrmError;->KEY_VERIFICATION_FAILED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/youtube/videos/DrmException$DrmError;->ROOTED_DEVICE:Lcom/google/android/youtube/videos/DrmException$DrmError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/youtube/videos/DrmException$DrmError;->UNPIN_SUCCESSFUL:Lcom/google/android/youtube/videos/DrmException$DrmError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/youtube/videos/DrmException$DrmError;->UNKNOWN:Lcom/google/android/youtube/videos/DrmException$DrmError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->$VALUES:[Lcom/google/android/youtube/videos/DrmException$DrmError;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/videos/DrmException$DrmError;
    .locals 1
    .parameter "name"

    .prologue
    .line 10
    const-class v0, Lcom/google/android/youtube/videos/DrmException$DrmError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/videos/DrmException$DrmError;

    return-object p0
.end method

.method public static values()[Lcom/google/android/youtube/videos/DrmException$DrmError;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->$VALUES:[Lcom/google/android/youtube/videos/DrmException$DrmError;

    invoke-virtual {v0}, [Lcom/google/android/youtube/videos/DrmException$DrmError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/videos/DrmException$DrmError;

    return-object v0
.end method
