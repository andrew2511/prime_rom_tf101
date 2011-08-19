.class Lcom/amazon/kcp/store/BrowserHost$BookStatus;
.super Ljava/lang/Object;
.source "BrowserHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/BrowserHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BookStatus"
.end annotation


# static fields
.field public static final STATUS_DOWNLOADED:I = 0x1

.field public static final STATUS_DOWNLOADING:I = 0x2

.field public static final STATUS_UNAVAILABLE:I


# instance fields
.field private final id:Lcom/amazon/kcp/store/BrowserHost$BookID;

.field private final percentDownload:F

.field private final status:I


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/store/BrowserHost$BookID;IF)V
    .locals 0
    .parameter "id"
    .parameter "status"
    .parameter "percentDownload"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/amazon/kcp/store/BrowserHost$BookStatus;->id:Lcom/amazon/kcp/store/BrowserHost$BookID;

    .line 114
    iput p2, p0, Lcom/amazon/kcp/store/BrowserHost$BookStatus;->status:I

    .line 115
    iput p3, p0, Lcom/amazon/kcp/store/BrowserHost$BookStatus;->percentDownload:F

    .line 116
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 121
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 124
    :try_start_0
    const-string v1, "id"

    iget-object v2, p0, Lcom/amazon/kcp/store/BrowserHost$BookStatus;->id:Lcom/amazon/kcp/store/BrowserHost$BookID;

    invoke-virtual {v2}, Lcom/amazon/kcp/store/BrowserHost$BookID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 128
    :goto_0
    :try_start_1
    const-string v1, "status"

    iget v2, p0, Lcom/amazon/kcp/store/BrowserHost$BookStatus;->status:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    :goto_1
    :try_start_2
    const-string v1, "percentDownload"

    iget v2, p0, Lcom/amazon/kcp/store/BrowserHost$BookStatus;->percentDownload:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 144
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method
