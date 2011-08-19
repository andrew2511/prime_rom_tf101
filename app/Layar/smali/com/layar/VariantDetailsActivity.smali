.class public Lcom/layar/VariantDetailsActivity;
.super Lcom/layar/LayerListActivity;
.source "VariantDetailsActivity.java"


# static fields
.field public static final EXTRAS_VARIANT_ID:Ljava/lang/String; = "variantId"

.field public static final EXTRAS_VARIANT_NAME:Ljava/lang/String; = "variantName"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/layar/VariantDetailsActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/VariantDetailsActivity;->TAG:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/layar/LayerListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected doLaunchOnClick()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method protected doUpdateIfNeeded()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/layar/VariantDetailsActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/BaseLayersAdapter;->clear()V

    .line 66
    iget-object v0, p0, Lcom/layar/VariantDetailsActivity;->mAdapter:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/BaseLayersAdapter;->addPendingItem()V

    .line 67
    return-void
.end method

.method protected getListType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "variant"

    return-object v0
.end method

.method protected getLoadQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/layar/VariantDetailsActivity;->mId:Ljava/lang/String;

    return-object v0
.end method

.method protected getSectionTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/layar/VariantDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "variantName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/layar/VariantDetailsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected initSubsection()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/layar/VariantDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 22
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "variantId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/VariantDetailsActivity;->mId:Ljava/lang/String;

    .line 23
    iget-object v1, p0, Lcom/layar/VariantDetailsActivity;->mId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/layar/VariantDetailsActivity;->finish()V

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-super {p0, p1}, Lcom/layar/LayerListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v1, 0x7f090100

    invoke-virtual {p0, v1}, Lcom/layar/VariantDetailsActivity;->showNoLayersMessage(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 76
    invoke-super {p0, p1}, Lcom/layar/LayerListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 73
    :pswitch_0
    invoke-virtual {p0}, Lcom/layar/VariantDetailsActivity;->reloadData()V

    .line 74
    const/4 v0, 0x1

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method
