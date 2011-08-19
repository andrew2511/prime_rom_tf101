.class public Lcom/asus/reader/VibeActivity$PackageCheckAdapter;
.super Landroid/widget/BaseAdapter;
.source "VibeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/VibeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageCheckAdapter"
.end annotation


# instance fields
.field private mLP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/vibe2/Package;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/asus/reader/VibeActivity;


# direct methods
.method public constructor <init>(Lcom/asus/reader/VibeActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/vibe2/Package;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1345
    .local p2, lps:Ljava/util/List;,"Ljava/util/List<Lcom/asus/reader/vibe2/Package;>;"
    iput-object p1, p0, Lcom/asus/reader/VibeActivity$PackageCheckAdapter;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1346
    iput-object p2, p0, Lcom/asus/reader/VibeActivity$PackageCheckAdapter;->mLP:Ljava/util/List;

    .line 1347
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/asus/reader/VibeActivity$PackageCheckAdapter;->mLP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/asus/reader/vibe2/Package;
    .locals 1
    .parameter "position"

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/asus/reader/VibeActivity$PackageCheckAdapter;->mLP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/vibe2/Package;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1343
    invoke-virtual {p0, p1}, Lcom/asus/reader/VibeActivity$PackageCheckAdapter;->getItem(I)Lcom/asus/reader/vibe2/Package;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1358
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1363
    if-eqz p2, :cond_0

    .line 1364
    move-object v2, p2

    .line 1369
    .local v2, view:Landroid/view/View;
    :goto_0
    const v3, 0x7f0b0080

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1371
    .local v0, descText:Landroid/widget/TextView;
    const v3, 0x7f0b0081

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1373
    .local v1, priceText:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/asus/reader/VibeActivity$PackageCheckAdapter;->mLP:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/reader/vibe2/Package;

    invoke-virtual {v3}, Lcom/asus/reader/vibe2/Package;->getPackageDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1376
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/asus/reader/VibeActivity$PackageCheckAdapter;->mLP:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/reader/vibe2/Package;

    invoke-virtual {v3}, Lcom/asus/reader/vibe2/Package;->getCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/VibeActivity$PackageCheckAdapter;->mLP:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/vibe2/Package;

    invoke-virtual {p0}, Lcom/asus/reader/vibe2/Package;->getPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1377
    return-object v2

    .line 1366
    .end local v0           #descText:Landroid/widget/TextView;
    .end local v1           #priceText:Landroid/widget/TextView;
    .end local v2           #view:Landroid/view/View;
    .restart local p0
    :cond_0
    iget-object v3, p0, Lcom/asus/reader/VibeActivity$PackageCheckAdapter;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v3, v3, Lcom/asus/reader/VibeActivity;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030024

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .restart local v2       #view:Landroid/view/View;
    goto :goto_0
.end method
