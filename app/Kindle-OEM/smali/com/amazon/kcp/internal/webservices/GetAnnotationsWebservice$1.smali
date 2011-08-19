.class final Lcom/amazon/kcp/internal/webservices/GetAnnotationsWebservice$1;
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
    .line 109
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/GetAnnotationsWebservice$1;->val$model:Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/GetAnnotationsWebservice$1;->val$model:Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/models/internal/GetAnnotationsModel;->setMessage(Ljava/lang/String;)V

    .line 113
    return-void
.end method
