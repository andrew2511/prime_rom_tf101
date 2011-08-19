.class public Lcom/google/android/youtube/core/async/FallbackRequester;
.super Ljava/lang/Object;
.source "FallbackRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Requester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<TR;TE;>;"
    }
.end annotation


# static fields
.field private static final ALWAYS_TRUE_PREDICATE:Lcom/google/android/youtube/core/utils/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/utils/Predicate",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final firstRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;"
        }
    .end annotation
.end field

.field private final mustFallback:Lcom/google/android/youtube/core/utils/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/utils/Predicate",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final secondRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/youtube/core/async/FallbackRequester$1;

    invoke-direct {v0}, Lcom/google/android/youtube/core/async/FallbackRequester$1;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/async/FallbackRequester;->ALWAYS_TRUE_PREDICATE:Lcom/google/android/youtube/core/utils/Predicate;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/google/android/youtube/core/async/FallbackRequester;,"Lcom/google/android/youtube/core/async/FallbackRequester<TR;TE;>;"
    .local p1, firstRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    .local p2, secondRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    sget-object v0, Lcom/google/android/youtube/core/async/FallbackRequester;->ALWAYS_TRUE_PREDICATE:Lcom/google/android/youtube/core/utils/Predicate;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/core/async/FallbackRequester;-><init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/utils/Predicate;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/utils/Predicate;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;",
            "Lcom/google/android/youtube/core/utils/Predicate",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, this:Lcom/google/android/youtube/core/async/FallbackRequester;,"Lcom/google/android/youtube/core/async/FallbackRequester<TR;TE;>;"
    .local p1, firstRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    .local p2, secondRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    .local p3, mustFallback:Lcom/google/android/youtube/core/utils/Predicate;,"Lcom/google/android/youtube/core/utils/Predicate<Ljava/lang/Exception;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/FallbackRequester;->firstRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 37
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/FallbackRequester;->secondRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 38
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/Predicate;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/FallbackRequester;->mustFallback:Lcom/google/android/youtube/core/utils/Predicate;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/async/FallbackRequester;)Lcom/google/android/youtube/core/utils/Predicate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/youtube/core/async/FallbackRequester;->mustFallback:Lcom/google/android/youtube/core/utils/Predicate;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/core/async/FallbackRequester;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/youtube/core/async/FallbackRequester;->secondRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method


# virtual methods
.method public request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 2
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
    .line 46
    .local p0, this:Lcom/google/android/youtube/core/async/FallbackRequester;,"Lcom/google/android/youtube/core/async/FallbackRequester<TR;TE;>;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;TE;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/FallbackRequester;->firstRequester:Lcom/google/android/youtube/core/async/Requester;

    new-instance v1, Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;-><init>(Lcom/google/android/youtube/core/async/FallbackRequester;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 47
    return-void
.end method
