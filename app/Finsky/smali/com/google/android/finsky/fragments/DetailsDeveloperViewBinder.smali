.class public Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;
.super Lcom/google/android/finsky/fragments/TableLayoutViewBinder;
.source "DetailsDeveloperViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/TableLayoutViewBinder",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mDeveloperEmail:Ljava/lang/String;

.field private mDeveloperWebsite:Ljava/lang/String;

.field private mFilledCells:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->mDeveloperWebsite:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->mDeveloperEmail:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V
    .locals 3
    .parameter "view"
    .parameter "doc"

    .prologue
    const/4 v2, 0x0

    .line 29
    const v0, 0x7f090022

    const v1, 0x7f0b005f

    invoke-super {p0, p1, p2, v0, v1}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;II)V

    .line 31
    iput v2, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->mFilledCells:I

    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getDeveloperWebsite()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->mDeveloperWebsite:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getDeveloperEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->mDeveloperEmail:Ljava/lang/String;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->mDeveloperWebsite:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    iget v0, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->mFilledCells:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->mFilledCells:I

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->mDeveloperEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 40
    iget v0, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->mFilledCells:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->mFilledCells:I

    .line 42
    :cond_2
    iget v0, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->mFilledCells:I

    if-nez v0, :cond_3

    .line 43
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :goto_0
    return-void

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->populateTable()V

    goto :goto_0
.end method

.method protected getCellCount()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x2

    return v0
.end method

.method protected getData(I)Ljava/lang/Integer;
    .locals 1
    .parameter "position"

    .prologue
    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getData(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->getData(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getTableCellLayoutId()I
    .locals 1

    .prologue
    .line 114
    const v0, 0x7f040026

    return v0
.end method

.method protected getTableColumnCount()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x2

    return v0
.end method

.method protected setupTableCell(Ljava/lang/Integer;Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "data"
    .parameter "view"

    .prologue
    .line 68
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->mFilledCells:I

    if-lt v3, v4, :cond_0

    .line 110
    :goto_0
    return-void

    .line 74
    :cond_0
    const v3, 0x7f090065

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 75
    .local v0, iconView:Landroid/widget/ImageView;
    const v3, 0x7f090066

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 76
    .local v2, labelView:Landroid/widget/TextView;
    const v3, 0x7f090067

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 78
    .local v1, infoView:Landroid/widget/TextView;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 80
    :pswitch_0
    iget-object v3, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->mDeveloperWebsite:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 81
    const v3, 0x7f020025

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    const v3, 0x7f0b0062

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v3, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->mDeveloperWebsite:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v3, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder$1;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder$1;-><init>(Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;)V

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 98
    :cond_1
    :pswitch_1
    const v3, 0x7f020024

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    const v3, 0x7f0b0063

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget-object v3, p0, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->mDeveloperEmail:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    new-instance v3, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder$2;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder$2;-><init>(Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;)V

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic setupTableCell(Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/fragments/DetailsDeveloperViewBinder;->setupTableCell(Ljava/lang/Integer;Landroid/view/ViewGroup;)V

    return-void
.end method
