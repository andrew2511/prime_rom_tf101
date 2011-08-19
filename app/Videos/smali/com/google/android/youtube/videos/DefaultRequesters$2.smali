.class Lcom/google/android/youtube/videos/DefaultRequesters$2;
.super Ljava/lang/Object;
.source "DefaultRequesters.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/DefaultRequesters;->triggerCacheShrinking(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/DefaultRequesters;

.field final synthetic val$limit:J

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$suffix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/DefaultRequesters;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/google/android/youtube/videos/DefaultRequesters$2;->this$0:Lcom/google/android/youtube/videos/DefaultRequesters;

    iput-object p2, p0, Lcom/google/android/youtube/videos/DefaultRequesters$2;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/youtube/videos/DefaultRequesters$2;->val$suffix:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/youtube/videos/DefaultRequesters$2;->val$limit:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters$2;->val$path:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/videos/DefaultRequesters$2;->val$suffix:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/youtube/videos/DefaultRequesters$2;->val$limit:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/youtube/core/utils/Util;->shrinkDirSize(Ljava/lang/String;Ljava/lang/String;J)V

    .line 577
    return-void
.end method
