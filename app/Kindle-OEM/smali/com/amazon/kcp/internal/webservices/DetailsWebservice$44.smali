.class final Lcom/amazon/kcp/internal/webservices/DetailsWebservice$44;
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
    .line 891
    iput-object p1, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$44;->val$simBook:Lcom/amazon/kcp/store/models/internal/BookInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 896
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/internal/webservices/DetailsWebservice$44;->val$simBook:Lcom/amazon/kcp/store/models/internal/BookInfo;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/models/internal/BookInfo;->setRating(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
