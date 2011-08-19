.class Lcom/google/android/youtube/app/YouTubeApplication$3;
.super Ljava/lang/Object;
.source "YouTubeApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/app/YouTubeApplication;->onSignOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/YouTubeApplication;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/android/youtube/app/YouTubeApplication$3;->this$0:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication$3;->this$0:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-static {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->access$100(Lcom/google/android/youtube/app/YouTubeApplication;)Lcom/google/android/youtube/app/DefaultRequesters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/DefaultRequesters;->clearUserCaches()V

    .line 292
    return-void
.end method
