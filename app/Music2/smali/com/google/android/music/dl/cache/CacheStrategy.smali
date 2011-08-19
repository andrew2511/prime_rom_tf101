.class public abstract Lcom/google/android/music/dl/cache/CacheStrategy;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "MusicCache"


# instance fields
.field protected final LOGV:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "MusicCache"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/dl/cache/CacheStrategy;->LOGV:Z

    return-void
.end method


# virtual methods
.method public abstract findSpaceForCacheFile(Lcom/google/android/music/dl/DownloadOrder;Ljava/io/File;)J
.end method
