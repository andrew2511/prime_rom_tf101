.class public Lcom/android/gallery3d/data/DownloadCache$Entry;
.super Ljava/lang/Object;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field public cacheFile:Ljava/io/File;

.field protected mId:J

.field final synthetic this$0:Lcom/android/gallery3d/data/DownloadCache;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/DownloadCache;JLjava/io/File;)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "cacheFile"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/gallery3d/data/DownloadCache$Entry;->this$0:Lcom/android/gallery3d/data/DownloadCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-wide p2, p0, Lcom/android/gallery3d/data/DownloadCache$Entry;->mId:J

    .line 283
    invoke-static {p4}, Lcom/android/gallery3d/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/android/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    .line 284
    return-void
.end method


# virtual methods
.method public associateWith(Ljava/lang/Object;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/gallery3d/data/DownloadCache$Entry;->this$0:Lcom/android/gallery3d/data/DownloadCache;

    invoke-static {v0}, Lcom/android/gallery3d/data/DownloadCache;->access$200(Lcom/android/gallery3d/data/DownloadCache;)Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-static {p1}, Lcom/android/gallery3d/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    return-void
.end method
