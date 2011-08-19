.class Lcom/google/android/youtube/videos/DefaultRequesters$1;
.super Ljava/lang/Object;
.source "DefaultRequesters.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/DefaultRequesters;->onSignOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/DefaultRequesters;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/DefaultRequesters;)V
    .locals 0
    .parameter

    .prologue
    .line 565
    iput-object p1, p0, Lcom/google/android/youtube/videos/DefaultRequesters$1;->this$0:Lcom/google/android/youtube/videos/DefaultRequesters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 567
    const-string v0, "Cleaning persistent cache(s) on sign out"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters$1;->this$0:Lcom/google/android/youtube/videos/DefaultRequesters;

    invoke-static {v0}, Lcom/google/android/youtube/videos/DefaultRequesters;->access$200(Lcom/google/android/youtube/videos/DefaultRequesters;)Lcom/google/android/youtube/core/cache/Cache;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/cache/Cache;->clear()V

    .line 569
    return-void
.end method
