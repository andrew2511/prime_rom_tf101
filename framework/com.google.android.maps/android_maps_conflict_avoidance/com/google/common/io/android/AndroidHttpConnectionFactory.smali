.class public Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;
.super Landroid_maps_conflict_avoidance/com/google/common/io/BaseHttpConnectionFactory;
.source "AndroidHttpConnectionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$1;,
        Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;
    }
.end annotation


# static fields
.field private static final lock:Ljava/lang/Object;

.field private static numOpenConnection:I


# instance fields
.field private client:Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;

.field private final context:Landroid/content/Context;

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/BaseHttpConnectionFactory;-><init>()V

    .line 46
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->context:Landroid/content/Context;

    .line 47
    const-string v0, "GoogleMobile/1.0"

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->userAgent:Ljava/lang/String;

    .line 48
    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 31
    sget v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->numOpenConnection:I

    return v0
.end method

.method static synthetic access$208()I
    .registers 2

    .prologue
    .line 31
    sget v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->numOpenConnection:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->numOpenConnection:I

    return v0
.end method

.method static synthetic access$210()I
    .registers 2

    .prologue
    .line 31
    sget v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->numOpenConnection:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->numOpenConnection:I

    return v0
.end method

.method static synthetic access$300(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;)Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->client:Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->client:Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;

    if-eqz v0, :cond_9

    .line 80
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->client:Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->close()V

    .line 82
    :cond_9
    return-void
.end method

.method public createConnection(Ljava/lang/String;Z)Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;
    .registers 7
    .parameter "url"
    .parameter "usePost"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->client:Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;

    if-nez v0, :cond_23

    .line 57
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->userAgent:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->client:Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;

    .line 61
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->client:Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 64
    :cond_23
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;Ljava/lang/String;ZLandroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$1;)V

    return-object v0
.end method

.method public getClient()Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->client:Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;

    return-object v0
.end method
