.class final Lcom/amazon/kcp/internal/webservices/DetailsWebservice$41;
.super Ljava/lang/Object;
.source "DetailsWebservice.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IStringValueMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/internal/webservices/DetailsWebservice;->getNewDetailsDescriber(Lcom/amazon/kcp/store/models/internal/CDetailsModel;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$simBook:Lcom/amazon/kcp/store/models/internal/BookInfo;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/models/internal/BookInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 855
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$41;->val$simBook:Lcom/amazon/kcp/store/models/internal/BookInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 858
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$41;->val$simBook:Lcom/amazon/kcp/store/models/internal/BookInfo;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/store/models/internal/BookInfo;->setAsin(Ljava/lang/String;)V

    .line 859
    return-void
.end method
