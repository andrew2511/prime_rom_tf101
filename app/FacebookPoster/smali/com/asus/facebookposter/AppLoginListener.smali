.class public Lcom/asus/facebookposter/AppLoginListener;
.super Ljava/lang/Object;
.source "AppLoginListener.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# instance fields
.field private facebook:Lcom/facebook/android/Facebook;

.field private mFacebookPoster:Lcom/asus/facebookposter/FacebookPoster;

.field private mMsgToShare:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/android/Facebook;Lcom/asus/facebookposter/FacebookPoster;Ljava/lang/String;)V
    .locals 0
    .parameter "fb"
    .parameter "facebookPoster"
    .parameter "msgToShare"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/asus/facebookposter/AppLoginListener;->facebook:Lcom/facebook/android/Facebook;

    .line 20
    iput-object p2, p0, Lcom/asus/facebookposter/AppLoginListener;->mFacebookPoster:Lcom/asus/facebookposter/FacebookPoster;

    .line 21
    iput-object p3, p0, Lcom/asus/facebookposter/AppLoginListener;->mMsgToShare:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 25
    const-string v0, "FacebookPoster"

    const-string v1, "AppLoginListener login canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 29
    const-string v0, "FacebookPoster"

    const-string v1, "AppLoginListener onComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v0, p0, Lcom/asus/facebookposter/AppLoginListener;->facebook:Lcom/facebook/android/Facebook;

    iget-object v1, p0, Lcom/asus/facebookposter/AppLoginListener;->mFacebookPoster:Lcom/asus/facebookposter/FacebookPoster;

    invoke-static {v0, v1}, Lcom/asus/facebookposter/SessionStore;->save(Lcom/facebook/android/Facebook;Landroid/content/Context;)Z

    .line 31
    iget-object v0, p0, Lcom/asus/facebookposter/AppLoginListener;->mFacebookPoster:Lcom/asus/facebookposter/FacebookPoster;

    iget-object v1, p0, Lcom/asus/facebookposter/AppLoginListener;->mMsgToShare:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/asus/facebookposter/FacebookPoster;->showFbDialog(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 35
    const-string v0, "FacebookPoster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppLoginListener dialog error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 39
    const-string v0, "FacebookPoster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppLoginListener facebook error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method
