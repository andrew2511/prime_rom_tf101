.class public abstract Lcom/google/android/youtube/videos/DrmManager;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;,
        Lcom/google/android/youtube/videos/DrmManager$Identifiers;,
        Lcom/google/android/youtube/videos/DrmManager$Listener;
    }
.end annotation


# static fields
.field protected static final CGI_ERROR_AUTHENTICATION_FAILED:I = 0x334

.field protected static final CGI_ERROR_KEY_VERIFICATION_FAILED:I = 0x31

.field protected static final CGI_ERROR_PURCHASE_NOT_FOUND:I = 0x258

.field protected static final CGI_ERROR_STREAMING_NOT_ALLOWED:I = 0x331

.field protected static final CGI_ERROR_UNPIN_SUCCESSFUL_REMOVE_LICENSE:I = 0x259

.field protected static final CGI_ERROR_USER_GEO_RESTRICTED:I = 0x321

.field protected static final DRM_SERVER_URI:Ljava/lang/String; = "https://www.youtube.com/api/license/wv/fetch"

.field protected static final PORTAL_NAME:Ljava/lang/String; = "YouTube"


# instance fields
.field protected listener:Lcom/google/android/youtube/videos/DrmManager$Listener;

.field private final retryingRequester:Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;)V
    .locals 2
    .parameter "userAuthorizer"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;

    invoke-direct {p0}, Lcom/google/android/youtube/videos/DrmManager;->createInternalDrmRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;-><init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/UserAuthorizer;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/DrmManager;->retryingRequester:Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/DrmManager;Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/videos/DrmManager;->requestLicense(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    return-void
.end method

.method private final createInternalDrmRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lcom/google/android/youtube/videos/DrmManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/videos/DrmManager$1;-><init>(Lcom/google/android/youtube/videos/DrmManager;)V

    return-object v0
.end method

.method private requestLicense(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 1
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-boolean v0, p1, Lcom/google/android/youtube/videos/DrmRequest;->offline:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/DrmManager;->requestOfflineRights(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/youtube/videos/DrmManager;->requestRights(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_0
.end method


# virtual methods
.method protected getDrmError(I)Lcom/google/android/youtube/videos/DrmException$DrmError;
    .locals 1
    .parameter "cgiError"

    .prologue
    .line 109
    sget-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->UNKNOWN:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 110
    .local v0, drmError:Lcom/google/android/youtube/videos/DrmException$DrmError;
    sparse-switch p1, :sswitch_data_0

    .line 130
    :goto_0
    return-object v0

    .line 112
    :sswitch_0
    sget-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->LICENSE_PINNED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 113
    goto :goto_0

    .line 115
    :sswitch_1
    sget-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->AUTHENTICATION_FAILED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 116
    goto :goto_0

    .line 118
    :sswitch_2
    sget-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->USER_GEO_RESTRICTED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 119
    goto :goto_0

    .line 121
    :sswitch_3
    sget-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->KEY_VERIFICATION_FAILED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 122
    goto :goto_0

    .line 124
    :sswitch_4
    sget-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->NO_LICENSE:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 125
    goto :goto_0

    .line 127
    :sswitch_5
    sget-object v0, Lcom/google/android/youtube/videos/DrmException$DrmError;->UNPIN_SUCCESSFUL:Lcom/google/android/youtube/videos/DrmException$DrmError;

    goto :goto_0

    .line 110
    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_3
        0x258 -> :sswitch_4
        0x259 -> :sswitch_5
        0x321 -> :sswitch_2
        0x331 -> :sswitch_0
        0x334 -> :sswitch_1
    .end sparse-switch
.end method

.method public abstract getPlayableUri(Landroid/net/Uri;)Landroid/net/Uri;
.end method

.method protected parseCgiError(Ljava/lang/String;)I
    .locals 2
    .parameter "error"

    .prologue
    .line 101
    const-string v0, "CA CGI Response code = "

    .line 102
    .local v0, prefix:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 105
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public final request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 1
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/DrmManager;->retryingRequester:Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;->request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 76
    return-void
.end method

.method protected abstract requestOfflineRights(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract requestRights(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;Lcom/google/android/youtube/core/async/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public setListener(Lcom/google/android/youtube/videos/DrmManager$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/youtube/videos/DrmManager;->listener:Lcom/google/android/youtube/videos/DrmManager$Listener;

    .line 70
    return-void
.end method

.method protected final stripQueryParameters(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .parameter "input"

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method
