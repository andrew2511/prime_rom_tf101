.class final Lcom/amazon/kcp/internal/webservices/DeregisterWebservice$1;
.super Ljava/lang/Object;
.source "DeregisterWebservice.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IStringValueMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/internal/webservices/DeregisterWebservice;->getNewDeregisterDescriber(Lcom/amazon/kcp/application/models/internal/DeregisterModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$model:Lcom/amazon/kcp/application/models/internal/DeregisterModel;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/models/internal/DeregisterModel;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/DeregisterWebservice$1;->val$model:Lcom/amazon/kcp/application/models/internal/DeregisterModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/DeregisterWebservice$1;->val$model:Lcom/amazon/kcp/application/models/internal/DeregisterModel;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/models/internal/DeregisterModel;->setStatus(Ljava/lang/String;)V

    .line 108
    return-void
.end method
