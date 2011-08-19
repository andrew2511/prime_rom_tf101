.class public Lcom/google/android/youtube/googlemobile/common/async/ClientLoginService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/googlemobile/common/async/LoginService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/googlemobile/common/async/ClientLoginService$LoginRequestImpl;
    }
.end annotation


# instance fields
.field private factory:Lcom/google/android/youtube/googlemobile/common/async/AsyncHttpRequestFactory;

.field private runner:Lcom/google/android/youtube/googlemobile/common/task/TaskRunner;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/googlemobile/common/task/TaskRunner;Lcom/google/android/youtube/googlemobile/common/async/AsyncHttpRequestFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/common/async/ClientLoginService;->runner:Lcom/google/android/youtube/googlemobile/common/task/TaskRunner;

    iput-object p2, p0, Lcom/google/android/youtube/googlemobile/common/async/ClientLoginService;->factory:Lcom/google/android/youtube/googlemobile/common/async/AsyncHttpRequestFactory;

    return-void
.end method


# virtual methods
.method public createLoginRequest()Lcom/google/android/youtube/googlemobile/common/async/LoginRequest;
    .locals 3

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/async/ClientLoginService$LoginRequestImpl;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/async/ClientLoginService;->runner:Lcom/google/android/youtube/googlemobile/common/task/TaskRunner;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/async/ClientLoginService;->factory:Lcom/google/android/youtube/googlemobile/common/async/AsyncHttpRequestFactory;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/googlemobile/common/async/ClientLoginService$LoginRequestImpl;-><init>(Lcom/google/android/youtube/googlemobile/common/task/TaskRunner;Lcom/google/android/youtube/googlemobile/common/async/AsyncHttpRequestFactory;)V

    return-object v0
.end method
