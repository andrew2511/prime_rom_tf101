.class public Lcom/google/android/youtube/core/async/ConvertingRequester;
.super Ljava/lang/Object;
.source "ConvertingRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Requester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<TR;TE;>;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/converter/RequestConverter",
            "<TR;TS;>;"
        }
    .end annotation
.end field

.field private final requester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<TS;TF;>;"
        }
    .end annotation
.end field

.field private final responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/converter/ResponseConverter",
            "<TF;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;Ljava/util/concurrent/Executor;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter "executor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TS;TF;>;",
            "Lcom/google/android/youtube/core/converter/RequestConverter",
            "<TR;TS;>;",
            "Lcom/google/android/youtube/core/converter/ResponseConverter",
            "<TF;TE;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lcom/google/android/youtube/core/async/ConvertingRequester;,"Lcom/google/android/youtube/core/async/ConvertingRequester<TR;TE;TS;TF;>;"
    .local p1, requester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TS;TF;>;"
    .local p2, requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;,"Lcom/google/android/youtube/core/converter/RequestConverter<TR;TS;>;"
    .local p3, responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<TF;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "requester may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ConvertingRequester;->requester:Lcom/google/android/youtube/core/async/Requester;

    .line 40
    iput-object p2, p0, Lcom/google/android/youtube/core/async/ConvertingRequester;->requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;

    .line 41
    iput-object p3, p0, Lcom/google/android/youtube/core/async/ConvertingRequester;->responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;

    .line 42
    iput-object p4, p0, Lcom/google/android/youtube/core/async/ConvertingRequester;->executor:Ljava/util/concurrent/Executor;

    .line 43
    return-void
.end method

.method protected constructor <init>(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/converter/RequestConverter",
            "<TR;TS;>;",
            "Lcom/google/android/youtube/core/converter/ResponseConverter",
            "<TF;TE;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/youtube/core/async/ConvertingRequester;,"Lcom/google/android/youtube/core/async/ConvertingRequester<TR;TE;TS;TF;>;"
    .local p1, requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;,"Lcom/google/android/youtube/core/converter/RequestConverter<TR;TS;>;"
    .local p2, responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<TF;TE;>;"
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/google/android/youtube/core/async/ConvertingRequester;->requester:Lcom/google/android/youtube/core/async/Requester;

    .line 54
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ConvertingRequester;->requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;

    .line 55
    iput-object p2, p0, Lcom/google/android/youtube/core/async/ConvertingRequester;->responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;

    .line 56
    iput-object v0, p0, Lcom/google/android/youtube/core/async/ConvertingRequester;->executor:Ljava/util/concurrent/Executor;

    .line 57
    return-void
.end method

.method protected constructor <init>(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;Ljava/util/concurrent/Executor;)V
    .locals 1
    .parameter
    .parameter
    .parameter "executor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/converter/RequestConverter",
            "<TR;TS;>;",
            "Lcom/google/android/youtube/core/converter/ResponseConverter",
            "<TF;TE;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, this:Lcom/google/android/youtube/core/async/ConvertingRequester;,"Lcom/google/android/youtube/core/async/ConvertingRequester<TR;TE;TS;TF;>;"
    .local p1, requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;,"Lcom/google/android/youtube/core/converter/RequestConverter<TR;TS;>;"
    .local p2, responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<TF;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ConvertingRequester;->requester:Lcom/google/android/youtube/core/async/Requester;

    .line 70
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ConvertingRequester;->requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;

    .line 71
    iput-object p2, p0, Lcom/google/android/youtube/core/async/ConvertingRequester;->responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;

    .line 72
    iput-object p3, p0, Lcom/google/android/youtube/core/async/ConvertingRequester;->executor:Ljava/util/concurrent/Executor;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/async/ConvertingRequester;)Lcom/google/android/youtube/core/converter/ResponseConverter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ConvertingRequester;->responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/async/ConvertingRequester;)Ljava/util/concurrent/Executor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ConvertingRequester;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static create(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/converter/RequestConverter;)Lcom/google/android/youtube/core/async/Requester;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TS;TE;>;",
            "Lcom/google/android/youtube/core/converter/RequestConverter",
            "<TR;TS;>;)",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .local p0, requester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TS;TE;>;"
    .local p1, requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;,"Lcom/google/android/youtube/core/converter/RequestConverter<TR;TS;>;"
    const/4 v2, 0x0

    .line 243
    const-string v1, "requestConverter may not be null"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v3, Lcom/google/android/youtube/core/async/ConvertingRequester;

    move-object v0, v2

    check-cast v0, Lcom/google/android/youtube/core/converter/ResponseConverter;

    move-object v1, v0

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/google/android/youtube/core/async/ConvertingRequester;-><init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;Ljava/util/concurrent/Executor;)V

    return-object v3
.end method

.method public static create(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/Requester;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TS;TF;>;",
            "Lcom/google/android/youtube/core/converter/RequestConverter",
            "<TR;TS;>;",
            "Lcom/google/android/youtube/core/converter/ResponseConverter",
            "<TF;TE;>;)",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, requester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TS;TF;>;"
    .local p1, requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;,"Lcom/google/android/youtube/core/converter/RequestConverter<TR;TS;>;"
    .local p2, responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<TF;TE;>;"
    const-string v0, "requestConverter may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v0, "responseConverter may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v0, Lcom/google/android/youtube/core/async/ConvertingRequester;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/youtube/core/async/ConvertingRequester;-><init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static create(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;Ljava/util/concurrent/Executor;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter "executor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TS;TF;>;",
            "Lcom/google/android/youtube/core/converter/RequestConverter",
            "<TR;TS;>;",
            "Lcom/google/android/youtube/core/converter/ResponseConverter",
            "<TF;TE;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, requester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TS;TF;>;"
    .local p1, requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;,"Lcom/google/android/youtube/core/converter/RequestConverter<TR;TS;>;"
    .local p2, responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<TF;TE;>;"
    const-string v0, "requestConverter may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v0, "responseConverter may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "executor may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v0, Lcom/google/android/youtube/core/async/ConvertingRequester;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/youtube/core/async/ConvertingRequester;-><init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static create(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/Requester;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TF;>;",
            "Lcom/google/android/youtube/core/converter/ResponseConverter",
            "<TF;TE;>;)",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .local p0, requester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TF;>;"
    .local p1, responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<TF;TE;>;"
    const/4 v2, 0x0

    .line 203
    const-string v1, "responseConverter may not be null"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v3, Lcom/google/android/youtube/core/async/ConvertingRequester;

    move-object v0, v2

    check-cast v0, Lcom/google/android/youtube/core/converter/RequestConverter;

    move-object v1, v0

    invoke-direct {v3, p0, v1, p1, v2}, Lcom/google/android/youtube/core/async/ConvertingRequester;-><init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;Ljava/util/concurrent/Executor;)V

    return-object v3
.end method

.method public static create(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/converter/ResponseConverter;Ljava/util/concurrent/Executor;)Lcom/google/android/youtube/core/async/Requester;
    .locals 2
    .parameter
    .parameter
    .parameter "executor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TF;>;",
            "Lcom/google/android/youtube/core/converter/ResponseConverter",
            "<TF;TE;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, requester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TF;>;"
    .local p1, responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<TF;TE;>;"
    const-string v0, "responseConverter may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v0, "executor may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v1, Lcom/google/android/youtube/core/async/ConvertingRequester;

    const/4 v0, 0x0

    check-cast v0, Lcom/google/android/youtube/core/converter/RequestConverter;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/android/youtube/core/async/ConvertingRequester;-><init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method


# virtual methods
.method protected doRequest(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TS;TF;>;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, this:Lcom/google/android/youtube/core/async/ConvertingRequester;,"Lcom/google/android/youtube/core/async/ConvertingRequester<TR;TE;TS;TF;>;"
    .local p1, convertedRequest:Ljava/lang/Object;,"TS;"
    .local p2, convertingCallback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TS;TF;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ConvertingRequester;->requester:Lcom/google/android/youtube/core/async/Requester;

    const-string v1, "subclasses should override doRequest"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ConvertingRequester;->requester:Lcom/google/android/youtube/core/async/Requester;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 97
    return-void
.end method

.method public request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Lcom/google/android/youtube/core/async/ConvertingRequester;,"Lcom/google/android/youtube/core/async/ConvertingRequester<TR;TE;TS;TF;>;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;TE;>;"
    :try_start_0
    iget-object v4, p0, Lcom/google/android/youtube/core/async/ConvertingRequester;->requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;

    if-eqz v4, :cond_0

    .line 79
    iget-object v4, p0, Lcom/google/android/youtube/core/async/ConvertingRequester;->requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;

    invoke-interface {v4, p1}, Lcom/google/android/youtube/core/converter/RequestConverter;->convertRequest(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, convertedRequest:Ljava/lang/Object;,"TS;"
    :goto_0
    new-instance v1, Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;-><init>(Lcom/google/android/youtube/core/async/ConvertingRequester;Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 88
    .local v1, convertingCallback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TS;TF;>;"
    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/async/ConvertingRequester;->doRequest(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    :try_end_0
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0           #convertedRequest:Ljava/lang/Object;,"TS;"
    .end local v1           #convertingCallback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TS;TF;>;"
    :goto_1
    return-void

    .line 83
    :cond_0
    move-object v3, p1

    .line 84
    .local v3, temp:Ljava/lang/Object;,"TS;"
    move-object v0, v3

    .restart local v0       #convertedRequest:Ljava/lang/Object;,"TS;"
    goto :goto_0

    .line 89
    .end local v0           #convertedRequest:Ljava/lang/Object;,"TS;"
    .end local v3           #temp:Ljava/lang/Object;,"TS;"
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 90
    .local v2, exception:Lcom/google/android/youtube/core/converter/ConverterException;
    invoke-interface {p2, p1, v2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_1
.end method
