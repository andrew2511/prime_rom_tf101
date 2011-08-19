.class Lcom/newspaperdirect/pressreader/android/core/Sharing$3;
.super Ljava/lang/Object;
.source "Sharing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/Sharing;->TryAuthorize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/Sharing;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing$3;)Lcom/newspaperdirect/pressreader/android/core/Sharing;
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 167
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$1(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;-><init>(Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;)V

    .line 168
    .local v0, svc:Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/Sharing;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$5(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/Sharing$3$1;

    invoke-direct {v2, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/Sharing$3$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/Sharing$3;Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;)V

    invoke-virtual {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->authorize(Landroid/app/Activity;Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;)V

    .line 183
    return-void
.end method
