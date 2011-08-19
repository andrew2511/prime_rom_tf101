.class Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$CreatePlaylistAction;
.super Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;
.source "CreatePlaylistHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreatePlaylistAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/Playlist;",
        ">;"
    }
.end annotation


# instance fields
.field private final isPrivate:Z

.field private final listener:Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$OnPlaylistCreatedListener;

.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;Ljava/lang/String;ZLcom/google/android/youtube/app/ui/CreatePlaylistHelper$OnPlaylistCreatedListener;)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "isPrivate"
    .parameter "listener"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$CreatePlaylistAction;->this$0:Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;

    .line 89
    invoke-static {p1}, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;->access$000(Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;-><init>(Landroid/content/Context;)V

    .line 90
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$CreatePlaylistAction;->name:Ljava/lang/String;

    .line 91
    iput-boolean p3, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$CreatePlaylistAction;->isPrivate:Z

    .line 92
    iput-object p4, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$CreatePlaylistAction;->listener:Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$OnPlaylistCreatedListener;

    .line 93
    return-void
.end method


# virtual methods
.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 4
    .parameter "userAuth"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$CreatePlaylistAction;->name:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$CreatePlaylistAction;->isPrivate:Z

    invoke-static {v1, v2, p1}, Lcom/google/android/youtube/core/async/GDataRequests;->getCreatePlaylistRequest(Ljava/lang/String;ZLcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    .line 98
    .local v0, request:Lcom/google/android/youtube/core/async/GDataRequest;
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$CreatePlaylistAction;->this$0:Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;->access$200(Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$CreatePlaylistAction;->this$0:Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;

    invoke-static {v3}, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;->access$000(Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 100
    return-void
.end method

.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 1
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 108
    const-string v0, "Error creating playlist"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$CreatePlaylistAction;->this$0:Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;->access$000(Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 110
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$CreatePlaylistAction;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Playlist;)V
    .locals 3
    .parameter "request"
    .parameter "response"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$CreatePlaylistAction;->listener:Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$OnPlaylistCreatedListener;

    invoke-interface {v0, p2}, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$OnPlaylistCreatedListener;->onCreate(Lcom/google/android/youtube/core/model/Playlist;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$CreatePlaylistAction;->this$0:Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;->access$000(Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00d6

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 105
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Playlist;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$CreatePlaylistAction;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Playlist;)V

    return-void
.end method
