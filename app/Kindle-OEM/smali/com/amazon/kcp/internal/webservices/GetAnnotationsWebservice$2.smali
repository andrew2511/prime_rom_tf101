.class final Lcom/amazon/kcp/internal/webservices/GetAnnotationsWebservice$2;
.super Ljava/lang/Object;
.source "GetAnnotationsWebservice.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IStringValueMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/internal/webservices/GetAnnotationsWebservice;->getNewGetAnnotationDescriber(Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$model:Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/GetAnnotationsWebservice$2;->val$model:Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetAnnotationsWebservice$2;->val$model:Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;->setPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
