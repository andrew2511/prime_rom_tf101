.class Lcom/google/android/youtube/app/player/Director$5;
.super Ljava/lang/Object;
.source "Director.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/app/player/Director;->initCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/Branding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/player/Director;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/player/Director;)V
    .locals 0
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcom/google/android/youtube/app/player/Director$5;->this$0:Lcom/google/android/youtube/app/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 3
    .parameter "request"
    .parameter "exception"

    .prologue
    const/4 v2, 0x0

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t retrieve branding info from [uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 843
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director$5;->this$0:Lcom/google/android/youtube/app/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/app/player/Director;->access$700(Lcom/google/android/youtube/app/player/Director;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director$5;->this$0:Lcom/google/android/youtube/app/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/app/player/Director;->access$800(Lcom/google/android/youtube/app/player/Director;)Lcom/google/android/youtube/app/player/Director$Listener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/android/youtube/app/player/Director$Listener;->onBranding(Lcom/google/android/youtube/core/model/Branding;)V

    .line 845
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director$5;->this$0:Lcom/google/android/youtube/app/player/Director;

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/player/Director;->access$702(Lcom/google/android/youtube/app/player/Director;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;

    .line 847
    :cond_0
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 834
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/player/Director$5;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Branding;)V
    .locals 2
    .parameter "request"
    .parameter "branding"

    .prologue
    .line 836
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director$5;->this$0:Lcom/google/android/youtube/app/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/app/player/Director;->access$700(Lcom/google/android/youtube/app/player/Director;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director$5;->this$0:Lcom/google/android/youtube/app/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/app/player/Director;->access$800(Lcom/google/android/youtube/app/player/Director;)Lcom/google/android/youtube/app/player/Director$Listener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/youtube/app/player/Director$Listener;->onBranding(Lcom/google/android/youtube/core/model/Branding;)V

    .line 838
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director$5;->this$0:Lcom/google/android/youtube/app/player/Director;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/player/Director;->access$702(Lcom/google/android/youtube/app/player/Director;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;

    .line 840
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 834
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Branding;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/player/Director$5;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Branding;)V

    return-void
.end method
