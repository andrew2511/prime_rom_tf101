.class public Lcom/google/android/finsky/layout/RentalTermsLayout;
.super Landroid/widget/FrameLayout;
.source "RentalTermsLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/RentalTermsLayout$RentalTermsAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public bindInfo(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .parameter "title"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, terms:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm$Term;>;"
    const v3, 0x7f09009b

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/RentalTermsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 47
    .local v0, listView:Landroid/widget/ListView;
    new-instance v1, Lcom/google/android/finsky/layout/RentalTermsLayout$RentalTermsAdapter;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/RentalTermsLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3, p2}, Lcom/google/android/finsky/layout/RentalTermsLayout$RentalTermsAdapter;-><init>(Lcom/google/android/finsky/layout/RentalTermsLayout;Landroid/content/Context;Ljava/util/List;)V

    .line 51
    .local v1, rentalAgreementAdapter:Lcom/google/android/finsky/layout/RentalTermsLayout$RentalTermsAdapter;
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/RentalTermsLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040037

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 53
    .local v2, titleView:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    return-void
.end method
