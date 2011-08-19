.class public Lnet/yostore/aws/api/ApProxyHttpClient;
.super Ljava/lang/Object;
.source "ApProxyHttpClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApProxyHttpClient"

.field public static httpClient:Lorg/apache/commons/httpclient/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lorg/apache/commons/httpclient/HttpClient;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HttpClient;-><init>()V

    sput-object v0, Lnet/yostore/aws/api/ApProxyHttpClient;->httpClient:Lorg/apache/commons/httpclient/HttpClient;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
