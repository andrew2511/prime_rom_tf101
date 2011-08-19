.class Lcom/google/android/youtube/app/ui/EventPagedViewHelper$VideoCallback;
.super Ljava/lang/Object;
.source "EventPagedViewHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/ui/EventPagedViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/Video;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/ui/EventPagedViewHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/EventPagedViewHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/EventPagedViewHelper$VideoCallback;->this$0:Lcom/google/android/youtube/app/ui/EventPagedViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/EventPagedViewHelper;Lcom/google/android/youtube/app/ui/EventPagedViewHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/EventPagedViewHelper$VideoCallback;-><init>(Lcom/google/android/youtube/app/ui/EventPagedViewHelper;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 2
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/EventPagedViewHelper$VideoCallback;->this$0:Lcom/google/android/youtube/app/ui/EventPagedViewHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;->access$100(Lcom/google/android/youtube/app/ui/EventPagedViewHelper;)Lcom/google/android/youtube/app/adapter/EventListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/EventPagedViewHelper$VideoCallback;->this$0:Lcom/google/android/youtube/app/ui/EventPagedViewHelper;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;->access$200(Lcom/google/android/youtube/app/ui/EventPagedViewHelper;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/adapter/EventListAdapter;->addNotFoundVideo(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/EventPagedViewHelper$VideoCallback;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;)V
    .locals 1
    .parameter "request"
    .parameter "video"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/EventPagedViewHelper$VideoCallback;->this$0:Lcom/google/android/youtube/app/ui/EventPagedViewHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;->access$100(Lcom/google/android/youtube/app/ui/EventPagedViewHelper;)Lcom/google/android/youtube/app/adapter/EventListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/app/adapter/EventListAdapter;->addVideo(Lcom/google/android/youtube/core/model/Video;)V

    .line 86
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/EventPagedViewHelper$VideoCallback;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;)V

    return-void
.end method
