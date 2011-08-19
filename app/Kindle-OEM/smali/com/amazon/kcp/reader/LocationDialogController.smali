.class Lcom/amazon/kcp/reader/LocationDialogController;
.super Ljava/lang/Object;
.source "LocationDialogController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final bookNav:Lcom/amazon/kcp/reader/models/IBookNavigator;

.field private final locationTextField:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lcom/amazon/kcp/reader/models/IBookNavigator;)V
    .locals 0
    .parameter "locationTextField"
    .parameter "bookNav"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kcp/reader/LocationDialogController;->locationTextField:Landroid/widget/EditText;

    .line 24
    iput-object p2, p0, Lcom/amazon/kcp/reader/LocationDialogController;->bookNav:Lcom/amazon/kcp/reader/models/IBookNavigator;

    .line 25
    return-void
.end method


# virtual methods
.method public gotoEnteredLocation()V
    .locals 4

    .prologue
    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/LocationDialogController;->locationTextField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 53
    iget-object v1, p0, Lcom/amazon/kcp/reader/LocationDialogController;->bookNav:Lcom/amazon/kcp/reader/models/IBookNavigator;

    iget-object v2, p0, Lcom/amazon/kcp/reader/LocationDialogController;->bookNav:Lcom/amazon/kcp/reader/models/IBookNavigator;

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getLastPosition()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getLocationFromPosition(I)I

    move-result v1

    .line 54
    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    if-ge v0, v1, :cond_0

    .line 56
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "GoToMenu"

    const-string v3, "Location"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/amazon/kcp/reader/LocationDialogController;->bookNav:Lcom/amazon/kcp/reader/models/IBookNavigator;

    iget-object v2, p0, Lcom/amazon/kcp/reader/LocationDialogController;->bookNav:Lcom/amazon/kcp/reader/models/IBookNavigator;

    invoke-interface {v2, v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getPositionFromLocation(I)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->gotoPosition(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    packed-switch p2, :pswitch_data_0

    .line 38
    :goto_0
    :pswitch_0
    return-void

    .line 37
    :pswitch_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/LocationDialogController;->gotoEnteredLocation()V

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
