.class public Lcom/amazon/kcp/application/models/internal/BuyResultsModel;
.super Lcom/amazon/kcp/store/models/internal/CAsyncModel;
.source "BuyResultsModel.java"

# interfaces
.implements Lcom/amazon/kcp/store/models/IBuyResultsModel;


# static fields
.field public static EBookPurchaseTypeNormal:I

.field public static EBookPurchaseTypeSample:I


# instance fields
.field private bookDetails:Lcom/amazon/kcp/store/models/IBookDetails;

.field private dateAcquired:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private orderID:Ljava/lang/String;

.field private statusCode:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;->EBookPurchaseTypeNormal:I

    .line 21
    const/4 v0, 0x1

    sput v0, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;->EBookPurchaseTypeSample:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getBookDetails()Lcom/amazon/kcp/store/models/IBookDetails;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;->bookDetails:Lcom/amazon/kcp/store/models/IBookDetails;

    return-object v0
.end method

.method public getDateAcquired()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;->dateAcquired:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;->orderID:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;->statusCode:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;->type:I

    return v0
.end method

.method public setBookDetails(Lcom/amazon/kcp/store/models/IBookDetails;)V
    .locals 0
    .parameter "bookDetails"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;->bookDetails:Lcom/amazon/kcp/store/models/IBookDetails;

    .line 92
    return-void
.end method

.method public setDateAcquired(Ljava/lang/String;)V
    .locals 0
    .parameter "dateAcquired"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;->dateAcquired:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;->message:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setOrderID(Ljava/lang/String;)V
    .locals 0
    .parameter "orderID"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;->orderID:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .parameter "statusCode"

    .prologue
    .line 75
    iput p1, p0, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;->statusCode:I

    .line 76
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 99
    iput p1, p0, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;->type:I

    .line 100
    return-void
.end method

.method public wasAlreadyOwned()Z
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/amazon/kcp/application/models/internal/BuyResultsModel;->getDateAcquired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
