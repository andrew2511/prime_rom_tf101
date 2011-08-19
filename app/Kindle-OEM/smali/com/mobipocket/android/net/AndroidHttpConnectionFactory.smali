.class public Lcom/mobipocket/android/net/AndroidHttpConnectionFactory;
.super Ljava/lang/Object;
.source "AndroidHttpConnectionFactory.java"

# interfaces
.implements Lcom/amazon/system/net/HttpConnectionFactory;


# instance fields
.field private final MAX_PARALLEL_CONNECTIONS:I

.field private final localeManager:Lcom/amazon/kcp/application/ILocaleManager;

.field private maxResponseSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "maxResponseSize"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mobipocket/android/net/AndroidHttpConnectionFactory;-><init>(ILcom/amazon/kcp/application/ILocaleManager;)V

    .line 31
    return-void
.end method

.method public constructor <init>(ILcom/amazon/kcp/application/ILocaleManager;)V
    .locals 1
    .parameter "maxResponseSize"
    .parameter "localeManager"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnectionFactory;->MAX_PARALLEL_CONNECTIONS:I

    .line 39
    iput p1, p0, Lcom/mobipocket/android/net/AndroidHttpConnectionFactory;->maxResponseSize:I

    .line 40
    iput-object p2, p0, Lcom/mobipocket/android/net/AndroidHttpConnectionFactory;->localeManager:Lcom/amazon/kcp/application/ILocaleManager;

    .line 41
    return-void
.end method


# virtual methods
.method public getHttpConnection()Lcom/amazon/system/net/HttpConnection;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/mobipocket/android/net/AndroidHttpConnection;

    iget v1, p0, Lcom/mobipocket/android/net/AndroidHttpConnectionFactory;->maxResponseSize:I

    iget-object v2, p0, Lcom/mobipocket/android/net/AndroidHttpConnectionFactory;->localeManager:Lcom/amazon/kcp/application/ILocaleManager;

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/android/net/AndroidHttpConnection;-><init>(ILcom/amazon/kcp/application/ILocaleManager;)V

    return-object v0
.end method

.method public getMaxParallelConnections()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x3

    return v0
.end method
