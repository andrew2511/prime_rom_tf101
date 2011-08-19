.class public final Lcom/google/android/music/sync/api/MusicApiClientFactory;
.super Ljava/lang/Object;
.source "MusicApiClientFactory.java"


# static fields
.field private static sInstance:Lcom/google/android/music/sync/api/MusicApiClientFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/android/music/sync/api/MusicApiClientFactory;

    invoke-direct {v0}, Lcom/google/android/music/sync/api/MusicApiClientFactory;-><init>()V

    sput-object v0, Lcom/google/android/music/sync/api/MusicApiClientFactory;->sInstance:Lcom/google/android/music/sync/api/MusicApiClientFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/android/music/sync/api/MusicApiClientFactory;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/music/sync/api/MusicApiClientFactory;->sInstance:Lcom/google/android/music/sync/api/MusicApiClientFactory;

    return-object v0
.end method


# virtual methods
.method public createApiClient(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicApiClient;
    .locals 2
    .parameter "context"

    .prologue
    .line 30
    new-instance v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl;-><init>(Landroid/content/Context;Lcom/google/android/music/sync/common/AuthInfo;)V

    return-object v0
.end method

.method public createApiClientWithAuthInfo(Landroid/content/Context;Lcom/google/android/music/sync/common/AuthInfo;)Lcom/google/android/music/sync/api/MusicApiClient;
    .locals 2
    .parameter "context"
    .parameter "authInfo"

    .prologue
    .line 39
    if-nez p2, :cond_0

    .line 40
    new-instance v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;

    new-instance v1, Lcom/google/android/music/sync/google/MusicAuthInfo;

    invoke-direct {v1, p1}, Lcom/google/android/music/sync/google/MusicAuthInfo;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl;-><init>(Landroid/content/Context;Lcom/google/android/music/sync/common/AuthInfo;)V

    .line 42
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;

    invoke-direct {v0, p1, p2}, Lcom/google/android/music/sync/api/MusicApiClientImpl;-><init>(Landroid/content/Context;Lcom/google/android/music/sync/common/AuthInfo;)V

    goto :goto_0
.end method
