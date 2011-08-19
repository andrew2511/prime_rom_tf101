.class Lcom/google/android/finsky/layout/RentalTermsLayout$RentalTermsAdapter;
.super Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter;
.source "RentalTermsLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/RentalTermsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RentalTermsAdapter"
.end annotation


# instance fields
.field private mTotalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/finsky/layout/RentalTermsLayout;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/RentalTermsLayout;Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p3, terms:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;>;"
    iput-object p1, p0, Lcom/google/android/finsky/layout/RentalTermsLayout$RentalTermsAdapter;->this$0:Lcom/google/android/finsky/layout/RentalTermsLayout;

    .line 73
    invoke-direct {p0, p2}, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/layout/RentalTermsLayout$RentalTermsAdapter;->mTotalList:Ljava/util/List;

    .line 74
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;

    .line 75
    .local v2, term:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;
    new-instance v1, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;

    invoke-direct {v1}, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;-><init>()V

    .line 76
    .local v1, newEntry:Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->getHeader()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;->headerText:Ljava/lang/String;

    .line 77
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;->getBody()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;->contentText:Ljava/lang/String;

    .line 78
    iget-object v3, p0, Lcom/google/android/finsky/layout/RentalTermsLayout$RentalTermsAdapter;->mTotalList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    .end local v1           #newEntry:Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;
    .end local v2           #term:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/layout/RentalTermsLayout$RentalTermsAdapter;->mTotalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;
    .locals 1
    .parameter "position"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/layout/RentalTermsLayout$RentalTermsAdapter;->mTotalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/RentalTermsLayout$RentalTermsAdapter;->getItem(I)Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;

    move-result-object v0

    return-object v0
.end method
