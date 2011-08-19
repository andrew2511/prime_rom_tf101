.class public Lcom/google/android/finsky/utils/PurchaseButtonWrapper;
.super Ljava/lang/Object;
.source "PurchaseButtonWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/PurchaseButtonWrapper$1;,
        Lcom/google/android/finsky/utils/PurchaseButtonWrapper$PurchaseButtonHandler;,
        Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;,
        Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;
    }
.end annotation


# instance fields
.field private final mDescription:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

.field private final mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mIntent:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

.field private final mOffer:Lcom/google/android/finsky/remoting/protos/Common$Offer;

.field private mVisibility:I


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/PackageInfoCache;)V
    .locals 2
    .parameter "document"
    .parameter "packageInfoCache"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 49
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDefaultOffer()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mOffer:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mVisibility:I

    .line 52
    invoke-virtual {p1, p2}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    sget-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;->OPEN:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

    iput-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mIntent:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

    .line 55
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 75
    sget-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;->OPEN:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    iput-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mDescription:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    .line 89
    :goto_0
    return-void

    .line 57
    :pswitch_0
    invoke-virtual {p1, p2}, Lcom/google/android/finsky/api/model/Document;->isLocallyAvailable(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {p1, p2}, Lcom/google/android/finsky/api/model/Document;->isUpdateAvailable(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;->UPDATE:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    iput-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mDescription:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    .line 60
    sget-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;->MANAGE:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

    iput-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mIntent:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/finsky/api/model/Document;->canLaunch(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mVisibility:I

    .line 65
    :cond_1
    sget-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;->OPEN:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    iput-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mDescription:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    goto :goto_0

    .line 68
    :cond_2
    sget-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;->INSTALL:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    iput-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mDescription:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    goto :goto_0

    .line 72
    :pswitch_1
    sget-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;->PLAY:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    iput-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mDescription:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    invoke-virtual {p1, p2}, Lcom/google/android/finsky/api/model/Document;->isLocallyAvailable(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    sget-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;->OPEN:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    iput-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mDescription:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    .line 83
    sget-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;->OPEN:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

    iput-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mIntent:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

    goto :goto_0

    .line 85
    :cond_4
    sget-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;->PRICE:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    iput-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mDescription:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    .line 86
    sget-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;->BUY:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

    iput-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mIntent:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getDisplayText(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x4

    .line 92
    sget-object v1, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$1;->$SwitchMap$com$google$android$finsky$utils$PurchaseButtonWrapper$ActionDescription:[I

    iget-object v2, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mDescription:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    invoke-virtual {v2}, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 114
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 94
    :pswitch_0
    const v1, 0x7f0b0049

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 96
    :pswitch_1
    const v1, 0x7f0b0045

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 98
    :pswitch_2
    const v1, 0x7f0b0047

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 100
    :pswitch_3
    const v1, 0x7f0b0046

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 102
    :pswitch_4
    const v1, 0x7f0b003d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 104
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mOffer:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, price:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mOffer:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 110
    const v1, 0x7f0b0040

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v1, v0

    .line 112
    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mVisibility:I

    return v0
.end method

.method public performDefaultAction(Lcom/google/android/finsky/utils/PurchaseButtonWrapper$PurchaseButtonHandler;)V
    .locals 2
    .parameter "nm"

    .prologue
    .line 118
    sget-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$1;->$SwitchMap$com$google$android$finsky$utils$PurchaseButtonWrapper$ActionIntent:[I

    iget-object v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mIntent:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mOffer:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$PurchaseButtonHandler;->buy(Lcom/google/android/finsky/api/model/Document;I)V

    goto :goto_0

    .line 123
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-interface {p1, v0}, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$PurchaseButtonHandler;->manage(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_0

    .line 126
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-interface {p1, v0}, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$PurchaseButtonHandler;->open(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
