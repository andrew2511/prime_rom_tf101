.class Lcom/newspaperdirect/pressreader/android/core/Sharing$3$1;
.super Ljava/lang/Object;
.source "Sharing.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization$OAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/Sharing$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/core/Sharing$3;

.field private final synthetic val$svc:Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/Sharing$3;Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$3$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/Sharing$3;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$3$1;->val$svc:Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$3$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/Sharing$3;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/Sharing$3;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing$3;)Lcom/newspaperdirect/pressreader/android/core/Sharing;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$3$1;->val$svc:Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$7(Lcom/newspaperdirect/pressreader/android/core/Sharing;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$3$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/Sharing$3;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/Sharing$3;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing$3;)Lcom/newspaperdirect/pressreader/android/core/Sharing;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$3$1;->val$svc:Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/OAuthAuthorization;->getAccessTokenSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$8(Lcom/newspaperdirect/pressreader/android/core/Sharing;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$3$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/Sharing$3;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/Sharing$3;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing$3;)Lcom/newspaperdirect/pressreader/android/core/Sharing;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$3$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/Sharing$3;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/Sharing$3;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing$3;)Lcom/newspaperdirect/pressreader/android/core/Sharing;

    move-result-object v1

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$4(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$9(Lcom/newspaperdirect/pressreader/android/core/Sharing;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$3$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/Sharing$3;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/Sharing$3;->access$0(Lcom/newspaperdirect/pressreader/android/core/Sharing$3;)Lcom/newspaperdirect/pressreader/android/core/Sharing;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/Sharing;->access$5(Lcom/newspaperdirect/pressreader/android/core/Sharing;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Network error"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 178
    return-void
.end method
