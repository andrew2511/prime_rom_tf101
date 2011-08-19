.class public Lcom/facebook/android/AsyncFacebookRunner;
.super Ljava/lang/Object;
.source "AsyncFacebookRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/android/AsyncFacebookRunner$RequestListener;
    }
.end annotation


# instance fields
.field fb:Lcom/facebook/android/Facebook;


# direct methods
.method public constructor <init>(Lcom/facebook/android/Facebook;)V
    .locals 0
    .parameter "fb"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/facebook/android/AsyncFacebookRunner;->fb:Lcom/facebook/android/Facebook;

    .line 52
    return-void
.end method


# virtual methods
.method public logout(Landroid/content/Context;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 73
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/android/AsyncFacebookRunner$1;-><init>(Lcom/facebook/android/AsyncFacebookRunner;Landroid/content/Context;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 91
    invoke-virtual {v0}, Lcom/facebook/android/AsyncFacebookRunner$1;->start()V

    .line 92
    return-void
.end method

.method public request(Landroid/os/Bundle;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V
    .locals 2
    .parameter "parameters"
    .parameter "listener"

    .prologue
    .line 121
    const/4 v0, 0x0

    const-string v1, "GET"

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 122
    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V
    .locals 1
    .parameter "graphPath"
    .parameter "parameters"
    .parameter "listener"

    .prologue
    .line 172
    const-string v0, "GET"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 173
    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V
    .locals 6
    .parameter "graphPath"
    .parameter "parameters"
    .parameter "httpMethod"
    .parameter "listener"

    .prologue
    .line 205
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner$2;-><init>(Lcom/facebook/android/AsyncFacebookRunner;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 218
    invoke-virtual {v0}, Lcom/facebook/android/AsyncFacebookRunner$2;->start()V

    .line 219
    return-void
.end method

.method public request(Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V
    .locals 2
    .parameter "graphPath"
    .parameter "listener"

    .prologue
    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "GET"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 144
    return-void
.end method
