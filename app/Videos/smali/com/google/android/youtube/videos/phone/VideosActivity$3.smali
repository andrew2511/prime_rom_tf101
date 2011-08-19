.class Lcom/google/android/youtube/videos/phone/VideosActivity$3;
.super Ljava/lang/Object;
.source "VideosActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/phone/VideosActivity;->onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/phone/VideosActivity;

.field final synthetic val$userAuth:Lcom/google/android/youtube/core/model/UserAuth;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/phone/VideosActivity;Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/google/android/youtube/videos/phone/VideosActivity$3;->this$0:Lcom/google/android/youtube/videos/phone/VideosActivity;

    iput-object p2, p0, Lcom/google/android/youtube/videos/phone/VideosActivity$3;->val$userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity$3;->this$0:Lcom/google/android/youtube/videos/phone/VideosActivity;

    invoke-static {v0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->access$300(Lcom/google/android/youtube/videos/phone/VideosActivity;)Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity$3;->this$0:Lcom/google/android/youtube/videos/phone/VideosActivity;

    iget-object v1, p0, Lcom/google/android/youtube/videos/phone/VideosActivity$3;->val$userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->startShopActivity(Landroid/app/Activity;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 219
    :cond_0
    return-void
.end method
