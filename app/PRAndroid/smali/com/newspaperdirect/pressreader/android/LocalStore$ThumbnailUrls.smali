.class Lcom/newspaperdirect/pressreader/android/LocalStore$ThumbnailUrls;
.super Ljava/lang/Object;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThumbnailUrls"
.end annotation


# static fields
.field private static locker:Ljava/lang/Object;

.field private static urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2151
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$ThumbnailUrls;->locker:Ljava/lang/Object;

    .line 2149
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/List;
    .locals 1

    .prologue
    .line 2153
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/LocalStore$ThumbnailUrls;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1()V
    .locals 0

    .prologue
    .line 2165
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/LocalStore$ThumbnailUrls;->reset()V

    return-void
.end method

.method private static get()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2154
    sget-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$ThumbnailUrls;->urls:Ljava/util/List;

    .line 2155
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 2161
    :goto_0
    return-object v0

    .line 2156
    :cond_0
    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$ThumbnailUrls;->locker:Ljava/lang/Object;

    monitor-enter v1

    .line 2157
    :try_start_0
    sget-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$ThumbnailUrls;->urls:Ljava/util/List;

    .line 2158
    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 2156
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2159
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/PRRequests;->getThumbnailUrls()Ljava/util/List;

    move-result-object v0

    .line 2160
    sput-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$ThumbnailUrls;->urls:Ljava/util/List;

    .line 2161
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static reset()V
    .locals 2

    .prologue
    .line 2166
    sget-object v0, Lcom/newspaperdirect/pressreader/android/LocalStore$ThumbnailUrls;->locker:Ljava/lang/Object;

    monitor-enter v0

    .line 2167
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$ThumbnailUrls;->urls:Ljava/util/List;

    .line 2166
    monitor-exit v0

    .line 2169
    return-void

    .line 2166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
