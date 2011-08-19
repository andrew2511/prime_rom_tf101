.class Lcom/google/android/youtube/videos/DrmManager$1;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Requester;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/DrmManager;->createInternalDrmRequester()Lcom/google/android/youtube/core/async/Requester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<",
        "Lcom/google/android/youtube/videos/DrmRequest;",
        "Lcom/google/android/youtube/videos/DrmResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/DrmManager;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/DrmManager;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/youtube/videos/DrmManager$1;->this$0:Lcom/google/android/youtube/videos/DrmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 1
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/DrmManager$1;->this$0:Lcom/google/android/youtube/videos/DrmManager;

    invoke-static {v0, p1, p2}, Lcom/google/android/youtube/videos/DrmManager;->access$000(Lcom/google/android/youtube/videos/DrmManager;Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 137
    return-void
.end method

.method public bridge synthetic request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    check-cast p1, Lcom/google/android/youtube/videos/DrmRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/DrmManager$1;->request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    return-void
.end method
