.class public Lcom/amazon/kcp/periodicals/fragments/MastHeadFragment;
.super Landroid/support/v4/app/Fragment;
.source "MastHeadFragment.java"

# interfaces
.implements Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;


# instance fields
.field private headerView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/MastHeadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazon/kcp/reader/IReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    .line 40
    .local v0, bookDocument:Lcom/amazon/kcp/reader/models/IBookDocument;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/MastHeadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v4

    .line 44
    .local v4, settings:Lcom/amazon/kcp/application/SettingsController;
    invoke-virtual {v4}, Lcom/amazon/kcp/application/SettingsController;->getColorMode()I

    move-result v8

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/MastHeadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/amazon/kcp/reader/ui/color/AndroidColorModeFactory;->getColorMode(ILandroid/content/res/Resources;)Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-result-object v2

    .line 47
    .local v2, colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/MastHeadFragment;->getView()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/amazon/kcp/periodicals/fragments/MastHeadFragment;->headerView:Landroid/view/View;

    .line 54
    iget-object v8, p0, Lcom/amazon/kcp/periodicals/fragments/MastHeadFragment;->headerView:Landroid/view/View;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 56
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getTOC()Lcom/amazon/kcp/reader/models/IBookTOC;

    move-result-object v1

    .line 59
    .local v1, bookTOC:Lcom/amazon/kcp/reader/models/IBookTOC;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookTOC;->getTitleImage()[B

    move-result-object v8

    move-object v5, v8

    .line 60
    .local v5, titleBytes:[B
    :goto_0
    if-eqz v5, :cond_2

    array-length v8, v5

    if-lez v8, :cond_2

    .line 62
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 63
    .local v3, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 64
    const/4 v8, 0x1

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 65
    const/4 v8, 0x0

    array-length v9, v5

    invoke-static {v5, v8, v9, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 66
    .local v6, titleImage:Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/amazon/kcp/periodicals/fragments/MastHeadFragment;->headerView:Landroid/view/View;

    const v9, 0x7f0c0098

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 69
    iget-object v8, p0, Lcom/amazon/kcp/periodicals/fragments/MastHeadFragment;->headerView:Landroid/view/View;

    const v9, 0x7f0c0098

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v8, p0, Lcom/amazon/kcp/periodicals/fragments/MastHeadFragment;->headerView:Landroid/view/View;

    const v9, 0x7f0c0099

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .end local v3           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #titleImage:Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/periodicals/fragments/MastHeadFragment;->setColorMode(Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V

    .line 84
    .end local v1           #bookTOC:Lcom/amazon/kcp/reader/models/IBookTOC;
    .end local v2           #colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;
    .end local v4           #settings:Lcom/amazon/kcp/application/SettingsController;
    .end local v5           #titleBytes:[B
    :cond_0
    return-void

    .line 59
    .restart local v1       #bookTOC:Lcom/amazon/kcp/reader/models/IBookTOC;
    .restart local v2       #colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;
    .restart local v4       #settings:Lcom/amazon/kcp/application/SettingsController;
    :cond_1
    const/4 v8, 0x0

    move-object v5, v8

    goto :goto_0

    .line 75
    .restart local v5       #titleBytes:[B
    :cond_2
    iget-object v8, p0, Lcom/amazon/kcp/periodicals/fragments/MastHeadFragment;->headerView:Landroid/view/View;

    const v9, 0x7f0c0099

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 76
    .local v7, titleText:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/amazon/kcp/periodicals/fragments/MastHeadFragment;->headerView:Landroid/view/View;

    const v9, 0x7f0c0098

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 77
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 32
    const v0, 0x7f03002f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setColorMode(Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V
    .locals 1
    .parameter "color"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/MastHeadFragment;->headerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/MastHeadFragment;->headerView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->refreshMastHead(Landroid/view/View;Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V

    .line 93
    :cond_0
    return-void
.end method

.method public setFontSize(I)V
    .locals 0
    .parameter "fontSize"

    .prologue
    .line 99
    return-void
.end method
