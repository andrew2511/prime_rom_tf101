.class public Lcom/layar/CategoryLayersListActivity;
.super Lcom/layar/LayerListActivity;
.source "CategoryLayersListActivity.java"


# static fields
.field public static final EXTRAS_CATEGORY_ID:Ljava/lang/String; = "categoryId"

.field public static final EXTRAS_CATEGORY_NAME:Ljava/lang/String; = "categoryName"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCategoryId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/layar/CategoryLayersListActivity;

    .line 11
    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/CategoryLayersListActivity;->TAG:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/layar/LayerListActivity;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/layar/CategoryLayersListActivity;->mCategoryId:I

    .line 10
    return-void
.end method


# virtual methods
.method protected getListType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "category"

    return-object v0
.end method

.method protected getLoadQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/layar/CategoryLayersListActivity;->mCategoryId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSectionTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/layar/CategoryLayersListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "categoryName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, title:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 42
    const v2, 0x7f090093

    invoke-virtual {p0, v2}, Lcom/layar/CategoryLayersListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, template:Ljava/lang/String;
    const-string v2, "%name%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .end local v0           #template:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const v2, 0x7f090008

    invoke-virtual {p0, v2}, Lcom/layar/CategoryLayersListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/layar/CategoryLayersListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, -0x1

    .line 21
    invoke-super {p0, p1}, Lcom/layar/LayerListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f09008b

    invoke-static {v0}, Lcom/layar/data/layer/LayerManager;->mapSusectionIdToApiKey(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/CategoryLayersListActivity;->mSelectedSubSection:Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Lcom/layar/CategoryLayersListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "categoryId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/layar/CategoryLayersListActivity;->mCategoryId:I

    .line 25
    iget v0, p0, Lcom/layar/CategoryLayersListActivity;->mCategoryId:I

    if-ne v0, v2, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/layar/CategoryLayersListActivity;->finish()V

    .line 31
    :goto_0
    return-void

    .line 30
    :cond_0
    const v0, 0x7f090012

    invoke-virtual {p0, v0}, Lcom/layar/CategoryLayersListActivity;->showNoLayersMessage(I)V

    goto :goto_0
.end method
