.class public abstract Lcom/google/mobile/common/io/BaseHttpConnectionFactory;
.super Lcom/google/mobile/common/io/BaseConnectionFactory;

# interfaces
.implements Lcom/google/mobile/common/io/HttpConnectionFactory;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const-string v0, "HttpWorks"

    invoke-direct {p0, v0}, Lcom/google/mobile/common/io/BaseConnectionFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method
