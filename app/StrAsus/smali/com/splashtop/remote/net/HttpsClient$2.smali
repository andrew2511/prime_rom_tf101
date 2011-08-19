.class Lcom/splashtop/remote/net/HttpsClient$2;
.super Ljava/lang/Object;
.source "HttpsClient.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/net/HttpsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/net/HttpsClient;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/net/HttpsClient;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/splashtop/remote/net/HttpsClient$2;->this$0:Lcom/splashtop/remote/net/HttpsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .parameter "hostname"
    .parameter "session"

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method
